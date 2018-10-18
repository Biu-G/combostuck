package com.dropbox.core.v2.team;

import com.dropbox.core.stone.UnionSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;

public enum MembersUnsuspendError
{
  static
  {
    OTHER = new MembersUnsuspendError("OTHER", 2);
    UNSUSPEND_NON_SUSPENDED_MEMBER = new MembersUnsuspendError("UNSUSPEND_NON_SUSPENDED_MEMBER", 3);
  }
  
  private MembersUnsuspendError() {}
  
  static class a
    extends UnionSerializer<MembersUnsuspendError>
  {
    public static final a a = new a();
    
    a() {}
    
    public MembersUnsuspendError a(JsonParser paramJsonParser)
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
          localObject = MembersUnsuspendError.USER_NOT_FOUND;
        }
        else if ("user_not_in_team".equals(localObject))
        {
          localObject = MembersUnsuspendError.USER_NOT_IN_TEAM;
        }
        else if ("other".equals(localObject))
        {
          localObject = MembersUnsuspendError.OTHER;
        }
        else if ("unsuspend_non_suspended_member".equals(localObject))
        {
          localObject = MembersUnsuspendError.UNSUSPEND_NON_SUSPENDED_MEMBER;
        }
        else
        {
          if (!"team_license_limit".equals(localObject)) {
            break label131;
          }
          localObject = MembersUnsuspendError.TEAM_LICENSE_LIMIT;
        }
        if (i == 0)
        {
          skipFields(paramJsonParser);
          expectEndObject(paramJsonParser);
        }
        return localObject;
        label131:
        StringBuilder localStringBuilder = new StringBuilder();
        localStringBuilder.append("Unknown tag: ");
        localStringBuilder.append((String)localObject);
        throw new JsonParseException(paramJsonParser, localStringBuilder.toString());
      }
      throw new JsonParseException(paramJsonParser, "Required field missing: .tag");
    }
    
    public void a(MembersUnsuspendError paramMembersUnsuspendError, JsonGenerator paramJsonGenerator)
      throws IOException, JsonGenerationException
    {
      switch (MembersUnsuspendError.1.a[paramMembersUnsuspendError.ordinal()])
      {
      default: 
        paramJsonGenerator = new StringBuilder();
        paramJsonGenerator.append("Unrecognized tag: ");
        paramJsonGenerator.append(paramMembersUnsuspendError);
        throw new IllegalArgumentException(paramJsonGenerator.toString());
      case 5: 
        paramJsonGenerator.writeString("team_license_limit");
        return;
      case 4: 
        paramJsonGenerator.writeString("unsuspend_non_suspended_member");
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
