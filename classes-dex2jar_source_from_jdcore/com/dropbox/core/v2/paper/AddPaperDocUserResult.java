package com.dropbox.core.v2.paper;

import com.dropbox.core.stone.UnionSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;

public enum AddPaperDocUserResult
{
  static
  {
    SHARING_OUTSIDE_TEAM_DISABLED = new AddPaperDocUserResult("SHARING_OUTSIDE_TEAM_DISABLED", 2);
    DAILY_LIMIT_REACHED = new AddPaperDocUserResult("DAILY_LIMIT_REACHED", 3);
    USER_IS_OWNER = new AddPaperDocUserResult("USER_IS_OWNER", 4);
    FAILED_USER_DATA_RETRIEVAL = new AddPaperDocUserResult("FAILED_USER_DATA_RETRIEVAL", 5);
    PERMISSION_ALREADY_GRANTED = new AddPaperDocUserResult("PERMISSION_ALREADY_GRANTED", 6);
  }
  
  private AddPaperDocUserResult() {}
  
  static class a
    extends UnionSerializer<AddPaperDocUserResult>
  {
    public static final a a = new a();
    
    a() {}
    
    public AddPaperDocUserResult a(JsonParser paramJsonParser)
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
        if ("success".equals(localObject)) {
          localObject = AddPaperDocUserResult.SUCCESS;
        } else if ("unknown_error".equals(localObject)) {
          localObject = AddPaperDocUserResult.UNKNOWN_ERROR;
        } else if ("sharing_outside_team_disabled".equals(localObject)) {
          localObject = AddPaperDocUserResult.SHARING_OUTSIDE_TEAM_DISABLED;
        } else if ("daily_limit_reached".equals(localObject)) {
          localObject = AddPaperDocUserResult.DAILY_LIMIT_REACHED;
        } else if ("user_is_owner".equals(localObject)) {
          localObject = AddPaperDocUserResult.USER_IS_OWNER;
        } else if ("failed_user_data_retrieval".equals(localObject)) {
          localObject = AddPaperDocUserResult.FAILED_USER_DATA_RETRIEVAL;
        } else if ("permission_already_granted".equals(localObject)) {
          localObject = AddPaperDocUserResult.PERMISSION_ALREADY_GRANTED;
        } else {
          localObject = AddPaperDocUserResult.OTHER;
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
    
    public void a(AddPaperDocUserResult paramAddPaperDocUserResult, JsonGenerator paramJsonGenerator)
      throws IOException, JsonGenerationException
    {
      switch (AddPaperDocUserResult.1.a[paramAddPaperDocUserResult.ordinal()])
      {
      default: 
        paramJsonGenerator.writeString("other");
        return;
      case 7: 
        paramJsonGenerator.writeString("permission_already_granted");
        return;
      case 6: 
        paramJsonGenerator.writeString("failed_user_data_retrieval");
        return;
      case 5: 
        paramJsonGenerator.writeString("user_is_owner");
        return;
      case 4: 
        paramJsonGenerator.writeString("daily_limit_reached");
        return;
      case 3: 
        paramJsonGenerator.writeString("sharing_outside_team_disabled");
        return;
      case 2: 
        paramJsonGenerator.writeString("unknown_error");
        return;
      }
      paramJsonGenerator.writeString("success");
    }
  }
}
