package com.dropbox.core.v2.sharing;

import com.dropbox.core.stone.UnionSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;

public enum SharedLinkAccessFailureReason
{
  static
  {
    EMAIL_VERIFY_REQUIRED = new SharedLinkAccessFailureReason("EMAIL_VERIFY_REQUIRED", 1);
    PASSWORD_REQUIRED = new SharedLinkAccessFailureReason("PASSWORD_REQUIRED", 2);
    TEAM_ONLY = new SharedLinkAccessFailureReason("TEAM_ONLY", 3);
    OWNER_ONLY = new SharedLinkAccessFailureReason("OWNER_ONLY", 4);
  }
  
  private SharedLinkAccessFailureReason() {}
  
  static class a
    extends UnionSerializer<SharedLinkAccessFailureReason>
  {
    public static final a a = new a();
    
    a() {}
    
    public SharedLinkAccessFailureReason a(JsonParser paramJsonParser)
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
        if ("login_required".equals(localObject)) {
          localObject = SharedLinkAccessFailureReason.LOGIN_REQUIRED;
        } else if ("email_verify_required".equals(localObject)) {
          localObject = SharedLinkAccessFailureReason.EMAIL_VERIFY_REQUIRED;
        } else if ("password_required".equals(localObject)) {
          localObject = SharedLinkAccessFailureReason.PASSWORD_REQUIRED;
        } else if ("team_only".equals(localObject)) {
          localObject = SharedLinkAccessFailureReason.TEAM_ONLY;
        } else if ("owner_only".equals(localObject)) {
          localObject = SharedLinkAccessFailureReason.OWNER_ONLY;
        } else {
          localObject = SharedLinkAccessFailureReason.OTHER;
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
    
    public void a(SharedLinkAccessFailureReason paramSharedLinkAccessFailureReason, JsonGenerator paramJsonGenerator)
      throws IOException, JsonGenerationException
    {
      switch (SharedLinkAccessFailureReason.1.a[paramSharedLinkAccessFailureReason.ordinal()])
      {
      default: 
        paramJsonGenerator.writeString("other");
        return;
      case 5: 
        paramJsonGenerator.writeString("owner_only");
        return;
      case 4: 
        paramJsonGenerator.writeString("team_only");
        return;
      case 3: 
        paramJsonGenerator.writeString("password_required");
        return;
      case 2: 
        paramJsonGenerator.writeString("email_verify_required");
        return;
      }
      paramJsonGenerator.writeString("login_required");
    }
  }
}
