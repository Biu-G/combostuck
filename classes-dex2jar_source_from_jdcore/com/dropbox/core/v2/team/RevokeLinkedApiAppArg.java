package com.dropbox.core.v2.team;

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

public class RevokeLinkedApiAppArg
{
  protected final String appId;
  protected final boolean keepAppFolder;
  protected final String teamMemberId;
  
  public RevokeLinkedApiAppArg(String paramString1, String paramString2)
  {
    this(paramString1, paramString2, true);
  }
  
  public RevokeLinkedApiAppArg(String paramString1, String paramString2, boolean paramBoolean)
  {
    if (paramString1 != null)
    {
      appId = paramString1;
      if (paramString2 != null)
      {
        teamMemberId = paramString2;
        keepAppFolder = paramBoolean;
        return;
      }
      throw new IllegalArgumentException("Required value for 'teamMemberId' is null");
    }
    throw new IllegalArgumentException("Required value for 'appId' is null");
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
      paramObject = (RevokeLinkedApiAppArg)paramObject;
      return ((appId == appId) || (appId.equals(appId))) && ((teamMemberId == teamMemberId) || (teamMemberId.equals(teamMemberId))) && (keepAppFolder == keepAppFolder);
    }
    return false;
  }
  
  public String getAppId()
  {
    return appId;
  }
  
  public boolean getKeepAppFolder()
  {
    return keepAppFolder;
  }
  
  public String getTeamMemberId()
  {
    return teamMemberId;
  }
  
  public int hashCode()
  {
    return Arrays.hashCode(new Object[] { appId, teamMemberId, Boolean.valueOf(keepAppFolder) });
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
    extends StructSerializer<RevokeLinkedApiAppArg>
  {
    public static final a a = new a();
    
    a() {}
    
    public RevokeLinkedApiAppArg a(JsonParser paramJsonParser, boolean paramBoolean)
      throws IOException, JsonParseException
    {
      String str1 = null;
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
        localObject1 = Boolean.valueOf(true);
        localObject2 = null;
        while (paramJsonParser.getCurrentToken() == JsonToken.FIELD_NAME)
        {
          String str2 = paramJsonParser.getCurrentName();
          paramJsonParser.nextToken();
          if ("app_id".equals(str2)) {
            str1 = (String)StoneSerializers.string().deserialize(paramJsonParser);
          } else if ("team_member_id".equals(str2)) {
            localObject2 = (String)StoneSerializers.string().deserialize(paramJsonParser);
          } else if ("keep_app_folder".equals(str2)) {
            localObject1 = (Boolean)StoneSerializers.boolean_().deserialize(paramJsonParser);
          } else {
            skipValue(paramJsonParser);
          }
        }
        if (str1 != null)
        {
          if (localObject2 != null)
          {
            localObject1 = new RevokeLinkedApiAppArg(str1, (String)localObject2, ((Boolean)localObject1).booleanValue());
            if (!paramBoolean) {
              expectEndObject(paramJsonParser);
            }
            return localObject1;
          }
          throw new JsonParseException(paramJsonParser, "Required field \"team_member_id\" missing.");
        }
        throw new JsonParseException(paramJsonParser, "Required field \"app_id\" missing.");
      }
      Object localObject2 = new StringBuilder();
      ((StringBuilder)localObject2).append("No subtype found that matches tag: \"");
      ((StringBuilder)localObject2).append((String)localObject1);
      ((StringBuilder)localObject2).append("\"");
      throw new JsonParseException(paramJsonParser, ((StringBuilder)localObject2).toString());
    }
    
    public void a(RevokeLinkedApiAppArg paramRevokeLinkedApiAppArg, JsonGenerator paramJsonGenerator, boolean paramBoolean)
      throws IOException, JsonGenerationException
    {
      if (!paramBoolean) {
        paramJsonGenerator.writeStartObject();
      }
      paramJsonGenerator.writeFieldName("app_id");
      StoneSerializers.string().serialize(appId, paramJsonGenerator);
      paramJsonGenerator.writeFieldName("team_member_id");
      StoneSerializers.string().serialize(teamMemberId, paramJsonGenerator);
      paramJsonGenerator.writeFieldName("keep_app_folder");
      StoneSerializers.boolean_().serialize(Boolean.valueOf(keepAppFolder), paramJsonGenerator);
      if (!paramBoolean) {
        paramJsonGenerator.writeEndObject();
      }
    }
  }
}
