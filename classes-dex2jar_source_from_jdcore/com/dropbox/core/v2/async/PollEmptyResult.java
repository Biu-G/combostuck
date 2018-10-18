package com.dropbox.core.v2.async;

import com.dropbox.core.stone.UnionSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;

public enum PollEmptyResult
{
  private PollEmptyResult() {}
  
  public static class Serializer
    extends UnionSerializer<PollEmptyResult>
  {
    public static final Serializer INSTANCE = new Serializer();
    
    public Serializer() {}
    
    public PollEmptyResult deserialize(JsonParser paramJsonParser)
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
        if ("in_progress".equals(localObject))
        {
          localObject = PollEmptyResult.IN_PROGRESS;
        }
        else
        {
          if (!"complete".equals(localObject)) {
            break label83;
          }
          localObject = PollEmptyResult.COMPLETE;
        }
        if (i == 0)
        {
          skipFields(paramJsonParser);
          expectEndObject(paramJsonParser);
        }
        return localObject;
        label83:
        StringBuilder localStringBuilder = new StringBuilder();
        localStringBuilder.append("Unknown tag: ");
        localStringBuilder.append((String)localObject);
        throw new JsonParseException(paramJsonParser, localStringBuilder.toString());
      }
      throw new JsonParseException(paramJsonParser, "Required field missing: .tag");
    }
    
    public void serialize(PollEmptyResult paramPollEmptyResult, JsonGenerator paramJsonGenerator)
      throws IOException, JsonGenerationException
    {
      switch (PollEmptyResult.1.a[paramPollEmptyResult.ordinal()])
      {
      default: 
        paramJsonGenerator = new StringBuilder();
        paramJsonGenerator.append("Unrecognized tag: ");
        paramJsonGenerator.append(paramPollEmptyResult);
        throw new IllegalArgumentException(paramJsonGenerator.toString());
      case 2: 
        paramJsonGenerator.writeString("complete");
        return;
      }
      paramJsonGenerator.writeString("in_progress");
    }
  }
}
