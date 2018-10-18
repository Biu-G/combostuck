package com.dropbox.core.v2.teamcommon;

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

public class GroupSummary
{
  protected final String groupExternalId;
  protected final String groupId;
  protected final GroupManagementType groupManagementType;
  protected final String groupName;
  protected final Long memberCount;
  
  public GroupSummary(String paramString1, String paramString2, GroupManagementType paramGroupManagementType)
  {
    this(paramString1, paramString2, paramGroupManagementType, null, null);
  }
  
  public GroupSummary(String paramString1, String paramString2, GroupManagementType paramGroupManagementType, String paramString3, Long paramLong)
  {
    if (paramString1 != null)
    {
      groupName = paramString1;
      if (paramString2 != null)
      {
        groupId = paramString2;
        groupExternalId = paramString3;
        memberCount = paramLong;
        if (paramGroupManagementType != null)
        {
          groupManagementType = paramGroupManagementType;
          return;
        }
        throw new IllegalArgumentException("Required value for 'groupManagementType' is null");
      }
      throw new IllegalArgumentException("Required value for 'groupId' is null");
    }
    throw new IllegalArgumentException("Required value for 'groupName' is null");
  }
  
  public static Builder newBuilder(String paramString1, String paramString2, GroupManagementType paramGroupManagementType)
  {
    return new Builder(paramString1, paramString2, paramGroupManagementType);
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
      paramObject = (GroupSummary)paramObject;
      if (((groupName == groupName) || (groupName.equals(groupName))) && ((groupId == groupId) || (groupId.equals(groupId))) && ((groupManagementType == groupManagementType) || (groupManagementType.equals(groupManagementType))) && ((groupExternalId == groupExternalId) || ((groupExternalId != null) && (groupExternalId.equals(groupExternalId)))))
      {
        if (memberCount == memberCount) {
          break label177;
        }
        if ((memberCount != null) && (memberCount.equals(memberCount))) {
          return true;
        }
      }
      bool = false;
      label177:
      return bool;
    }
    return false;
  }
  
  public String getGroupExternalId()
  {
    return groupExternalId;
  }
  
  public String getGroupId()
  {
    return groupId;
  }
  
  public GroupManagementType getGroupManagementType()
  {
    return groupManagementType;
  }
  
  public String getGroupName()
  {
    return groupName;
  }
  
  public Long getMemberCount()
  {
    return memberCount;
  }
  
  public int hashCode()
  {
    return Arrays.hashCode(new Object[] { groupName, groupId, groupExternalId, memberCount, groupManagementType });
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
    protected String groupExternalId;
    protected final String groupId;
    protected final GroupManagementType groupManagementType;
    protected final String groupName;
    protected Long memberCount;
    
    protected Builder(String paramString1, String paramString2, GroupManagementType paramGroupManagementType)
    {
      if (paramString1 != null)
      {
        groupName = paramString1;
        if (paramString2 != null)
        {
          groupId = paramString2;
          if (paramGroupManagementType != null)
          {
            groupManagementType = paramGroupManagementType;
            groupExternalId = null;
            memberCount = null;
            return;
          }
          throw new IllegalArgumentException("Required value for 'groupManagementType' is null");
        }
        throw new IllegalArgumentException("Required value for 'groupId' is null");
      }
      throw new IllegalArgumentException("Required value for 'groupName' is null");
    }
    
    public GroupSummary build()
    {
      return new GroupSummary(groupName, groupId, groupManagementType, groupExternalId, memberCount);
    }
    
    public Builder withGroupExternalId(String paramString)
    {
      groupExternalId = paramString;
      return this;
    }
    
    public Builder withMemberCount(Long paramLong)
    {
      memberCount = paramLong;
      return this;
    }
  }
  
  public static class Serializer
    extends StructSerializer<GroupSummary>
  {
    public static final Serializer INSTANCE = new Serializer();
    
    public Serializer() {}
    
    public GroupSummary deserialize(JsonParser paramJsonParser, boolean paramBoolean)
      throws IOException, JsonParseException
    {
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
        Object localObject3 = localObject2;
        Object localObject4 = localObject3;
        while (paramJsonParser.getCurrentToken() == JsonToken.FIELD_NAME)
        {
          String str2 = paramJsonParser.getCurrentName();
          paramJsonParser.nextToken();
          if ("group_name".equals(str2)) {
            str1 = (String)StoneSerializers.string().deserialize(paramJsonParser);
          } else if ("group_id".equals(str2)) {
            localObject1 = (String)StoneSerializers.string().deserialize(paramJsonParser);
          } else if ("group_management_type".equals(str2)) {
            localObject2 = GroupManagementType.Serializer.INSTANCE.deserialize(paramJsonParser);
          } else if ("group_external_id".equals(str2)) {
            localObject3 = (String)StoneSerializers.nullable(StoneSerializers.string()).deserialize(paramJsonParser);
          } else if ("member_count".equals(str2)) {
            localObject4 = (Long)StoneSerializers.nullable(StoneSerializers.uInt32()).deserialize(paramJsonParser);
          } else {
            skipValue(paramJsonParser);
          }
        }
        if (str1 != null)
        {
          if (localObject1 != null)
          {
            if (localObject2 != null)
            {
              localObject1 = new GroupSummary(str1, (String)localObject1, (GroupManagementType)localObject2, (String)localObject3, (Long)localObject4);
              if (!paramBoolean) {
                expectEndObject(paramJsonParser);
              }
              return localObject1;
            }
            throw new JsonParseException(paramJsonParser, "Required field \"group_management_type\" missing.");
          }
          throw new JsonParseException(paramJsonParser, "Required field \"group_id\" missing.");
        }
        throw new JsonParseException(paramJsonParser, "Required field \"group_name\" missing.");
      }
      Object localObject2 = new StringBuilder();
      ((StringBuilder)localObject2).append("No subtype found that matches tag: \"");
      ((StringBuilder)localObject2).append((String)localObject1);
      ((StringBuilder)localObject2).append("\"");
      throw new JsonParseException(paramJsonParser, ((StringBuilder)localObject2).toString());
    }
    
    public void serialize(GroupSummary paramGroupSummary, JsonGenerator paramJsonGenerator, boolean paramBoolean)
      throws IOException, JsonGenerationException
    {
      if (!paramBoolean) {
        paramJsonGenerator.writeStartObject();
      }
      paramJsonGenerator.writeFieldName("group_name");
      StoneSerializers.string().serialize(groupName, paramJsonGenerator);
      paramJsonGenerator.writeFieldName("group_id");
      StoneSerializers.string().serialize(groupId, paramJsonGenerator);
      paramJsonGenerator.writeFieldName("group_management_type");
      GroupManagementType.Serializer.INSTANCE.serialize(groupManagementType, paramJsonGenerator);
      if (groupExternalId != null)
      {
        paramJsonGenerator.writeFieldName("group_external_id");
        StoneSerializers.nullable(StoneSerializers.string()).serialize(groupExternalId, paramJsonGenerator);
      }
      if (memberCount != null)
      {
        paramJsonGenerator.writeFieldName("member_count");
        StoneSerializers.nullable(StoneSerializers.uInt32()).serialize(memberCount, paramJsonGenerator);
      }
      if (!paramBoolean) {
        paramJsonGenerator.writeEndObject();
      }
    }
  }
}
