package com.dropbox.core.v2.paper;

import com.dropbox.core.stone.UnionSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;

public enum PaperApiCursorError
{
  static
  {
    RESET = new PaperApiCursorError("RESET", 3);
  }
  
  private PaperApiCursorError() {}
  
  static class a
    extends UnionSerializer<PaperApiCursorError>
  {
    public static final a a = new a();
    
    a() {}
    
    public PaperApiCursorError a(JsonParser paramJsonParser)
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
        if ("expired_cursor".equals(localObject)) {
          localObject = PaperApiCursorError.EXPIRED_CURSOR;
        } else if ("invalid_cursor".equals(localObject)) {
          localObject = PaperApiCursorError.INVALID_CURSOR;
        } else if ("wrong_user_in_cursor".equals(localObject)) {
          localObject = PaperApiCursorError.WRONG_USER_IN_CURSOR;
        } else if ("reset".equals(localObject)) {
          localObject = PaperApiCursorError.RESET;
        } else {
          localObject = PaperApiCursorError.OTHER;
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
    
    public void a(PaperApiCursorError paramPaperApiCursorError, JsonGenerator paramJsonGenerator)
      throws IOException, JsonGenerationException
    {
      switch (PaperApiCursorError.1.a[paramPaperApiCursorError.ordinal()])
      {
      default: 
        paramJsonGenerator.writeString("other");
        return;
      case 4: 
        paramJsonGenerator.writeString("reset");
        return;
      case 3: 
        paramJsonGenerator.writeString("wrong_user_in_cursor");
        return;
      case 2: 
        paramJsonGenerator.writeString("invalid_cursor");
        return;
      }
      paramJsonGenerator.writeString("expired_cursor");
    }
  }
}
