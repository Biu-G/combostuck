package com.dropbox.core.v2.team;

import com.dropbox.core.stone.UnionSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;

public enum TeamFolderInvalidStatusError
{
  private TeamFolderInvalidStatusError() {}
  
  static class a
    extends UnionSerializer<TeamFolderInvalidStatusError>
  {
    public static final a a = new a();
    
    a() {}
    
    public TeamFolderInvalidStatusError a(JsonParser paramJsonParser)
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
        if ("active".equals(localObject)) {
          localObject = TeamFolderInvalidStatusError.ACTIVE;
        } else if ("archived".equals(localObject)) {
          localObject = TeamFolderInvalidStatusError.ARCHIVED;
        } else if ("archive_in_progress".equals(localObject)) {
          localObject = TeamFolderInvalidStatusError.ARCHIVE_IN_PROGRESS;
        } else {
          localObject = TeamFolderInvalidStatusError.OTHER;
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
    
    public void a(TeamFolderInvalidStatusError paramTeamFolderInvalidStatusError, JsonGenerator paramJsonGenerator)
      throws IOException, JsonGenerationException
    {
      switch (TeamFolderInvalidStatusError.1.a[paramTeamFolderInvalidStatusError.ordinal()])
      {
      default: 
        paramJsonGenerator.writeString("other");
        return;
      case 3: 
        paramJsonGenerator.writeString("archive_in_progress");
        return;
      case 2: 
        paramJsonGenerator.writeString("archived");
        return;
      }
      paramJsonGenerator.writeString("active");
    }
  }
}
