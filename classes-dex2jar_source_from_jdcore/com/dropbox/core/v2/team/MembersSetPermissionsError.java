package com.dropbox.core.v2.team;

import com.dropbox.core.stone.UnionSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;

public enum MembersSetPermissionsError
{
  static
  {
    LAST_ADMIN = new MembersSetPermissionsError("LAST_ADMIN", 1);
    USER_NOT_IN_TEAM = new MembersSetPermissionsError("USER_NOT_IN_TEAM", 2);
    CANNOT_SET_PERMISSIONS = new MembersSetPermissionsError("CANNOT_SET_PERMISSIONS", 3);
    TEAM_LICENSE_LIMIT = new MembersSetPermissionsError("TEAM_LICENSE_LIMIT", 4);
  }
  
  private MembersSetPermissionsError() {}
  
  static class a
    extends UnionSerializer<MembersSetPermissionsError>
  {
    public static final a a = new a();
    
    a() {}
    
    public MembersSetPermissionsError a(JsonParser paramJsonParser)
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
          localObject = MembersSetPermissionsError.USER_NOT_FOUND;
        } else if ("last_admin".equals(localObject)) {
          localObject = MembersSetPermissionsError.LAST_ADMIN;
        } else if ("user_not_in_team".equals(localObject)) {
          localObject = MembersSetPermissionsError.USER_NOT_IN_TEAM;
        } else if ("cannot_set_permissions".equals(localObject)) {
          localObject = MembersSetPermissionsError.CANNOT_SET_PERMISSIONS;
        } else if ("team_license_limit".equals(localObject)) {
          localObject = MembersSetPermissionsError.TEAM_LICENSE_LIMIT;
        } else {
          localObject = MembersSetPermissionsError.OTHER;
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
    
    public void a(MembersSetPermissionsError paramMembersSetPermissionsError, JsonGenerator paramJsonGenerator)
      throws IOException, JsonGenerationException
    {
      switch (MembersSetPermissionsError.1.a[paramMembersSetPermissionsError.ordinal()])
      {
      default: 
        paramJsonGenerator.writeString("other");
        return;
      case 5: 
        paramJsonGenerator.writeString("team_license_limit");
        return;
      case 4: 
        paramJsonGenerator.writeString("cannot_set_permissions");
        return;
      case 3: 
        paramJsonGenerator.writeString("user_not_in_team");
        return;
      case 2: 
        paramJsonGenerator.writeString("last_admin");
        return;
      }
      paramJsonGenerator.writeString("user_not_found");
    }
  }
}
