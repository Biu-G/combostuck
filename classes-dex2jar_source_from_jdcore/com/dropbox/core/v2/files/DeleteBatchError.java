package com.dropbox.core.v2.files;

import com.dropbox.core.stone.UnionSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;

public enum DeleteBatchError
{
  private DeleteBatchError() {}
  
  static class a
    extends UnionSerializer<DeleteBatchError>
  {
    public static final a a = new a();
    
    a() {}
    
    public DeleteBatchError a(JsonParser paramJsonParser)
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
        if ("too_many_write_operations".equals(localObject)) {
          localObject = DeleteBatchError.TOO_MANY_WRITE_OPERATIONS;
        } else {
          localObject = DeleteBatchError.OTHER;
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
    
    public void a(DeleteBatchError paramDeleteBatchError, JsonGenerator paramJsonGenerator)
      throws IOException, JsonGenerationException
    {
      if (DeleteBatchError.1.a[paramDeleteBatchError.ordinal()] != 1)
      {
        paramJsonGenerator.writeString("other");
        return;
      }
      paramJsonGenerator.writeString("too_many_write_operations");
    }
  }
}
