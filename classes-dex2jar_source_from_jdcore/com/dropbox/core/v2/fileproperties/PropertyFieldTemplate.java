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

public class PropertyFieldTemplate
{
  protected final String description;
  protected final String name;
  protected final PropertyType type;
  
  public PropertyFieldTemplate(String paramString1, String paramString2, PropertyType paramPropertyType)
  {
    if (paramString1 != null)
    {
      name = paramString1;
      if (paramString2 != null)
      {
        description = paramString2;
        if (paramPropertyType != null)
        {
          type = paramPropertyType;
          return;
        }
        throw new IllegalArgumentException("Required value for 'type' is null");
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
      paramObject = (PropertyFieldTemplate)paramObject;
      if (((name == name) || (name.equals(name))) && ((description == description) || (description.equals(description))))
      {
        if (type == type) {
          break label113;
        }
        if (type.equals(type)) {
          return true;
        }
      }
      bool = false;
      label113:
      return bool;
    }
    return false;
  }
  
  public String getDescription()
  {
    return description;
  }
  
  public String getName()
  {
    return name;
  }
  
  public PropertyType getType()
  {
    return type;
  }
  
  public int hashCode()
  {
    return Arrays.hashCode(new Object[] { name, description, type });
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
    extends StructSerializer<PropertyFieldTemplate>
  {
    public static final a a = new a();
    
    a() {}
    
    public PropertyFieldTemplate a(JsonParser paramJsonParser, boolean paramBoolean)
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
          } else if ("type".equals(str2)) {
            localObject1 = PropertyType.a.a.a(paramJsonParser);
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
              localObject1 = new PropertyFieldTemplate(str1, (String)localObject2, (PropertyType)localObject1);
              if (!paramBoolean) {
                expectEndObject(paramJsonParser);
              }
              return localObject1;
            }
            throw new JsonParseException(paramJsonParser, "Required field \"type\" missing.");
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
    
    public void a(PropertyFieldTemplate paramPropertyFieldTemplate, JsonGenerator paramJsonGenerator, boolean paramBoolean)
      throws IOException, JsonGenerationException
    {
      if (!paramBoolean) {
        paramJsonGenerator.writeStartObject();
      }
      paramJsonGenerator.writeFieldName("name");
      StoneSerializers.string().serialize(name, paramJsonGenerator);
      paramJsonGenerator.writeFieldName("description");
      StoneSerializers.string().serialize(description, paramJsonGenerator);
      paramJsonGenerator.writeFieldName("type");
      PropertyType.a.a.a(type, paramJsonGenerator);
      if (!paramBoolean) {
        paramJsonGenerator.writeEndObject();
      }
    }
  }
}
