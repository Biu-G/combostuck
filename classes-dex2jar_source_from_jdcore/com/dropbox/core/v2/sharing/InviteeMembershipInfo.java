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
import java.util.List;

public class InviteeMembershipInfo
  extends MembershipInfo
{
  protected final InviteeInfo invitee;
  protected final UserInfo user;
  
  public InviteeMembershipInfo(AccessLevel paramAccessLevel, InviteeInfo paramInviteeInfo)
  {
    this(paramAccessLevel, paramInviteeInfo, null, null, false, null);
  }
  
  public InviteeMembershipInfo(AccessLevel paramAccessLevel, InviteeInfo paramInviteeInfo, List<MemberPermission> paramList, String paramString, boolean paramBoolean, UserInfo paramUserInfo)
  {
    super(paramAccessLevel, paramList, paramString, paramBoolean);
    if (paramInviteeInfo != null)
    {
      invitee = paramInviteeInfo;
      user = paramUserInfo;
      return;
    }
    throw new IllegalArgumentException("Required value for 'invitee' is null");
  }
  
  public static Builder newBuilder(AccessLevel paramAccessLevel, InviteeInfo paramInviteeInfo)
  {
    return new Builder(paramAccessLevel, paramInviteeInfo);
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
      paramObject = (InviteeMembershipInfo)paramObject;
      if (((accessType == accessType) || (accessType.equals(accessType))) && ((invitee == invitee) || (invitee.equals(invitee))) && ((permissions == permissions) || ((permissions != null) && (permissions.equals(permissions)))) && ((initials == initials) || ((initials != null) && (initials.equals(initials)))) && (isInherited == isInherited))
      {
        if (user == user) {
          break label197;
        }
        if ((user != null) && (user.equals(user))) {
          return true;
        }
      }
      bool = false;
      label197:
      return bool;
    }
    return false;
  }
  
  public AccessLevel getAccessType()
  {
    return accessType;
  }
  
  public String getInitials()
  {
    return initials;
  }
  
  public InviteeInfo getInvitee()
  {
    return invitee;
  }
  
  public boolean getIsInherited()
  {
    return isInherited;
  }
  
  public List<MemberPermission> getPermissions()
  {
    return permissions;
  }
  
  public UserInfo getUser()
  {
    return user;
  }
  
  public int hashCode()
  {
    int i = Arrays.hashCode(new Object[] { invitee, user });
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
    extends MembershipInfo.Builder
  {
    protected final InviteeInfo invitee;
    protected UserInfo user;
    
    protected Builder(AccessLevel paramAccessLevel, InviteeInfo paramInviteeInfo)
    {
      super();
      if (paramInviteeInfo != null)
      {
        invitee = paramInviteeInfo;
        user = null;
        return;
      }
      throw new IllegalArgumentException("Required value for 'invitee' is null");
    }
    
    public InviteeMembershipInfo build()
    {
      return new InviteeMembershipInfo(accessType, invitee, permissions, initials, isInherited, user);
    }
    
    public Builder withInitials(String paramString)
    {
      super.withInitials(paramString);
      return this;
    }
    
    public Builder withIsInherited(Boolean paramBoolean)
    {
      super.withIsInherited(paramBoolean);
      return this;
    }
    
    public Builder withPermissions(List<MemberPermission> paramList)
    {
      super.withPermissions(paramList);
      return this;
    }
    
    public Builder withUser(UserInfo paramUserInfo)
    {
      user = paramUserInfo;
      return this;
    }
  }
  
  static class a
    extends StructSerializer<InviteeMembershipInfo>
  {
    public static final a a = new a();
    
    a() {}
    
    public InviteeMembershipInfo a(JsonParser paramJsonParser, boolean paramBoolean)
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
        Boolean localBoolean = Boolean.valueOf(false);
        AccessLevel localAccessLevel = null;
        localObject1 = localAccessLevel;
        localObject2 = localObject1;
        Object localObject3 = localObject2;
        Object localObject4 = localObject3;
        while (paramJsonParser.getCurrentToken() == JsonToken.FIELD_NAME)
        {
          String str = paramJsonParser.getCurrentName();
          paramJsonParser.nextToken();
          if ("access_type".equals(str)) {
            localAccessLevel = AccessLevel.Serializer.INSTANCE.deserialize(paramJsonParser);
          } else if ("invitee".equals(str)) {
            localObject1 = InviteeInfo.Serializer.INSTANCE.deserialize(paramJsonParser);
          } else if ("permissions".equals(str)) {
            localObject2 = (List)StoneSerializers.nullable(StoneSerializers.list(MemberPermission.a.a)).deserialize(paramJsonParser);
          } else if ("initials".equals(str)) {
            localObject3 = (String)StoneSerializers.nullable(StoneSerializers.string()).deserialize(paramJsonParser);
          } else if ("is_inherited".equals(str)) {
            localBoolean = (Boolean)StoneSerializers.boolean_().deserialize(paramJsonParser);
          } else if ("user".equals(str)) {
            localObject4 = (UserInfo)StoneSerializers.nullableStruct(UserInfo.Serializer.INSTANCE).deserialize(paramJsonParser);
          } else {
            skipValue(paramJsonParser);
          }
        }
        if (localAccessLevel != null)
        {
          if (localObject1 != null)
          {
            localObject1 = new InviteeMembershipInfo(localAccessLevel, (InviteeInfo)localObject1, (List)localObject2, (String)localObject3, localBoolean.booleanValue(), (UserInfo)localObject4);
            if (!paramBoolean) {
              expectEndObject(paramJsonParser);
            }
            return localObject1;
          }
          throw new JsonParseException(paramJsonParser, "Required field \"invitee\" missing.");
        }
        throw new JsonParseException(paramJsonParser, "Required field \"access_type\" missing.");
      }
      Object localObject2 = new StringBuilder();
      ((StringBuilder)localObject2).append("No subtype found that matches tag: \"");
      ((StringBuilder)localObject2).append((String)localObject1);
      ((StringBuilder)localObject2).append("\"");
      throw new JsonParseException(paramJsonParser, ((StringBuilder)localObject2).toString());
    }
    
    public void a(InviteeMembershipInfo paramInviteeMembershipInfo, JsonGenerator paramJsonGenerator, boolean paramBoolean)
      throws IOException, JsonGenerationException
    {
      if (!paramBoolean) {
        paramJsonGenerator.writeStartObject();
      }
      paramJsonGenerator.writeFieldName("access_type");
      AccessLevel.Serializer.INSTANCE.serialize(accessType, paramJsonGenerator);
      paramJsonGenerator.writeFieldName("invitee");
      InviteeInfo.Serializer.INSTANCE.serialize(invitee, paramJsonGenerator);
      if (permissions != null)
      {
        paramJsonGenerator.writeFieldName("permissions");
        StoneSerializers.nullable(StoneSerializers.list(MemberPermission.a.a)).serialize(permissions, paramJsonGenerator);
      }
      if (initials != null)
      {
        paramJsonGenerator.writeFieldName("initials");
        StoneSerializers.nullable(StoneSerializers.string()).serialize(initials, paramJsonGenerator);
      }
      paramJsonGenerator.writeFieldName("is_inherited");
      StoneSerializers.boolean_().serialize(Boolean.valueOf(isInherited), paramJsonGenerator);
      if (user != null)
      {
        paramJsonGenerator.writeFieldName("user");
        StoneSerializers.nullableStruct(UserInfo.Serializer.INSTANCE).serialize(user, paramJsonGenerator);
      }
      if (!paramBoolean) {
        paramJsonGenerator.writeEndObject();
      }
    }
  }
}
