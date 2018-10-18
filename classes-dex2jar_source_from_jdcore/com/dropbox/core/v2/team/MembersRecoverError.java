package com.dropbox.core.v2.team;

import com.dropbox.core.stone.UnionSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;

public enum MembersRecoverError
{
  static
  {
    USER_NOT_IN_TEAM = new MembersRecoverError("USER_NOT_IN_TEAM", 2);
    TEAM_LICENSE_LIMIT = new MembersRecoverError("TEAM_LICENSE_LIMIT", 3);
  }
  
  private MembersRecoverError() {}
  
  static class a
    extends UnionSerializer<MembersRecoverError>
  {
    public static final a a = new a();
    
    a() {}
    
    public MembersRecoverError a(JsonParser paramJsonParser)
      throws IOException, JsonParseException
    {
      int i;
      Object localObject;
      if (paramJsonParser.getCurrentToken() == JsonToken.VALUE_STRING)
      {
        i = 1;
        localObject = getStringValue(paramJsonParser);
        paramJsonParser.nextToken();
      }
      else
      {
        i = 0;
        expectStartObject(paramJsonParser);
        localObject = readTag(paramJsonParser);
      }
      if (localObject != null)
      {
        if ("user_not_found".equals(localObject)) {
          localObject = MembersRecoverError.USER_NOT_FOUND;
        } else if ("user_unrecoverable".equals(localObject)) {
          localObject = MembersRecoverError.USER_UNRECOVERABLE;
        } else if ("user_not_in_team".equals(localObject)) {
          localObject = MembersRecoverError.USER_NOT_IN_TEAM;
        } else if ("team_license_limit".equals(localObject)) {
          localObject = MembersRecoverError.TEAM_LICENSE_LIMIT;
        } else {
          localObject = MembersRecoverError.OTHER;
        }
        if (i == 0)
        {
          skipFields(paramJsonParser);
          expectEndObject(paramJsonParser);
        }
        return localObject;
      }
      throw new JsonParseException(paramJsonParser, "Required field missing: .tag");
    }
    
    public void a(MembersRecoverError paramMembersRecoverError, JsonGenerator paramJsonGenerator)
      throws IOException, JsonGenerationException
    {
      switch (MembersRecoverError.1.a[paramMembersRecoverError.ordinal()])
      {
      default: 
        paramJsonGenerator.writeString("other");
        return;
      case 4: 
        paramJsonGenerator.writeString("team_license_limit");
        return;
      case 3: 
        paramJsonGenerator.writeString("user_not_in_team");
        return;
      case 2: 
        paramJsonGenerator.writeString("user_unrecoverable");
        return;
      }
      paramJsonGenerator.writeString("user_not_found");
    }
  }
}
