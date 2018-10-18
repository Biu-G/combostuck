package com.dropbox.core.v2.team;

import com.dropbox.core.stone.StoneSerializer;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.v2.teamcommon.GroupManagementType;
import com.dropbox.core.v2.teamcommon.GroupManagementType.Serializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;

class GroupCreateArg
{
  protected final String a;
  protected final String b;
  protected final GroupManagementType c;
  
  public GroupCreateArg(String paramString)
  {
    this(paramString, null, null);
  }
  
  public GroupCreateArg(String paramString1, String paramString2, GroupManagementType paramGroupManagementType)
  {
    if (paramString1 != null)
    {
      a = paramString1;
      b = paramString2;
      c = paramGroupManagementType;
      return;
    }
    throw new IllegalArgumentException("Required value for 'groupName' is null");
  }
  
  public static Builder a(String paramString)
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
      paramObject = (GroupCreateArg)paramObject;
      if (((a == a) || (a.equals(a))) && ((b == b) || ((b != null) && (b.equals(b)))))
      {
        if (c == c) {
          break label127;
        }
        if ((c != null) && (c.equals(c))) {
          return true;
        }
      }
      bool = false;
      label127:
      return bool;
    }
    return false;
  }
  
  public int hashCode()
  {
    return Arrays.hashCode(new Object[] { a, b, c });
  }
  
  public String toString()
  {
    return a.a.serialize(this, false);
  }
  
  public static class Builder
  {
    protected String groupExternalId;
    protected GroupManagementType groupManagementType;
    protected final String groupName;
    
    protected Builder(String paramString)
    {
      if (paramString != null)
      {
        groupName = paramString;
        groupExternalId = null;
        groupManagementType = null;
        return;
      }
      throw new IllegalArgumentException("Required value for 'groupName' is null");
    }
    
    public GroupCreateArg build()
    {
      return new GroupCreateArg(groupName, groupExternalId, groupManagementType);
    }
    
    public Builder withGroupExternalId(String paramString)
    {
      groupExternalId = paramString;
      return this;
    }
    
    public Builder withGroupManagementType(GroupManagementType paramGroupManagementType)
    {
      groupManagementType = paramGroupManagementType;
      return this;
    }
  }
  
  static class a
    extends StructSerializer<GroupCreateArg>
  {
    public static final a a = new a();
    
    a() {}
    
    public GroupCreateArg a(JsonParser paramJsonParser, boolean paramBoolean)
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
          if ("group_name".equals(str2)) {
            str1 = (String)StoneSerializers.string().deserialize(paramJsonParser);
          } else if ("group_external_id".equals(str2)) {
            localObject2 = (String)StoneSerializers.nullable(StoneSerializers.string()).deserialize(paramJsonParser);
          } else if ("group_management_type".equals(str2)) {
            localObject1 = (GroupManagementType)StoneSerializers.nullable(GroupManagementType.Serializer.INSTANCE).deserialize(paramJsonParser);
          } else {
            skipValue(paramJsonParser);
          }
        }
        if (str1 != null)
        {
          localObject1 = new GroupCreateArg(str1, (String)localObject2, (GroupManagementType)localObject1);
          if (!paramBoolean) {
            expectEndObject(paramJsonParser);
          }
          return localObject1;
        }
        throw new JsonParseException(paramJsonParser, "Required field \"group_name\" missing.");
      }
      Object localObject2 = new StringBuilder();
      ((StringBuilder)localObject2).append("No subtype found that matches tag: \"");
      ((StringBuilder)localObject2).append((String)localObject1);
      ((StringBuilder)localObject2).append("\"");
      throw new JsonParseException(paramJsonParser, ((StringBuilder)localObject2).toString());
    }
    
    public void a(GroupCreateArg paramGroupCreateArg, JsonGenerator paramJsonGenerator, boolean paramBoolean)
      throws IOException, JsonGenerationException
    {
      if (!paramBoolean) {
        paramJsonGenerator.writeStartObject();
      }
      paramJsonGenerator.writeFieldName("group_name");
      StoneSerializers.string().serialize(a, paramJsonGenerator);
      if (b != null)
      {
        paramJsonGenerator.writeFieldName("group_external_id");
        StoneSerializers.nullable(StoneSerializers.string()).serialize(b, paramJsonGenerator);
      }
      if (c != null)
      {
        paramJsonGenerator.writeFieldName("group_management_type");
        StoneSerializers.nullable(GroupManagementType.Serializer.INSTANCE).serialize(c, paramJsonGenerator);
      }
      if (!paramBoolean) {
        paramJsonGenerator.writeEndObject();
      }
    }
  }
}
