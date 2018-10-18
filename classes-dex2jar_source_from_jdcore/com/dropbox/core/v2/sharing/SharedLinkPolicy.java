package com.dropbox.core.v2.sharing;

import com.dropbox.core.stone.UnionSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;

public enum SharedLinkPolicy
{
  private SharedLinkPolicy() {}
  
  public static class Serializer
    extends UnionSerializer<SharedLinkPolicy>
  {
    public static final Serializer INSTANCE = new Serializer();
    
    public Serializer() {}
    
    public SharedLinkPolicy deserialize(JsonParser paramJsonParser)
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
        if ("anyone".equals(localObject)) {
          localObject = SharedLinkPolicy.ANYONE;
        } else if ("team".equals(localObject)) {
          localObject = SharedLinkPolicy.TEAM;
        } else if ("members".equals(localObject)) {
          localObject = SharedLinkPolicy.MEMBERS;
        } else {
          localObject = SharedLinkPolicy.OTHER;
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
    
    public void serialize(SharedLinkPolicy paramSharedLinkPolicy, JsonGenerator paramJsonGenerator)
      throws IOException, JsonGenerationException
    {
      switch (SharedLinkPolicy.1.a[paramSharedLinkPolicy.ordinal()])
      {
      default: 
        paramJsonGenerator.writeString("other");
        return;
      case 3: 
        paramJsonGenerator.writeString("members");
        return;
      case 2: 
        paramJsonGenerator.writeString("team");
        return;
      }
      paramJsonGenerator.writeString("anyone");
    }
  }
}
