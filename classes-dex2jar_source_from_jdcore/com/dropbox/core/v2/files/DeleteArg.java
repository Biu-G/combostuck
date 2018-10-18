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

public class DeleteArg
{
  protected final String parentRev;
  protected final String path;
  
  public DeleteArg(String paramString)
  {
    this(paramString, null);
  }
  
  public DeleteArg(String paramString1, String paramString2)
  {
    if (paramString1 != null)
    {
      if (Pattern.matches("(/(.|[\\r\\n])*)|(ns:[0-9]+(/.*)?)|(id:.*)", paramString1))
      {
        path = paramString1;
        if (paramString2 != null) {
          if (paramString2.length() >= 9)
          {
            if (!Pattern.matches("[0-9a-f]+", paramString2)) {
              throw new IllegalArgumentException("String 'parentRev' does not match pattern");
            }
          }
          else {
            throw new IllegalArgumentException("String 'parentRev' is shorter than 9");
          }
        }
        parentRev = paramString2;
        return;
      }
      throw new IllegalArgumentException("String 'path' does not match pattern");
    }
    throw new IllegalArgumentException("Required value for 'path' is null");
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
      paramObject = (DeleteArg)paramObject;
      if ((path == path) || (path.equals(path)))
      {
        if (parentRev == parentRev) {
          break label95;
        }
        if ((parentRev != null) && (parentRev.equals(parentRev))) {
          return true;
        }
      }
      bool = false;
      label95:
      return bool;
    }
    return false;
  }
  
  public String getParentRev()
  {
    return parentRev;
  }
  
  public String getPath()
  {
    return path;
  }
  
  public int hashCode()
  {
    return Arrays.hashCode(new Object[] { path, parentRev });
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
    extends StructSerializer<DeleteArg>
  {
    public static final a a = new a();
    
    a() {}
    
    public DeleteArg a(JsonParser paramJsonParser, boolean paramBoolean)
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
          if ("path".equals(str)) {
            localObject2 = (String)StoneSerializers.string().deserialize(paramJsonParser);
          } else if ("parent_rev".equals(str)) {
            localObject1 = (String)StoneSerializers.nullable(StoneSerializers.string()).deserialize(paramJsonParser);
          } else {
            skipValue(paramJsonParser);
          }
        }
        if (localObject2 != null)
        {
          localObject1 = new DeleteArg((String)localObject2, (String)localObject1);
          if (!paramBoolean) {
            expectEndObject(paramJsonParser);
          }
          return localObject1;
        }
        throw new JsonParseException(paramJsonParser, "Required field \"path\" missing.");
      }
      localObject2 = new StringBuilder();
      ((StringBuilder)localObject2).append("No subtype found that matches tag: \"");
      ((StringBuilder)localObject2).append((String)localObject1);
      ((StringBuilder)localObject2).append("\"");
      throw new JsonParseException(paramJsonParser, ((StringBuilder)localObject2).toString());
    }
    
    public void a(DeleteArg paramDeleteArg, JsonGenerator paramJsonGenerator, boolean paramBoolean)
      throws IOException, JsonGenerationException
    {
      if (!paramBoolean) {
        paramJsonGenerator.writeStartObject();
      }
      paramJsonGenerator.writeFieldName("path");
      StoneSerializers.string().serialize(path, paramJsonGenerator);
      if (parentRev != null)
      {
        paramJsonGenerator.writeFieldName("parent_rev");
        StoneSerializers.nullable(StoneSerializers.string()).serialize(parentRev, paramJsonGenerator);
      }
      if (!paramBoolean) {
        paramJsonGenerator.writeEndObject();
      }
    }
  }
}
