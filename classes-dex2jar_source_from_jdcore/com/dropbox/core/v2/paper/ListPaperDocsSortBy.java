package com.dropbox.core.v2.paper;

import com.dropbox.core.stone.UnionSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;

public enum ListPaperDocsSortBy
{
  private ListPaperDocsSortBy() {}
  
  static class a
    extends UnionSerializer<ListPaperDocsSortBy>
  {
    public static final a a = new a();
    
    a() {}
    
    public ListPaperDocsSortBy a(JsonParser paramJsonParser)
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
        if ("accessed".equals(localObject)) {
          localObject = ListPaperDocsSortBy.ACCESSED;
        } else if ("modified".equals(localObject)) {
          localObject = ListPaperDocsSortBy.MODIFIED;
        } else if ("created".equals(localObject)) {
          localObject = ListPaperDocsSortBy.CREATED;
        } else {
          localObject = ListPaperDocsSortBy.OTHER;
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
    
    public void a(ListPaperDocsSortBy paramListPaperDocsSortBy, JsonGenerator paramJsonGenerator)
      throws IOException, JsonGenerationException
    {
      switch (ListPaperDocsSortBy.1.a[paramListPaperDocsSortBy.ordinal()])
      {
      default: 
        paramJsonGenerator.writeString("other");
        return;
      case 3: 
        paramJsonGenerator.writeString("created");
        return;
      case 2: 
        paramJsonGenerator.writeString("modified");
        return;
      }
      paramJsonGenerator.writeString("accessed");
    }
  }
}
