package com.dropbox.core.v2.files;

import com.dropbox.core.stone.StoneSerializer;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;
import java.util.regex.Pattern;

class ListRevisionsArg
{
  protected final String a;
  protected final ListRevisionsMode b;
  protected final long c;
  
  public ListRevisionsArg(String paramString)
  {
    this(paramString, ListRevisionsMode.PATH, 10L);
  }
  
  public ListRevisionsArg(String paramString, ListRevisionsMode paramListRevisionsMode, long paramLong)
  {
    if (paramString != null)
    {
      if (Pattern.matches("/(.|[\\r\\n])*|id:.*|(ns:[0-9]+(/.*)?)", paramString))
      {
        a = paramString;
        if (paramListRevisionsMode != null)
        {
          b = paramListRevisionsMode;
          if (paramLong >= 1L)
          {
            if (paramLong <= 100L)
            {
              c = paramLong;
              return;
            }
            throw new IllegalArgumentException("Number 'limit' is larger than 100L");
          }
          throw new IllegalArgumentException("Number 'limit' is smaller than 1L");
        }
        throw new IllegalArgumentException("Required value for 'mode' is null");
      }
      throw new IllegalArgumentException("String 'path' does not match pattern");
    }
    throw new IllegalArgumentException("Required value for 'path' is null");
  }
  
  public static Builder a(String paramString)
  {
    return new Builder(paramString);
  }
  
  public boolean equals(Object paramObject)
  {
    if (paramObject == this) {
      return true;
    }
    if (paramObject == null) {
      return false;
    }
    if (paramObject.getClass().equals(getClass()))
    {
      paramObject = (ListRevisionsArg)paramObject;
      return ((a == a) || (a.equals(a))) && ((b == b) || (b.equals(b))) && (c == c);
    }
    return false;
  }
  
  public int hashCode()
  {
    return Arrays.hashCode(new Object[] { a, b, Long.valueOf(c) });
  }
  
  public String toString()
  {
    return a.a.serialize(this, false);
  }
  
  public static class Builder
  {
    protected long limit;
    protected ListRevisionsMode mode;
    protected final String path;
    
    protected Builder(String paramString)
    {
      if (paramString != null)
      {
        if (Pattern.matches("/(.|[\\r\\n])*|id:.*|(ns:[0-9]+(/.*)?)", paramString))
        {
          path = paramString;
          mode = ListRevisionsMode.PATH;
          limit = 10L;
          return;
        }
        throw new IllegalArgumentException("String 'path' does not match pattern");
      }
      throw new IllegalArgumentException("Required value for 'path' is null");
    }
    
    public ListRevisionsArg build()
    {
      return new ListRevisionsArg(path, mode, limit);
    }
    
    public Builder withLimit(Long paramLong)
    {
      if (paramLong.longValue() >= 1L)
      {
        if (paramLong.longValue() <= 100L)
        {
          if (paramLong != null)
          {
            limit = paramLong.longValue();
            return this;
          }
          limit = 10L;
          return this;
        }
        throw new IllegalArgumentException("Number 'limit' is larger than 100L");
      }
      throw new IllegalArgumentException("Number 'limit' is smaller than 1L");
    }
    
    public Builder withMode(ListRevisionsMode paramListRevisionsMode)
    {
      if (paramListRevisionsMode != null)
      {
        mode = paramListRevisionsMode;
        return this;
      }
      mode = ListRevisionsMode.PATH;
      return this;
    }
  }
  
  static class a
    extends StructSerializer<ListRevisionsArg>
  {
    public static final a a = new a();
    
    a() {}
    
    public ListRevisionsArg a(JsonParser paramJsonParser, boolean paramBoolean)
      throws IOException, JsonParseException
    {
      String str1 = null;
      Object localObject1;
      if (!paramBoolean)
      {
        expectStartObject(paramJsonParser);
        localObject1 = readTag(paramJsonParser);
      }
      else
      {
        localObject1 = null;
      }
      if (localObject1 == null)
      {
        localObject2 = ListRevisionsMode.PATH;
        localObject1 = Long.valueOf(10L);
        while (paramJsonParser.getCurrentToken() == JsonToken.FIELD_NAME)
        {
          String str2 = paramJsonParser.getCurrentName();
          paramJsonParser.nextToken();
          if ("path".equals(str2)) {
            str1 = (String)StoneSerializers.string().deserialize(paramJsonParser);
          } else if ("mode".equals(str2)) {
            localObject2 = ListRevisionsMode.a.a.a(paramJsonParser);
          } else if ("limit".equals(str2)) {
            localObject1 = (Long)StoneSerializers.uInt64().deserialize(paramJsonParser);
          } else {
            skipValue(paramJsonParser);
          }
        }
        if (str1 != null)
        {
          localObject1 = new ListRevisionsArg(str1, (ListRevisionsMode)localObject2, ((Long)localObject1).longValue());
          if (!paramBoolean) {
            expectEndObject(paramJsonParser);
          }
          return localObject1;
        }
        throw new JsonParseException(paramJsonParser, "Required field \"path\" missing.");
      }
      Object localObject2 = new StringBuilder();
      ((StringBuilder)localObject2).append("No subtype found that matches tag: \"");
      ((StringBuilder)localObject2).append((String)localObject1);
      ((StringBuilder)localObject2).append("\"");
      throw new JsonParseException(paramJsonParser, ((StringBuilder)localObject2).toString());
    }
    
    public void a(ListRevisionsArg paramListRevisionsArg, JsonGenerator paramJsonGenerator, boolean paramBoolean)
      throws IOException, JsonGenerationException
    {
      if (!paramBoolean) {
        paramJsonGenerator.writeStartObject();
      }
      paramJsonGenerator.writeFieldName("path");
      StoneSerializers.string().serialize(a, paramJsonGenerator);
      paramJsonGenerator.writeFieldName("mode");
      ListRevisionsMode.a.a.a(b, paramJsonGenerator);
      paramJsonGenerator.writeFieldName("limit");
      StoneSerializers.uInt64().serialize(Long.valueOf(c), paramJsonGenerator);
      if (!paramBoolean) {
        paramJsonGenerator.writeEndObject();
      }
    }
  }
}
