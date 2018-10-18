package com.dropbox.core.v2.team;

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

public class NamespaceMetadata
{
  protected final String name;
  protected final String namespaceId;
  protected final NamespaceType namespaceType;
  protected final String teamMemberId;
  
  public NamespaceMetadata(String paramString1, String paramString2, NamespaceType paramNamespaceType)
  {
    this(paramString1, paramString2, paramNamespaceType, null);
  }
  
  public NamespaceMetadata(String paramString1, String paramString2, NamespaceType paramNamespaceType, String paramString3)
  {
    if (paramString1 != null)
    {
      name = paramString1;
      if (paramString2 != null)
      {
        if (Pattern.matches("[-_0-9a-zA-Z:]+", paramString2))
        {
          namespaceId = paramString2;
          if (paramNamespaceType != null)
          {
            namespaceType = paramNamespaceType;
            teamMemberId = paramString3;
            return;
          }
          throw new IllegalArgumentException("Required value for 'namespaceType' is null");
        }
        throw new IllegalArgumentException("String 'namespaceId' does not match pattern");
      }
      throw new IllegalArgumentException("Required value for 'namespaceId' is null");
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
      paramObject = (NamespaceMetadata)paramObject;
      if (((name == name) || (name.equals(name))) && ((namespaceId == namespaceId) || (namespaceId.equals(namespaceId))) && ((namespaceType == namespaceType) || (namespaceType.equals(namespaceType))))
      {
        if (teamMemberId == teamMemberId) {
          break label145;
        }
        if ((teamMemberId != null) && (teamMemberId.equals(teamMemberId))) {
          return true;
        }
      }
      bool = false;
      label145:
      return bool;
    }
    return false;
  }
  
  public String getName()
  {
    return name;
  }
  
  public String getNamespaceId()
  {
    return namespaceId;
  }
  
  public NamespaceType getNamespaceType()
  {
    return namespaceType;
  }
  
  public String getTeamMemberId()
  {
    return teamMemberId;
  }
  
  public int hashCode()
  {
    return Arrays.hashCode(new Object[] { name, namespaceId, namespaceType, teamMemberId });
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
    extends StructSerializer<NamespaceMetadata>
  {
    public static final a a = new a();
    
    a() {}
    
    public NamespaceMetadata a(JsonParser paramJsonParser, boolean paramBoolean)
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
          if ("name".equals(str3)) {
            str2 = (String)StoneSerializers.string().deserialize(paramJsonParser);
          } else if ("namespace_id".equals(str3)) {
            str1 = (String)StoneSerializers.string().deserialize(paramJsonParser);
          } else if ("namespace_type".equals(str3)) {
            localObject1 = NamespaceType.a.a.a(paramJsonParser);
          } else if ("team_member_id".equals(str3)) {
            localObject2 = (String)StoneSerializers.nullable(StoneSerializers.string()).deserialize(paramJsonParser);
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
              localObject1 = new NamespaceMetadata(str2, str1, (NamespaceType)localObject1, (String)localObject2);
              if (!paramBoolean) {
                expectEndObject(paramJsonParser);
              }
              return localObject1;
            }
            throw new JsonParseException(paramJsonParser, "Required field \"namespace_type\" missing.");
          }
          throw new JsonParseException(paramJsonParser, "Required field \"namespace_id\" missing.");
        }
        throw new JsonParseException(paramJsonParser, "Required field \"name\" missing.");
      }
      Object localObject2 = new StringBuilder();
      ((StringBuilder)localObject2).append("No subtype found that matches tag: \"");
      ((StringBuilder)localObject2).append((String)localObject1);
      ((StringBuilder)localObject2).append("\"");
      throw new JsonParseException(paramJsonParser, ((StringBuilder)localObject2).toString());
    }
    
    public void a(NamespaceMetadata paramNamespaceMetadata, JsonGenerator paramJsonGenerator, boolean paramBoolean)
      throws IOException, JsonGenerationException
    {
      if (!paramBoolean) {
        paramJsonGenerator.writeStartObject();
      }
      paramJsonGenerator.writeFieldName("name");
      StoneSerializers.string().serialize(name, paramJsonGenerator);
      paramJsonGenerator.writeFieldName("namespace_id");
      StoneSerializers.string().serialize(namespaceId, paramJsonGenerator);
      paramJsonGenerator.writeFieldName("namespace_type");
      NamespaceType.a.a.a(namespaceType, paramJsonGenerator);
      if (teamMemberId != null)
      {
        paramJsonGenerator.writeFieldName("team_member_id");
        StoneSerializers.nullable(StoneSerializers.string()).serialize(teamMemberId, paramJsonGenerator);
      }
      if (!paramBoolean) {
        paramJsonGenerator.writeEndObject();
      }
    }
  }
}
