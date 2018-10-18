package com.dropbox.core.v2.auth;

import com.dropbox.core.stone.UnionSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;

public enum PaperAccessError
{
  private PaperAccessError() {}
  
  public static class Serializer
    extends UnionSerializer<PaperAccessError>
  {
    public static final Serializer INSTANCE = new Serializer();
    
    public Serializer() {}
    
    public PaperAccessError deserialize(JsonParser paramJsonParser)
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
        if ("paper_disabled".equals(localObject)) {
          localObject = PaperAccessError.PAPER_DISABLED;
        } else if ("not_paper_user".equals(localObject)) {
          localObject = PaperAccessError.NOT_PAPER_USER;
        } else {
          localObject = PaperAccessError.OTHER;
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
    
    public void serialize(PaperAccessError paramPaperAccessError, JsonGenerator paramJsonGenerator)
      throws IOException, JsonGenerationException
    {
      switch (PaperAccessError.1.a[paramPaperAccessError.ordinal()])
      {
      default: 
        paramJsonGenerator.writeString("other");
        return;
      case 2: 
        paramJsonGenerator.writeString("not_paper_user");
        return;
      }
      paramJsonGenerator.writeString("paper_disabled");
    }
  }
}
