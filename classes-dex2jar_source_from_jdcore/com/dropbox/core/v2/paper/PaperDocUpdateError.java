package com.dropbox.core.v2.paper;

import com.dropbox.core.stone.UnionSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;

public enum PaperDocUpdateError
{
  static
  {
    DOC_NOT_FOUND = new PaperDocUpdateError("DOC_NOT_FOUND", 2);
    CONTENT_MALFORMED = new PaperDocUpdateError("CONTENT_MALFORMED", 3);
    REVISION_MISMATCH = new PaperDocUpdateError("REVISION_MISMATCH", 4);
    DOC_LENGTH_EXCEEDED = new PaperDocUpdateError("DOC_LENGTH_EXCEEDED", 5);
    IMAGE_SIZE_EXCEEDED = new PaperDocUpdateError("IMAGE_SIZE_EXCEEDED", 6);
  }
  
  private PaperDocUpdateError() {}
  
  static class a
    extends UnionSerializer<PaperDocUpdateError>
  {
    public static final a a = new a();
    
    a() {}
    
    public PaperDocUpdateError a(JsonParser paramJsonParser)
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
          localObject = PaperDocUpdateError.INSUFFICIENT_PERMISSIONS;
        }
        else if ("other".equals(localObject))
        {
          localObject = PaperDocUpdateError.OTHER;
        }
        else if ("doc_not_found".equals(localObject))
        {
          localObject = PaperDocUpdateError.DOC_NOT_FOUND;
        }
        else if ("content_malformed".equals(localObject))
        {
          localObject = PaperDocUpdateError.CONTENT_MALFORMED;
        }
        else if ("revision_mismatch".equals(localObject))
        {
          localObject = PaperDocUpdateError.REVISION_MISMATCH;
        }
        else if ("doc_length_exceeded".equals(localObject))
        {
          localObject = PaperDocUpdateError.DOC_LENGTH_EXCEEDED;
        }
        else if ("image_size_exceeded".equals(localObject))
        {
          localObject = PaperDocUpdateError.IMAGE_SIZE_EXCEEDED;
        }
        else if ("doc_archived".equals(localObject))
        {
          localObject = PaperDocUpdateError.DOC_ARCHIVED;
        }
        else
        {
          if (!"doc_deleted".equals(localObject)) {
            break label195;
          }
          localObject = PaperDocUpdateError.DOC_DELETED;
        }
        if (i == 0)
        {
          skipFields(paramJsonParser);
          expectEndObject(paramJsonParser);
        }
        return localObject;
        label195:
        StringBuilder localStringBuilder = new StringBuilder();
        localStringBuilder.append("Unknown tag: ");
        localStringBuilder.append((String)localObject);
        throw new JsonParseException(paramJsonParser, localStringBuilder.toString());
      }
      throw new JsonParseException(paramJsonParser, "Required field missing: .tag");
    }
    
    public void a(PaperDocUpdateError paramPaperDocUpdateError, JsonGenerator paramJsonGenerator)
      throws IOException, JsonGenerationException
    {
      switch (PaperDocUpdateError.1.a[paramPaperDocUpdateError.ordinal()])
      {
      default: 
        paramJsonGenerator = new StringBuilder();
        paramJsonGenerator.append("Unrecognized tag: ");
        paramJsonGenerator.append(paramPaperDocUpdateError);
        throw new IllegalArgumentException(paramJsonGenerator.toString());
      case 9: 
        paramJsonGenerator.writeString("doc_deleted");
        return;
      case 8: 
        paramJsonGenerator.writeString("doc_archived");
        return;
      case 7: 
        paramJsonGenerator.writeString("image_size_exceeded");
        return;
      case 6: 
        paramJsonGenerator.writeString("doc_length_exceeded");
        return;
      case 5: 
        paramJsonGenerator.writeString("revision_mismatch");
        return;
      case 4: 
        paramJsonGenerator.writeString("content_malformed");
        return;
      case 3: 
        paramJsonGenerator.writeString("doc_not_found");
        return;
      case 2: 
        paramJsonGenerator.writeString("other");
        return;
      }
      paramJsonGenerator.writeString("insufficient_permissions");
    }
  }
}
