package com.dropbox.core.v2.team;

import com.dropbox.core.stone.StoneSerializer;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.UnionSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

public final class GroupMembersRemoveError
{
  public static final GroupMembersRemoveError GROUP_NOT_FOUND = new GroupMembersRemoveError().a(Tag.GROUP_NOT_FOUND);
  public static final GroupMembersRemoveError GROUP_NOT_IN_TEAM = new GroupMembersRemoveError().a(Tag.GROUP_NOT_IN_TEAM);
  public static final GroupMembersRemoveError MEMBER_NOT_IN_GROUP;
  public static final GroupMembersRemoveError OTHER = new GroupMembersRemoveError().a(Tag.OTHER);
  public static final GroupMembersRemoveError SYSTEM_MANAGED_GROUP_DISALLOWED = new GroupMembersRemoveError().a(Tag.SYSTEM_MANAGED_GROUP_DISALLOWED);
  private Tag a;
  private List<String> b;
  private List<String> c;
  
  static
  {
    MEMBER_NOT_IN_GROUP = new GroupMembersRemoveError().a(Tag.MEMBER_NOT_IN_GROUP);
  }
  
  private GroupMembersRemoveError() {}
  
  private GroupMembersRemoveError a(Tag paramTag)
  {
    GroupMembersRemoveError localGroupMembersRemoveError = new GroupMembersRemoveError();
    a = paramTag;
    return localGroupMembersRemoveError;
  }
  
  private GroupMembersRemoveError a(Tag paramTag, List<String> paramList)
  {
    GroupMembersRemoveError localGroupMembersRemoveError = new GroupMembersRemoveError();
    a = paramTag;
    b = paramList;
    return localGroupMembersRemoveError;
  }
  
  private GroupMembersRemoveError b(Tag paramTag, List<String> paramList)
  {
    GroupMembersRemoveError localGroupMembersRemoveError = new GroupMembersRemoveError();
    a = paramTag;
    c = paramList;
    return localGroupMembersRemoveError;
  }
  
  public static GroupMembersRemoveError membersNotInTeam(List<String> paramList)
  {
    if (paramList != null)
    {
      Iterator localIterator = paramList.iterator();
      while (localIterator.hasNext()) {
        if ((String)localIterator.next() == null) {
          throw new IllegalArgumentException("An item in list is null");
        }
      }
      return new GroupMembersRemoveError().a(Tag.MEMBERS_NOT_IN_TEAM, paramList);
    }
    throw new IllegalArgumentException("Value is null");
  }
  
  public static GroupMembersRemoveError usersNotFound(List<String> paramList)
  {
    if (paramList != null)
    {
      Iterator localIterator = paramList.iterator();
      while (localIterator.hasNext()) {
        if ((String)localIterator.next() == null) {
          throw new IllegalArgumentException("An item in list is null");
        }
      }
      return new GroupMembersRemoveError().b(Tag.USERS_NOT_FOUND, paramList);
    }
    throw new IllegalArgumentException("Value is null");
  }
  
  public boolean equals(Object paramObject)
  {
    boolean bool2 = true;
    boolean bool1 = true;
    if (paramObject == this) {
      return true;
    }
    if (paramObject == null) {
      return false;
    }
    if ((paramObject instanceof GroupMembersRemoveError))
    {
      paramObject = (GroupMembersRemoveError)paramObject;
      if (a != a) {
        return false;
      }
      switch (1.a[a.ordinal()])
      {
      default: 
        return false;
      case 7: 
        if (c != c)
        {
          if (c.equals(c)) {
            return true;
          }
          bool1 = false;
        }
        return bool1;
      case 6: 
        bool1 = bool2;
        if (b != b)
        {
          if (b.equals(b)) {
            return true;
          }
          bool1 = false;
        }
        return bool1;
      case 5: 
        return true;
      case 4: 
        return true;
      case 3: 
        return true;
      case 2: 
        return true;
      }
      return true;
    }
    return false;
  }
  
