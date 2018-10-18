package com.dropbox.core.v2.sharing;

import com.dropbox.core.stone.UnionSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;

public enum Visibility
{
  static
  {
    PASSWORD = new Visibility("PASSWORD", 2);
    TEAM_AND_PASSWORD = new Visibility("TEAM_AND_PASSWORD", 3);
    SHARED_FOLDER_ONLY = new Visibility("SHARED_FOLDER_ONLY", 4);
  }
  
  private Visibility() {}
  
  static class a
    extends UnionSerializer<Visibility>
  {
    public static final a a = new a();
    
    a() {}
    
    public Visibility a(JsonParser paramJsonParser)
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
        if ("public".equals(localObject)) {
          localObject = Visibility.PUBLIC;
        } else if ("team_only".equals(localObject)) {
          localObject = Visibility.TEAM_ONLY;
        } else if ("password".equals(localObject)) {
          localObject = Visibility.PASSWORD;
        } else if ("team_and_password".equals(localObject)) {
          localObject = Visibility.TEAM_AND_PASSWORD;
        } else if ("shared_folder_only".equals(localObject)) {
          localObject = Visibility.SHARED_FOLDER_ONLY;
        } else {
          localObject = Visibility.OTHER;
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
    
    public void a(Visibility paramVisibility, JsonGenerator paramJsonGenerator)
      throws IOException, JsonGenerationException
    {
      switch (Visibility.1.a[paramVisibility.ordinal()])
      {
      default: 
        paramJsonGenerator.writeString("other");
        return;
      case 5: 
        paramJsonGenerator.writeString("shared_folder_only");
        return;
      case 4: 
        paramJsonGenerator.writeString("team_and_password");
        return;
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
