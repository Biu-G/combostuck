package com.dropbox.core.v2.paper;

import com.dropbox.core.stone.UnionSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;

public enum ListPaperDocsFilterBy
{
  private ListPaperDocsFilterBy() {}
  
  static class a
    extends UnionSerializer<ListPaperDocsFilterBy>
  {
    public static final a a = new a();
    
    a() {}
    
    public ListPaperDocsFilterBy a(JsonParser paramJsonParser)
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
        if ("docs_accessed".equals(localObject)) {
          localObject = ListPaperDocsFilterBy.DOCS_ACCESSED;
        } else if ("docs_created".equals(localObject)) {
          localObject = ListPaperDocsFilterBy.DOCS_CREATED;
        } else {
          localObject = ListPaperDocsFilterBy.OTHER;
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
    
    public void a(ListPaperDocsFilterBy paramListPaperDocsFilterBy, JsonGenerator paramJsonGenerator)
      throws IOException, JsonGenerationException
    {
      switch (ListPaperDocsFilterBy.1.a[paramListPaperDocsFilterBy.ordinal()])
      {
      default: 
        paramJsonGenerator.writeString("other");
        return;
      case 2: 
        paramJsonGenerator.writeString("docs_created");
        return;
      }
      paramJsonGenerator.writeString("docs_accessed");
    }
  }
}
