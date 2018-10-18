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

public class UserMembershipInfo
  extends MembershipInfo
{
  protected final UserInfo user;
  
  public UserMembershipInfo(AccessLevel paramAccessLevel, UserInfo paramUserInfo)
  {
    this(paramAccessLevel, paramUserInfo, null, null, false);
  }
  
  public UserMembershipInfo(AccessLevel paramAccessLevel, UserInfo paramUserInfo, List<MemberPermission> paramList, String paramString, boolean paramBoolean)
  {
    super(paramAccessLevel, paramList, paramString, paramBoolean);
    if (paramUserInfo != null)
    {
      user = paramUserInfo;
      return;
    }
    throw new IllegalArgumentException("Required value for 'user' is null");
  }
  
  public static Builder newBuilder(AccessLevel paramAccessLevel, UserInfo paramUserInfo)
  {
    return new Builder(paramAccessLevel, paramUserInfo);
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
      paramObject = (UserMembershipInfo)paramObject;
      return ((accessType == accessType) || (accessType.equals(accessType))) && ((user == user) || (user.equals(user))) && ((permissions == permissions) || ((permissions != null) && (permissions.equals(permissions)))) && ((initials == initials) || ((initials != null) && (initials.equals(initials)))) && (isInherited == isInherited);
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
  
  public UserInfo getUser()
  {
    return user;
  }
  
  public int hashCode()
  {
    int i = Arrays.hashCode(new Object[] { user });
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
    protected final UserInfo user;
    
    protected Builder(AccessLevel paramAccessLevel, UserInfo paramUserInfo)
    {
      super();
      if (paramUserInfo != null)
      {
        user = paramUserInfo;
        return;
      }
      throw new IllegalArgumentException("Required value for 'user' is null");
    }
    
    public UserMembershipInfo build()
    {
      return new UserMembershipInfo(accessType, user, permissions, initials, isInherited);
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
  }
  
  static class a
    extends StructSerializer<UserMembershipInfo>
  {
    public static final a a = new a();
    
    a() {}
    
    public UserMembershipInfo a(JsonParser paramJsonParser, boolean paramBoolean)
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
          } else {
            skipValue(paramJsonParser);
          }
        }
        if (localAccessLevel != null)
        {
          if (localObject1 != null)
          {
            localObject1 = new UserMembershipInfo(localAccessLevel, (UserInfo)localObject1, (List)localObject2, (String)localObject3, localBoolean.booleanValue());
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
    
    public void a(UserMembershipInfo paramUserMembershipInfo, JsonGenerator paramJsonGenerator, boolean paramBoolean)
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
      if (!paramBoolean) {
        paramJsonGenerator.writeEndObject();
      }
    }
  }
}
