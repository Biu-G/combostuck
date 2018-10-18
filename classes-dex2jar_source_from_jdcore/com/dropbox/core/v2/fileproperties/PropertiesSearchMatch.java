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

public class PropertiesSearchMatch
{
  protected final String id;
  protected final boolean isDeleted;
  protected final String path;
  protected final List<PropertyGroup> propertyGroups;
  
  public PropertiesSearchMatch(String paramString1, String paramString2, boolean paramBoolean, List<PropertyGroup> paramList)
  {
    if (paramString1 != null)
    {
      if (paramString1.length() >= 1)
      {
        id = paramString1;
        if (paramString2 != null)
        {
          path = paramString2;
          isDeleted = paramBoolean;
          if (paramList != null)
          {
            paramString1 = paramList.iterator();
            while (paramString1.hasNext()) {
              if ((PropertyGroup)paramString1.next() == null) {
                throw new IllegalArgumentException("An item in list 'propertyGroups' is null");
              }
            }
            propertyGroups = paramList;
            return;
          }
          throw new IllegalArgumentException("Required value for 'propertyGroups' is null");
        }
        throw new IllegalArgumentException("Required value for 'path' is null");
      }
      throw new IllegalArgumentException("String 'id' is shorter than 1");
    }
    throw new IllegalArgumentException("Required value for 'id' is null");
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
      paramObject = (PropertiesSearchMatch)paramObject;
      if (((id == id) || (id.equals(id))) && ((path == path) || (path.equals(path))) && (isDeleted == isDeleted))
      {
        if (propertyGroups == propertyGroups) {
          break label126;
        }
        if (propertyGroups.equals(propertyGroups)) {
          return true;
        }
      }
      bool = false;
      label126:
      return bool;
    }
    return false;
  }
  
  public String getId()
  {
    return id;
  }
  
  public boolean getIsDeleted()
  {
    return isDeleted;
  }
  
  public String getPath()
  {
    return path;
  }
  
  public List<PropertyGroup> getPropertyGroups()
  {
    return propertyGroups;
  }
  
  public int hashCode()
  {
    return Arrays.hashCode(new Object[] { id, path, Boolean.valueOf(isDeleted), propertyGroups });
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
    extends StructSerializer<PropertiesSearchMatch>
  {
    public static final a a = new a();
    
    a() {}
    
    public PropertiesSearchMatch a(JsonParser paramJsonParser, boolean paramBoolean)
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
          if ("id".equals(str3)) {
            str2 = (String)StoneSerializers.string().deserialize(paramJsonParser);
          } else if ("path".equals(str3)) {
            str1 = (String)StoneSerializers.string().deserialize(paramJsonParser);
          } else if ("is_deleted".equals(str3)) {
            localObject1 = (Boolean)StoneSerializers.boolean_().deserialize(paramJsonParser);
          } else if ("property_groups".equals(str3)) {
            localObject2 = (List)StoneSerializers.list(PropertyGroup.Serializer.INSTANCE).deserialize(paramJsonParser);
          } else {
            skipValue(paramJsonParser);
          }
        }
        if (str2 != null)
        {
          if (str1 != null)
          {
            if (localObject1 != null)
            {
              if (localObject2 != null)
              {
                localObject1 = new PropertiesSearchMatch(str2, str1, ((Boolean)localObject1).booleanValue(), (List)localObject2);
                if (!paramBoolean) {
                  expectEndObject(paramJsonParser);
                }
                return localObject1;
              }
              throw new JsonParseException(paramJsonParser, "Required field \"property_groups\" missing.");
            }
            throw new JsonParseException(paramJsonParser, "Required field \"is_deleted\" missing.");
          }
          throw new JsonParseException(paramJsonParser, "Required field \"path\" missing.");
        }
        throw new JsonParseException(paramJsonParser, "Required field \"id\" missing.");
      }
      Object localObject2 = new StringBuilder();
      ((StringBuilder)localObject2).append("No subtype found that matches tag: \"");
      ((StringBuilder)localObject2).append((String)localObject1);
      ((StringBuilder)localObject2).append("\"");
      throw new JsonParseException(paramJsonParser, ((StringBuilder)localObject2).toString());
    }
    
    public void a(PropertiesSearchMatch paramPropertiesSearchMatch, JsonGenerator paramJsonGenerator, boolean paramBoolean)
      throws IOException, JsonGenerationException
    {
      if (!paramBoolean) {
        paramJsonGenerator.writeStartObject();
      }
      paramJsonGenerator.writeFieldName("id");
      StoneSerializers.string().serialize(id, paramJsonGenerator);
      paramJsonGenerator.writeFieldName("path");
      StoneSerializers.string().serialize(path, paramJsonGenerator);
      paramJsonGenerator.writeFieldName("is_deleted");
      StoneSerializers.boolean_().serialize(Boolean.valueOf(isDeleted), paramJsonGenerator);
      paramJsonGenerator.writeFieldName("property_groups");
      StoneSerializers.list(PropertyGroup.Serializer.INSTANCE).serialize(propertyGroups, paramJsonGenerator);
      if (!paramBoolean) {
        paramJsonGenerator.writeEndObject();
      }
    }
  }
}
