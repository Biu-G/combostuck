package com.dropbox.core.v2.team;

import com.dropbox.core.stone.UnionSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;

public enum MembersSendWelcomeError
{
  private MembersSendWelcomeError() {}
  
  static class a
    extends UnionSerializer<MembersSendWelcomeError>
  {
    public static final a a = new a();
    
    a() {}
    
    public MembersSendWelcomeError a(JsonParser paramJsonParser)
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
          localObject = MembersSendWelcomeError.USER_NOT_FOUND;
        } else if ("user_not_in_team".equals(localObject)) {
          localObject = MembersSendWelcomeError.USER_NOT_IN_TEAM;
        } else {
          localObject = MembersSendWelcomeError.OTHER;
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
    
    public void a(MembersSendWelcomeError paramMembersSendWelcomeError, JsonGenerator paramJsonGenerator)
      throws IOException, JsonGenerationException
    {
      switch (MembersSendWelcomeError.1.a[paramMembersSendWelcomeError.ordinal()])
      {
      default: 
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
