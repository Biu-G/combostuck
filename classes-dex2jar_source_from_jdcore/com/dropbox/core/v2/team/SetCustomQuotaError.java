package com.dropbox.core.v2.team;

import com.dropbox.core.stone.UnionSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;

public enum SetCustomQuotaError
{
  private SetCustomQuotaError() {}
  
  static class a
    extends UnionSerializer<SetCustomQuotaError>
  {
    public static final a a = new a();
    
    a() {}
    
    public SetCustomQuotaError a(JsonParser paramJsonParser)
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
        if ("too_many_users".equals(localObject))
        {
          localObject = SetCustomQuotaError.TOO_MANY_USERS;
        }
        else if ("other".equals(localObject))
        {
          localObject = SetCustomQuotaError.OTHER;
        }
        else
        {
          if (!"some_users_are_excluded".equals(localObject)) {
            break label99;
          }
          localObject = SetCustomQuotaError.SOME_USERS_ARE_EXCLUDED;
        }
        if (i == 0)
        {
          skipFields(paramJsonParser);
          expectEndObject(paramJsonParser);
        }
        return localObject;
        label99:
        StringBuilder localStringBuilder = new StringBuilder();
        localStringBuilder.append("Unknown tag: ");
        localStringBuilder.append((String)localObject);
        throw new JsonParseException(paramJsonParser, localStringBuilder.toString());
      }
      throw new JsonParseException(paramJsonParser, "Required field missing: .tag");
    }
    
    public void a(SetCustomQuotaError paramSetCustomQuotaError, JsonGenerator paramJsonGenerator)
      throws IOException, JsonGenerationException
    {
      switch (SetCustomQuotaError.1.a[paramSetCustomQuotaError.ordinal()])
      {
      default: 
        paramJsonGenerator = new StringBuilder();
        paramJsonGenerator.append("Unrecognized tag: ");
        paramJsonGenerator.append(paramSetCustomQuotaError);
        throw new IllegalArgumentException(paramJsonGenerator.toString());
      case 3: 
        paramJsonGenerator.writeString("some_users_are_excluded");
        return;
      case 2: 
        paramJsonGenerator.writeString("other");
        return;
      }
      paramJsonGenerator.writeString("too_many_users");
    }
  }
}
