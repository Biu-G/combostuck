package com.dropbox.core.v2.sharing;

import com.dropbox.core.stone.StoneSerializer;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.util.LangUtil;
import com.dropbox.core.v2.seenstate.PlatformType;
import com.dropbox.core.v2.seenstate.PlatformType.Serializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;
import java.util.Date;
import java.util.List;

public class UserFileMembershipInfo
  extends UserMembershipInfo
{
  protected final PlatformType platformType;
  protected final Date timeLastSeen;
  
  public UserFileMembershipInfo(AccessLevel paramAccessLevel, UserInfo paramUserInfo)
  {
    this(paramAccessLevel, paramUserInfo, null, null, false, null, null);
  }
  
  public UserFileMembershipInfo(AccessLevel paramAccessLevel, UserInfo paramUserInfo, List<MemberPermission> paramList, String paramString, boolean paramBoolean, Date paramDate, PlatformType paramPlatformType)
  {
    super(paramAccessLevel, paramUserInfo, paramList, paramString, paramBoolean);
    timeLastSeen = LangUtil.truncateMillis(paramDate);
    platformType = paramPlatformType;
  }
  
  public static Builder newBuilder(AccessLevel paramAccessLevel, UserInfo paramUserInfo)
  {
    return new Builder(paramAccessLevel, paramUserInfo);
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
      paramObject = (UserFileMembershipInfo)paramObject;
      if (((accessType == accessType) || (accessType.equals(accessType))) && ((user == user) || (user.equals(user))) && ((permissions == permissions) || ((permissions != null) && (permissions.equals(permissions)))) && ((initials == initials) || ((initials != null) && (initials.equals(initials)))) && (isInherited == isInherited) && ((timeLastSeen == timeLastSeen) || ((timeLastSeen != null) && (timeLastSeen.equals(timeLastSeen)))))
      {
        if (platformType == platformType) {
          break label229;
        }
        if ((platformType != null) && (platformType.equals(platformType))) {
          return true;
        }
      }
      bool = false;
      label229:
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
  
  public boolean getIsInherited()
  {
    return isInherited;
  }
  
  public List<MemberPermission> getPermissions()
  {
    return permissions;
  }
  
  public PlatformType getPlatformType()
  {
    return platformType;
  }
  
  public Date getTimeLastSeen()
  {
    return timeLastSeen;
  }
  
  public UserInfo getUser()
  {
    return user;
  }
  
  public int hashCode()
  {
    int i = Arrays.hashCode(new Object[] { timeLastSeen, platformType });
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
    extends UserMembershipInfo.Builder
  {
    protected PlatformType platformType = null;
    protected Date timeLastSeen = null;
    
    protected Builder(AccessLevel paramAccessLevel, UserInfo paramUserInfo)
    {
      super(paramUserInfo);
    }
    
    public UserFileMembershipInfo build()
    {
      return new UserFileMembershipInfo(accessType, user, permissions, initials, isInherited, timeLastSeen, platformType);
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
    
    public Builder withPlatformType(PlatformType paramPlatformType)
    {
      platformType = paramPlatformType;
      return this;
    }
    
    public Builder withTimeLastSeen(Date paramDate)
    {
      timeLastSeen = LangUtil.truncateMillis(paramDate);
      return this;
    }
  }
  
  static class a
    extends StructSerializer<UserFileMembershipInfo>
  {
    public static final a a = new a();
    
    a() {}
    
    public UserFileMembershipInfo a(JsonParser paramJsonParser, boolean paramBoolean)
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
        Object localObject5 = localObject4;
        while (paramJsonParser.getCurrentToken() == JsonToken.FIELD_NAME)
        {
          String str = paramJsonParser.getCurrentName();
          paramJsonParser.nextToken();
          if ("access_type".equals(str)) {
            localAccessLevel = AccessLevel.Serializer.INSTANCE.deserialize(paramJsonParser);
          } else if ("user".equals(str)) {
            localObject1 = (UserInfo)UserInfo.Serializer.INSTANCE.deserialize(paramJsonParser);
          } else if ("permissions".equals(str)) {
            localObject2 = (List)StoneSerializers.nullable(StoneSerializers.list(MemberPermission.a.a)).deserialize(paramJsonParser);
          } else if ("initials".equals(str)) {
            localObject3 = (String)StoneSerializers.nullable(StoneSerializers.string()).deserialize(paramJsonParser);
          } else if ("is_inherited".equals(str)) {
            localBoolean = (Boolean)StoneSerializers.boolean_().deserialize(paramJsonParser);
          } else if ("time_last_seen".equals(str)) {
            localObject4 = (Date)StoneSerializers.nullable(StoneSerializers.timestamp()).deserialize(paramJsonParser);
          } else if ("platform_type".equals(str)) {
            localObject5 = (PlatformType)StoneSerializers.nullable(PlatformType.Serializer.INSTANCE).deserialize(paramJsonParser);
          } else {
            skipValue(paramJsonParser);
          }
        }
        if (localAccessLevel != null)
        {
          if (localObject1 != null)
          {
            localObject1 = new UserFileMembershipInfo(localAccessLevel, (UserInfo)localObject1, (List)localObject2, (String)localObject3, localBoolean.booleanValue(), (Date)localObject4, (PlatformType)localObject5);
            if (!paramBoolean) {
              expectEndObject(paramJsonParser);
            }
            return localObject1;
          }
          throw new JsonParseException(paramJsonParser, "Required field \"user\" missing.");
        }
        throw new JsonParseException(paramJsonParser, "Required field \"access_type\" missing.");
      }
      Object localObject2 = new StringBuilder();
      ((StringBuilder)localObject2).append("No subtype found that matches tag: \"");
      ((StringBuilder)localObject2).append((String)localObject1);
      ((StringBuilder)localObject2).append("\"");
      throw new JsonParseException(paramJsonParser, ((StringBuilder)localObject2).toString());
    }
    
    public void a(UserFileMembershipInfo paramUserFileMembershipInfo, JsonGenerator paramJsonGenerator, boolean paramBoolean)
      throws IOException, JsonGenerationException
    {
      if (!paramBoolean) {
        paramJsonGenerator.writeStartObject();
      }
      paramJsonGenerator.writeFieldName("access_type");
      AccessLevel.Serializer.INSTANCE.serialize(accessType, paramJsonGenerator);
      paramJsonGenerator.writeFieldName("user");
      UserInfo.Serializer.INSTANCE.serialize(user, paramJsonGenerator);
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
      if (timeLastSeen != null)
      {
        paramJsonGenerator.writeFieldName("time_last_seen");
        StoneSerializers.nullable(StoneSerializers.timestamp()).serialize(timeLastSeen, paramJsonGenerator);
      }
      if (platformType != null)
      {
        paramJsonGenerator.writeFieldName("platform_type");
        StoneSerializers.nullable(PlatformType.Serializer.INSTANCE).serialize(platformType, paramJsonGenerator);
      }
      if (!paramBoolean) {
        paramJsonGenerator.writeEndObject();
      }
    }
  }
}
