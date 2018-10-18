package com.dropbox.core.v2.seenstate;

import com.dropbox.core.stone.UnionSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;

public enum PlatformType
{
  static
  {
    MOBILE = new PlatformType("MOBILE", 1);
    DESKTOP = new PlatformType("DESKTOP", 2);
    UNKNOWN = new PlatformType("UNKNOWN", 3);
  }
  
  private PlatformType() {}
  
  public static class Serializer
    extends UnionSerializer<PlatformType>
  {
    public static final Serializer INSTANCE = new Serializer();
    
    public Serializer() {}
    
    public PlatformType deserialize(JsonParser paramJsonParser)
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
        if ("web".equals(localObject)) {
          localObject = PlatformType.WEB;
        } else if ("mobile".equals(localObject)) {
          localObject = PlatformType.MOBILE;
        } else if ("desktop".equals(localObject)) {
          localObject = PlatformType.DESKTOP;
        } else if ("unknown".equals(localObject)) {
          localObject = PlatformType.UNKNOWN;
        } else {
          localObject = PlatformType.OTHER;
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
    
    public void serialize(PlatformType paramPlatformType, JsonGenerator paramJsonGenerator)
      throws IOException, JsonGenerationException
    {
      switch (PlatformType.1.a[paramPlatformType.ordinal()])
      {
      default: 
        paramJsonGenerator.writeString("other");
        return;
      case 4: 
        paramJsonGenerator.writeString("unknown");
        return;
      case 3: 
        paramJsonGenerator.writeString("desktop");
        return;
      case 2: 
        paramJsonGenerator.writeString("mobile");
        return;
      }
      paramJsonGenerator.writeString("web");
    }
  }
}
