package com.dropbox.core.v2.team;

import com.dropbox.core.stone.UnionSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;

public enum MembersRemoveError
{
  static
  {
    OTHER = new MembersRemoveError("OTHER", 2);
    REMOVE_LAST_ADMIN = new MembersRemoveError("REMOVE_LAST_ADMIN", 3);
    REMOVED_AND_TRANSFER_DEST_SHOULD_DIFFER = new MembersRemoveError("REMOVED_AND_TRANSFER_DEST_SHOULD_DIFFER", 4);
    REMOVED_AND_TRANSFER_ADMIN_SHOULD_DIFFER = new MembersRemoveError("REMOVED_AND_TRANSFER_ADMIN_SHOULD_DIFFER", 5);
    TRANSFER_DEST_USER_NOT_FOUND = new MembersRemoveError("TRANSFER_DEST_USER_NOT_FOUND", 6);
    TRANSFER_DEST_USER_NOT_IN_TEAM = new MembersRemoveError("TRANSFER_DEST_USER_NOT_IN_TEAM", 7);
    TRANSFER_ADMIN_USER_NOT_FOUND = new MembersRemoveError("TRANSFER_ADMIN_USER_NOT_FOUND", 8);
    TRANSFER_ADMIN_USER_NOT_IN_TEAM = new MembersRemoveError("TRANSFER_ADMIN_USER_NOT_IN_TEAM", 9);
    UNSPECIFIED_TRANSFER_ADMIN_ID = new MembersRemoveError("UNSPECIFIED_TRANSFER_ADMIN_ID", 10);
    TRANSFER_ADMIN_IS_NOT_ADMIN = new MembersRemoveError("TRANSFER_ADMIN_IS_NOT_ADMIN", 11);
    CANNOT_KEEP_ACCOUNT_AND_TRANSFER = new MembersRemoveError("CANNOT_KEEP_ACCOUNT_AND_TRANSFER", 12);
    CANNOT_KEEP_ACCOUNT_AND_DELETE_DATA = new MembersRemoveError("CANNOT_KEEP_ACCOUNT_AND_DELETE_DATA", 13);
    EMAIL_ADDRESS_TOO_LONG_TO_BE_DISABLED = new MembersRemoveError("EMAIL_ADDRESS_TOO_LONG_TO_BE_DISABLED", 14);
  }
  
  private MembersRemoveError() {}
  
