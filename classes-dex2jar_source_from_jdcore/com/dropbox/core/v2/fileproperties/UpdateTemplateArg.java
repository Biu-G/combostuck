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

public class UpdateTemplateArg
{
  protected final List<PropertyFieldTemplate> addFields;
  protected final String description;
  protected final String name;
  protected final String templateId;
  
  public UpdateTemplateArg(String paramString)
  {
    this(paramString, null, null, null);
  }
  
  public UpdateTemplateArg(String paramString1, String paramString2, String paramString3, List<PropertyFieldTemplate> paramList)
  {
    if (paramString1 != null)
    {
      if (paramString1.length() >= 1)
      {
        if (Pattern.matches("(/|ptid:).*", paramString1))
        {
          templateId = paramString1;
          name = paramString2;
          description = paramString3;
          if (paramList != null)
          {
            paramString1 = paramList.iterator();
            while (paramString1.hasNext()) {
              if ((PropertyFieldTemplate)paramString1.next() == null) {
                throw new IllegalArgumentException("An item in list 'addFields' is null");
              }
            }
          }
          addFields = paramList;
          return;
        }
        throw new IllegalArgumentException("String 'templateId' does not match pattern");
      }
      throw new IllegalArgumentException("String 'templateId' is shorter than 1");
    }
    throw new IllegalArgumentException("Required value for 'templateId' is null");
  }
  
  public static Builder newBuilder(String paramString)
  {
    return new Builder(paramString);
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
      paramObject = (UpdateTemplateArg)paramObject;
      if (((templateId == templateId) || (templateId.equals(templateId))) && ((name == name) || ((name != null) && (name.equals(name)))) && ((description == description) || ((description != null) && (description.equals(description)))))
      {
        if (addFields == addFields) {
          break label161;
        }
        if ((addFields != null) && (addFields.equals(addFields))) {
          return true;
        }
      }
      bool = false;
      label161:
      return bool;
    }
    return false;
  }
  
  public List<PropertyFieldTemplate> getAddFields()
  {
    return addFields;
  }
  
  public String getDescription()
  {
    return description;
  }
  
  public String getName()
  {
    return name;
  }
  
  public String getTemplateId()
  {
    return templateId;
  }
  
  public int hashCode()
  {
    return Arrays.hashCode(new Object[] { templateId, name, description, addFields });
  }
  
  public String toString()
  {
    return Serializer.INSTANCE.serialize(this, false);
  }
  
  public String toStringMultiline()
  {
    return Serializer.INSTANCE.serialize(this, true);
  }
  
  public static class Builder
  {
    protected List<PropertyFieldTemplate> addFields;
    protected String description;
    protected String name;
    protected final String templateId;
    
    protected Builder(String paramString)
    {
      if (paramString != null)
      {
        if (paramString.length() >= 1)
        {
          if (Pattern.matches("(/|ptid:).*", paramString))
          {
            templateId = paramString;
            name = null;
            description = null;
            addFields = null;
            return;
          }
          throw new IllegalArgumentException("String 'templateId' does not match pattern");
        }
        throw new IllegalArgumentException("String 'templateId' is shorter than 1");
      }
      throw new IllegalArgumentException("Required value for 'templateId' is null");
    }
    
    public UpdateTemplateArg build()
    {
      return new UpdateTemplateArg(templateId, name, description, addFields);
    }
    
    public Builder withAddFields(List<PropertyFieldTemplate> paramList)
    {
      if (paramList != null)
      {
        Iterator localIterator = paramList.iterator();
        while (localIterator.hasNext()) {
          if ((PropertyFieldTemplate)localIterator.next() == null) {
            throw new IllegalArgumentException("An item in list 'addFields' is null");
          }
        }
      }
      addFields = paramList;
      return this;
    }
    
    public Builder withDescription(String paramString)
    {
      description = paramString;
      return this;
    }
    
    public Builder withName(String paramString)
    {
      name = paramString;
      return this;
    }
  }
  
  public static class Serializer
    extends StructSerializer<UpdateTemplateArg>
  {
    public static final Serializer INSTANCE = new Serializer();
    
    public Serializer() {}
    
    public UpdateTemplateArg deserialize(JsonParser paramJsonParser, boolean paramBoolean)
      throws IOException, JsonParseException
    {
      String str2 = null;
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
        String str1 = null;
        localObject1 = str1;
        localObject2 = localObject1;
        while (paramJsonParser.getCurrentToken() == JsonToken.FIELD_NAME)
        {
          String str3 = paramJsonParser.getCurrentName();
          paramJsonParser.nextToken();
          if ("template_id".equals(str3)) {
            str2 = (String)StoneSerializers.string().deserialize(paramJsonParser);
          } else if ("name".equals(str3)) {
            str1 = (String)StoneSerializers.nullable(StoneSerializers.string()).deserialize(paramJsonParser);
          } else if ("description".equals(str3)) {
            localObject1 = (String)StoneSerializers.nullable(StoneSerializers.string()).deserialize(paramJsonParser);
          } else if ("add_fields".equals(str3)) {
            localObject2 = (List)StoneSerializers.nullable(StoneSerializers.list(PropertyFieldTemplate.a.a)).deserialize(paramJsonParser);
          } else {
            skipValue(paramJsonParser);
          }
        }
        if (str2 != null)
        {
          localObject1 = new UpdateTemplateArg(str2, str1, (String)localObject1, (List)localObject2);
          if (!paramBoolean) {
            expectEndObject(paramJsonParser);
          }
          return localObject1;
        }
        throw new JsonParseException(paramJsonParser, "Required field \"template_id\" missing.");
      }
      Object localObject2 = new StringBuilder();
      ((StringBuilder)localObject2).append("No subtype found that matches tag: \"");
      ((StringBuilder)localObject2).append((String)localObject1);
      ((StringBuilder)localObject2).append("\"");
      throw new JsonParseException(paramJsonParser, ((StringBuilder)localObject2).toString());
    }
    
    public void serialize(UpdateTemplateArg paramUpdateTemplateArg, JsonGenerator paramJsonGenerator, boolean paramBoolean)
      throws IOException, JsonGenerationException
    {
      if (!paramBoolean) {
        paramJsonGenerator.writeStartObject();
      }
      paramJsonGenerator.writeFieldName("template_id");
      StoneSerializers.string().serialize(templateId, paramJsonGenerator);
      if (name != null)
      {
        paramJsonGenerator.writeFieldName("name");
        StoneSerializers.nullable(StoneSerializers.string()).serialize(name, paramJsonGenerator);
      }
      if (description != null)
      {
        paramJsonGenerator.writeFieldName("description");
        StoneSerializers.nullable(StoneSerializers.string()).serialize(description, paramJsonGenerator);
      }
      if (addFields != null)
      {
        paramJsonGenerator.writeFieldName("add_fields");
        StoneSerializers.nullable(StoneSerializers.list(PropertyFieldTemplate.a.a)).serialize(addFields, paramJsonGenerator);
      }
      if (!paramBoolean) {
        paramJsonGenerator.writeEndObject();
      }
    }
  }
}
