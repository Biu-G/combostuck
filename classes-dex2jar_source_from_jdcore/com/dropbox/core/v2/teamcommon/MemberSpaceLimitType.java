package com.dropbox.core.v2.teamcommon;

import com.dropbox.core.stone.UnionSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;

public enum MemberSpaceLimitType
{
  static
  {
    ALERT_ONLY = new MemberSpaceLimitType("ALERT_ONLY", 1);
    STOP_SYNC = new MemberSpaceLimitType("STOP_SYNC", 2);
  }
  
  private MemberSpaceLimitType() {}
  
  public static class Serializer
    extends UnionSerializer<MemberSpaceLimitType>
  {
    public static final Serializer INSTANCE = new Serializer();
    
    public Serializer() {}
    
    public MemberSpaceLimitType deserialize(JsonParser paramJsonParser)
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
        if ("off".equals(localObject)) {
          localObject = MemberSpaceLimitType.OFF;
        } else if ("alert_only".equals(localObject)) {
          localObject = MemberSpaceLimitType.ALERT_ONLY;
        } else if ("stop_sync".equals(localObject)) {
          localObject = MemberSpaceLimitType.STOP_SYNC;
        } else {
          localObject = MemberSpaceLimitType.OTHER;
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
    
    public void serialize(MemberSpaceLimitType paramMemberSpaceLimitType, JsonGenerator paramJsonGenerator)
      throws IOException, JsonGenerationException
    {
      switch (MemberSpaceLimitType.1.a[paramMemberSpaceLimitType.ordinal()])
      {
      default: 
        paramJsonGenerator.writeString("other");
        return;
      case 3: 
        paramJsonGenerator.writeString("stop_sync");
        return;
      case 2: 
        paramJsonGenerator.writeString("alert_only");
        return;
      }
      paramJsonGenerator.writeString("off");
    }
  }
}
