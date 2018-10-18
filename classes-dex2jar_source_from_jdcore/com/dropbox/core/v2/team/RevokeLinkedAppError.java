package com.dropbox.core.v2.team;

import com.dropbox.core.stone.UnionSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;

public enum RevokeLinkedAppError
{
  private RevokeLinkedAppError() {}
  
  static class a
    extends UnionSerializer<RevokeLinkedAppError>
  {
    public static final a a = new a();
    
    a() {}
    
    public RevokeLinkedAppError a(JsonParser paramJsonParser)
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
        if ("app_not_found".equals(localObject)) {
          localObject = RevokeLinkedAppError.APP_NOT_FOUND;
        } else if ("member_not_found".equals(localObject)) {
          localObject = RevokeLinkedAppError.MEMBER_NOT_FOUND;
        } else {
          localObject = RevokeLinkedAppError.OTHER;
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
    
    public void a(RevokeLinkedAppError paramRevokeLinkedAppError, JsonGenerator paramJsonGenerator)
      throws IOException, JsonGenerationException
    {
      switch (RevokeLinkedAppError.1.a[paramRevokeLinkedAppError.ordinal()])
      {
      default: 
        paramJsonGenerator.writeString("other");
        return;
      case 2: 
        paramJsonGenerator.writeString("member_not_found");
        return;
      }
      paramJsonGenerator.writeString("app_not_found");
    }
  }
}
