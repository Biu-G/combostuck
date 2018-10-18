package com.dropbox.core.v2.team;

import com.dropbox.core.stone.UnionSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;

public enum MembersGetInfoError
{
  private MembersGetInfoError() {}
  
  static class a
    extends UnionSerializer<MembersGetInfoError>
  {
    public static final a a = new a();
    
    a() {}
    
    public MembersGetInfoError a(JsonParser paramJsonParser)
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
        localObject = MembersGetInfoError.OTHER;
        if (i == 0)
        {
          skipFields(paramJsonParser);
          expectEndObject(paramJsonParser);
        }
        return localObject;
      }
      throw new JsonParseException(paramJsonParser, "Required field missing: .tag");
    }
    
    public void a(MembersGetInfoError paramMembersGetInfoError, JsonGenerator paramJsonGenerator)
      throws IOException, JsonGenerationException
    {
      int i = MembersGetInfoError.1.a[paramMembersGetInfoError.ordinal()];
      paramJsonGenerator.writeString("other");
    }
  }
}
