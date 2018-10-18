package com.dropbox.core.v2.team;

import com.dropbox.core.stone.StructSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;

public class TeamMemberInfo
{
  protected final TeamMemberProfile profile;
  protected final AdminTier role;
  
  public TeamMemberInfo(TeamMemberProfile paramTeamMemberProfile, AdminTier paramAdminTier)
  {
    if (paramTeamMemberProfile != null)
    {
      profile = paramTeamMemberProfile;
      if (paramAdminTier != null)
      {
        role = paramAdminTier;
        return;
      }
      throw new IllegalArgumentException("Required value for 'role' is null");
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
      paramObject = (TeamMemberInfo)paramObject;
      if ((profile == profile) || (profile.equals(profile)))
      {
        if (role == role) {
          break label88;
        }
        if (role.equals(role)) {
          return true;
        }
      }
      bool = false;
      label88:
      return bool;
    }
    return false;
  }
  
  public TeamMemberProfile getProfile()
  {
    return profile;
  }
  
  public AdminTier getRole()
  {
    return role;
  }
  
  public int hashCode()
  {
    return Arrays.hashCode(new Object[] { profile, role });
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
    extends StructSerializer<TeamMemberInfo>
  {
    public static final a a = new a();
    
    a() {}
    
    public TeamMemberInfo a(JsonParser paramJsonParser, boolean paramBoolean)
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
            localObject2 = (TeamMemberProfile)TeamMemberProfile.a.a.deserialize(paramJsonParser);
          } else if ("role".equals(str)) {
            localObject1 = AdminTier.a.a.a(paramJsonParser);
          } else {
            skipValue(paramJsonParser);
          }
        }
        if (localObject2 != null)
        {
          if (localObject1 != null)
          {
            localObject1 = new TeamMemberInfo((TeamMemberProfile)localObject2, (AdminTier)localObject1);
            if (!paramBoolean) {
              expectEndObject(paramJsonParser);
            }
            return localObject1;
          }
          throw new JsonParseException(paramJsonParser, "Required field \"role\" missing.");
        }
        throw new JsonParseException(paramJsonParser, "Required field \"profile\" missing.");
      }
      localObject2 = new StringBuilder();
      ((StringBuilder)localObject2).append("No subtype found that matches tag: \"");
      ((StringBuilder)localObject2).append((String)localObject1);
      ((StringBuilder)localObject2).append("\"");
      throw new JsonParseException(paramJsonParser, ((StringBuilder)localObject2).toString());
    }
    
    public void a(TeamMemberInfo paramTeamMemberInfo, JsonGenerator paramJsonGenerator, boolean paramBoolean)
      throws IOException, JsonGenerationException
    {
      if (!paramBoolean) {
        paramJsonGenerator.writeStartObject();
      }
      paramJsonGenerator.writeFieldName("profile");
      TeamMemberProfile.a.a.serialize(profile, paramJsonGenerator);
      paramJsonGenerator.writeFieldName("role");
      AdminTier.a.a.a(role, paramJsonGenerator);
      if (!paramBoolean) {
        paramJsonGenerator.writeEndObject();
      }
    }
  }
}
