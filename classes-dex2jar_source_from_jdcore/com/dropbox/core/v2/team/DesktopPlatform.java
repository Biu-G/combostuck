package com.dropbox.core.v2.team;

import com.dropbox.core.stone.UnionSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;

public enum DesktopPlatform
{
  static
  {
    MAC = new DesktopPlatform("MAC", 1);
  }
  
  private DesktopPlatform() {}
  
  public static class Serializer
    extends UnionSerializer<DesktopPlatform>
  {
    public static final Serializer INSTANCE = new Serializer();
    
    public Serializer() {}
    
    public DesktopPlatform deserialize(JsonParser paramJsonParser)
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
        if ("windows".equals(localObject)) {
          localObject = DesktopPlatform.WINDOWS;
        } else if ("mac".equals(localObject)) {
          localObject = DesktopPlatform.MAC;
        } else if ("linux".equals(localObject)) {
          localObject = DesktopPlatform.LINUX;
        } else {
          localObject = DesktopPlatform.OTHER;
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
    
    public void serialize(DesktopPlatform paramDesktopPlatform, JsonGenerator paramJsonGenerator)
      throws IOException, JsonGenerationException
    {
      switch (DesktopPlatform.1.a[paramDesktopPlatform.ordinal()])
      {
      default: 
        paramJsonGenerator.writeString("other");
        return;
      case 3: 
        paramJsonGenerator.writeString("linux");
        return;
      case 2: 
        paramJsonGenerator.writeString("mac");
        return;
      }
      paramJsonGenerator.writeString("windows");
    }
  }
}
