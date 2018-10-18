package com.dropbox.core.v2.sharing;

import com.dropbox.core.stone.UnionSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;

public enum LinkAudience
{
  private LinkAudience() {}
  
  public static class Serializer
    extends UnionSerializer<LinkAudience>
  {
    public static final Serializer INSTANCE = new Serializer();
    
    public Serializer() {}
    
    public LinkAudience deserialize(JsonParser paramJsonParser)
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
          localObject = LinkAudience.PUBLIC;
        } else if ("team".equals(localObject)) {
          localObject = LinkAudience.TEAM;
        } else if ("members".equals(localObject)) {
          localObject = LinkAudience.MEMBERS;
        } else {
          localObject = LinkAudience.OTHER;
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
    
    public void serialize(LinkAudience paramLinkAudience, JsonGenerator paramJsonGenerator)
      throws IOException, JsonGenerationException
    {
      switch (LinkAudience.1.a[paramLinkAudience.ordinal()])
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
      paramJsonGenerator.writeString("public");
    }
  }
}
