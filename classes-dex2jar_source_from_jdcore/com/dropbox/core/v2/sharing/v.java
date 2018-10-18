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

class v
{
  protected final String a;
  
  public v(String paramString)
  {
    if (paramString != null)
    {
      if (paramString.length() >= 1)
      {
        if (Pattern.matches("((/|id:).*|nspath:[0-9]+:.*)|ns:[0-9]+(/.*)?", paramString))
        {
          a = paramString;
          return;
        }
        throw new IllegalArgumentException("String 'file' does not match pattern");
      }
      throw new IllegalArgumentException("String 'file' is shorter than 1");
    }
    throw new IllegalArgumentException("Required value for 'file' is null");
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
      paramObject = (v)paramObject;
      if (a != a)
      {
        if (a.equals(a)) {
          return true;
        }
        bool = false;
      }
      return bool;
    }
    return false;
  }
  
  public int hashCode()
  {
    return Arrays.hashCode(new Object[] { a });
  }
  
  public String toString()
  {
    return a.a.serialize(this, false);
  }
  
  static class a
    extends StructSerializer<v>
  {
    public static final a a = new a();
    
    a() {}
    
    public v a(JsonParser paramJsonParser, boolean paramBoolean)
      throws IOException, JsonParseException
    {
      Object localObject2 = null;
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
        localObject1 = localObject2;
        while (paramJsonParser.getCurrentToken() == JsonToken.FIELD_NAME)
        {
          localObject2 = paramJsonParser.getCurrentName();
          paramJsonParser.nextToken();
          if ("file".equals(localObject2)) {
            localObject1 = (String)StoneSerializers.string().deserialize(paramJsonParser);
          } else {
            skipValue(paramJsonParser);
          }
        }
        if (localObject1 != null)
        {
          localObject1 = new v((String)localObject1);
          if (!paramBoolean) {
            expectEndObject(paramJsonParser);
          }
          return localObject1;
        }
        throw new JsonParseException(paramJsonParser, "Required field \"file\" missing.");
      }
      localObject2 = new StringBuilder();
      ((StringBuilder)localObject2).append("No subtype found that matches tag: \"");
      ((StringBuilder)localObject2).append((String)localObject1);
      ((StringBuilder)localObject2).append("\"");
      throw new JsonParseException(paramJsonParser, ((StringBuilder)localObject2).toString());
    }
    
    public void a(v paramV, JsonGenerator paramJsonGenerator, boolean paramBoolean)
      throws IOException, JsonGenerationException
    {
      if (!paramBoolean) {
        paramJsonGenerator.writeStartObject();
      }
      paramJsonGenerator.writeFieldName("file");
      StoneSerializers.string().serialize(a, paramJsonGenerator);
      if (!paramBoolean) {
        paramJsonGenerator.writeEndObject();
      }
    }
  }
}
