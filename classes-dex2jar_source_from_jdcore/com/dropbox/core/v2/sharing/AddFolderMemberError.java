package com.dropbox.core.v2.sharing;

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

public final class AddFolderMemberError
{
  public static final AddFolderMemberError CANT_SHARE_OUTSIDE_TEAM;
  public static final AddFolderMemberError EMAIL_UNVERIFIED = new AddFolderMemberError().a(Tag.EMAIL_UNVERIFIED);
  public static final AddFolderMemberError INSUFFICIENT_PLAN;
  public static final AddFolderMemberError NO_PERMISSION = new AddFolderMemberError().a(Tag.NO_PERMISSION);
  public static final AddFolderMemberError OTHER = new AddFolderMemberError().a(Tag.OTHER);
  public static final AddFolderMemberError RATE_LIMIT;
  public static final AddFolderMemberError TEAM_FOLDER;
  public static final AddFolderMemberError TOO_MANY_INVITEES;
  private Tag a;
  private SharedFolderAccessError b;
  private AddMemberSelectorError c;
  private Long d;
  private Long e;
  
  static
  {
    CANT_SHARE_OUTSIDE_TEAM = new AddFolderMemberError().a(Tag.CANT_SHARE_OUTSIDE_TEAM);
    RATE_LIMIT = new AddFolderMemberError().a(Tag.RATE_LIMIT);
    TOO_MANY_INVITEES = new AddFolderMemberError().a(Tag.TOO_MANY_INVITEES);
    INSUFFICIENT_PLAN = new AddFolderMemberError().a(Tag.INSUFFICIENT_PLAN);
    TEAM_FOLDER = new AddFolderMemberError().a(Tag.TEAM_FOLDER);
  }
  
  private AddFolderMemberError() {}
  
  private AddFolderMemberError a(Tag paramTag)
  {
    AddFolderMemberError localAddFolderMemberError = new AddFolderMemberError();
    a = paramTag;
    return localAddFolderMemberError;
  }
  
  private AddFolderMemberError a(Tag paramTag, AddMemberSelectorError paramAddMemberSelectorError)
  {
    AddFolderMemberError localAddFolderMemberError = new AddFolderMemberError();
    a = paramTag;
    c = paramAddMemberSelectorError;
    return localAddFolderMemberError;
  }
  
  private AddFolderMemberError a(Tag paramTag, SharedFolderAccessError paramSharedFolderAccessError)
  {
    AddFolderMemberError localAddFolderMemberError = new AddFolderMemberError();
    a = paramTag;
    b = paramSharedFolderAccessError;
    return localAddFolderMemberError;
  }
  
  private AddFolderMemberError a(Tag paramTag, Long paramLong)
  {
    AddFolderMemberError localAddFolderMemberError = new AddFolderMemberError();
    a = paramTag;
    d = paramLong;
    return localAddFolderMemberError;
  }
  
  public static AddFolderMemberError accessError(SharedFolderAccessError paramSharedFolderAccessError)
  {
    if (paramSharedFolderAccessError != null) {
      return new AddFolderMemberError().a(Tag.ACCESS_ERROR, paramSharedFolderAccessError);
    }
    throw new IllegalArgumentException("Value is null");
  }
  
  private AddFolderMemberError b(Tag paramTag, Long paramLong)
  {
    AddFolderMemberError localAddFolderMemberError = new AddFolderMemberError();
    a = paramTag;
    e = paramLong;
    return localAddFolderMemberError;
  }
  
  public static AddFolderMemberError badMember(AddMemberSelectorError paramAddMemberSelectorError)
  {
    if (paramAddMemberSelectorError != null) {
      return new AddFolderMemberError().a(Tag.BAD_MEMBER, paramAddMemberSelectorError);
    }
    throw new IllegalArgumentException("Value is null");
  }
  
  public static AddFolderMemberError tooManyMembers(long paramLong)
  {
    return new AddFolderMemberError().a(Tag.TOO_MANY_MEMBERS, Long.valueOf(paramLong));
  }
  
