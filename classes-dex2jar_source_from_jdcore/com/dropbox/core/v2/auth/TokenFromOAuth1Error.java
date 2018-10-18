package com.dropbox.core.v2.auth;

import com.dropbox.core.stone.UnionSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;

public enum TokenFromOAuth1Error
{
  private TokenFromOAuth1Error() {}
  
  static class a
    extends UnionSerializer<TokenFromOAuth1Error>
  {
    public static final a a = new a();
    
    a() {}
    
    public TokenFromOAuth1Error a(JsonParser paramJsonParser)
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
        if ("invalid_oauth1_token_info".equals(localObject)) {
          localObject = TokenFromOAuth1Error.INVALID_OAUTH1_TOKEN_INFO;
        } else if ("app_id_mismatch".equals(localObject)) {
          localObject = TokenFromOAuth1Error.APP_ID_MISMATCH;
        } else {
          localObject = TokenFromOAuth1Error.OTHER;
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
    
    public void a(TokenFromOAuth1Error paramTokenFromOAuth1Error, JsonGenerator paramJsonGenerator)
      throws IOException, JsonGenerationException
    {
      switch (TokenFromOAuth1Error.1.a[paramTokenFromOAuth1Error.ordinal()])
      {
      default: 
        paramJsonGenerator.writeString("other");
        return;
      case 2: 
        paramJsonGenerator.writeString("app_id_mismatch");
        return;
      }
      paramJsonGenerator.writeString("invalid_oauth1_token_info");
    }
  }
}
