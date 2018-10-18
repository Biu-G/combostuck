package com.dropbox.core.v2.auth;

import com.dropbox.core.stone.UnionSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;

public enum InvalidAccountTypeError
{
  private InvalidAccountTypeError() {}
  
  public static class Serializer
    extends UnionSerializer<InvalidAccountTypeError>
  {
    public static final Serializer INSTANCE = new Serializer();
    
    public Serializer() {}
    
    public InvalidAccountTypeError deserialize(JsonParser paramJsonParser)
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
        if ("endpoint".equals(localObject)) {
          localObject = InvalidAccountTypeError.ENDPOINT;
        } else if ("feature".equals(localObject)) {
          localObject = InvalidAccountTypeError.FEATURE;
        } else {
          localObject = InvalidAccountTypeError.OTHER;
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
    
    public void serialize(InvalidAccountTypeError paramInvalidAccountTypeError, JsonGenerator paramJsonGenerator)
      throws IOException, JsonGenerationException
    {
      switch (InvalidAccountTypeError.1.a[paramInvalidAccountTypeError.ordinal()])
      {
      default: 
        paramJsonGenerator.writeString("other");
        return;
      case 2: 
        paramJsonGenerator.writeString("feature");
        return;
      }
      paramJsonGenerator.writeString("endpoint");
    }
  }
}
