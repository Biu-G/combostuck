package com.dropbox.core.v2.sharing;

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

public class SharedFileMembers
{
  protected final String cursor;
  protected final List<GroupMembershipInfo> groups;
  protected final List<InviteeMembershipInfo> invitees;
  protected final List<UserFileMembershipInfo> users;
  
  public SharedFileMembers(List<UserFileMembershipInfo> paramList, List<GroupMembershipInfo> paramList1, List<InviteeMembershipInfo> paramList2)
  {
    this(paramList, paramList1, paramList2, null);
  }
  
  public SharedFileMembers(List<UserFileMembershipInfo> paramList, List<GroupMembershipInfo> paramList1, List<InviteeMembershipInfo> paramList2, String paramString)
  {
    if (paramList != null)
    {
      Iterator localIterator = paramList.iterator();
      while (localIterator.hasNext()) {
        if ((UserFileMembershipInfo)localIterator.next() == null) {
          throw new IllegalArgumentException("An item in list 'users' is null");
        }
      }
      users = paramList;
      if (paramList1 != null)
      {
        paramList = paramList1.iterator();
        while (paramList.hasNext()) {
          if ((GroupMembershipInfo)paramList.next() == null) {
            throw new IllegalArgumentException("An item in list 'groups' is null");
          }
        }
        groups = paramList1;
        if (paramList2 != null)
        {
          paramList = paramList2.iterator();
          while (paramList.hasNext()) {
            if ((InviteeMembershipInfo)paramList.next() == null) {
              throw new IllegalArgumentException("An item in list 'invitees' is null");
            }
          }
          invitees = paramList2;
          cursor = paramString;
          return;
        }
        throw new IllegalArgumentException("Required value for 'invitees' is null");
      }
      throw new IllegalArgumentException("Required value for 'groups' is null");
    }
    throw new IllegalArgumentException("Required value for 'users' is null");
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
      paramObject = (SharedFileMembers)paramObject;
      if (((users == users) || (users.equals(users))) && ((groups == groups) || (groups.equals(groups))) && ((invitees == invitees) || (invitees.equals(invitees))))
      {
        if (cursor == cursor) {
          break label151;
        }
        if ((cursor != null) && (cursor.equals(cursor))) {
          return true;
        }
      }
      bool = false;
      label151:
      return bool;
    }
    return false;
  }
  
  public String getCursor()
  {
    return cursor;
  }
  
  public List<GroupMembershipInfo> getGroups()
  {
    return groups;
  }
  
  public List<InviteeMembershipInfo> getInvitees()
  {
    return invitees;
  }
  
  public List<UserFileMembershipInfo> getUsers()
  {
    return users;
  }
  
  public int hashCode()
  {
    return Arrays.hashCode(new Object[] { users, groups, invitees, cursor });
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
    extends StructSerializer<SharedFileMembers>
  {
    public static final a a = new a();
    
    a() {}
    
    public SharedFileMembers a(JsonParser paramJsonParser, boolean paramBoolean)
      throws IOException, JsonParseException
    {
      List localList2 = null;
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
        List localList1 = null;
        localObject1 = localList1;
        localObject2 = localObject1;
        while (paramJsonParser.getCurrentToken() == JsonToken.FIELD_NAME)
        {
          String str = paramJsonParser.getCurrentName();
          paramJsonParser.nextToken();
          if ("users".equals(str)) {
            localList2 = (List)StoneSerializers.list(UserFileMembershipInfo.a.a).deserialize(paramJsonParser);
          } else if ("groups".equals(str)) {
            localList1 = (List)StoneSerializers.list(GroupMembershipInfo.a.a).deserialize(paramJsonParser);
          } else if ("invitees".equals(str)) {
            localObject1 = (List)StoneSerializers.list(InviteeMembershipInfo.a.a).deserialize(paramJsonParser);
          } else if ("cursor".equals(str)) {
            localObject2 = (String)StoneSerializers.nullable(StoneSerializers.string()).deserialize(paramJsonParser);
          } else {
            skipValue(paramJsonParser);
          }
        }
        if (localList2 != null)
        {
          if (localList1 != null)
          {
            if (localObject1 != null)
            {
              localObject1 = new SharedFileMembers(localList2, localList1, (List)localObject1, (String)localObject2);
              if (!paramBoolean) {
                expectEndObject(paramJsonParser);
              }
              return localObject1;
            }
            throw new JsonParseException(paramJsonParser, "Required field \"invitees\" missing.");
          }
          throw new JsonParseException(paramJsonParser, "Required field \"groups\" missing.");
        }
        throw new JsonParseException(paramJsonParser, "Required field \"users\" missing.");
      }
      Object localObject2 = new StringBuilder();
      ((StringBuilder)localObject2).append("No subtype found that matches tag: \"");
      ((StringBuilder)localObject2).append((String)localObject1);
      ((StringBuilder)localObject2).append("\"");
      throw new JsonParseException(paramJsonParser, ((StringBuilder)localObject2).toString());
    }
    
    public void a(SharedFileMembers paramSharedFileMembers, JsonGenerator paramJsonGenerator, boolean paramBoolean)
      throws IOException, JsonGenerationException
    {
      if (!paramBoolean) {
        paramJsonGenerator.writeStartObject();
      }
      paramJsonGenerator.writeFieldName("users");
      StoneSerializers.list(UserFileMembershipInfo.a.a).serialize(users, paramJsonGenerator);
      paramJsonGenerator.writeFieldName("groups");
      StoneSerializers.list(GroupMembershipInfo.a.a).serialize(groups, paramJsonGenerator);
      paramJsonGenerator.writeFieldName("invitees");
      StoneSerializers.list(InviteeMembershipInfo.a.a).serialize(invitees, paramJsonGenerator);
      if (cursor != null)
      {
        paramJsonGenerator.writeFieldName("cursor");
        StoneSerializers.nullable(StoneSerializers.string()).serialize(cursor, paramJsonGenerator);
      }
      if (!paramBoolean) {
        paramJsonGenerator.writeEndObject();
      }
    }
  }
}
