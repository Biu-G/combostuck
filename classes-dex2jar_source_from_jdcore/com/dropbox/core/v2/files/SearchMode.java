package com.dropbox.core.v2.files;

import com.dropbox.core.stone.UnionSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;

public enum SearchMode
{
  private SearchMode() {}
  
  static class a
    extends UnionSerializer<SearchMode>
  {
    public static final a a = new a();
    
    a() {}
    
    public SearchMode a(JsonParser paramJsonParser)
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
        if ("filename".equals(localObject))
        {
          localObject = SearchMode.FILENAME;
        }
        else if ("filename_and_content".equals(localObject))
        {
          localObject = SearchMode.FILENAME_AND_CONTENT;
        }
        else
        {
          if (!"deleted_filename".equals(localObject)) {
            break label99;
          }
          localObject = SearchMode.DELETED_FILENAME;
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
    
    public void a(SearchMode paramSearchMode, JsonGenerator paramJsonGenerator)
      throws IOException, JsonGenerationException
    {
      switch (SearchMode.1.a[paramSearchMode.ordinal()])
      {
      default: 
        paramJsonGenerator = new StringBuilder();
        paramJsonGenerator.append("Unrecognized tag: ");
        paramJsonGenerator.append(paramSearchMode);
        throw new IllegalArgumentException(paramJsonGenerator.toString());
      case 3: 
        paramJsonGenerator.writeString("deleted_filename");
        return;
      case 2: 
        paramJsonGenerator.writeString("filename_and_content");
        return;
      }
      paramJsonGenerator.writeString("filename");
    }
  }
}
