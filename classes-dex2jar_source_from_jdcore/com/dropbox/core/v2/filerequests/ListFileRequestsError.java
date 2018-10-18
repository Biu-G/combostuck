package com.dropbox.core.v2.filerequests;

import com.dropbox.core.stone.UnionSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;

public enum ListFileRequestsError
{
  private ListFileRequestsError() {}
  
  static class a
    extends UnionSerializer<ListFileRequestsError>
  {
    public static final a a = new a();
    
    a() {}
    
    public ListFileRequestsError a(JsonParser paramJsonParser)
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
          localObject = ListFileRequestsError.DISABLED_FOR_TEAM;
        }
        else
        {
          if (!"other".equals(localObject)) {
            break label83;
          }
          localObject = ListFileRequestsError.OTHER;
        }
        if (i == 0)
        {
          skipFields(paramJsonParser);
          expectEndObject(paramJsonParser);
        }
        return localObject;
        label83:
        StringBuilder localStringBuilder = new StringBuilder();
        localStringBuilder.append("Unknown tag: ");
        localStringBuilder.append((String)localObject);
        throw new JsonParseException(paramJsonParser, localStringBuilder.toString());
      }
      throw new JsonParseException(paramJsonParser, "Required field missing: .tag");
    }
    
    public void a(ListFileRequestsError paramListFileRequestsError, JsonGenerator paramJsonGenerator)
      throws IOException, JsonGenerationException
    {
      switch (ListFileRequestsError.1.a[paramListFileRequestsError.ordinal()])
      {
      default: 
        paramJsonGenerator = new StringBuilder();
        paramJsonGenerator.append("Unrecognized tag: ");
        paramJsonGenerator.append(paramListFileRequestsError);
        throw new IllegalArgumentException(paramJsonGenerator.toString());
      case 2: 
        paramJsonGenerator.writeString("other");
        return;
      }
      paramJsonGenerator.writeString("disabled_for_team");
    }
  }
}
