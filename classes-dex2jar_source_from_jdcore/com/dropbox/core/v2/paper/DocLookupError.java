package com.dropbox.core.v2.paper;

import com.dropbox.core.stone.UnionSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;

public enum DocLookupError
{
  private DocLookupError() {}
  
  static class a
    extends UnionSerializer<DocLookupError>
  {
    public static final a a = new a();
    
    a() {}
    
    public DocLookupError a(JsonParser paramJsonParser)
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
          localObject = DocLookupError.INSUFFICIENT_PERMISSIONS;
        }
        else if ("other".equals(localObject))
        {
          localObject = DocLookupError.OTHER;
        }
        else
        {
          if (!"doc_not_found".equals(localObject)) {
            break label99;
          }
          localObject = DocLookupError.DOC_NOT_FOUND;
        }
        if (i == 0)
        {
          skipFields(paramJsonParser);
          expectEndObject(paramJsonParser);
        }
        return localObject;
        label99:
        StringBuilder localStringBuilder = new StringBuilder();
        localStringBuilder.append("Unknown tag: ");
        localStringBuilder.append((String)localObject);
        throw new JsonParseException(paramJsonParser, localStringBuilder.toString());
      }
      throw new JsonParseException(paramJsonParser, "Required field missing: .tag");
    }
    
    public void a(DocLookupError paramDocLookupError, JsonGenerator paramJsonGenerator)
      throws IOException, JsonGenerationException
    {
      switch (DocLookupError.1.a[paramDocLookupError.ordinal()])
      {
      default: 
        paramJsonGenerator = new StringBuilder();
        paramJsonGenerator.append("Unrecognized tag: ");
        paramJsonGenerator.append(paramDocLookupError);
        throw new IllegalArgumentException(paramJsonGenerator.toString());
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
