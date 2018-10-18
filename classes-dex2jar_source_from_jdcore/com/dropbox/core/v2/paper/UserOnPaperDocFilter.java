package com.dropbox.core.v2.paper;

import com.dropbox.core.stone.UnionSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;

public enum UserOnPaperDocFilter
{
  static
  {
    SHARED = new UserOnPaperDocFilter("SHARED", 1);
  }
  
  private UserOnPaperDocFilter() {}
  
  static class a
    extends UnionSerializer<UserOnPaperDocFilter>
  {
    public static final a a = new a();
    
    a() {}
    
    public UserOnPaperDocFilter a(JsonParser paramJsonParser)
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
        if ("visited".equals(localObject)) {
          localObject = UserOnPaperDocFilter.VISITED;
        } else if ("shared".equals(localObject)) {
          localObject = UserOnPaperDocFilter.SHARED;
        } else {
          localObject = UserOnPaperDocFilter.OTHER;
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
    
    public void a(UserOnPaperDocFilter paramUserOnPaperDocFilter, JsonGenerator paramJsonGenerator)
      throws IOException, JsonGenerationException
    {
      switch (UserOnPaperDocFilter.1.a[paramUserOnPaperDocFilter.ordinal()])
      {
      default: 
        paramJsonGenerator.writeString("other");
        return;
      case 2: 
        paramJsonGenerator.writeString("shared");
        return;
      }
      paramJsonGenerator.writeString("visited");
    }
  }
}
