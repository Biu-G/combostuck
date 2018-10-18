package com.dropbox.core.v2.files;

import com.dropbox.core.stone.UnionSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;

public enum GetThumbnailBatchError
{
  private GetThumbnailBatchError() {}
  
  static class a
    extends UnionSerializer<GetThumbnailBatchError>
  {
    public static final a a = new a();
    
    a() {}
    
    public GetThumbnailBatchError a(JsonParser paramJsonParser)
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
        if ("too_many_files".equals(localObject)) {
          localObject = GetThumbnailBatchError.TOO_MANY_FILES;
        } else {
          localObject = GetThumbnailBatchError.OTHER;
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
    
    public void a(GetThumbnailBatchError paramGetThumbnailBatchError, JsonGenerator paramJsonGenerator)
      throws IOException, JsonGenerationException
    {
      if (GetThumbnailBatchError.1.a[paramGetThumbnailBatchError.ordinal()] != 1)
      {
        paramJsonGenerator.writeString("other");
        return;
      }
      paramJsonGenerator.writeString("too_many_files");
    }
  }
}
