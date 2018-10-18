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

public final class GroupMembersAddError
{
  public static final GroupMembersAddError DUPLICATE_USER = new GroupMembersAddError().a(Tag.DUPLICATE_USER);
  public static final GroupMembersAddError GROUP_NOT_FOUND = new GroupMembersAddError().a(Tag.GROUP_NOT_FOUND);
  public static final GroupMembersAddError GROUP_NOT_IN_TEAM = new GroupMembersAddError().a(Tag.GROUP_NOT_IN_TEAM);
  public static final GroupMembersAddError OTHER = new GroupMembersAddError().a(Tag.OTHER);
  public static final GroupMembersAddError SYSTEM_MANAGED_GROUP_DISALLOWED = new GroupMembersAddError().a(Tag.SYSTEM_MANAGED_GROUP_DISALLOWED);
  public static final GroupMembersAddError USER_MUST_BE_ACTIVE_TO_BE_OWNER = new GroupMembersAddError().a(Tag.USER_MUST_BE_ACTIVE_TO_BE_OWNER);
  private Tag a;
  private List<String> b;
  private List<String> c;
  private List<String> d;
  
  private GroupMembersAddError() {}
  
  private GroupMembersAddError a(Tag paramTag)
  {
    GroupMembersAddError localGroupMembersAddError = new GroupMembersAddError();
    a = paramTag;
    return localGroupMembersAddError;
  }
  
  private GroupMembersAddError a(Tag paramTag, List<String> paramList)
  {
    GroupMembersAddError localGroupMembersAddError = new GroupMembersAddError();
    a = paramTag;
    b = paramList;
    return localGroupMembersAddError;
  }
  
  private GroupMembersAddError b(Tag paramTag, List<String> paramList)
  {
    GroupMembersAddError localGroupMembersAddError = new GroupMembersAddError();
    a = paramTag;
    c = paramList;
    return localGroupMembersAddError;
  }
  
  private GroupMembersAddError c(Tag paramTag, List<String> paramList)
  {
    GroupMembersAddError localGroupMembersAddError = new GroupMembersAddError();
    a = paramTag;
    d = paramList;
    return localGroupMembersAddError;
  }
  
  public static GroupMembersAddError membersNotInTeam(List<String> paramList)
  {
    if (paramList != null)
    {
      Iterator localIterator = paramList.iterator();
      while (localIterator.hasNext()) {
        if ((String)localIterator.next() == null) {
          throw new IllegalArgumentException("An item in list is null");
        }
      }
      return new GroupMembersAddError().a(Tag.MEMBERS_NOT_IN_TEAM, paramList);
    }
    throw new IllegalArgumentException("Value is null");
  }
  
  public static GroupMembersAddError userCannotBeManagerOfCompanyManagedGroup(List<String> paramList)
  {
    if (paramList != null)
    {
      Iterator localIterator = paramList.iterator();
      while (localIterator.hasNext()) {
        if ((String)localIterator.next() == null) {
          throw new IllegalArgumentException("An item in list is null");
        }
      }
      return new GroupMembersAddError().c(Tag.USER_CANNOT_BE_MANAGER_OF_COMPANY_MANAGED_GROUP, paramList);
    }
    throw new IllegalArgumentException("Value is null");
  }
  
  public static GroupMembersAddError usersNotFound(List<String> paramList)
  {
    if (paramList != null)
    {
      Iterator localIterator = paramList.iterator();
      while (localIterator.hasNext()) {
        if ((String)localIterator.next() == null) {
          throw new IllegalArgumentException("An item in list is null");
        }
      }
      return new GroupMembersAddError().b(Tag.USERS_NOT_FOUND, paramList);
    }
    throw new IllegalArgumentException("Value is null");
  }
  
