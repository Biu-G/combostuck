package com.dropbox.core.v2.filerequests;

import com.dropbox.core.stone.UnionSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;

public enum UpdateFileRequestError
{
  static
  {
    NOT_FOUND = new UpdateFileRequestError("NOT_FOUND", 2);
    NOT_A_FOLDER = new UpdateFileRequestError("NOT_A_FOLDER", 3);
    APP_LACKS_ACCESS = new UpdateFileRequestError("APP_LACKS_ACCESS", 4);
    NO_PERMISSION = new UpdateFileRequestError("NO_PERMISSION", 5);
  }
  
  private UpdateFileRequestError() {}
  
  static class a
    extends UnionSerializer<UpdateFileRequestError>
  {
    public static final a a = new a();
    
    a() {}
    
    public UpdateFileRequestError a(JsonParser paramJsonParser)
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
        if ("disabled_for_team".equals(localObject))
        {
          localObject = UpdateFileRequestError.DISABLED_FOR_TEAM;
        }
        else if ("other".equals(localObject))
        {
          localObject = UpdateFileRequestError.OTHER;
        }
        else if ("not_found".equals(localObject))
        {
          localObject = UpdateFileRequestError.NOT_FOUND;
        }
        else if ("not_a_folder".equals(localObject))
        {
          localObject = UpdateFileRequestError.NOT_A_FOLDER;
        }
        else if ("app_lacks_access".equals(localObject))
        {
          localObject = UpdateFileRequestError.APP_LACKS_ACCESS;
        }
        else if ("no_permission".equals(localObject))
        {
          localObject = UpdateFileRequestError.NO_PERMISSION;
        }
        else if ("email_unverified".equals(localObject))
        {
          localObject = UpdateFileRequestError.EMAIL_UNVERIFIED;
        }
        else
        {
          if (!"validation_error".equals(localObject)) {
            break label179;
          }
          localObject = UpdateFileRequestError.VALIDATION_ERROR;
        }
        if (i == 0)
        {
          skipFields(paramJsonParser);
          expectEndObject(paramJsonParser);
        }
        return localObject;
        label179:
        StringBuilder localStringBuilder = new StringBuilder();
        localStringBuilder.append("Unknown tag: ");
        localStringBuilder.append((String)localObject);
        throw new JsonParseException(paramJsonParser, localStringBuilder.toString());
      }
      throw new JsonParseException(paramJsonParser, "Required field missing: .tag");
    }
    
    public void a(UpdateFileRequestError paramUpdateFileRequestError, JsonGenerator paramJsonGenerator)
      throws IOException, JsonGenerationException
    {
      switch (UpdateFileRequestError.1.a[paramUpdateFileRequestError.ordinal()])
      {
      default: 
        paramJsonGenerator = new StringBuilder();
        paramJsonGenerator.append("Unrecognized tag: ");
        paramJsonGenerator.append(paramUpdateFileRequestError);
        throw new IllegalArgumentException(paramJsonGenerator.toString());
      case 8: 
        paramJsonGenerator.writeString("validation_error");
        return;
      case 7: 
        paramJsonGenerator.writeString("email_unverified");
        return;
      case 6: 
        paramJsonGenerator.writeString("no_permission");
        return;
      case 5: 
        paramJsonGenerator.writeString("app_lacks_access");
        return;
      case 4: 
        paramJsonGenerator.writeString("not_a_folder");
        return;
      case 3: 
        paramJsonGenerator.writeString("not_found");
        return;
      case 2: 
        paramJsonGenerator.writeString("other");
        return;
      }
      paramJsonGenerator.writeString("disabled_for_team");
    }
  }
}
