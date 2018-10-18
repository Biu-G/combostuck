package com.dropbox.core.v2.team;

import com.dropbox.core.stone.UnionSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;

public enum MembersSetProfileError
{
  static
  {
    EXTERNAL_ID_AND_NEW_EXTERNAL_ID_UNSAFE = new MembersSetProfileError("EXTERNAL_ID_AND_NEW_EXTERNAL_ID_UNSAFE", 2);
    NO_NEW_DATA_SPECIFIED = new MembersSetProfileError("NO_NEW_DATA_SPECIFIED", 3);
    EMAIL_RESERVED_FOR_OTHER_USER = new MembersSetProfileError("EMAIL_RESERVED_FOR_OTHER_USER", 4);
    EXTERNAL_ID_USED_BY_OTHER_USER = new MembersSetProfileError("EXTERNAL_ID_USED_BY_OTHER_USER", 5);
    SET_PROFILE_DISALLOWED = new MembersSetProfileError("SET_PROFILE_DISALLOWED", 6);
    PARAM_CANNOT_BE_EMPTY = new MembersSetProfileError("PARAM_CANNOT_BE_EMPTY", 7);
    PERSISTENT_ID_DISABLED = new MembersSetProfileError("PERSISTENT_ID_DISABLED", 8);
    PERSISTENT_ID_USED_BY_OTHER_USER = new MembersSetProfileError("PERSISTENT_ID_USED_BY_OTHER_USER", 9);
  }
  
  private MembersSetProfileError() {}
  
  static class a
    extends UnionSerializer<MembersSetProfileError>
  {
    public static final a a = new a();
    
    a() {}
    
    public MembersSetProfileError a(JsonParser paramJsonParser)
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
          localObject = MembersSetProfileError.USER_NOT_FOUND;
        } else if ("user_not_in_team".equals(localObject)) {
          localObject = MembersSetProfileError.USER_NOT_IN_TEAM;
        } else if ("external_id_and_new_external_id_unsafe".equals(localObject)) {
          localObject = MembersSetProfileError.EXTERNAL_ID_AND_NEW_EXTERNAL_ID_UNSAFE;
        } else if ("no_new_data_specified".equals(localObject)) {
          localObject = MembersSetProfileError.NO_NEW_DATA_SPECIFIED;
        } else if ("email_reserved_for_other_user".equals(localObject)) {
          localObject = MembersSetProfileError.EMAIL_RESERVED_FOR_OTHER_USER;
        } else if ("external_id_used_by_other_user".equals(localObject)) {
          localObject = MembersSetProfileError.EXTERNAL_ID_USED_BY_OTHER_USER;
        } else if ("set_profile_disallowed".equals(localObject)) {
          localObject = MembersSetProfileError.SET_PROFILE_DISALLOWED;
        } else if ("param_cannot_be_empty".equals(localObject)) {
          localObject = MembersSetProfileError.PARAM_CANNOT_BE_EMPTY;
        } else if ("persistent_id_disabled".equals(localObject)) {
          localObject = MembersSetProfileError.PERSISTENT_ID_DISABLED;
        } else if ("persistent_id_used_by_other_user".equals(localObject)) {
          localObject = MembersSetProfileError.PERSISTENT_ID_USED_BY_OTHER_USER;
        } else if ("directory_restricted_off".equals(localObject)) {
          localObject = MembersSetProfileError.DIRECTORY_RESTRICTED_OFF;
        } else {
          localObject = MembersSetProfileError.OTHER;
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
    
    public void a(MembersSetProfileError paramMembersSetProfileError, JsonGenerator paramJsonGenerator)
      throws IOException, JsonGenerationException
    {
      switch (MembersSetProfileError.1.a[paramMembersSetProfileError.ordinal()])
      {
      default: 
        paramJsonGenerator.writeString("other");
        return;
      case 11: 
        paramJsonGenerator.writeString("directory_restricted_off");
        return;
      case 10: 
        paramJsonGenerator.writeString("persistent_id_used_by_other_user");
        return;
      case 9: 
        paramJsonGenerator.writeString("persistent_id_disabled");
        return;
      case 8: 
        paramJsonGenerator.writeString("param_cannot_be_empty");
        return;
      case 7: 
        paramJsonGenerator.writeString("set_profile_disallowed");
        return;
      case 6: 
        paramJsonGenerator.writeString("external_id_used_by_other_user");
        return;
      case 5: 
        paramJsonGenerator.writeString("email_reserved_for_other_user");
        return;
      case 4: 
        paramJsonGenerator.writeString("no_new_data_specified");
        return;
      case 3: 
        paramJsonGenerator.writeString("external_id_and_new_external_id_unsafe");
        return;
      case 2: 
        paramJsonGenerator.writeString("user_not_in_team");
        return;
      }
      paramJsonGenerator.writeString("user_not_found");
    }
  }
}