  public List<String> getMembersNotInTeamValue()
  {
    if (a == Tag.MEMBERS_NOT_IN_TEAM) {
      return b;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Invalid tag: required Tag.MEMBERS_NOT_IN_TEAM, but was Tag.");
    localStringBuilder.append(a.name());
    throw new IllegalStateException(localStringBuilder.toString());
  }
  
  public List<String> getUsersNotFoundValue()
  {
    if (a == Tag.USERS_NOT_FOUND) {
      return c;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Invalid tag: required Tag.USERS_NOT_FOUND, but was Tag.");
    localStringBuilder.append(a.name());
    throw new IllegalStateException(localStringBuilder.toString());
  }
  
  public int hashCode()
  {
    int i = Arrays.hashCode(new Object[] { a, b, c });
    return super.hashCode() * 31 + i;
  }
  
  public boolean isGroupNotFound()
  {
    return a == Tag.GROUP_NOT_FOUND;
  }
  
  public boolean isGroupNotInTeam()
  {
    return a == Tag.GROUP_NOT_IN_TEAM;
  }
  
  public boolean isMemberNotInGroup()
  {
    return a == Tag.MEMBER_NOT_IN_GROUP;
  }
  
  public boolean isMembersNotInTeam()
  {
    return a == Tag.MEMBERS_NOT_IN_TEAM;
  }
  
  public boolean isOther()
  {
    return a == Tag.OTHER;
  }
  
  public boolean isSystemManagedGroupDisallowed()
  {
    return a == Tag.SYSTEM_MANAGED_GROUP_DISALLOWED;
  }
  
  public boolean isUsersNotFound()
  {
    return a == Tag.USERS_NOT_FOUND;
  }
  
  public Tag tag()
  {
    return a;
  }
  
  public String toString()
  {
    return a.a.serialize(this, false);
  }
  
  public String toStringMultiline()
  {
    return a.a.serialize(this, true);
  }
  
  public static enum Tag
  {
    static
    {
      MEMBER_NOT_IN_GROUP = new Tag("MEMBER_NOT_IN_GROUP", 3);
    }
    
    private Tag() {}
  }
  
  static class a
    extends UnionSerializer<GroupMembersRemoveError>
  {
    public static final a a = new a();
    
    a() {}
    
    public GroupMembersRemoveError a(JsonParser paramJsonParser)
      throws IOException, JsonParseException
    {
      int i;
      Object localObject;
      if (paramJsonParser.getCurrentToken() == JsonToken.VALUE_STRING)
      {
        i = 1;
        localObject = getStringValue(paramJsonParser);
        paramJsonParser.nextToken();
      }
      else
      {
        i = 0;
        expectStartObject(paramJsonParser);
        localObject = readTag(paramJsonParser);
      }
      if (localObject != null)
      {
        if ("group_not_found".equals(localObject))
        {
          localObject = GroupMembersRemoveError.GROUP_NOT_FOUND;
        }
        else if ("other".equals(localObject))
        {
          localObject = GroupMembersRemoveError.OTHER;
        }
        else if ("system_managed_group_disallowed".equals(localObject))
        {
          localObject = GroupMembersRemoveError.SYSTEM_MANAGED_GROUP_DISALLOWED;
        }
        else if ("member_not_in_group".equals(localObject))
        {
          localObject = GroupMembersRemoveError.MEMBER_NOT_IN_GROUP;
        }
        else if ("group_not_in_team".equals(localObject))
        {
          localObject = GroupMembersRemoveError.GROUP_NOT_IN_TEAM;
        }
        else if ("members_not_in_team".equals(localObject))
        {
          expectField("members_not_in_team", paramJsonParser);
          localObject = GroupMembersRemoveError.membersNotInTeam((List)StoneSerializers.list(StoneSerializers.string()).deserialize(paramJsonParser));
        }
        else
        {
          if (!"users_not_found".equals(localObject)) {
            break label201;
          }
          expectField("users_not_found", paramJsonParser);
          localObject = GroupMembersRemoveError.usersNotFound((List)StoneSerializers.list(StoneSerializers.string()).deserialize(paramJsonParser));
        }
        if (i == 0)
        {
          skipFields(paramJsonParser);
          expectEndObject(paramJsonParser);
        }
        return localObject;
        label201:
        StringBuilder localStringBuilder = new StringBuilder();
        localStringBuilder.append("Unknown tag: ");
        localStringBuilder.append((String)localObject);
        throw new JsonParseException(paramJsonParser, localStringBuilder.toString());
      }
      throw new JsonParseException(paramJsonParser, "Required field missing: .tag");
    }
    
    public void a(GroupMembersRemoveError paramGroupMembersRemoveError, JsonGenerator paramJsonGenerator)
      throws IOException, JsonGenerationException
    {
      switch (GroupMembersRemoveError.1.a[paramGroupMembersRemoveError.tag().ordinal()])
      {
      default: 
        paramJsonGenerator = new StringBuilder();
        paramJsonGenerator.append("Unrecognized tag: ");
        paramJsonGenerator.append(paramGroupMembersRemoveError.tag());
        throw new IllegalArgumentException(paramJsonGenerator.toString());
      case 7: 
        paramJsonGenerator.writeStartObject();
        writeTag("users_not_found", paramJsonGenerator);
        paramJsonGenerator.writeFieldName("users_not_found");
        StoneSerializers.list(StoneSerializers.string()).serialize(GroupMembersRemoveError.b(paramGroupMembersRemoveError), paramJsonGenerator);
        paramJsonGenerator.writeEndObject();
        return;
      case 6: 
        paramJsonGenerator.writeStartObject();
        writeTag("members_not_in_team", paramJsonGenerator);
        paramJsonGenerator.writeFieldName("members_not_in_team");
        StoneSerializers.list(StoneSerializers.string()).serialize(GroupMembersRemoveError.a(paramGroupMembersRemoveError), paramJsonGenerator);
        paramJsonGenerator.writeEndObject();
        return;
      case 5: 
        paramJsonGenerator.writeString("group_not_in_team");
        return;
      case 4: 
        paramJsonGenerator.writeString("member_not_in_group");
        return;
      case 3: 
        paramJsonGenerator.writeString("system_managed_group_disallowed");
        return;
      case 2: 
        paramJsonGenerator.writeString("other");
        return;
      }
      paramJsonGenerator.writeString("group_not_found");
    }
  }
}
