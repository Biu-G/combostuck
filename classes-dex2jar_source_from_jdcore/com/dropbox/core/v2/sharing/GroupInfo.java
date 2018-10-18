package com.dropbox.core.v2.sharing;

import com.dropbox.core.stone.StoneSerializer;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.v2.teamcommon.GroupManagementType;
import com.dropbox.core.v2.teamcommon.GroupManagementType.Serializer;
import com.dropbox.core.v2.teamcommon.GroupSummary;
import com.dropbox.core.v2.teamcommon.GroupSummary.Builder;
import com.dropbox.core.v2.teamcommon.GroupType;
import com.dropbox.core.v2.teamcommon.GroupType.Serializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;

public class GroupInfo
  extends GroupSummary
{
  protected final GroupType groupType;
  protected final boolean isMember;
  protected final boolean isOwner;
  protected final boolean sameTeam;
  
  public GroupInfo(String paramString1, String paramString2, GroupManagementType paramGroupManagementType, GroupType paramGroupType, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3)
  {
    this(paramString1, paramString2, paramGroupManagementType, paramGroupType, paramBoolean1, paramBoolean2, paramBoolean3, null, null);
  }
  
  public GroupInfo(String paramString1, String paramString2, GroupManagementType paramGroupManagementType, GroupType paramGroupType, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3, String paramString3, Long paramLong)
  {
    super(paramString1, paramString2, paramGroupManagementType, paramString3, paramLong);
    if (paramGroupType != null)
    {
      groupType = paramGroupType;
      isMember = paramBoolean1;
      isOwner = paramBoolean2;
      sameTeam = paramBoolean3;
      return;
    }
    throw new IllegalArgumentException("Required value for 'groupType' is null");
  }
  
  public static Builder newBuilder(String paramString1, String paramString2, GroupManagementType paramGroupManagementType, GroupType paramGroupType, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3)
  {
    return new Builder(paramString1, paramString2, paramGroupManagementType, paramGroupType, paramBoolean1, paramBoolean2, paramBoolean3);
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
      paramObject = (GroupInfo)paramObject;
      if (((groupName == groupName) || (groupName.equals(groupName))) && ((groupId == groupId) || (groupId.equals(groupId))) && ((groupManagementType == groupManagementType) || (groupManagementType.equals(groupManagementType))) && ((groupType == groupType) || (groupType.equals(groupType))) && (isMember == isMember) && (isOwner == isOwner) && (sameTeam == sameTeam) && ((groupExternalId == groupExternalId) || ((groupExternalId != null) && (groupExternalId.equals(groupExternalId)))))
      {
        if (memberCount == memberCount) {
          break label235;
        }
        if ((memberCount != null) && (memberCount.equals(memberCount))) {
          return true;
        }
      }
      bool = false;
      label235:
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
  
  public GroupType getGroupType()
  {
    return groupType;
  }
  
  public boolean getIsMember()
  {
    return isMember;
  }
  
  public boolean getIsOwner()
  {
    return isOwner;
  }
  
  public Long getMemberCount()
  {
    return memberCount;
  }
  
  public boolean getSameTeam()
  {
    return sameTeam;
  }
  
  public int hashCode()
  {
    int i = Arrays.hashCode(new Object[] { groupType, Boolean.valueOf(isMember), Boolean.valueOf(isOwner), Boolean.valueOf(sameTeam) });
    return super.hashCode() * 31 + i;
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
    extends GroupSummary.Builder
  {
    protected final GroupType groupType;
    protected final boolean isMember;
    protected final boolean isOwner;
    protected final boolean sameTeam;
    
    protected Builder(String paramString1, String paramString2, GroupManagementType paramGroupManagementType, GroupType paramGroupType, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3)
    {
      super(paramString2, paramGroupManagementType);
      if (paramGroupType != null)
      {
        groupType = paramGroupType;
        isMember = paramBoolean1;
        isOwner = paramBoolean2;
        sameTeam = paramBoolean3;
        return;
      }
      throw new IllegalArgumentException("Required value for 'groupType' is null");
    }
    
    public GroupInfo build()
    {
      return new GroupInfo(groupName, groupId, groupManagementType, groupType, isMember, isOwner, sameTeam, groupExternalId, memberCount);
    }
    
    public Builder withGroupExternalId(String paramString)
    {
      super.withGroupExternalId(paramString);
      return this;
    }
    
    public Builder withMemberCount(Long paramLong)
    {
      super.withMemberCount(paramLong);
      return this;
    }
  }
  
  static class a
    extends StructSerializer<GroupInfo>
  {
    public static final a a = new a();
    
    a() {}
    
    public GroupInfo a(JsonParser paramJsonParser, boolean paramBoolean)
      throws IOException, JsonParseException
    {
      Boolean localBoolean2 = null;
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
        Boolean localBoolean1 = null;
        localObject1 = localBoolean1;
        localObject2 = localObject1;
        Object localObject3 = localObject2;
        Object localObject4 = localObject3;
        Object localObject5 = localObject4;
        Object localObject6 = localObject5;
        Object localObject7 = localObject6;
        while (paramJsonParser.getCurrentToken() == JsonToken.FIELD_NAME)
        {
          String str = paramJsonParser.getCurrentName();
          paramJsonParser.nextToken();
          if ("group_name".equals(str)) {
            localObject2 = (String)StoneSerializers.string().deserialize(paramJsonParser);
          } else if ("group_id".equals(str)) {
            localObject3 = (String)StoneSerializers.string().deserialize(paramJsonParser);
          } else if ("group_management_type".equals(str)) {
            localObject4 = GroupManagementType.Serializer.INSTANCE.deserialize(paramJsonParser);
          } else if ("group_type".equals(str)) {
            localObject5 = GroupType.Serializer.INSTANCE.deserialize(paramJsonParser);
          } else if ("is_member".equals(str)) {
            localBoolean2 = (Boolean)StoneSerializers.boolean_().deserialize(paramJsonParser);
          } else if ("is_owner".equals(str)) {
            localBoolean1 = (Boolean)StoneSerializers.boolean_().deserialize(paramJsonParser);
          } else if ("same_team".equals(str)) {
            localObject1 = (Boolean)StoneSerializers.boolean_().deserialize(paramJsonParser);
          } else if ("group_external_id".equals(str)) {
            localObject6 = (String)StoneSerializers.nullable(StoneSerializers.string()).deserialize(paramJsonParser);
          } else if ("member_count".equals(str)) {
            localObject7 = (Long)StoneSerializers.nullable(StoneSerializers.uInt32()).deserialize(paramJsonParser);
          } else {
            skipValue(paramJsonParser);
          }
        }
        if (localObject2 != null)
        {
          if (localObject3 != null)
          {
            if (localObject4 != null)
            {
              if (localObject5 != null)
              {
                if (localBoolean2 != null)
                {
                  if (localBoolean1 != null)
                  {
                    if (localObject1 != null)
                    {
                      localObject1 = new GroupInfo((String)localObject2, (String)localObject3, (GroupManagementType)localObject4, (GroupType)localObject5, localBoolean2.booleanValue(), localBoolean1.booleanValue(), ((Boolean)localObject1).booleanValue(), (String)localObject6, (Long)localObject7);
                      if (!paramBoolean) {
                        expectEndObject(paramJsonParser);
                      }
                      return localObject1;
                    }
                    throw new JsonParseException(paramJsonParser, "Required field \"same_team\" missing.");
                  }
                  throw new JsonParseException(paramJsonParser, "Required field \"is_owner\" missing.");
                }
                throw new JsonParseException(paramJsonParser, "Required field \"is_member\" missing.");
              }
              throw new JsonParseException(paramJsonParser, "Required field \"group_type\" missing.");
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
    
    public void a(GroupInfo paramGroupInfo, JsonGenerator paramJsonGenerator, boolean paramBoolean)
      throws IOException, JsonGenerationException
    {
      if (!paramBoolean) {
        paramJsonGenerator.writeStartObject();
      }
      paramJsonGenerator.writeFieldName("group_name");
      StoneSerializers.string().serialize(GroupInfo.a(paramGroupInfo), paramJsonGenerator);
      paramJsonGenerator.writeFieldName("group_id");
      StoneSerializers.string().serialize(GroupInfo.b(paramGroupInfo), paramJsonGenerator);
      paramJsonGenerator.writeFieldName("group_management_type");
      GroupManagementType.Serializer.INSTANCE.serialize(GroupInfo.c(paramGroupInfo), paramJsonGenerator);
      paramJsonGenerator.writeFieldName("group_type");
      GroupType.Serializer.INSTANCE.serialize(groupType, paramJsonGenerator);
      paramJsonGenerator.writeFieldName("is_member");
      StoneSerializers.boolean_().serialize(Boolean.valueOf(isMember), paramJsonGenerator);
      paramJsonGenerator.writeFieldName("is_owner");
      StoneSerializers.boolean_().serialize(Boolean.valueOf(isOwner), paramJsonGenerator);
      paramJsonGenerator.writeFieldName("same_team");
      StoneSerializers.boolean_().serialize(Boolean.valueOf(sameTeam), paramJsonGenerator);
      if (GroupInfo.d(paramGroupInfo) != null)
      {
        paramJsonGenerator.writeFieldName("group_external_id");
        StoneSerializers.nullable(StoneSerializers.string()).serialize(GroupInfo.e(paramGroupInfo), paramJsonGenerator);
      }
      if (GroupInfo.f(paramGroupInfo) != null)
      {
        paramJsonGenerator.writeFieldName("member_count");
        StoneSerializers.nullable(StoneSerializers.uInt32()).serialize(GroupInfo.g(paramGroupInfo), paramJsonGenerator);
      }
      if (!paramBoolean) {
        paramJsonGenerator.writeEndObject();
      }
    }
  }
}
