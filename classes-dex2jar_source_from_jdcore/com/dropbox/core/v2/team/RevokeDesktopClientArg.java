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

public class RevokeDesktopClientArg
  extends DeviceSessionArg
{
  protected final boolean deleteOnUnlink;
  
  public RevokeDesktopClientArg(String paramString1, String paramString2)
  {
    this(paramString1, paramString2, false);
  }
  
  public RevokeDesktopClientArg(String paramString1, String paramString2, boolean paramBoolean)
  {
    super(paramString1, paramString2);
    deleteOnUnlink = paramBoolean;
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
      paramObject = (RevokeDesktopClientArg)paramObject;
      return ((sessionId == sessionId) || (sessionId.equals(sessionId))) && ((teamMemberId == teamMemberId) || (teamMemberId.equals(teamMemberId))) && (deleteOnUnlink == deleteOnUnlink);
    }
    return false;
  }
  
  public boolean getDeleteOnUnlink()
  {
    return deleteOnUnlink;
  }
  
  public String getSessionId()
  {
    return sessionId;
  }
  
  public String getTeamMemberId()
  {
    return teamMemberId;
  }
  
  public int hashCode()
  {
    int i = Arrays.hashCode(new Object[] { Boolean.valueOf(deleteOnUnlink) });
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
  
  static class a
    extends StructSerializer<RevokeDesktopClientArg>
  {
    public static final a a = new a();
    
    a() {}
    
    public RevokeDesktopClientArg a(JsonParser paramJsonParser, boolean paramBoolean)
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
        localObject1 = Boolean.valueOf(false);
        localObject2 = null;
        while (paramJsonParser.getCurrentToken() == JsonToken.FIELD_NAME)
        {
          String str2 = paramJsonParser.getCurrentName();
          paramJsonParser.nextToken();
          if ("session_id".equals(str2)) {
            str1 = (String)StoneSerializers.string().deserialize(paramJsonParser);
          } else if ("team_member_id".equals(str2)) {
            localObject2 = (String)StoneSerializers.string().deserialize(paramJsonParser);
          } else if ("delete_on_unlink".equals(str2)) {
            localObject1 = (Boolean)StoneSerializers.boolean_().deserialize(paramJsonParser);
          } else {
            skipValue(paramJsonParser);
          }
        }
        if (str1 != null)
        {
          if (localObject2 != null)
          {
            localObject1 = new RevokeDesktopClientArg(str1, (String)localObject2, ((Boolean)localObject1).booleanValue());
            if (!paramBoolean) {
              expectEndObject(paramJsonParser);
            }
            return localObject1;
          }
          throw new JsonParseException(paramJsonParser, "Required field \"team_member_id\" missing.");
        }
        throw new JsonParseException(paramJsonParser, "Required field \"session_id\" missing.");
      }
      Object localObject2 = new StringBuilder();
      ((StringBuilder)localObject2).append("No subtype found that matches tag: \"");
      ((StringBuilder)localObject2).append((String)localObject1);
      ((StringBuilder)localObject2).append("\"");
      throw new JsonParseException(paramJsonParser, ((StringBuilder)localObject2).toString());
    }
    
    public void a(RevokeDesktopClientArg paramRevokeDesktopClientArg, JsonGenerator paramJsonGenerator, boolean paramBoolean)
      throws IOException, JsonGenerationException
    {
      if (!paramBoolean) {
        paramJsonGenerator.writeStartObject();
      }
      paramJsonGenerator.writeFieldName("session_id");
      StoneSerializers.string().serialize(sessionId, paramJsonGenerator);
      paramJsonGenerator.writeFieldName("team_member_id");
      StoneSerializers.string().serialize(teamMemberId, paramJsonGenerator);
      paramJsonGenerator.writeFieldName("delete_on_unlink");
      StoneSerializers.boolean_().serialize(Boolean.valueOf(deleteOnUnlink), paramJsonGenerator);
      if (!paramBoolean) {
        paramJsonGenerator.writeEndObject();
      }
    }
  }
}
