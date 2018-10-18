package com.dropbox.core.v2.sharing;

import com.dropbox.core.stone.UnionSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;

public enum PendingUploadMode
{
  private PendingUploadMode() {}
  
  static class a
    extends UnionSerializer<PendingUploadMode>
  {
    public static final a a = new a();
    
    a() {}
    
    public PendingUploadMode a(JsonParser paramJsonParser)
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
        if ("file".equals(localObject))
        {
          localObject = PendingUploadMode.FILE;
        }
        else
        {
          if (!"folder".equals(localObject)) {
            break label83;
          }
          localObject = PendingUploadMode.FOLDER;
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
    
    public void a(PendingUploadMode paramPendingUploadMode, JsonGenerator paramJsonGenerator)
      throws IOException, JsonGenerationException
    {
      switch (PendingUploadMode.1.a[paramPendingUploadMode.ordinal()])
      {
      default: 
        paramJsonGenerator = new StringBuilder();
        paramJsonGenerator.append("Unrecognized tag: ");
        paramJsonGenerator.append(paramPendingUploadMode);
        throw new IllegalArgumentException(paramJsonGenerator.toString());
      case 2: 
        paramJsonGenerator.writeString("folder");
        return;
      }
      paramJsonGenerator.writeString("file");
    }
  }
}
