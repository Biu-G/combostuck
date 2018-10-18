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

public class RelocationPath
{
  protected final String fromPath;
  protected final String toPath;
  
  public RelocationPath(String paramString1, String paramString2)
  {
    if (paramString1 != null)
    {
      if (Pattern.matches("(/(.|[\\r\\n])*)|(ns:[0-9]+(/.*)?)|(id:.*)", paramString1))
      {
        fromPath = paramString1;
        if (paramString2 != null)
        {
          if (Pattern.matches("(/(.|[\\r\\n])*)|(ns:[0-9]+(/.*)?)|(id:.*)", paramString2))
          {
            toPath = paramString2;
            return;
          }
          throw new IllegalArgumentException("String 'toPath' does not match pattern");
        }
        throw new IllegalArgumentException("Required value for 'toPath' is null");
      }
      throw new IllegalArgumentException("String 'fromPath' does not match pattern");
    }
    throw new IllegalArgumentException("Required value for 'fromPath' is null");
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
      paramObject = (RelocationPath)paramObject;
      if ((fromPath == fromPath) || (fromPath.equals(fromPath)))
      {
        if (toPath == toPath) {
          break label88;
        }
        if (toPath.equals(toPath)) {
          return true;
        }
      }
      bool = false;
      label88:
      return bool;
    }
    return false;
  }
  
  public String getFromPath()
  {
    return fromPath;
  }
  
  public String getToPath()
  {
    return toPath;
  }
  
  public int hashCode()
  {
    return Arrays.hashCode(new Object[] { fromPath, toPath });
  }
  
  public String toString()
  {
    return a.a.serialize(this, false);
  }
  
  public String toStringMultiline()
  {
    return a.a.serialize(this, true);
  }
  
  static class a
    extends StructSerializer<RelocationPath>
  {
    public static final a a = new a();
    
    a() {}
    
    public RelocationPath a(JsonParser paramJsonParser, boolean paramBoolean)
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
        localObject1 = null;
        while (paramJsonParser.getCurrentToken() == JsonToken.FIELD_NAME)
        {
          String str = paramJsonParser.getCurrentName();
          paramJsonParser.nextToken();
          if ("from_path".equals(str)) {
            localObject2 = (String)StoneSerializers.string().deserialize(paramJsonParser);
          } else if ("to_path".equals(str)) {
            localObject1 = (String)StoneSerializers.string().deserialize(paramJsonParser);
          } else {
            skipValue(paramJsonParser);
          }
        }
        if (localObject2 != null)
        {
          if (localObject1 != null)
          {
            localObject1 = new RelocationPath((String)localObject2, (String)localObject1);
            if (!paramBoolean) {
              expectEndObject(paramJsonParser);
            }
            return localObject1;
          }
          throw new JsonParseException(paramJsonParser, "Required field \"to_path\" missing.");
        }
        throw new JsonParseException(paramJsonParser, "Required field \"from_path\" missing.");
      }
      localObject2 = new StringBuilder();
      ((StringBuilder)localObject2).append("No subtype found that matches tag: \"");
      ((StringBuilder)localObject2).append((String)localObject1);
      ((StringBuilder)localObject2).append("\"");
      throw new JsonParseException(paramJsonParser, ((StringBuilder)localObject2).toString());
    }
    
    public void a(RelocationPath paramRelocationPath, JsonGenerator paramJsonGenerator, boolean paramBoolean)
      throws IOException, JsonGenerationException
    {
      if (!paramBoolean) {
        paramJsonGenerator.writeStartObject();
      }
      paramJsonGenerator.writeFieldName("from_path");
      StoneSerializers.string().serialize(fromPath, paramJsonGenerator);
      paramJsonGenerator.writeFieldName("to_path");
      StoneSerializers.string().serialize(toPath, paramJsonGenerator);
      if (!paramBoolean) {
        paramJsonGenerator.writeEndObject();
      }
    }
  }
}
