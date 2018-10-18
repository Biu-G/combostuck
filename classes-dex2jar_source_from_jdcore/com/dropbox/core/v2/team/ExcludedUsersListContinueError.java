package com.dropbox.core.v2.team;

import com.dropbox.core.stone.UnionSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;

public enum ExcludedUsersListContinueError
{
  private ExcludedUsersListContinueError() {}
  
  static class a
    extends UnionSerializer<ExcludedUsersListContinueError>
  {
    public static final a a = new a();
    
    a() {}
    
    public ExcludedUsersListContinueError a(JsonParser paramJsonParser)
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
        if ("invalid_cursor".equals(localObject)) {
          localObject = ExcludedUsersListContinueError.INVALID_CURSOR;
        } else {
          localObject = ExcludedUsersListContinueError.OTHER;
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
    
    public void a(ExcludedUsersListContinueError paramExcludedUsersListContinueError, JsonGenerator paramJsonGenerator)
      throws IOException, JsonGenerationException
    {
      if (ExcludedUsersListContinueError.1.a[paramExcludedUsersListContinueError.ordinal()] != 1)
      {
        paramJsonGenerator.writeString("other");
        return;
      }
      paramJsonGenerator.writeString("invalid_cursor");
    }
  }
}
