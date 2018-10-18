package com.dropbox.core.v2.team;

import com.dropbox.core.stone.UnionSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;

public enum RevokeLinkedAppBatchError
{
  private RevokeLinkedAppBatchError() {}
  
  static class a
    extends UnionSerializer<RevokeLinkedAppBatchError>
  {
    public static final a a = new a();
    
    a() {}
    
    public RevokeLinkedAppBatchError a(JsonParser paramJsonParser)
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
        localObject = RevokeLinkedAppBatchError.OTHER;
        if (i == 0)
        {
          skipFields(paramJsonParser);
          expectEndObject(paramJsonParser);
        }
        return localObject;
      }
      throw new JsonParseException(paramJsonParser, "Required field missing: .tag");
    }
    
    public void a(RevokeLinkedAppBatchError paramRevokeLinkedAppBatchError, JsonGenerator paramJsonGenerator)
      throws IOException, JsonGenerationException
    {
      int i = RevokeLinkedAppBatchError.1.a[paramRevokeLinkedAppBatchError.ordinal()];
      paramJsonGenerator.writeString("other");
    }
  }
}
