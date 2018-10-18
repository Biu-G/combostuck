package com.dropbox.core.v2.sharing;

import com.dropbox.core.stone.UnionSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;

public enum MemberPolicy
{
  private MemberPolicy() {}
  
  public static class Serializer
    extends UnionSerializer<MemberPolicy>
  {
    public static final Serializer INSTANCE = new Serializer();
    
    public Serializer() {}
    
    public MemberPolicy deserialize(JsonParser paramJsonParser)
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
        if ("team".equals(localObject)) {
          localObject = MemberPolicy.TEAM;
        } else if ("anyone".equals(localObject)) {
          localObject = MemberPolicy.ANYONE;
        } else {
          localObject = MemberPolicy.OTHER;
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
    
    public void serialize(MemberPolicy paramMemberPolicy, JsonGenerator paramJsonGenerator)
      throws IOException, JsonGenerationException
    {
      switch (MemberPolicy.1.a[paramMemberPolicy.ordinal()])
      {
      default: 
        paramJsonGenerator.writeString("other");
        return;
      case 2: 
        paramJsonGenerator.writeString("anyone");
        return;
      }
      paramJsonGenerator.writeString("team");
    }
  }
}
