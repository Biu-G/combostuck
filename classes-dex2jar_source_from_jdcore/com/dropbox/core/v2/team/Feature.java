package com.dropbox.core.v2.team;

import com.dropbox.core.stone.UnionSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;

public enum Feature
{
  static
  {
    HAS_TEAM_SHARED_DROPBOX = new Feature("HAS_TEAM_SHARED_DROPBOX", 1);
  }
  
  private Feature() {}
  
  static class a
    extends UnionSerializer<Feature>
  {
    public static final a a = new a();
    
    a() {}
    
    public Feature a(JsonParser paramJsonParser)
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
        if ("upload_api_rate_limit".equals(localObject)) {
          localObject = Feature.UPLOAD_API_RATE_LIMIT;
        } else if ("has_team_shared_dropbox".equals(localObject)) {
          localObject = Feature.HAS_TEAM_SHARED_DROPBOX;
        } else if ("has_team_file_events".equals(localObject)) {
          localObject = Feature.HAS_TEAM_FILE_EVENTS;
        } else if ("has_team_selective_sync".equals(localObject)) {
          localObject = Feature.HAS_TEAM_SELECTIVE_SYNC;
        } else {
          localObject = Feature.OTHER;
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
    
    public void a(Feature paramFeature, JsonGenerator paramJsonGenerator)
      throws IOException, JsonGenerationException
    {
      switch (Feature.1.a[paramFeature.ordinal()])
      {
      default: 
        paramJsonGenerator.writeString("other");
        return;
      case 4: 
        paramJsonGenerator.writeString("has_team_selective_sync");
        return;
      case 3: 
        paramJsonGenerator.writeString("has_team_file_events");
        return;
      case 2: 
        paramJsonGenerator.writeString("has_team_shared_dropbox");
        return;
      }
      paramJsonGenerator.writeString("upload_api_rate_limit");
    }
  }
}
