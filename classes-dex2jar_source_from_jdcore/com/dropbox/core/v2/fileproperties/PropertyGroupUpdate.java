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

public class PropertyGroupUpdate
{
  protected final List<PropertyField> addOrUpdateFields;
  protected final List<String> removeFields;
  protected final String templateId;
  
  public PropertyGroupUpdate(String paramString)
  {
    this(paramString, null, null);
  }
  
  public PropertyGroupUpdate(String paramString, List<PropertyField> paramList, List<String> paramList1)
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
                throw new IllegalArgumentException("An item in list 'addOrUpdateFields' is null");
              }
            }
          }
          addOrUpdateFields = paramList;
          if (paramList1 != null)
          {
            paramString = paramList1.iterator();
            while (paramString.hasNext()) {
              if ((String)paramString.next() == null) {
                throw new IllegalArgumentException("An item in list 'removeFields' is null");
              }
            }
          }
          removeFields = paramList1;
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
      paramObject = (PropertyGroupUpdate)paramObject;
      if (((templateId == templateId) || (templateId.equals(templateId))) && ((addOrUpdateFields == addOrUpdateFields) || ((addOrUpdateFields != null) && (addOrUpdateFields.equals(addOrUpdateFields)))))
      {
        if (removeFields == removeFields) {
          break label131;
        }
        if ((removeFields != null) && (removeFields.equals(removeFields))) {
          return true;
        }
      }
      bool = false;
      label131:
      return bool;
    }
    return false;
  }
  
  public List<PropertyField> getAddOrUpdateFields()
  {
    return addOrUpdateFields;
  }
  
  public List<String> getRemoveFields()
  {
    return removeFields;
  }
  
  public String getTemplateId()
  {
    return templateId;
  }
  
  public int hashCode()
  {
    return Arrays.hashCode(new Object[] { templateId, addOrUpdateFields, removeFields });
  }
  
  public String toString()
  {
    return a.a.serialize(this, false);
  }
  
  public String toStringMultiline()
  {
    return a.a.serialize(this, true);
  }
  
  public static class Builder
  {
    protected List<PropertyField> addOrUpdateFields;
    protected List<String> removeFields;
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
            addOrUpdateFields = null;
            removeFields = null;
            return;
          }
          throw new IllegalArgumentException("String 'templateId' does not match pattern");
        }
        throw new IllegalArgumentException("String 'templateId' is shorter than 1");
      }
      throw new IllegalArgumentException("Required value for 'templateId' is null");
    }
    
    public PropertyGroupUpdate build()
    {
      return new PropertyGroupUpdate(templateId, addOrUpdateFields, removeFields);
    }
    
    public Builder withAddOrUpdateFields(List<PropertyField> paramList)
    {
      if (paramList != null)
      {
        Iterator localIterator = paramList.iterator();
        while (localIterator.hasNext()) {
          if ((PropertyField)localIterator.next() == null) {
            throw new IllegalArgumentException("An item in list 'addOrUpdateFields' is null");
          }
        }
      }
      addOrUpdateFields = paramList;
      return this;
    }
    
    public Builder withRemoveFields(List<String> paramList)
    {
      if (paramList != null)
      {
        Iterator localIterator = paramList.iterator();
        while (localIterator.hasNext()) {
          if ((String)localIterator.next() == null) {
            throw new IllegalArgumentException("An item in list 'removeFields' is null");
          }
        }
      }
      removeFields = paramList;
      return this;
    }
  }
  
  static class a
    extends StructSerializer<PropertyGroupUpdate>
  {
    public static final a a = new a();
    
    a() {}
    
    public PropertyGroupUpdate a(JsonParser paramJsonParser, boolean paramBoolean)
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
          if ("template_id".equals(str2)) {
            str1 = (String)StoneSerializers.string().deserialize(paramJsonParser);
          } else if ("add_or_update_fields".equals(str2)) {
            localObject2 = (List)StoneSerializers.nullable(StoneSerializers.list(PropertyField.a.a)).deserialize(paramJsonParser);
          } else if ("remove_fields".equals(str2)) {
            localObject1 = (List)StoneSerializers.nullable(StoneSerializers.list(StoneSerializers.string())).deserialize(paramJsonParser);
          } else {
            skipValue(paramJsonParser);
          }
        }
        if (str1 != null)
        {
          localObject1 = new PropertyGroupUpdate(str1, (List)localObject2, (List)localObject1);
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
    
    public void a(PropertyGroupUpdate paramPropertyGroupUpdate, JsonGenerator paramJsonGenerator, boolean paramBoolean)
      throws IOException, JsonGenerationException
    {
      if (!paramBoolean) {
        paramJsonGenerator.writeStartObject();
      }
      paramJsonGenerator.writeFieldName("template_id");
      StoneSerializers.string().serialize(templateId, paramJsonGenerator);
      if (addOrUpdateFields != null)
      {
        paramJsonGenerator.writeFieldName("add_or_update_fields");
        StoneSerializers.nullable(StoneSerializers.list(PropertyField.a.a)).serialize(addOrUpdateFields, paramJsonGenerator);
      }
      if (removeFields != null)
      {
        paramJsonGenerator.writeFieldName("remove_fields");
        StoneSerializers.nullable(StoneSerializers.list(StoneSerializers.string())).serialize(removeFields, paramJsonGenerator);
      }
      if (!paramBoolean) {
        paramJsonGenerator.writeEndObject();
      }
    }
  }
}
