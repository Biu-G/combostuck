package com.dropbox.core.v2.files;

import com.dropbox.core.stone.UnionSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;

public enum SearchMatchType
{
  static
  {
    CONTENT = new SearchMatchType("CONTENT", 1);
  }
  
  private SearchMatchType() {}
  
  static class a
    extends UnionSerializer<SearchMatchType>
  {
    public static final a a = new a();
    
    a() {}
    
    public SearchMatchType a(JsonParser paramJsonParser)
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
          localObject = SearchMatchType.FILENAME;
        }
        else if ("content".equals(localObject))
        {
          localObject = SearchMatchType.CONTENT;
        }
        else
        {
          if (!"both".equals(localObject)) {
            break label99;
          }
          localObject = SearchMatchType.BOTH;
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
    
    public void a(SearchMatchType paramSearchMatchType, JsonGenerator paramJsonGenerator)
      throws IOException, JsonGenerationException
    {
      switch (SearchMatchType.1.a[paramSearchMatchType.ordinal()])
      {
      default: 
        paramJsonGenerator = new StringBuilder();
        paramJsonGenerator.append("Unrecognized tag: ");
        paramJsonGenerator.append(paramSearchMatchType);
        throw new IllegalArgumentException(paramJsonGenerator.toString());
      case 3: 
        paramJsonGenerator.writeString("both");
        return;
      case 2: 
        paramJsonGenerator.writeString("content");
        return;
      }
      paramJsonGenerator.writeString("filename");
    }
  }
}
