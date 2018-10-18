package com.dropbox.core.v2.team;

import com.dropbox.core.stone.UnionSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;

public enum GroupsGetInfoError
{
  private GroupsGetInfoError() {}
  
  static class a
    extends UnionSerializer<GroupsGetInfoError>
  {
    public static final a a = new a();
    
    a() {}
    
    public GroupsGetInfoError a(JsonParser paramJsonParser)
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
        if ("group_not_on_team".equals(localObject)) {
          localObject = GroupsGetInfoError.GROUP_NOT_ON_TEAM;
        } else {
          localObject = GroupsGetInfoError.OTHER;
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
    
    public void a(GroupsGetInfoError paramGroupsGetInfoError, JsonGenerator paramJsonGenerator)
      throws IOException, JsonGenerationException
    {
      if (GroupsGetInfoError.1.a[paramGroupsGetInfoError.ordinal()] != 1)
      {
        paramJsonGenerator.writeString("other");
        return;
      }
      paramJsonGenerator.writeString("group_not_on_team");
    }
  }
}
