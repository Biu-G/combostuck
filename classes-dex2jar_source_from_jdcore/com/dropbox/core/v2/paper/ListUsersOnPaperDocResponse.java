package com.dropbox.core.v2.paper;

import com.dropbox.core.stone.StoneSerializer;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
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

public class ListUsersOnPaperDocResponse
{
  protected final Cursor cursor;
  protected final UserInfo docOwner;
  protected final boolean hasMore;
  protected final List<InviteeInfoWithPermissionLevel> invitees;
  protected final List<UserInfoWithPermissionLevel> users;
  
  public ListUsersOnPaperDocResponse(List<InviteeInfoWithPermissionLevel> paramList, List<UserInfoWithPermissionLevel> paramList1, UserInfo paramUserInfo, Cursor paramCursor, boolean paramBoolean)
  {
    if (paramList != null)
    {
      Iterator localIterator = paramList.iterator();
      while (localIterator.hasNext()) {
        if ((InviteeInfoWithPermissionLevel)localIterator.next() == null) {
          throw new IllegalArgumentException("An item in list 'invitees' is null");
        }
      }
      invitees = paramList;
      if (paramList1 != null)
      {
        paramList = paramList1.iterator();
        while (paramList.hasNext()) {
          if ((UserInfoWithPermissionLevel)paramList.next() == null) {
            throw new IllegalArgumentException("An item in list 'users' is null");
          }
        }
        users = paramList1;
        if (paramUserInfo != null)
        {
          docOwner = paramUserInfo;
          if (paramCursor != null)
          {
            cursor = paramCursor;
            hasMore = paramBoolean;
            return;
          }
          throw new IllegalArgumentException("Required value for 'cursor' is null");
        }
        throw new IllegalArgumentException("Required value for 'docOwner' is null");
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
      paramObject = (ListUsersOnPaperDocResponse)paramObject;
      return ((invitees == invitees) || (invitees.equals(invitees))) && ((users == users) || (users.equals(users))) && ((docOwner == docOwner) || (docOwner.equals(docOwner))) && ((cursor == cursor) || (cursor.equals(cursor))) && (hasMore == hasMore);
    }
    return false;
  }
  
  public Cursor getCursor()
  {
    return cursor;
  }
  
  public UserInfo getDocOwner()
  {
    return docOwner;
  }
  
  public boolean getHasMore()
  {
    return hasMore;
  }
  
  public List<InviteeInfoWithPermissionLevel> getInvitees()
  {
    return invitees;
  }
  
  public List<UserInfoWithPermissionLevel> getUsers()
  {
    return users;
  }
  
  public int hashCode()
  {
    return Arrays.hashCode(new Object[] { invitees, users, docOwner, cursor, Boolean.valueOf(hasMore) });
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
    extends StructSerializer<ListUsersOnPaperDocResponse>
  {
    public static final a a = new a();
    
    a() {}
    
    public ListUsersOnPaperDocResponse a(JsonParser paramJsonParser, boolean paramBoolean)
      throws IOException, JsonParseException
    {
      Boolean localBoolean = null;
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
        List localList = null;
        localObject1 = localList;
        localObject2 = localObject1;
        Object localObject3 = localObject2;
        while (paramJsonParser.getCurrentToken() == JsonToken.FIELD_NAME)
        {
          String str = paramJsonParser.getCurrentName();
          paramJsonParser.nextToken();
          if ("invitees".equals(str)) {
            localList = (List)StoneSerializers.list(InviteeInfoWithPermissionLevel.a.a).deserialize(paramJsonParser);
          } else if ("users".equals(str)) {
            localObject1 = (List)StoneSerializers.list(UserInfoWithPermissionLevel.a.a).deserialize(paramJsonParser);
          } else if ("doc_owner".equals(str)) {
            localObject2 = (UserInfo)UserInfo.Serializer.INSTANCE.deserialize(paramJsonParser);
          } else if ("cursor".equals(str)) {
            localObject3 = (Cursor)Cursor.a.a.deserialize(paramJsonParser);
          } else if ("has_more".equals(str)) {
            localBoolean = (Boolean)StoneSerializers.boolean_().deserialize(paramJsonParser);
          } else {
            skipValue(paramJsonParser);
          }
        }
        if (localList != null)
        {
          if (localObject1 != null)
          {
            if (localObject2 != null)
            {
              if (localObject3 != null)
              {
                if (localBoolean != null)
                {
                  localObject1 = new ListUsersOnPaperDocResponse(localList, (List)localObject1, (UserInfo)localObject2, (Cursor)localObject3, localBoolean.booleanValue());
                  if (!paramBoolean) {
                    expectEndObject(paramJsonParser);
                  }
                  return localObject1;
                }
                throw new JsonParseException(paramJsonParser, "Required field \"has_more\" missing.");
              }
              throw new JsonParseException(paramJsonParser, "Required field \"cursor\" missing.");
            }
            throw new JsonParseException(paramJsonParser, "Required field \"doc_owner\" missing.");
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
    
    public void a(ListUsersOnPaperDocResponse paramListUsersOnPaperDocResponse, JsonGenerator paramJsonGenerator, boolean paramBoolean)
      throws IOException, JsonGenerationException
    {
      if (!paramBoolean) {
        paramJsonGenerator.writeStartObject();
      }
      paramJsonGenerator.writeFieldName("invitees");
      StoneSerializers.list(InviteeInfoWithPermissionLevel.a.a).serialize(invitees, paramJsonGenerator);
      paramJsonGenerator.writeFieldName("users");
      StoneSerializers.list(UserInfoWithPermissionLevel.a.a).serialize(users, paramJsonGenerator);
      paramJsonGenerator.writeFieldName("doc_owner");
      UserInfo.Serializer.INSTANCE.serialize(docOwner, paramJsonGenerator);
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
