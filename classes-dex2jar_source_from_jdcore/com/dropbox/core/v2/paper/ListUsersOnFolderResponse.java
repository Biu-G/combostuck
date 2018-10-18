package com.dropbox.core.v2.paper;

import com.dropbox.core.stone.StoneSerializer;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.v2.sharing.InviteeInfo;
import com.dropbox.core.v2.sharing.InviteeInfo.Serializer;
import com.dropbox.core.v2.sharing.UserInfo;
import com.dropbox.core.v2.sharing.UserInfo.Serializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

public class ListUsersOnFolderResponse
{
  protected final Cursor cursor;
  protected final boolean hasMore;
  protected final List<InviteeInfo> invitees;
  protected final List<UserInfo> users;
  
  public ListUsersOnFolderResponse(List<InviteeInfo> paramList, List<UserInfo> paramList1, Cursor paramCursor, boolean paramBoolean)
  {
    if (paramList != null)
    {
      Iterator localIterator = paramList.iterator();
      while (localIterator.hasNext()) {
        if ((InviteeInfo)localIterator.next() == null) {
          throw new IllegalArgumentException("An item in list 'invitees' is null");
        }
      }
      invitees = paramList;
      if (paramList1 != null)
      {
        paramList = paramList1.iterator();
        while (paramList.hasNext()) {
          if ((UserInfo)paramList.next() == null) {
            throw new IllegalArgumentException("An item in list 'users' is null");
          }
        }
        users = paramList1;
        if (paramCursor != null)
        {
          cursor = paramCursor;
          hasMore = paramBoolean;
          return;
        }
        throw new IllegalArgumentException("Required value for 'cursor' is null");
      }
      throw new IllegalArgumentException("Required value for 'users' is null");
    }
    throw new IllegalArgumentException("Required value for 'invitees' is null");
  }
  
  public boolean equals(Object paramObject)
  {
    if (paramObject == this) {
      return true;
    }
    if (paramObject == null) {
      return false;
    }
    if (paramObject.getClass().equals(getClass()))
    {
      paramObject = (ListUsersOnFolderResponse)paramObject;
      return ((invitees == invitees) || (invitees.equals(invitees))) && ((users == users) || (users.equals(users))) && ((cursor == cursor) || (cursor.equals(cursor))) && (hasMore == hasMore);
    }
    return false;
  }
  
  public Cursor getCursor()
  {
    return cursor;
  }
  
  public boolean getHasMore()
  {
    return hasMore;
  }
  
  public List<InviteeInfo> getInvitees()
  {
    return invitees;
  }
  
  public List<UserInfo> getUsers()
  {
    return users;
  }
  
  public int hashCode()
  {
    return Arrays.hashCode(new Object[] { invitees, users, cursor, Boolean.valueOf(hasMore) });
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
    extends StructSerializer<ListUsersOnFolderResponse>
  {
    public static final a a = new a();
    
    a() {}
    
    public ListUsersOnFolderResponse a(JsonParser paramJsonParser, boolean paramBoolean)
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
          if ("invitees".equals(str)) {
            localList2 = (List)StoneSerializers.list(InviteeInfo.Serializer.INSTANCE).deserialize(paramJsonParser);
          } else if ("users".equals(str)) {
            localList1 = (List)StoneSerializers.list(UserInfo.Serializer.INSTANCE).deserialize(paramJsonParser);
          } else if ("cursor".equals(str)) {
            localObject1 = (Cursor)Cursor.a.a.deserialize(paramJsonParser);
          } else if ("has_more".equals(str)) {
            localObject2 = (Boolean)StoneSerializers.boolean_().deserialize(paramJsonParser);
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
              if (localObject2 != null)
              {
                localObject1 = new ListUsersOnFolderResponse(localList2, localList1, (Cursor)localObject1, ((Boolean)localObject2).booleanValue());
                if (!paramBoolean) {
                  expectEndObject(paramJsonParser);
                }
                return localObject1;
              }
              throw new JsonParseException(paramJsonParser, "Required field \"has_more\" missing.");
            }
            throw new JsonParseException(paramJsonParser, "Required field \"cursor\" missing.");
          }
          throw new JsonParseException(paramJsonParser, "Required field \"users\" missing.");
        }
        throw new JsonParseException(paramJsonParser, "Required field \"invitees\" missing.");
      }
      Object localObject2 = new StringBuilder();
      ((StringBuilder)localObject2).append("No subtype found that matches tag: \"");
      ((StringBuilder)localObject2).append((String)localObject1);
      ((StringBuilder)localObject2).append("\"");
      throw new JsonParseException(paramJsonParser, ((StringBuilder)localObject2).toString());
    }
    
    public void a(ListUsersOnFolderResponse paramListUsersOnFolderResponse, JsonGenerator paramJsonGenerator, boolean paramBoolean)
      throws IOException, JsonGenerationException
    {
      if (!paramBoolean) {
        paramJsonGenerator.writeStartObject();
      }
      paramJsonGenerator.writeFieldName("invitees");
      StoneSerializers.list(InviteeInfo.Serializer.INSTANCE).serialize(invitees, paramJsonGenerator);
      paramJsonGenerator.writeFieldName("users");
      StoneSerializers.list(UserInfo.Serializer.INSTANCE).serialize(users, paramJsonGenerator);
      paramJsonGenerator.writeFieldName("cursor");
      Cursor.a.a.serialize(cursor, paramJsonGenerator);
      paramJsonGenerator.writeFieldName("has_more");
      StoneSerializers.boolean_().serialize(Boolean.valueOf(hasMore), paramJsonGenerator);
      if (!paramBoolean) {
        paramJsonGenerator.writeEndObject();
      }
    }
  }
}
