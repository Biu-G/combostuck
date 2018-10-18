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

public class PropertyGroup
{
  protected final List<PropertyField> fields;
  protected final String templateId;
  
  public PropertyGroup(String paramString, List<PropertyField> paramList)
  {
    if (paramString != null)
    {
      if (paramString.length() >= 1)
      {
        if (Pattern.matches("(/|ptid:).*", paramString))
        {
          templateId = paramString;
          if (paramList != null)
          {
            paramString = paramList.iterator();
            while (paramString.hasNext()) {
              if ((PropertyField)paramString.next() == null) {
                throw new IllegalArgumentException("An item in list 'fields' is null");
              }
            }
            fields = paramList;
            return;
          }
          throw new IllegalArgumentException("Required value for 'fields' is null");
        }
        throw new IllegalArgumentException("String 'templateId' does not match pattern");
      }
      throw new IllegalArgumentException("String 'templateId' is shorter than 1");
    }
    throw new IllegalArgumentException("Required value for 'templateId' is null");
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
      paramObject = (PropertyGroup)paramObject;
      if ((templateId == templateId) || (templateId.equals(templateId)))
      {
        if (fields == fields) {
          break label90;
        }
        if (fields.equals(fields)) {
          return true;
        }
      }
      bool = false;
      label90:
      return bool;
    }
    return false;
  }
  
  public List<PropertyField> getFields()
  {
    return fields;
  }
  
  public String getTemplateId()
  {
    return templateId;
  }
  
  public int hashCode()
  {
    return Arrays.hashCode(new Object[] { templateId, fields });
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
    extends StructSerializer<PropertyGroup>
  {
    public static final Serializer INSTANCE = new Serializer();
    
    public Serializer() {}
    
    public PropertyGroup deserialize(JsonParser paramJsonParser, boolean paramBoolean)
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
          if ("template_id".equals(str)) {
            localObject2 = (String)StoneSerializers.string().deserialize(paramJsonParser);
          } else if ("fields".equals(str)) {
            localObject1 = (List)StoneSerializers.list(PropertyField.a.a).deserialize(paramJsonParser);
          } else {
            skipValue(paramJsonParser);
          }
        }
        if (localObject2 != null)
        {
          if (localObject1 != null)
          {
            localObject1 = new PropertyGroup((String)localObject2, (List)localObject1);
            if (!paramBoolean) {
              expectEndObject(paramJsonParser);
            }
            return localObject1;
          }
          throw new JsonParseException(paramJsonParser, "Required field \"fields\" missing.");
        }
        throw new JsonParseException(paramJsonParser, "Required field \"template_id\" missing.");
      }
      localObject2 = new StringBuilder();
      ((StringBuilder)localObject2).append("No subtype found that matches tag: \"");
      ((StringBuilder)localObject2).append((String)localObject1);
      ((StringBuilder)localObject2).append("\"");
      throw new JsonParseException(paramJsonParser, ((StringBuilder)localObject2).toString());
    }
    
    public void serialize(PropertyGroup paramPropertyGroup, JsonGenerator paramJsonGenerator, boolean paramBoolean)
      throws IOException, JsonGenerationException
    {
      if (!paramBoolean) {
        paramJsonGenerator.writeStartObject();
      }
      paramJsonGenerator.writeFieldName("template_id");
      StoneSerializers.string().serialize(templateId, paramJsonGenerator);
      paramJsonGenerator.writeFieldName("fields");
      StoneSerializers.list(PropertyField.a.a).serialize(fields, paramJsonGenerator);
      if (!paramBoolean) {
        paramJsonGenerator.writeEndObject();
      }
    }
  }
}