  public static AddFolderMemberError tooManyPendingInvites(long paramLong)
  {
    return new AddFolderMemberError().b(Tag.TOO_MANY_PENDING_INVITES, Long.valueOf(paramLong));
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
    if ((paramObject instanceof AddFolderMemberError))
    {
      paramObject = (AddFolderMemberError)paramObject;
      if (a != a) {
        return false;
      }
      switch (1.a[a.ordinal()])
      {
      default: 
        return false;
      case 12: 
        return true;
      case 11: 
        return true;
      case 10: 
        return true;
      case 9: 
        return true;
      case 8: 
        return true;
      case 7: 
        return true;
      case 6: 
        return e == e;
      case 5: 
        return d == d;
      case 4: 
        return true;
      case 3: 
        if (c != c)
        {
          if (c.equals(c)) {
            return true;
          }
          bool1 = false;
        }
        return bool1;
      case 2: 
        return true;
      }
      bool1 = bool2;
      if (b != b)
      {
        if (b.equals(b)) {
          return true;
        }
        bool1 = false;
      }
      return bool1;
    }
    return false;
  }
  
  public SharedFolderAccessError getAccessErrorValue()
  {
    if (a == Tag.ACCESS_ERROR) {
      return b;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Invalid tag: required Tag.ACCESS_ERROR, but was Tag.");
    localStringBuilder.append(a.name());
    throw new IllegalStateException(localStringBuilder.toString());
  }
  
  public AddMemberSelectorError getBadMemberValue()
  {
    if (a == Tag.BAD_MEMBER) {
      return c;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Invalid tag: required Tag.BAD_MEMBER, but was Tag.");
    localStringBuilder.append(a.name());
    throw new IllegalStateException(localStringBuilder.toString());
  }
  
  public long getTooManyMembersValue()
  {
    if (a == Tag.TOO_MANY_MEMBERS) {
      return d.longValue();
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Invalid tag: required Tag.TOO_MANY_MEMBERS, but was Tag.");
    localStringBuilder.append(a.name());
    throw new IllegalStateException(localStringBuilder.toString());
  }
  
  public long getTooManyPendingInvitesValue()
  {
    if (a == Tag.TOO_MANY_PENDING_INVITES) {
      return e.longValue();
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Invalid tag: required Tag.TOO_MANY_PENDING_INVITES, but was Tag.");
    localStringBuilder.append(a.name());
    throw new IllegalStateException(localStringBuilder.toString());
  }
  
  public int hashCode()
  {
    return Arrays.hashCode(new Object[] { a, b, c, d, e });
  }
  
  public boolean isAccessError()
  {
    return a == Tag.ACCESS_ERROR;
  }
  
  public boolean isBadMember()
  {
    return a == Tag.BAD_MEMBER;
  }
  
  public boolean isCantShareOutsideTeam()
  {
    return a == Tag.CANT_SHARE_OUTSIDE_TEAM;
  }
  
  public boolean isEmailUnverified()
  {
    return a == Tag.EMAIL_UNVERIFIED;
  }
  
  public boolean isInsufficientPlan()
  {
    return a == Tag.INSUFFICIENT_PLAN;
  }
  
  public boolean isNoPermission()
  {
    return a == Tag.NO_PERMISSION;
  }
  
  public boolean isOther()
  {
    return a == Tag.OTHER;
  }
  
  public boolean isRateLimit()
  {
    return a == Tag.RATE_LIMIT;
  }
  
  public boolean isTeamFolder()
  {
    return a == Tag.TEAM_FOLDER;
  }
  
  public boolean isTooManyInvitees()
  {
    return a == Tag.TOO_MANY_INVITEES;
  }
  
  public boolean isTooManyMembers()
  {
    return a == Tag.TOO_MANY_MEMBERS;
  }
  
  public boolean isTooManyPendingInvites()
  {
    return a == Tag.TOO_MANY_PENDING_INVITES;
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
      BAD_MEMBER = new Tag("BAD_MEMBER", 2);
      CANT_SHARE_OUTSIDE_TEAM = new Tag("CANT_SHARE_OUTSIDE_TEAM", 3);
      TOO_MANY_MEMBERS = new Tag("TOO_MANY_MEMBERS", 4);
      TOO_MANY_PENDING_INVITES = new Tag("TOO_MANY_PENDING_INVITES", 5);
      RATE_LIMIT = new Tag("RATE_LIMIT", 6);
      TOO_MANY_INVITEES = new Tag("TOO_MANY_INVITEES", 7);
      INSUFFICIENT_PLAN = new Tag("INSUFFICIENT_PLAN", 8);
      TEAM_FOLDER = new Tag("TEAM_FOLDER", 9);
    }
    
    private Tag() {}
  }
  
  static class a
    extends UnionSerializer<AddFolderMemberError>
  {
    public static final a a = new a();
    
    a() {}
    
    public AddFolderMemberError a(JsonParser paramJsonParser)
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
        if ("access_error".equals(localObject))
        {
          expectField("access_error", paramJsonParser);
          localObject = AddFolderMemberError.accessError(SharedFolderAccessError.a.a.a(paramJsonParser));
        }
        else if ("email_unverified".equals(localObject))
        {
          localObject = AddFolderMemberError.EMAIL_UNVERIFIED;
        }
        else if ("bad_member".equals(localObject))
        {
          expectField("bad_member", paramJsonParser);
          localObject = AddFolderMemberError.badMember(AddMemberSelectorError.a.a.a(paramJsonParser));
        }
        else if ("cant_share_outside_team".equals(localObject))
        {
          localObject = AddFolderMemberError.CANT_SHARE_OUTSIDE_TEAM;
        }
        else if ("too_many_members".equals(localObject))
        {
          expectField("too_many_members", paramJsonParser);
          localObject = AddFolderMemberError.tooManyMembers(((Long)StoneSerializers.uInt64().deserialize(paramJsonParser)).longValue());
        }
        else if ("too_many_pending_invites".equals(localObject))
        {
          expectField("too_many_pending_invites", paramJsonParser);
          localObject = AddFolderMemberError.tooManyPendingInvites(((Long)StoneSerializers.uInt64().deserialize(paramJsonParser)).longValue());
        }
        else if ("rate_limit".equals(localObject))
        {
          localObject = AddFolderMemberError.RATE_LIMIT;
        }
        else if ("too_many_invitees".equals(localObject))
        {
          localObject = AddFolderMemberError.TOO_MANY_INVITEES;
        }
        else if ("insufficient_plan".equals(localObject))
        {
          localObject = AddFolderMemberError.INSUFFICIENT_PLAN;
        }
        else if ("team_folder".equals(localObject))
        {
          localObject = AddFolderMemberError.TEAM_FOLDER;
        }
        else if ("no_permission".equals(localObject))
        {
          localObject = AddFolderMemberError.NO_PERMISSION;
        }
        else
        {
          localObject = AddFolderMemberError.OTHER;
        }
        if (i == 0)
        {
          skipFields(paramJsonParser);
          expectEndObject(paramJsonParser);
        }
        return localObject;
      }
      throw new JsonParseException(paramJsonParser, "Required field missing: .tag");
    }
    
    public void a(AddFolderMemberError paramAddFolderMemberError, JsonGenerator paramJsonGenerator)
      throws IOException, JsonGenerationException
    {
      switch (AddFolderMemberError.1.a[paramAddFolderMemberError.tag().ordinal()])
      {
      default: 
        paramJsonGenerator.writeString("other");
        return;
      case 11: 
        paramJsonGenerator.writeString("no_permission");
        return;
      case 10: 
        paramJsonGenerator.writeString("team_folder");
        return;
      case 9: 
        paramJsonGenerator.writeString("insufficient_plan");
        return;
      case 8: 
        paramJsonGenerator.writeString("too_many_invitees");
        return;
      case 7: 
        paramJsonGenerator.writeString("rate_limit");
        return;
      case 6: 
        paramJsonGenerator.writeStartObject();
        writeTag("too_many_pending_invites", paramJsonGenerator);
        paramJsonGenerator.writeFieldName("too_many_pending_invites");
        StoneSerializers.uInt64().serialize(AddFolderMemberError.d(paramAddFolderMemberError), paramJsonGenerator);
        paramJsonGenerator.writeEndObject();
        return;
      case 5: 
        paramJsonGenerator.writeStartObject();
        writeTag("too_many_members", paramJsonGenerator);
        paramJsonGenerator.writeFieldName("too_many_members");
        StoneSerializers.uInt64().serialize(AddFolderMemberError.c(paramAddFolderMemberError), paramJsonGenerator);
        paramJsonGenerator.writeEndObject();
        return;
      case 4: 
        paramJsonGenerator.writeString("cant_share_outside_team");
        return;
      case 3: 
        paramJsonGenerator.writeStartObject();
        writeTag("bad_member", paramJsonGenerator);
        paramJsonGenerator.writeFieldName("bad_member");
        AddMemberSelectorError.a.a.a(AddFolderMemberError.b(paramAddFolderMemberError), paramJsonGenerator);
        paramJsonGenerator.writeEndObject();
        return;
      case 2: 
        paramJsonGenerator.writeString("email_unverified");
        return;
      }
      paramJsonGenerator.writeStartObject();
      writeTag("access_error", paramJsonGenerator);
      paramJsonGenerator.writeFieldName("access_error");
      SharedFolderAccessError.a.a.a(AddFolderMemberError.a(paramAddFolderMemberError), paramJsonGenerator);
      paramJsonGenerator.writeEndObject();
    }
  }
}