  static class a
    extends UnionSerializer<MembersRemoveError>
  {
    public static final a a = new a();
    
    a() {}
    
    public MembersRemoveError a(JsonParser paramJsonParser)
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
        if ("user_not_found".equals(localObject))
        {
          localObject = MembersRemoveError.USER_NOT_FOUND;
        }
        else if ("user_not_in_team".equals(localObject))
        {
          localObject = MembersRemoveError.USER_NOT_IN_TEAM;
        }
        else if ("other".equals(localObject))
        {
          localObject = MembersRemoveError.OTHER;
        }
        else if ("remove_last_admin".equals(localObject))
        {
          localObject = MembersRemoveError.REMOVE_LAST_ADMIN;
        }
        else if ("removed_and_transfer_dest_should_differ".equals(localObject))
        {
          localObject = MembersRemoveError.REMOVED_AND_TRANSFER_DEST_SHOULD_DIFFER;
        }
        else if ("removed_and_transfer_admin_should_differ".equals(localObject))
        {
          localObject = MembersRemoveError.REMOVED_AND_TRANSFER_ADMIN_SHOULD_DIFFER;
        }
        else if ("transfer_dest_user_not_found".equals(localObject))
        {
          localObject = MembersRemoveError.TRANSFER_DEST_USER_NOT_FOUND;
        }
        else if ("transfer_dest_user_not_in_team".equals(localObject))
        {
          localObject = MembersRemoveError.TRANSFER_DEST_USER_NOT_IN_TEAM;
        }
        else if ("transfer_admin_user_not_found".equals(localObject))
        {
          localObject = MembersRemoveError.TRANSFER_ADMIN_USER_NOT_FOUND;
        }
        else if ("transfer_admin_user_not_in_team".equals(localObject))
        {
          localObject = MembersRemoveError.TRANSFER_ADMIN_USER_NOT_IN_TEAM;
        }
        else if ("unspecified_transfer_admin_id".equals(localObject))
        {
          localObject = MembersRemoveError.UNSPECIFIED_TRANSFER_ADMIN_ID;
        }
        else if ("transfer_admin_is_not_admin".equals(localObject))
        {
          localObject = MembersRemoveError.TRANSFER_ADMIN_IS_NOT_ADMIN;
        }
        else if ("cannot_keep_account_and_transfer".equals(localObject))
        {
          localObject = MembersRemoveError.CANNOT_KEEP_ACCOUNT_AND_TRANSFER;
        }
        else if ("cannot_keep_account_and_delete_data".equals(localObject))
        {
          localObject = MembersRemoveError.CANNOT_KEEP_ACCOUNT_AND_DELETE_DATA;
        }
        else if ("email_address_too_long_to_be_disabled".equals(localObject))
        {
          localObject = MembersRemoveError.EMAIL_ADDRESS_TOO_LONG_TO_BE_DISABLED;
        }
        else
        {
          if (!"cannot_keep_invited_user_account".equals(localObject)) {
            break label307;
          }
          localObject = MembersRemoveError.CANNOT_KEEP_INVITED_USER_ACCOUNT;
        }
        if (i == 0)
        {
          skipFields(paramJsonParser);
          expectEndObject(paramJsonParser);
        }
        return localObject;
        label307:
        StringBuilder localStringBuilder = new StringBuilder();
        localStringBuilder.append("Unknown tag: ");
        localStringBuilder.append((String)localObject);
        throw new JsonParseException(paramJsonParser, localStringBuilder.toString());
      }
      throw new JsonParseException(paramJsonParser, "Required field missing: .tag");
    }
    
    public void a(MembersRemoveError paramMembersRemoveError, JsonGenerator paramJsonGenerator)
      throws IOException, JsonGenerationException
    {
      switch (MembersRemoveError.1.a[paramMembersRemoveError.ordinal()])
      {
      default: 
        paramJsonGenerator = new StringBuilder();
        paramJsonGenerator.append("Unrecognized tag: ");
        paramJsonGenerator.append(paramMembersRemoveError);
        throw new IllegalArgumentException(paramJsonGenerator.toString());
      case 16: 
        paramJsonGenerator.writeString("cannot_keep_invited_user_account");
        return;
      case 15: 
        paramJsonGenerator.writeString("email_address_too_long_to_be_disabled");
        return;
      case 14: 
        paramJsonGenerator.writeString("cannot_keep_account_and_delete_data");
        return;
      case 13: 
        paramJsonGenerator.writeString("cannot_keep_account_and_transfer");
        return;
      case 12: 
        paramJsonGenerator.writeString("transfer_admin_is_not_admin");
        return;
      case 11: 
        paramJsonGenerator.writeString("unspecified_transfer_admin_id");
        return;
      case 10: 
        paramJsonGenerator.writeString("transfer_admin_user_not_in_team");
        return;
      case 9: 
        paramJsonGenerator.writeString("transfer_admin_user_not_found");
        return;
      case 8: 
        paramJsonGenerator.writeString("transfer_dest_user_not_in_team");
        return;
      case 7: 
        paramJsonGenerator.writeString("transfer_dest_user_not_found");
        return;
      case 6: 
        paramJsonGenerator.writeString("removed_and_transfer_admin_should_differ");
        return;
      case 5: 
        paramJsonGenerator.writeString("removed_and_transfer_dest_should_differ");
        return;
      case 4: 
        paramJsonGenerator.writeString("remove_last_admin");
        return;
      case 3: 
        paramJsonGenerator.writeString("other");
        return;
      case 2: 
        paramJsonGenerator.writeString("user_not_in_team");
        return;
      }
      paramJsonGenerator.writeString("user_not_found");
    }
  }
}
