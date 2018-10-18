package com.dropbox.core.v2.team;

import com.dropbox.core.stone.StoneSerializer;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.v2.teamcommon.GroupManagementType;
import com.dropbox.core.v2.teamcommon.GroupManagementType.Serializer;
import com.dropbox.core.v2.teamcommon.GroupSummary;
import com.dropbox.core.v2.teamcommon.GroupSummary.Builder;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

public class GroupFullInfo
  extends GroupSummary
{
  protected final long created;
  protected final List<GroupMemberInfo> members;
  
  public GroupFullInfo(String paramString1, String paramString2, GroupManagementType paramGroupManagementType, long paramLong)
  {
    this(paramString1, paramString2, paramGroupManagementType, paramLong, null, null, null);
  }
  
  public GroupFullInfo(String paramString1, String paramString2, GroupManagementType paramGroupManagementType, long paramLong, String paramString3, Long paramLong1, List<GroupMemberInfo> paramList)
  {
    super(paramString1, paramString2, paramGroupManagementType, paramString3, paramLong1);
    if (paramList != null)
    {
      paramString1 = paramList.iterator();
      while (paramString1.hasNext()) {
        if ((GroupMemberInfo)paramString1.next() == null) {
          throw new IllegalArgumentException("An item in list 'members' is null");
        }
      }
    }
    members = paramList;
    created = paramLong;
  }
  
  public static Builder newBuilder(String paramString1, String paramString2, GroupManagementType paramGroupManagementType, long paramLong)
  {
    return new Builder(paramString1, paramString2, paramGroupManagementType, paramLong);
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
      paramObject = (GroupFullInfo)paramObject;
      if (((groupName == groupName) || (groupName.equals(groupName))) && ((groupId == groupId) || (groupId.equals(groupId))) && ((groupManagementType == groupManagementType) || (groupManagementType.equals(groupManagementType))) && (created == created) && ((groupExternalId == groupExternalId) || ((groupExternalId != null) && (groupExternalId.equals(groupExternalId)))) && ((memberCount == memberCount) || ((memberCount != null) && (memberCount.equals(memberCount)))))
      {
        if (members == members) {
          break label223;
        }
        if ((members != null) && (members.equals(members))) {
          return true;
        }
      }
      bool = false;
      label223:
      return bool;
    }
    return false;
  }
  
  public long getCreated()
  {
    return created;
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
  
  public List<GroupMemberInfo> getMembers()
  {
    return members;
  }
  
  public int hashCode()
  {
    int i = Arrays.hashCode(new Object[] { members, Long.valueOf(created) });
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
    protected final long created;
    protected List<GroupMemberInfo> members;
    
    protected Builder(String paramString1, String paramString2, GroupManagementType paramGroupManagementType, long paramLong)
    {
      super(paramString2, paramGroupManagementType);
      created = paramLong;
      members = null;
    }
    
    public GroupFullInfo build()
    {
      return new GroupFullInfo(groupName, groupId, groupManagementType, created, groupExternalId, memberCount, members);
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
    
    public Builder withMembers(List<GroupMemberInfo> paramList)
    {
      if (paramList != null)
      {
        Iterator localIterator = paramList.iterator();
        while (localIterator.hasNext()) {
          if ((GroupMemberInfo)localIterator.next() == null) {
            throw new IllegalArgumentException("An item in list 'members' is null");
          }
        }
      }
      members = paramList;
      return this;
    }
  }
  
  static class a
    extends StructSerializer<GroupFullInfo>
  {
    public static final a a = new a();
    
    a() {}
    
    public GroupFullInfo a(JsonParser paramJsonParser, boolean paramBoolean)
      throws IOException, JsonParseException
    {
      Long localLong = null;
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
        Object localObject5 = localObject4;
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
          } else if ("created".equals(str2)) {
            localLong = (Long)StoneSerializers.uInt64().deserialize(paramJsonParser);
          } else if ("group_external_id".equals(str2)) {
            localObject3 = (String)StoneSerializers.nullable(StoneSerializers.string()).deserialize(paramJsonParser);
          } else if ("member_count".equals(str2)) {
            localObject4 = (Long)StoneSerializers.nullable(StoneSerializers.uInt32()).deserialize(paramJsonParser);
          } else if ("members".equals(str2)) {
            localObject5 = (List)StoneSerializers.nullable(StoneSerializers.list(GroupMemberInfo.a.a)).deserialize(paramJsonParser);
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
              if (localLong != null)
              {
                localObject1 = new GroupFullInfo(str1, (String)localObject1, (GroupManagementType)localObject2, localLong.longValue(), (String)localObject3, (Long)localObject4, (List)localObject5);
                if (!paramBoolean) {
                  expectEndObject(paramJsonParser);
                }
                return localObject1;
              }
              throw new JsonParseException(paramJsonParser, "Required field \"created\" missing.");
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
    
    public void a(GroupFullInfo paramGroupFullInfo, JsonGenerator paramJsonGenerator, boolean paramBoolean)
      throws IOException, JsonGenerationException
    {
      if (!paramBoolean) {
        paramJsonGenerator.writeStartObject();
      }
      paramJsonGenerator.writeFieldName("group_name");
      StoneSerializers.string().serialize(GroupFullInfo.a(paramGroupFullInfo), paramJsonGenerator);
      paramJsonGenerator.writeFieldName("group_id");
      StoneSerializers.string().serialize(GroupFullInfo.b(paramGroupFullInfo), paramJsonGenerator);
      paramJsonGenerator.writeFieldName("group_management_type");
      GroupManagementType.Serializer.INSTANCE.serialize(GroupFullInfo.c(paramGroupFullInfo), paramJsonGenerator);
      paramJsonGenerator.writeFieldName("created");
      StoneSerializers.uInt64().serialize(Long.valueOf(created), paramJsonGenerator);
      if (GroupFullInfo.d(paramGroupFullInfo) != null)
      {
        paramJsonGenerator.writeFieldName("group_external_id");
        StoneSerializers.nullable(StoneSerializers.string()).serialize(GroupFullInfo.e(paramGroupFullInfo), paramJsonGenerator);
      }
      if (GroupFullInfo.f(paramGroupFullInfo) != null)
      {
        paramJsonGenerator.writeFieldName("member_count");
        StoneSerializers.nullable(StoneSerializers.uInt32()).serialize(GroupFullInfo.g(paramGroupFullInfo), paramJsonGenerator);
      }
      if (members != null)
      {
        paramJsonGenerator.writeFieldName("members");
        StoneSerializers.nullable(StoneSerializers.list(GroupMemberInfo.a.a)).serialize(members, paramJsonGenerator);
      }
      if (!paramBoolean) {
        paramJsonGenerator.writeEndObject();
      }
    }
  }
}
