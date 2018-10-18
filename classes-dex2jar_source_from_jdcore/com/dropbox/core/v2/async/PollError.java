package com.dropbox.core.v2.async;

import com.dropbox.core.stone.UnionSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;

public enum PollError
{
  private PollError() {}
  
  public static class Serializer
    extends UnionSerializer<PollError>
  {
    public static final Serializer INSTANCE = new Serializer();
    
    public Serializer() {}
    
    public PollError deserialize(JsonParser paramJsonParser)
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
        if ("invalid_async_job_id".equals(localObject)) {
          localObject = PollError.INVALID_ASYNC_JOB_ID;
        } else if ("internal_error".equals(localObject)) {
          localObject = PollError.INTERNAL_ERROR;
        } else {
          localObject = PollError.OTHER;
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
    
    public void serialize(PollError paramPollError, JsonGenerator paramJsonGenerator)
      throws IOException, JsonGenerationException
    {
      switch (PollError.1.a[paramPollError.ordinal()])
      {
      default: 
        paramJsonGenerator.writeString("other");
        return;
      case 2: 
        paramJsonGenerator.writeString("internal_error");
        return;
      }
      paramJsonGenerator.writeString("invalid_async_job_id");
    }
  }
}
