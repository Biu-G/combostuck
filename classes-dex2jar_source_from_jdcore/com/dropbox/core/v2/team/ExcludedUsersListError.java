package com.dropbox.core.v2.team;

import com.dropbox.core.stone.UnionSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;

public enum ExcludedUsersListError
{
  private ExcludedUsersListError() {}
  
  static class a
    extends UnionSerializer<ExcludedUsersListError>
  {
    public static final a a = new a();
    
    a() {}
    
    public ExcludedUsersListError a(JsonParser paramJsonParser)
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
        if ("list_error".equals(localObject)) {
          localObject = ExcludedUsersListError.LIST_ERROR;
        } else {
          localObject = ExcludedUsersListError.OTHER;
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
    
    public void a(ExcludedUsersListError paramExcludedUsersListError, JsonGenerator paramJsonGenerator)
      throws IOException, JsonGenerationException
    {
      if (ExcludedUsersListError.1.a[paramExcludedUsersListError.ordinal()] != 1)
      {
        paramJsonGenerator.writeString("other");
        return;
      }
      paramJsonGenerator.writeString("list_error");
    }
  }
}
