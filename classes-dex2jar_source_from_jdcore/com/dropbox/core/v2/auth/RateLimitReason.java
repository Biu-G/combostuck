package com.dropbox.core.v2.auth;

import com.dropbox.core.stone.UnionSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;

public enum RateLimitReason
{
  private RateLimitReason() {}
  
  public static class Serializer
    extends UnionSerializer<RateLimitReason>
  {
    public static final Serializer INSTANCE = new Serializer();
    
    public Serializer() {}
    
    public RateLimitReason deserialize(JsonParser paramJsonParser)
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
        if ("too_many_requests".equals(localObject)) {
          localObject = RateLimitReason.TOO_MANY_REQUESTS;
        } else if ("too_many_write_operations".equals(localObject)) {
          localObject = RateLimitReason.TOO_MANY_WRITE_OPERATIONS;
        } else {
          localObject = RateLimitReason.OTHER;
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
    
    public void serialize(RateLimitReason paramRateLimitReason, JsonGenerator paramJsonGenerator)
      throws IOException, JsonGenerationException
    {
      switch (RateLimitReason.1.a[paramRateLimitReason.ordinal()])
      {
      default: 
        paramJsonGenerator.writeString("other");
        return;
      case 2: 
        paramJsonGenerator.writeString("too_many_write_operations");
        return;
      }
      paramJsonGenerator.writeString("too_many_requests");
    }
  }
}
