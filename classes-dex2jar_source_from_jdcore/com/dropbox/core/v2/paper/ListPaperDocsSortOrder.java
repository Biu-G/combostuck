package com.dropbox.core.v2.paper;

import com.dropbox.core.stone.UnionSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;

public enum ListPaperDocsSortOrder
{
  private ListPaperDocsSortOrder() {}
  
  static class a
    extends UnionSerializer<ListPaperDocsSortOrder>
  {
    public static final a a = new a();
    
    a() {}
    
    public ListPaperDocsSortOrder a(JsonParser paramJsonParser)
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
        if ("ascending".equals(localObject)) {
          localObject = ListPaperDocsSortOrder.ASCENDING;
        } else if ("descending".equals(localObject)) {
          localObject = ListPaperDocsSortOrder.DESCENDING;
        } else {
          localObject = ListPaperDocsSortOrder.OTHER;
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
    
    public void a(ListPaperDocsSortOrder paramListPaperDocsSortOrder, JsonGenerator paramJsonGenerator)
      throws IOException, JsonGenerationException
    {
      switch (ListPaperDocsSortOrder.1.a[paramListPaperDocsSortOrder.ordinal()])
      {
      default: 
        paramJsonGenerator.writeString("other");
        return;
      case 2: 
        paramJsonGenerator.writeString("descending");
        return;
      }
      paramJsonGenerator.writeString("ascending");
    }
  }
}
