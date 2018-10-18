package com.dropbox.core.v2.sharing;

import com.dropbox.core.stone.StoneSerializer;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.v2.users.Team;
import com.dropbox.core.v2.users.Team.Serializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;

public class TeamMemberInfo
{
  protected final String displayName;
  protected final String memberId;
  protected final Team teamInfo;
  
  public TeamMemberInfo(Team paramTeam, String paramString)
  {
    this(paramTeam, paramString, null);
  }
  
  public TeamMemberInfo(Team paramTeam, String paramString1, String paramString2)
  {
    if (paramTeam != null)
    {
      teamInfo = paramTeam;
      if (paramString1 != null)
      {
        displayName = paramString1;
        memberId = paramString2;
        return;
      }
      throw new IllegalArgumentException("Required value for 'displayName' is null");
    }
    throw new IllegalArgumentException("Required value for 'teamInfo' is null");
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
      if (((teamInfo == teamInfo) || (teamInfo.equals(teamInfo))) && ((displayName == displayName) || (displayName.equals(displayName))))
      {
        if (memberId == memberId) {
          break label120;
        }
        if ((memberId != null) && (memberId.equals(memberId))) {
          return true;
        }
      }
      bool = false;
      label120:
      return bool;
    }
    return false;
  }
  
  public String getDisplayName()
  {
    return displayName;
  }
  
  public String getMemberId()
  {
    return memberId;
  }
  
  public Team getTeamInfo()
  {
    return teamInfo;
  }
  
  public int hashCode()
  {
    return Arrays.hashCode(new Object[] { teamInfo, displayName, memberId });
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
      Team localTeam = null;
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
        localObject2 = null;
        localObject1 = localObject2;
        while (paramJsonParser.getCurrentToken() == JsonToken.FIELD_NAME)
        {
          String str = paramJsonParser.getCurrentName();
          paramJsonParser.nextToken();
          if ("team_info".equals(str)) {
            localTeam = (Team)Team.Serializer.INSTANCE.deserialize(paramJsonParser);
          } else if ("display_name".equals(str)) {
            localObject2 = (String)StoneSerializers.string().deserialize(paramJsonParser);
          } else if ("member_id".equals(str)) {
            localObject1 = (String)StoneSerializers.nullable(StoneSerializers.string()).deserialize(paramJsonParser);
          } else {
            skipValue(paramJsonParser);
          }
        }
        if (localTeam != null)
        {
          if (localObject2 != null)
          {
            localObject1 = new TeamMemberInfo(localTeam, (String)localObject2, (String)localObject1);
            if (!paramBoolean) {
              expectEndObject(paramJsonParser);
            }
            return localObject1;
          }
          throw new JsonParseException(paramJsonParser, "Required field \"display_name\" missing.");
        }
        throw new JsonParseException(paramJsonParser, "Required field \"team_info\" missing.");
      }
      Object localObject2 = new StringBuilder();
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
      paramJsonGenerator.writeFieldName("team_info");
      Team.Serializer.INSTANCE.serialize(teamInfo, paramJsonGenerator);
      paramJsonGenerator.writeFieldName("display_name");
      StoneSerializers.string().serialize(displayName, paramJsonGenerator);
      if (memberId != null)
      {
        paramJsonGenerator.writeFieldName("member_id");
        StoneSerializers.nullable(StoneSerializers.string()).serialize(memberId, paramJsonGenerator);
      }
      if (!paramBoolean) {
        paramJsonGenerator.writeEndObject();
      }
    }
  }
}
