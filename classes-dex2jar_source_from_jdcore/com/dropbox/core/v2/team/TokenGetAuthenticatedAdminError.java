package com.dropbox.core.v2.team;

import com.dropbox.core.stone.UnionSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;

public enum TokenGetAuthenticatedAdminError
{
  private TokenGetAuthenticatedAdminError() {}
  
  static class a
    extends UnionSerializer<TokenGetAuthenticatedAdminError>
  {
    public static final a a = new a();
    
    a() {}
    
    public TokenGetAuthenticatedAdminError a(JsonParser paramJsonParser)
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
        if ("mapping_not_found".equals(localObject)) {
          localObject = TokenGetAuthenticatedAdminError.MAPPING_NOT_FOUND;
        } else if ("admin_not_active".equals(localObject)) {
          localObject = TokenGetAuthenticatedAdminError.ADMIN_NOT_ACTIVE;
        } else {
          localObject = TokenGetAuthenticatedAdminError.OTHER;
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
    
    public void a(TokenGetAuthenticatedAdminError paramTokenGetAuthenticatedAdminError, JsonGenerator paramJsonGenerator)
      throws IOException, JsonGenerationException
    {
      switch (TokenGetAuthenticatedAdminError.1.a[paramTokenGetAuthenticatedAdminError.ordinal()])
      {
      default: 
        paramJsonGenerator.writeString("other");
        return;
      case 2: 
        paramJsonGenerator.writeString("admin_not_active");
        return;
      }
      paramJsonGenerator.writeString("mapping_not_found");
    }
  }
}
