package com.dropbox.core.v2.team;

import com.dropbox.core.stone.UnionSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;

public enum ListMemberAppsError
{
  private ListMemberAppsError() {}
  
  static class a
    extends UnionSerializer<ListMemberAppsError>
  {
    public static final a a = new a();
    
    a() {}
    
    public ListMemberAppsError a(JsonParser paramJsonParser)
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
        if ("member_not_found".equals(localObject)) {
          localObject = ListMemberAppsError.MEMBER_NOT_FOUND;
        } else {
          localObject = ListMemberAppsError.OTHER;
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
    
    public void a(ListMemberAppsError paramListMemberAppsError, JsonGenerator paramJsonGenerator)
      throws IOException, JsonGenerationException
    {
      if (ListMemberAppsError.1.a[paramListMemberAppsError.ordinal()] != 1)
      {
        paramJsonGenerator.writeString("other");
        return;
      }
      paramJsonGenerator.writeString("member_not_found");
    }
  }
}
