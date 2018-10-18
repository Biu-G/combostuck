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
import java.util.Iterator;
import java.util.List;

public class MemberLinkedApps
{
  protected final List<ApiApp> linkedApiApps;
  protected final String teamMemberId;
  
  public MemberLinkedApps(String paramString, List<ApiApp> paramList)
  {
    if (paramString != null)
    {
      teamMemberId = paramString;
      if (paramList != null)
      {
        paramString = paramList.iterator();
        while (paramString.hasNext()) {
          if ((ApiApp)paramString.next() == null) {
            throw new IllegalArgumentException("An item in list 'linkedApiApps' is null");
          }
        }
        linkedApiApps = paramList;
        return;
      }
      throw new IllegalArgumentException("Required value for 'linkedApiApps' is null");
    }
    throw new IllegalArgumentException("Required value for 'teamMemberId' is null");
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
      paramObject = (MemberLinkedApps)paramObject;
      if ((teamMemberId == teamMemberId) || (teamMemberId.equals(teamMemberId)))
      {
        if (linkedApiApps == linkedApiApps) {
          break label90;
        }
        if (linkedApiApps.equals(linkedApiApps)) {
          return true;
        }
      }
      bool = false;
      label90:
      return bool;
    }
    return false;
  }
  
  public List<ApiApp> getLinkedApiApps()
  {
    return linkedApiApps;
  }
  
  public String getTeamMemberId()
  {
    return teamMemberId;
  }
  
  public int hashCode()
  {
    return Arrays.hashCode(new Object[] { teamMemberId, linkedApiApps });
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
    extends StructSerializer<MemberLinkedApps>
  {
    public static final a a = new a();
    
    a() {}
    
    public MemberLinkedApps a(JsonParser paramJsonParser, boolean paramBoolean)
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
          if ("team_member_id".equals(str)) {
            localObject2 = (String)StoneSerializers.string().deserialize(paramJsonParser);
          } else if ("linked_api_apps".equals(str)) {
            localObject1 = (List)StoneSerializers.list(ApiApp.a.a).deserialize(paramJsonParser);
          } else {
            skipValue(paramJsonParser);
          }
        }
        if (localObject2 != null)
        {
          if (localObject1 != null)
          {
            localObject1 = new MemberLinkedApps((String)localObject2, (List)localObject1);
            if (!paramBoolean) {
              expectEndObject(paramJsonParser);
            }
            return localObject1;
          }
          throw new JsonParseException(paramJsonParser, "Required field \"linked_api_apps\" missing.");
        }
        throw new JsonParseException(paramJsonParser, "Required field \"team_member_id\" missing.");
      }
      localObject2 = new StringBuilder();
      ((StringBuilder)localObject2).append("No subtype found that matches tag: \"");
      ((StringBuilder)localObject2).append((String)localObject1);
      ((StringBuilder)localObject2).append("\"");
      throw new JsonParseException(paramJsonParser, ((StringBuilder)localObject2).toString());
    }
    
    public void a(MemberLinkedApps paramMemberLinkedApps, JsonGenerator paramJsonGenerator, boolean paramBoolean)
      throws IOException, JsonGenerationException
    {
      if (!paramBoolean) {
        paramJsonGenerator.writeStartObject();
      }
      paramJsonGenerator.writeFieldName("team_member_id");
      StoneSerializers.string().serialize(teamMemberId, paramJsonGenerator);
      paramJsonGenerator.writeFieldName("linked_api_apps");
      StoneSerializers.list(ApiApp.a.a).serialize(linkedApiApps, paramJsonGenerator);
      if (!paramBoolean) {
        paramJsonGenerator.writeEndObject();
      }
    }
  }
}
