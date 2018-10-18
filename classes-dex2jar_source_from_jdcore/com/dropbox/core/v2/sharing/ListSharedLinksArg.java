package com.dropbox.core.v2.sharing;

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

class ListSharedLinksArg
{
  protected final String a;
  protected final String b;
  protected final Boolean c;
  
  public ListSharedLinksArg()
  {
    this(null, null, null);
  }
  
  public ListSharedLinksArg(String paramString1, String paramString2, Boolean paramBoolean)
  {
    if ((paramString1 != null) && (!Pattern.matches("(/(.|[\\r\\n])*|id:.*)|(rev:[0-9a-f]{9,})|(ns:[0-9]+(/.*)?)", paramString1))) {
      throw new IllegalArgumentException("String 'path' does not match pattern");
    }
    a = paramString1;
    b = paramString2;
    c = paramBoolean;
  }
  
  public static Builder a()
  {
    return new Builder();
  }
  
  public boolean equals(Object paramObject)
  {
    boolean bool = true;
    if (paramObject == this) {
      return true;
    }
    if (paramObject == null) {
      return false;
    }
    if (paramObject.getClass().equals(getClass()))
    {
      paramObject = (ListSharedLinksArg)paramObject;
      if (((a == a) || ((a != null) && (a.equals(a)))) && ((b == b) || ((b != null) && (b.equals(b)))))
      {
        if (c == c) {
          break label134;
        }
        if ((c != null) && (c.equals(c))) {
          return true;
        }
      }
      bool = false;
      label134:
      return bool;
    }
    return false;
  }
  
  public int hashCode()
  {
    return Arrays.hashCode(new Object[] { a, b, c });
  }
  
  public String toString()
  {
    return a.a.serialize(this, false);
  }
  
  public static class Builder
  {
    protected String cursor = null;
    protected Boolean directOnly = null;
    protected String path = null;
    
    protected Builder() {}
    
    public ListSharedLinksArg build()
    {
      return new ListSharedLinksArg(path, cursor, directOnly);
    }
    
    public Builder withCursor(String paramString)
    {
      cursor = paramString;
      return this;
    }
    
    public Builder withDirectOnly(Boolean paramBoolean)
    {
      directOnly = paramBoolean;
      return this;
    }
    
    public Builder withPath(String paramString)
    {
      if ((paramString != null) && (!Pattern.matches("(/(.|[\\r\\n])*|id:.*)|(rev:[0-9a-f]{9,})|(ns:[0-9]+(/.*)?)", paramString))) {
        throw new IllegalArgumentException("String 'path' does not match pattern");
      }
      path = paramString;
      return this;
    }
  }
  
  static class a
    extends StructSerializer<ListSharedLinksArg>
  {
    public static final a a = new a();
    
    a() {}
    
    public ListSharedLinksArg a(JsonParser paramJsonParser, boolean paramBoolean)
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
        localObject2 = null;
        localObject1 = localObject2;
        while (paramJsonParser.getCurrentToken() == JsonToken.FIELD_NAME)
        {
          String str2 = paramJsonParser.getCurrentName();
          paramJsonParser.nextToken();
          if ("path".equals(str2)) {
            str1 = (String)StoneSerializers.nullable(StoneSerializers.string()).deserialize(paramJsonParser);
          } else if ("cursor".equals(str2)) {
            localObject2 = (String)StoneSerializers.nullable(StoneSerializers.string()).deserialize(paramJsonParser);
          } else if ("direct_only".equals(str2)) {
            localObject1 = (Boolean)StoneSerializers.nullable(StoneSerializers.boolean_()).deserialize(paramJsonParser);
          } else {
            skipValue(paramJsonParser);
          }
        }
        localObject1 = new ListSharedLinksArg(str1, (String)localObject2, (Boolean)localObject1);
        if (!paramBoolean) {
          expectEndObject(paramJsonParser);
        }
        return localObject1;
      }
      Object localObject2 = new StringBuilder();
      ((StringBuilder)localObject2).append("No subtype found that matches tag: \"");
      ((StringBuilder)localObject2).append((String)localObject1);
      ((StringBuilder)localObject2).append("\"");
      throw new JsonParseException(paramJsonParser, ((StringBuilder)localObject2).toString());
    }
    
    public void a(ListSharedLinksArg paramListSharedLinksArg, JsonGenerator paramJsonGenerator, boolean paramBoolean)
      throws IOException, JsonGenerationException
    {
      if (!paramBoolean) {
        paramJsonGenerator.writeStartObject();
      }
      if (a != null)
      {
        paramJsonGenerator.writeFieldName("path");
        StoneSerializers.nullable(StoneSerializers.string()).serialize(a, paramJsonGenerator);
      }
      if (b != null)
      {
        paramJsonGenerator.writeFieldName("cursor");
        StoneSerializers.nullable(StoneSerializers.string()).serialize(b, paramJsonGenerator);
      }
      if (c != null)
      {
        paramJsonGenerator.writeFieldName("direct_only");
        StoneSerializers.nullable(StoneSerializers.boolean_()).serialize(c, paramJsonGenerator);
      }
      if (!paramBoolean) {
        paramJsonGenerator.writeEndObject();
      }
    }
  }
}
