package com.dropbox.core.v2.filerequests;

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

class CreateFileRequestArgs
{
  protected final String a;
  protected final String b;
  protected final FileRequestDeadline c;
  protected final boolean d;
  
  public CreateFileRequestArgs(String paramString1, String paramString2)
  {
    this(paramString1, paramString2, null, true);
  }
  
  public CreateFileRequestArgs(String paramString1, String paramString2, FileRequestDeadline paramFileRequestDeadline, boolean paramBoolean)
  {
    if (paramString1 != null)
    {
      if (paramString1.length() >= 1)
      {
        a = paramString1;
        if (paramString2 != null)
        {
          if (Pattern.matches("/(.|[\\r\\n])*", paramString2))
          {
            b = paramString2;
            c = paramFileRequestDeadline;
            d = paramBoolean;
            return;
          }
          throw new IllegalArgumentException("String 'destination' does not match pattern");
        }
        throw new IllegalArgumentException("Required value for 'destination' is null");
      }
      throw new IllegalArgumentException("String 'title' is shorter than 1");
    }
    throw new IllegalArgumentException("Required value for 'title' is null");
  }
  
  public static Builder a(String paramString1, String paramString2)
  {
    return new Builder(paramString1, paramString2);
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
      paramObject = (CreateFileRequestArgs)paramObject;
      return ((a == a) || (a.equals(a))) && ((b == b) || (b.equals(b))) && ((c == c) || ((c != null) && (c.equals(c)))) && (d == d);
    }
    return false;
  }
  
  public int hashCode()
  {
    return Arrays.hashCode(new Object[] { a, b, c, Boolean.valueOf(d) });
  }
  
  public String toString()
  {
    return a.a.serialize(this, false);
  }
  
  public static class Builder
  {
    protected FileRequestDeadline deadline;
    protected final String destination;
    protected boolean open;
    protected final String title;
    
    protected Builder(String paramString1, String paramString2)
    {
      if (paramString1 != null)
      {
        if (paramString1.length() >= 1)
        {
          title = paramString1;
          if (paramString2 != null)
          {
            if (Pattern.matches("/(.|[\\r\\n])*", paramString2))
            {
              destination = paramString2;
              deadline = null;
              open = true;
              return;
            }
            throw new IllegalArgumentException("String 'destination' does not match pattern");
          }
          throw new IllegalArgumentException("Required value for 'destination' is null");
        }
        throw new IllegalArgumentException("String 'title' is shorter than 1");
      }
      throw new IllegalArgumentException("Required value for 'title' is null");
    }
    
    public CreateFileRequestArgs build()
    {
      return new CreateFileRequestArgs(title, destination, deadline, open);
    }
    
    public Builder withDeadline(FileRequestDeadline paramFileRequestDeadline)
    {
      deadline = paramFileRequestDeadline;
      return this;
    }
    
    public Builder withOpen(Boolean paramBoolean)
    {
      if (paramBoolean != null)
      {
        open = paramBoolean.booleanValue();
        return this;
      }
      open = true;
      return this;
    }
  }
  
  static class a
    extends StructSerializer<CreateFileRequestArgs>
  {
    public static final a a = new a();
    
    a() {}
    
    public CreateFileRequestArgs a(JsonParser paramJsonParser, boolean paramBoolean)
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
        localObject1 = Boolean.valueOf(true);
        Object localObject3 = localObject2;
        while (paramJsonParser.getCurrentToken() == JsonToken.FIELD_NAME)
        {
          String str2 = paramJsonParser.getCurrentName();
          paramJsonParser.nextToken();
          if ("title".equals(str2)) {
            str1 = (String)StoneSerializers.string().deserialize(paramJsonParser);
          } else if ("destination".equals(str2)) {
            localObject3 = (String)StoneSerializers.string().deserialize(paramJsonParser);
          } else if ("deadline".equals(str2)) {
            localObject2 = (FileRequestDeadline)StoneSerializers.nullableStruct(FileRequestDeadline.a.a).deserialize(paramJsonParser);
          } else if ("open".equals(str2)) {
            localObject1 = (Boolean)StoneSerializers.boolean_().deserialize(paramJsonParser);
          } else {
            skipValue(paramJsonParser);
          }
        }
        if (str1 != null)
        {
          if (localObject3 != null)
          {
            localObject1 = new CreateFileRequestArgs(str1, (String)localObject3, (FileRequestDeadline)localObject2, ((Boolean)localObject1).booleanValue());
            if (!paramBoolean) {
              expectEndObject(paramJsonParser);
            }
            return localObject1;
          }
          throw new JsonParseException(paramJsonParser, "Required field \"destination\" missing.");
        }
        throw new JsonParseException(paramJsonParser, "Required field \"title\" missing.");
      }
      Object localObject2 = new StringBuilder();
      ((StringBuilder)localObject2).append("No subtype found that matches tag: \"");
      ((StringBuilder)localObject2).append((String)localObject1);
      ((StringBuilder)localObject2).append("\"");
      throw new JsonParseException(paramJsonParser, ((StringBuilder)localObject2).toString());
    }
    
    public void a(CreateFileRequestArgs paramCreateFileRequestArgs, JsonGenerator paramJsonGenerator, boolean paramBoolean)
      throws IOException, JsonGenerationException
    {
      if (!paramBoolean) {
        paramJsonGenerator.writeStartObject();
      }
      paramJsonGenerator.writeFieldName("title");
      StoneSerializers.string().serialize(a, paramJsonGenerator);
      paramJsonGenerator.writeFieldName("destination");
      StoneSerializers.string().serialize(b, paramJsonGenerator);
      if (c != null)
      {
        paramJsonGenerator.writeFieldName("deadline");
        StoneSerializers.nullableStruct(FileRequestDeadline.a.a).serialize(c, paramJsonGenerator);
      }
      paramJsonGenerator.writeFieldName("open");
      StoneSerializers.boolean_().serialize(Boolean.valueOf(d), paramJsonGenerator);
      if (!paramBoolean) {
        paramJsonGenerator.writeEndObject();
      }
    }
  }
}
