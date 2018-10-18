package com.dropbox.core.v2.paper;

import com.dropbox.core.stone.UnionSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;

public enum PaperDocCreateError
{
  static
  {
    CONTENT_MALFORMED = new PaperDocCreateError("CONTENT_MALFORMED", 2);
    FOLDER_NOT_FOUND = new PaperDocCreateError("FOLDER_NOT_FOUND", 3);
  }
  
  private PaperDocCreateError() {}
  
  static class a
    extends UnionSerializer<PaperDocCreateError>
  {
    public static final a a = new a();
    
    a() {}
    
    public PaperDocCreateError a(JsonParser paramJsonParser)
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
        if ("insufficient_permissions".equals(localObject))
        {
          localObject = PaperDocCreateError.INSUFFICIENT_PERMISSIONS;
        }
        else if ("other".equals(localObject))
        {
          localObject = PaperDocCreateError.OTHER;
        }
        else if ("content_malformed".equals(localObject))
        {
          localObject = PaperDocCreateError.CONTENT_MALFORMED;
        }
        else if ("folder_not_found".equals(localObject))
        {
          localObject = PaperDocCreateError.FOLDER_NOT_FOUND;
        }
        else if ("doc_length_exceeded".equals(localObject))
        {
          localObject = PaperDocCreateError.DOC_LENGTH_EXCEEDED;
        }
        else
        {
          if (!"image_size_exceeded".equals(localObject)) {
            break label147;
          }
          localObject = PaperDocCreateError.IMAGE_SIZE_EXCEEDED;
        }
        if (i == 0)
        {
          skipFields(paramJsonParser);
          expectEndObject(paramJsonParser);
        }
        return localObject;
        label147:
        StringBuilder localStringBuilder = new StringBuilder();
        localStringBuilder.append("Unknown tag: ");
        localStringBuilder.append((String)localObject);
        throw new JsonParseException(paramJsonParser, localStringBuilder.toString());
      }
      throw new JsonParseException(paramJsonParser, "Required field missing: .tag");
    }
    
    public void a(PaperDocCreateError paramPaperDocCreateError, JsonGenerator paramJsonGenerator)
      throws IOException, JsonGenerationException
    {
      switch (PaperDocCreateError.1.a[paramPaperDocCreateError.ordinal()])
      {
      default: 
        paramJsonGenerator = new StringBuilder();
        paramJsonGenerator.append("Unrecognized tag: ");
        paramJsonGenerator.append(paramPaperDocCreateError);
        throw new IllegalArgumentException(paramJsonGenerator.toString());
      case 6: 
        paramJsonGenerator.writeString("image_size_exceeded");
        return;
      case 5: 
        paramJsonGenerator.writeString("doc_length_exceeded");
        return;
      case 4: 
        paramJsonGenerator.writeString("folder_not_found");
        return;
      case 3: 
        paramJsonGenerator.writeString("content_malformed");
        return;
      case 2: 
        paramJsonGenerator.writeString("other");
        return;
      }
      paramJsonGenerator.writeString("insufficient_permissions");
    }
  }
}
