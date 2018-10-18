package com.dropbox.core.v2.fileproperties;

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
import java.util.Iterator;
import java.util.List;
import java.util.regex.Pattern;

public class RemovePropertiesArg
{
  protected final String path;
  protected final List<String> propertyTemplateIds;
  
  public RemovePropertiesArg(String paramString, List<String> paramList)
  {
    if (paramString != null)
    {
      if (Pattern.matches("/(.|[\\r\\n])*|id:.*|(ns:[0-9]+(/.*)?)", paramString))
      {
        path = paramString;
        if (paramList != null)
        {
          paramString = paramList.iterator();
          while (paramString.hasNext())
          {
            String str = (String)paramString.next();
            if (str != null)
            {
              if (str.length() >= 1)
              {
                if (!Pattern.matches("(/|ptid:).*", str)) {
                  throw new IllegalArgumentException("Stringan item in list 'propertyTemplateIds' does not match pattern");
                }
              }
              else {
                throw new IllegalArgumentException("Stringan item in list 'propertyTemplateIds' is shorter than 1");
              }
            }
            else {
              throw new IllegalArgumentException("An item in list 'propertyTemplateIds' is null");
            }
          }
          propertyTemplateIds = paramList;
          return;
        }
        throw new IllegalArgumentException("Required value for 'propertyTemplateIds' is null");
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
      paramObject = (RemovePropertiesArg)paramObject;
      if ((path == path) || (path.equals(path)))
      {
        if (propertyTemplateIds == propertyTemplateIds) {
          break label90;
        }
        if (propertyTemplateIds.equals(propertyTemplateIds)) {
          return true;
        }
      }
      bool = false;
      label90:
      return bool;
    }
    return false;
  }
  
  public String getPath()
  {
    return path;
  }
  
  public List<String> getPropertyTemplateIds()
  {
    return propertyTemplateIds;
  }
  
  public int hashCode()
  {
    return Arrays.hashCode(new Object[] { path, propertyTemplateIds });
  }
  
  public String toString()
  {
    return Serializer.INSTANCE.serialize(this, false);
  }
  
  public String toStringMultiline()
  {
    return Serializer.INSTANCE.serialize(this, true);
  }
  
  public static class Serializer
    extends StructSerializer<RemovePropertiesArg>
  {
    public static final Serializer INSTANCE = new Serializer();
    
    public Serializer() {}
    
    public RemovePropertiesArg deserialize(JsonParser paramJsonParser, boolean paramBoolean)
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
          } else if ("property_template_ids".equals(str)) {
            localObject1 = (List)StoneSerializers.list(StoneSerializers.string()).deserialize(paramJsonParser);
          } else {
            skipValue(paramJsonParser);
          }
        }
        if (localObject2 != null)
        {
          if (localObject1 != null)
          {
            localObject1 = new RemovePropertiesArg((String)localObject2, (List)localObject1);
            if (!paramBoolean) {
              expectEndObject(paramJsonParser);
            }
            return localObject1;
          }
          throw new JsonParseException(paramJsonParser, "Required field \"property_template_ids\" missing.");
        }
        throw new JsonParseException(paramJsonParser, "Required field \"path\" missing.");
      }
      localObject2 = new StringBuilder();
      ((StringBuilder)localObject2).append("No subtype found that matches tag: \"");
      ((StringBuilder)localObject2).append((String)localObject1);
      ((StringBuilder)localObject2).append("\"");
      throw new JsonParseException(paramJsonParser, ((StringBuilder)localObject2).toString());
    }
    
    public void serialize(RemovePropertiesArg paramRemovePropertiesArg, JsonGenerator paramJsonGenerator, boolean paramBoolean)
      throws IOException, JsonGenerationException
    {
      if (!paramBoolean) {
        paramJsonGenerator.writeStartObject();
      }
      paramJsonGenerator.writeFieldName("path");
      StoneSerializers.string().serialize(path, paramJsonGenerator);
      paramJsonGenerator.writeFieldName("property_template_ids");
      StoneSerializers.list(StoneSerializers.string()).serialize(propertyTemplateIds, paramJsonGenerator);
      if (!paramBoolean) {
        paramJsonGenerator.writeEndObject();
      }
    }
  }
}
