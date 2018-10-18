package com.dropbox.core.v2.filerequests;

import com.dropbox.core.stone.UnionSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;

public enum GracePeriod
{
  static
  {
    SEVEN_DAYS = new GracePeriod("SEVEN_DAYS", 2);
    THIRTY_DAYS = new GracePeriod("THIRTY_DAYS", 3);
  }
  
  private GracePeriod() {}
  
  static class a
    extends UnionSerializer<GracePeriod>
  {
    public static final a a = new a();
    
    a() {}
    
    public GracePeriod a(JsonParser paramJsonParser)
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
        if ("one_day".equals(localObject)) {
          localObject = GracePeriod.ONE_DAY;
        } else if ("two_days".equals(localObject)) {
          localObject = GracePeriod.TWO_DAYS;
        } else if ("seven_days".equals(localObject)) {
          localObject = GracePeriod.SEVEN_DAYS;
        } else if ("thirty_days".equals(localObject)) {
          localObject = GracePeriod.THIRTY_DAYS;
        } else if ("always".equals(localObject)) {
          localObject = GracePeriod.ALWAYS;
        } else {
          localObject = GracePeriod.OTHER;
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
    
    public void a(GracePeriod paramGracePeriod, JsonGenerator paramJsonGenerator)
      throws IOException, JsonGenerationException
    {
      switch (GracePeriod.1.a[paramGracePeriod.ordinal()])
      {
      default: 
        paramJsonGenerator.writeString("other");
        return;
      case 5: 
        paramJsonGenerator.writeString("always");
        return;
      case 4: 
        paramJsonGenerator.writeString("thirty_days");
        return;
      case 3: 
        paramJsonGenerator.writeString("seven_days");
        return;
      case 2: 
        paramJsonGenerator.writeString("two_days");
        return;
      }
      paramJsonGenerator.writeString("one_day");
    }
  }
}
