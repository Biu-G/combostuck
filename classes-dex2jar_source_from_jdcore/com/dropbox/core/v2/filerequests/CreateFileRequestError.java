package com.dropbox.core.v2.filerequests;

import com.dropbox.core.stone.UnionSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;

public enum CreateFileRequestError
{
  static
  {
    NOT_FOUND = new CreateFileRequestError("NOT_FOUND", 2);
    NOT_A_FOLDER = new CreateFileRequestError("NOT_A_FOLDER", 3);
    APP_LACKS_ACCESS = new CreateFileRequestError("APP_LACKS_ACCESS", 4);
    NO_PERMISSION = new CreateFileRequestError("NO_PERMISSION", 5);
    EMAIL_UNVERIFIED = new CreateFileRequestError("EMAIL_UNVERIFIED", 6);
    VALIDATION_ERROR = new CreateFileRequestError("VALIDATION_ERROR", 7);
  }
  
  private CreateFileRequestError() {}
  
  static class a
    extends UnionSerializer<CreateFileRequestError>
  {
    public static final a a = new a();
    
    a() {}
    
    public CreateFileRequestError a(JsonParser paramJsonParser)
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
          localObject = CreateFileRequestError.DISABLED_FOR_TEAM;
        }
        else if ("other".equals(localObject))
        {
          localObject = CreateFileRequestError.OTHER;
        }
        else if ("not_found".equals(localObject))
        {
          localObject = CreateFileRequestError.NOT_FOUND;
        }
        else if ("not_a_folder".equals(localObject))
        {
          localObject = CreateFileRequestError.NOT_A_FOLDER;
        }
        else if ("app_lacks_access".equals(localObject))
        {
          localObject = CreateFileRequestError.APP_LACKS_ACCESS;
        }
        else if ("no_permission".equals(localObject))
        {
          localObject = CreateFileRequestError.NO_PERMISSION;
        }
        else if ("email_unverified".equals(localObject))
        {
          localObject = CreateFileRequestError.EMAIL_UNVERIFIED;
        }
        else if ("validation_error".equals(localObject))
        {
          localObject = CreateFileRequestError.VALIDATION_ERROR;
        }
        else if ("invalid_location".equals(localObject))
        {
          localObject = CreateFileRequestError.INVALID_LOCATION;
        }
        else
        {
          if (!"rate_limit".equals(localObject)) {
            break label211;
          }
          localObject = CreateFileRequestError.RATE_LIMIT;
        }
        if (i == 0)
        {
          skipFields(paramJsonParser);
          expectEndObject(paramJsonParser);
        }
        return localObject;
        label211:
        StringBuilder localStringBuilder = new StringBuilder();
        localStringBuilder.append("Unknown tag: ");
        localStringBuilder.append((String)localObject);
        throw new JsonParseException(paramJsonParser, localStringBuilder.toString());
      }
      throw new JsonParseException(paramJsonParser, "Required field missing: .tag");
    }
    
    public void a(CreateFileRequestError paramCreateFileRequestError, JsonGenerator paramJsonGenerator)
      throws IOException, JsonGenerationException
    {
      switch (CreateFileRequestError.1.a[paramCreateFileRequestError.ordinal()])
      {
      default: 
        paramJsonGenerator = new StringBuilder();
        paramJsonGenerator.append("Unrecognized tag: ");
        paramJsonGenerator.append(paramCreateFileRequestError);
        throw new IllegalArgumentException(paramJsonGenerator.toString());
      case 10: 
        paramJsonGenerator.writeString("rate_limit");
        return;
      case 9: 
        paramJsonGenerator.writeString("invalid_location");
        return;
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
