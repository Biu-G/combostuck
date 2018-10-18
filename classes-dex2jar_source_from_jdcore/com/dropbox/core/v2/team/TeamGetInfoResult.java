package com.dropbox.core.v2.team;

import com.dropbox.core.stone.StoneSerializer;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.v2.teampolicies.TeamMemberPolicies;
import com.dropbox.core.v2.teampolicies.TeamMemberPolicies.Serializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;

public class TeamGetInfoResult
{
  protected final String name;
  protected final long numLicensedUsers;
  protected final long numProvisionedUsers;
  protected final TeamMemberPolicies policies;
  protected final String teamId;
  
  public TeamGetInfoResult(String paramString1, String paramString2, long paramLong1, long paramLong2, TeamMemberPolicies paramTeamMemberPolicies)
  {
    if (paramString1 != null)
    {
      name = paramString1;
      if (paramString2 != null)
      {
        teamId = paramString2;
        numLicensedUsers = paramLong1;
        numProvisionedUsers = paramLong2;
        if (paramTeamMemberPolicies != null)
        {
          policies = paramTeamMemberPolicies;
          return;
        }
        throw new IllegalArgumentException("Required value for 'policies' is null");
      }
      throw new IllegalArgumentException("Required value for 'teamId' is null");
    }
    throw new IllegalArgumentException("Required value for 'name' is null");
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
      paramObject = (TeamGetInfoResult)paramObject;
      if (((name == name) || (name.equals(name))) && ((teamId == teamId) || (teamId.equals(teamId))) && (numLicensedUsers == numLicensedUsers) && (numProvisionedUsers == numProvisionedUsers))
      {
        if (policies == policies) {
          break label137;
        }
        if (policies.equals(policies)) {
          return true;
        }
      }
      bool = false;
      label137:
      return bool;
    }
    return false;
  }
  
  public String getName()
  {
    return name;
  }
  
  public long getNumLicensedUsers()
  {
    return numLicensedUsers;
  }
  
  public long getNumProvisionedUsers()
  {
    return numProvisionedUsers;
  }
  
  public TeamMemberPolicies getPolicies()
  {
    return policies;
  }
  
  public String getTeamId()
  {
    return teamId;
  }
  
  public int hashCode()
  {
    return Arrays.hashCode(new Object[] { name, teamId, Long.valueOf(numLicensedUsers), Long.valueOf(numProvisionedUsers), policies });
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
    extends StructSerializer<TeamGetInfoResult>
  {
    public static final a a = new a();
    
    a() {}
    
    public TeamGetInfoResult a(JsonParser paramJsonParser, boolean paramBoolean)
      throws IOException, JsonParseException
    {
      Long localLong2 = null;
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
        Long localLong1 = null;
        localObject1 = localLong1;
        localObject2 = localObject1;
        Object localObject3 = localObject2;
        while (paramJsonParser.getCurrentToken() == JsonToken.FIELD_NAME)
        {
          String str = paramJsonParser.getCurrentName();
          paramJsonParser.nextToken();
          if ("name".equals(str)) {
            localObject1 = (String)StoneSerializers.string().deserialize(paramJsonParser);
          } else if ("team_id".equals(str)) {
            localObject2 = (String)StoneSerializers.string().deserialize(paramJsonParser);
          } else if ("num_licensed_users".equals(str)) {
            localLong2 = (Long)StoneSerializers.uInt32().deserialize(paramJsonParser);
          } else if ("num_provisioned_users".equals(str)) {
            localLong1 = (Long)StoneSerializers.uInt32().deserialize(paramJsonParser);
          } else if ("policies".equals(str)) {
            localObject3 = (TeamMemberPolicies)TeamMemberPolicies.Serializer.INSTANCE.deserialize(paramJsonParser);
          } else {
            skipValue(paramJsonParser);
          }
        }
        if (localObject1 != null)
        {
          if (localObject2 != null)
          {
            if (localLong2 != null)
            {
              if (localLong1 != null)
              {
                if (localObject3 != null)
                {
                  localObject1 = new TeamGetInfoResult((String)localObject1, (String)localObject2, localLong2.longValue(), localLong1.longValue(), (TeamMemberPolicies)localObject3);
                  if (!paramBoolean) {
                    expectEndObject(paramJsonParser);
                  }
                  return localObject1;
                }
                throw new JsonParseException(paramJsonParser, "Required field \"policies\" missing.");
              }
              throw new JsonParseException(paramJsonParser, "Required field \"num_provisioned_users\" missing.");
            }
            throw new JsonParseException(paramJsonParser, "Required field \"num_licensed_users\" missing.");
          }
          throw new JsonParseException(paramJsonParser, "Required field \"team_id\" missing.");
        }
        throw new JsonParseException(paramJsonParser, "Required field \"name\" missing.");
      }
      Object localObject2 = new StringBuilder();
      ((StringBuilder)localObject2).append("No subtype found that matches tag: \"");
      ((StringBuilder)localObject2).append((String)localObject1);
      ((StringBuilder)localObject2).append("\"");
      throw new JsonParseException(paramJsonParser, ((StringBuilder)localObject2).toString());
    }
    
    public void a(TeamGetInfoResult paramTeamGetInfoResult, JsonGenerator paramJsonGenerator, boolean paramBoolean)
      throws IOException, JsonGenerationException
    {
      if (!paramBoolean) {
        paramJsonGenerator.writeStartObject();
      }
      paramJsonGenerator.writeFieldName("name");
      StoneSerializers.string().serialize(name, paramJsonGenerator);
      paramJsonGenerator.writeFieldName("team_id");
      StoneSerializers.string().serialize(teamId, paramJsonGenerator);
      paramJsonGenerator.writeFieldName("num_licensed_users");
      StoneSerializers.uInt32().serialize(Long.valueOf(numLicensedUsers), paramJsonGenerator);
      paramJsonGenerator.writeFieldName("num_provisioned_users");
      StoneSerializers.uInt32().serialize(Long.valueOf(numProvisionedUsers), paramJsonGenerator);
      paramJsonGenerator.writeFieldName("policies");
      TeamMemberPolicies.Serializer.INSTANCE.serialize(policies, paramJsonGenerator);
      if (!paramBoolean) {
        paramJsonGenerator.writeEndObject();
      }
    }
  }
}
