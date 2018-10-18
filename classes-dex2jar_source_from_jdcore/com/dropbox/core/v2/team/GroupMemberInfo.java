package com.dropbox.core.v2.team;

import com.dropbox.core.stone.StructSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;

public class GroupMemberInfo
{
  protected final GroupAccessType accessType;
  protected final MemberProfile profile;
  
  public GroupMemberInfo(MemberProfile paramMemberProfile, GroupAccessType paramGroupAccessType)
  {
    if (paramMemberProfile != null)
    {
      profile = paramMemberProfile;
      if (paramGroupAccessType != null)
      {
        accessType = paramGroupAccessType;
        return;
      }
      throw new IllegalArgumentException("Required value for 'accessType' is null");
    }
    throw new IllegalArgumentException("Required value for 'profile' is null");
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
      paramObject = (GroupMemberInfo)paramObject;
      if ((profile == profile) || (profile.equals(profile)))
      {
        if (accessType == accessType) {
          break label88;
        }
        if (accessType.equals(accessType)) {
          return true;
        }
      }
      bool = false;
      label88:
      return bool;
    }
    return false;
  }
  
  public GroupAccessType getAccessType()
  {
    return accessType;
  }
  
  public MemberProfile getProfile()
  {
    return profile;
  }
  
  public int hashCode()
  {
    return Arrays.hashCode(new Object[] { profile, accessType });
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
    extends StructSerializer<GroupMemberInfo>
  {
    public static final a a = new a();
    
    a() {}
    
    public GroupMemberInfo a(JsonParser paramJsonParser, boolean paramBoolean)
      throws IOException, JsonParseException
    {
      Object localObject2 = null;
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
        localObject1 = null;
        while (paramJsonParser.getCurrentToken() == JsonToken.FIELD_NAME)
        {
          String str = paramJsonParser.getCurrentName();
          paramJsonParser.nextToken();
          if ("profile".equals(str)) {
            localObject2 = (MemberProfile)MemberProfile.a.a.deserialize(paramJsonParser);
          } else if ("access_type".equals(str)) {
            localObject1 = GroupAccessType.a.a.a(paramJsonParser);
          } else {
            skipValue(paramJsonParser);
          }
        }
        if (localObject2 != null)
        {
          if (localObject1 != null)
          {
            localObject1 = new GroupMemberInfo((MemberProfile)localObject2, (GroupAccessType)localObject1);
            if (!paramBoolean) {
              expectEndObject(paramJsonParser);
            }
            return localObject1;
          }
          throw new JsonParseException(paramJsonParser, "Required field \"access_type\" missing.");
        }
        throw new JsonParseException(paramJsonParser, "Required field \"profile\" missing.");
      }
      localObject2 = new StringBuilder();
      ((StringBuilder)localObject2).append("No subtype found that matches tag: \"");
      ((StringBuilder)localObject2).append((String)localObject1);
      ((StringBuilder)localObject2).append("\"");
      throw new JsonParseException(paramJsonParser, ((StringBuilder)localObject2).toString());
    }
    
    public void a(GroupMemberInfo paramGroupMemberInfo, JsonGenerator paramJsonGenerator, boolean paramBoolean)
      throws IOException, JsonGenerationException
    {
      if (!paramBoolean) {
        paramJsonGenerator.writeStartObject();
      }
      paramJsonGenerator.writeFieldName("profile");
      MemberProfile.a.a.serialize(profile, paramJsonGenerator);
      paramJsonGenerator.writeFieldName("access_type");
      GroupAccessType.a.a.a(accessType, paramJsonGenerator);
      if (!paramBoolean) {
        paramJsonGenerator.writeEndObject();
      }
    }
  }
}
