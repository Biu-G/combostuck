package com.dropbox.core.v2.sharing;

import com.dropbox.core.stone.UnionSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;

public enum RequestedVisibility
{
  private RequestedVisibility() {}
  
  static class a
    extends UnionSerializer<RequestedVisibility>
  {
    public static final a a = new a();
    
    a() {}
    
    public RequestedVisibility a(JsonParser paramJsonParser)
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
        if ("public".equals(localObject))
        {
          localObject = RequestedVisibility.PUBLIC;
        }
        else if ("team_only".equals(localObject))
        {
          localObject = RequestedVisibility.TEAM_ONLY;
        }
        else
        {
          if (!"password".equals(localObject)) {
            break label99;
          }
          localObject = RequestedVisibility.PASSWORD;
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
    
    public void a(RequestedVisibility paramRequestedVisibility, JsonGenerator paramJsonGenerator)
      throws IOException, JsonGenerationException
    {
      switch (RequestedVisibility.1.a[paramRequestedVisibility.ordinal()])
      {
      default: 
        paramJsonGenerator = new StringBuilder();
        paramJsonGenerator.append("Unrecognized tag: ");
        paramJsonGenerator.append(paramRequestedVisibility);
        throw new IllegalArgumentException(paramJsonGenerator.toString());
      case 3: 
        paramJsonGenerator.writeString("password");
        return;
      case 2: 
        paramJsonGenerator.writeString("team_only");
        return;
      }
      paramJsonGenerator.writeString("public");
    }
  }
}
