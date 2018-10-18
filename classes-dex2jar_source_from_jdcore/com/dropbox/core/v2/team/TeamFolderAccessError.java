package com.dropbox.core.v2.team;

import com.dropbox.core.stone.UnionSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;

public enum TeamFolderAccessError
{
  private TeamFolderAccessError() {}
  
  static class a
    extends UnionSerializer<TeamFolderAccessError>
  {
    public static final a a = new a();
    
    a() {}
    
    public TeamFolderAccessError a(JsonParser paramJsonParser)
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
        if ("invalid_team_folder_id".equals(localObject)) {
          localObject = TeamFolderAccessError.INVALID_TEAM_FOLDER_ID;
        } else if ("no_access".equals(localObject)) {
          localObject = TeamFolderAccessError.NO_ACCESS;
        } else {
          localObject = TeamFolderAccessError.OTHER;
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
    
    public void a(TeamFolderAccessError paramTeamFolderAccessError, JsonGenerator paramJsonGenerator)
      throws IOException, JsonGenerationException
    {
      switch (TeamFolderAccessError.1.a[paramTeamFolderAccessError.ordinal()])
      {
      default: 
        paramJsonGenerator.writeString("other");
        return;
      case 2: 
        paramJsonGenerator.writeString("no_access");
        return;
      }
      paramJsonGenerator.writeString("invalid_team_folder_id");
    }
  }
}
