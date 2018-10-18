package com.dropbox.core.v2.team;

import com.dropbox.core.stone.UnionSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;

public enum MobileClientPlatform
{
  static
  {
    IPAD = new MobileClientPlatform("IPAD", 1);
    ANDROID = new MobileClientPlatform("ANDROID", 2);
    WINDOWS_PHONE = new MobileClientPlatform("WINDOWS_PHONE", 3);
  }
  
  private MobileClientPlatform() {}
  
  public static class Serializer
    extends UnionSerializer<MobileClientPlatform>
  {
    public static final Serializer INSTANCE = new Serializer();
    
    public Serializer() {}
    
    public MobileClientPlatform deserialize(JsonParser paramJsonParser)
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
        if ("iphone".equals(localObject)) {
          localObject = MobileClientPlatform.IPHONE;
        } else if ("ipad".equals(localObject)) {
          localObject = MobileClientPlatform.IPAD;
        } else if ("android".equals(localObject)) {
          localObject = MobileClientPlatform.ANDROID;
        } else if ("windows_phone".equals(localObject)) {
          localObject = MobileClientPlatform.WINDOWS_PHONE;
        } else if ("blackberry".equals(localObject)) {
          localObject = MobileClientPlatform.BLACKBERRY;
        } else {
          localObject = MobileClientPlatform.OTHER;
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
    
    public void serialize(MobileClientPlatform paramMobileClientPlatform, JsonGenerator paramJsonGenerator)
      throws IOException, JsonGenerationException
    {
      switch (MobileClientPlatform.1.a[paramMobileClientPlatform.ordinal()])
      {
      default: 
        paramJsonGenerator.writeString("other");
        return;
      case 5: 
        paramJsonGenerator.writeString("blackberry");
        return;
      case 4: 
        paramJsonGenerator.writeString("windows_phone");
        return;
      case 3: 
        paramJsonGenerator.writeString("android");
        return;
      case 2: 
        paramJsonGenerator.writeString("ipad");
        return;
      }
      paramJsonGenerator.writeString("iphone");
    }
  }
}
