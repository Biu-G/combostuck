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

public class PropertyGroupTemplate
{
  protected final String description;
  protected final List<PropertyFieldTemplate> fields;
  protected final String name;
  
  public PropertyGroupTemplate(String paramString1, String paramString2, List<PropertyFieldTemplate> paramList)
  {
    if (paramString1 != null)
    {
      name = paramString1;
      if (paramString2 != null)
      {
        description = paramString2;
        if (paramList != null)
        {
          paramString1 = paramList.iterator();
          while (paramString1.hasNext()) {
            if ((PropertyFieldTemplate)paramString1.next() == null) {
              throw new IllegalArgumentException("An item in list 'fields' is null");
            }
          }
          fields = paramList;
          return;
        }
        throw new IllegalArgumentException("Required value for 'fields' is null");
      }
      throw new IllegalArgumentException("Required value for 'description' is null");
    }
    throw new IllegalArgumentException("Required value for 'name' is null");
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
      paramObject = (PropertyGroupTemplate)paramObject;
      if (((name == name) || (name.equals(name))) && ((description == description) || (description.equals(description))))
      {
        if (fields == fields) {
          break label115;
        }
        if (fields.equals(fields)) {
          return true;
        }
      }
      bool = false;
      label115:
      return bool;
    }
    return false;
  }
  
  public String getDescription()
  {
    return description;
  }
  
  public List<PropertyFieldTemplate> getFields()
  {
    return fields;
  }
  
  public String getName()
  {
    return name;
  }
  
  public int hashCode()
  {
    return Arrays.hashCode(new Object[] { name, description, fields });
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
    extends StructSerializer<PropertyGroupTemplate>
  {
    public static final a a = new a();
    
    a() {}
    
    public PropertyGroupTemplate a(JsonParser paramJsonParser, boolean paramBoolean)
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
          if ("name".equals(str2)) {
            str1 = (String)StoneSerializers.string().deserialize(paramJsonParser);
          } else if ("description".equals(str2)) {
            localObject2 = (String)StoneSerializers.string().deserialize(paramJsonParser);
          } else if ("fields".equals(str2)) {
            localObject1 = (List)StoneSerializers.list(PropertyFieldTemplate.a.a).deserialize(paramJsonParser);
          } else {
            skipValue(paramJsonParser);
          }
        }
        if (str1 != null)
        {
          if (localObject2 != null)
          {
            if (localObject1 != null)
            {
              localObject1 = new PropertyGroupTemplate(str1, (String)localObject2, (List)localObject1);
              if (!paramBoolean) {
                expectEndObject(paramJsonParser);
              }
              return localObject1;
            }
            throw new JsonParseException(paramJsonParser, "Required field \"fields\" missing.");
          }
          throw new JsonParseException(paramJsonParser, "Required field \"description\" missing.");
        }
        throw new JsonParseException(paramJsonParser, "Required field \"name\" missing.");
      }
      Object localObject2 = new StringBuilder();
      ((StringBuilder)localObject2).append("No subtype found that matches tag: \"");
      ((StringBuilder)localObject2).append((String)localObject1);
      ((StringBuilder)localObject2).append("\"");
      throw new JsonParseException(paramJsonParser, ((StringBuilder)localObject2).toString());
    }
    
    public void a(PropertyGroupTemplate paramPropertyGroupTemplate, JsonGenerator paramJsonGenerator, boolean paramBoolean)
      throws IOException, JsonGenerationException
    {
      if (!paramBoolean) {
        paramJsonGenerator.writeStartObject();
      }
      paramJsonGenerator.writeFieldName("name");
      StoneSerializers.string().serialize(name, paramJsonGenerator);
      paramJsonGenerator.writeFieldName("description");
      StoneSerializers.string().serialize(description, paramJsonGenerator);
      paramJsonGenerator.writeFieldName("fields");
      StoneSerializers.list(PropertyFieldTemplate.a.a).serialize(fields, paramJsonGenerator);
      if (!paramBoolean) {
        paramJsonGenerator.writeEndObject();
      }
    }
  }
}