  public boolean equals(Object paramObject)
  {
    boolean bool2 = true;
    boolean bool3 = true;
    boolean bool1 = true;
    if (paramObject == this) {
      return true;
    }
    if (paramObject == null) {
      return false;
    }
    if ((paramObject instanceof GroupMembersAddError))
    {
      paramObject = (GroupMembersAddError)paramObject;
      if (a != a) {
        return false;
      }
      switch (1.a[a.ordinal()])
      {
      default: 
        return false;
      case 9: 
        if (d != d)
        {
          if (d.equals(d)) {
            return true;
          }
          bool1 = false;
        }
        return bool1;
      case 8: 
        return true;
      case 7: 
        bool1 = bool2;
        if (c != c)
        {
          if (c.equals(c)) {
            return true;
          }
          bool1 = false;
        }
        return bool1;
      case 6: 
        bool1 = bool3;
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
  
  public List<String> getUserCannotBeManagerOfCompanyManagedGroupValue()
  {
    if (a == Tag.USER_CANNOT_BE_MANAGER_OF_COMPANY_MANAGED_GROUP) {
      return d;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Invalid tag: required Tag.USER_CANNOT_BE_MANAGER_OF_COMPANY_MANAGED_GROUP, but was Tag.");
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
    int i = Arrays.hashCode(new Object[] { a, b, c, d });
    return super.hashCode() * 31 + i;
  }
  
  public boolean isDuplicateUser()
  {
    return a == Tag.DUPLICATE_USER;
  }
  
  public boolean isGroupNotFound()
  {
    return a == Tag.GROUP_NOT_FOUND;
  }
  
  public boolean isGroupNotInTeam()
  {
    return a == Tag.GROUP_NOT_IN_TEAM;
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
  
  public boolean isUserCannotBeManagerOfCompanyManagedGroup()
  {
    return a == Tag.USER_CANNOT_BE_MANAGER_OF_COMPANY_MANAGED_GROUP;
  }
  
  public boolean isUserMustBeActiveToBeOwner()
  {
    return a == Tag.USER_MUST_BE_ACTIVE_TO_BE_OWNER;
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
      DUPLICATE_USER = new Tag("DUPLICATE_USER", 3);
      GROUP_NOT_IN_TEAM = new Tag("GROUP_NOT_IN_TEAM", 4);
      MEMBERS_NOT_IN_TEAM = new Tag("MEMBERS_NOT_IN_TEAM", 5);
      USERS_NOT_FOUND = new Tag("USERS_NOT_FOUND", 6);
      USER_MUST_BE_ACTIVE_TO_BE_OWNER = new Tag("USER_MUST_BE_ACTIVE_TO_BE_OWNER", 7);
    }
    
    private Tag() {}
  }
  
  static class a
    extends UnionSerializer<GroupMembersAddError>
  {
    public static final a a = new a();
    
    a() {}
    
    public GroupMembersAddError a(JsonParser paramJsonParser)
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
          localObject = GroupMembersAddError.GROUP_NOT_FOUND;
        }
        else if ("other".equals(localObject))
        {
          localObject = GroupMembersAddError.OTHER;
        }
        else if ("system_managed_group_disallowed".equals(localObject))
        {
          localObject = GroupMembersAddError.SYSTEM_MANAGED_GROUP_DISALLOWED;
        }
        else if ("duplicate_user".equals(localObject))
        {
          localObject = GroupMembersAddError.DUPLICATE_USER;
        }
        else if ("group_not_in_team".equals(localObject))
        {
          localObject = GroupMembersAddError.GROUP_NOT_IN_TEAM;
        }
        else if ("members_not_in_team".equals(localObject))
        {
          expectField("members_not_in_team", paramJsonParser);
          localObject = GroupMembersAddError.membersNotInTeam((List)StoneSerializers.list(StoneSerializers.string()).deserialize(paramJsonParser));
        }
        else if ("users_not_found".equals(localObject))
        {
          expectField("users_not_found", paramJsonParser);
          localObject = GroupMembersAddError.usersNotFound((List)StoneSerializers.list(StoneSerializers.string()).deserialize(paramJsonParser));
        }
        else if ("user_must_be_active_to_be_owner".equals(localObject))
        {
          localObject = GroupMembersAddError.USER_MUST_BE_ACTIVE_TO_BE_OWNER;
        }
        else
        {
          if (!"user_cannot_be_manager_of_company_managed_group".equals(localObject)) {
            break label252;
          }
          expectField("user_cannot_be_manager_of_company_managed_group", paramJsonParser);
          localObject = GroupMembersAddError.userCannotBeManagerOfCompanyManagedGroup((List)StoneSerializers.list(StoneSerializers.string()).deserialize(paramJsonParser));
        }
        if (i == 0)
        {
          skipFields(paramJsonParser);
          expectEndObject(paramJsonParser);
        }
        return localObject;
        label252:
        StringBuilder localStringBuilder = new StringBuilder();
        localStringBuilder.append("Unknown tag: ");
        localStringBuilder.append((String)localObject);
        throw new JsonParseException(paramJsonParser, localStringBuilder.toString());
      }
      throw new JsonParseException(paramJsonParser, "Required field missing: .tag");
    }
    
    public void a(GroupMembersAddError paramGroupMembersAddError, JsonGenerator paramJsonGenerator)
      throws IOException, JsonGenerationException
    {
      switch (GroupMembersAddError.1.a[paramGroupMembersAddError.tag().ordinal()])
      {
      default: 
        paramJsonGenerator = new StringBuilder();
        paramJsonGenerator.append("Unrecognized tag: ");
        paramJsonGenerator.append(paramGroupMembersAddError.tag());
        throw new IllegalArgumentException(paramJsonGenerator.toString());
      case 9: 
        paramJsonGenerator.writeStartObject();
        writeTag("user_cannot_be_manager_of_company_managed_group", paramJsonGenerator);
        paramJsonGenerator.writeFieldName("user_cannot_be_manager_of_company_managed_group");
        StoneSerializers.list(StoneSerializers.string()).serialize(GroupMembersAddError.c(paramGroupMembersAddError), paramJsonGenerator);
        paramJsonGenerator.writeEndObject();
        return;
      case 8: 
        paramJsonGenerator.writeString("user_must_be_active_to_be_owner");
        return;
      case 7: 
        paramJsonGenerator.writeStartObject();
        writeTag("users_not_found", paramJsonGenerator);
        paramJsonGenerator.writeFieldName("users_not_found");
        StoneSerializers.list(StoneSerializers.string()).serialize(GroupMembersAddError.b(paramGroupMembersAddError), paramJsonGenerator);
        paramJsonGenerator.writeEndObject();
        return;
      case 6: 
        paramJsonGenerator.writeStartObject();
        writeTag("members_not_in_team", paramJsonGenerator);
        paramJsonGenerator.writeFieldName("members_not_in_team");
        StoneSerializers.list(StoneSerializers.string()).serialize(GroupMembersAddError.a(paramGroupMembersAddError), paramJsonGenerator);
        paramJsonGenerator.writeEndObject();
        return;
      case 5: 
        paramJsonGenerator.writeString("group_not_in_team");
        return;
      case 4: 
        paramJsonGenerator.writeString("duplicate_user");
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
