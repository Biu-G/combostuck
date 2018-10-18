package com.dropbox.core.v2.team;

import com.dropbox.core.stone.UnionSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;

public enum ExcludedUsersUpdateError
{
  static
  {
    TOO_MANY_USERS = new ExcludedUsersUpdateError("TOO_MANY_USERS", 1);
  }
  
  private ExcludedUsersUpdateError() {}
  
  static class a
    extends UnionSerializer<ExcludedUsersUpdateError>
  {
    public static final a a = new a();
    
    a() {}
    
    public ExcludedUsersUpdateError a(JsonParser paramJsonParser)
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
        if ("users_not_in_team".equals(localObject)) {
          localObject = ExcludedUsersUpdateError.USERS_NOT_IN_TEAM;
        } else if ("too_many_users".equals(localObject)) {
          localObject = ExcludedUsersUpdateError.TOO_MANY_USERS;
        } else {
          localObject = ExcludedUsersUpdateError.OTHER;
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
    
    public void a(ExcludedUsersUpdateError paramExcludedUsersUpdateError, JsonGenerator paramJsonGenerator)
      throws IOException, JsonGenerationException
    {
      switch (ExcludedUsersUpdateError.1.a[paramExcludedUsersUpdateError.ordinal()])
      {
      default: 
        paramJsonGenerator.writeString("other");
        return;
      case 2: 
        paramJsonGenerator.writeString("too_many_users");
        return;
      }
      paramJsonGenerator.writeString("users_not_in_team");
    }
  }
}
