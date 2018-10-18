package com.dropbox.core.v2.team;

import com.dropbox.core.stone.UnionSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;

public enum MembersSuspendError
{
  private MembersSuspendError() {}
  
  static class a
    extends UnionSerializer<MembersSuspendError>
  {
    public static final a a = new a();
    
    a() {}
    
    public MembersSuspendError a(JsonParser paramJsonParser)
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
          localObject = MembersSuspendError.USER_NOT_FOUND;
        }
        else if ("user_not_in_team".equals(localObject))
        {
          localObject = MembersSuspendError.USER_NOT_IN_TEAM;
        }
        else if ("other".equals(localObject))
        {
          localObject = MembersSuspendError.OTHER;
        }
        else if ("suspend_inactive_user".equals(localObject))
        {
          localObject = MembersSuspendError.SUSPEND_INACTIVE_USER;
        }
        else if ("suspend_last_admin".equals(localObject))
        {
          localObject = MembersSuspendError.SUSPEND_LAST_ADMIN;
        }
        else
        {
          if (!"team_license_limit".equals(localObject)) {
            break label147;
          }
          localObject = MembersSuspendError.TEAM_LICENSE_LIMIT;
        }
        if (i == 0)
        {
          skipFields(paramJsonParser);
          expectEndObject(paramJsonParser);
        }
        return localObject;
        label147:
        StringBuilder localStringBuilder = new StringBuilder();
        localStringBuilder.append("Unknown tag: ");
        localStringBuilder.append((String)localObject);
        throw new JsonParseException(paramJsonParser, localStringBuilder.toString());
      }
      throw new JsonParseException(paramJsonParser, "Required field missing: .tag");
    }
    
    public void a(MembersSuspendError paramMembersSuspendError, JsonGenerator paramJsonGenerator)
      throws IOException, JsonGenerationException
    {
      switch (MembersSuspendError.1.a[paramMembersSuspendError.ordinal()])
      {
      default: 
        paramJsonGenerator = new StringBuilder();
        paramJsonGenerator.append("Unrecognized tag: ");
        paramJsonGenerator.append(paramMembersSuspendError);
        throw new IllegalArgumentException(paramJsonGenerator.toString());
      case 6: 
        paramJsonGenerator.writeString("team_license_limit");
        return;
      case 5: 
        paramJsonGenerator.writeString("suspend_last_admin");
        return;
      case 4: 
        paramJsonGenerator.writeString("suspend_inactive_user");
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
