package com.dropbox.core.v2.files;

import com.dropbox.core.stone.UnionSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;

public enum ListRevisionsMode
{
  private ListRevisionsMode() {}
  
  static class a
    extends UnionSerializer<ListRevisionsMode>
  {
    public static final a a = new a();
    
    a() {}
    
    public ListRevisionsMode a(JsonParser paramJsonParser)
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
        if ("path".equals(localObject)) {
          localObject = ListRevisionsMode.PATH;
        } else if ("id".equals(localObject)) {
          localObject = ListRevisionsMode.ID;
        } else {
          localObject = ListRevisionsMode.OTHER;
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
    
    public void a(ListRevisionsMode paramListRevisionsMode, JsonGenerator paramJsonGenerator)
      throws IOException, JsonGenerationException
    {
      switch (ListRevisionsMode.1.a[paramListRevisionsMode.ordinal()])
      {
      default: 
        paramJsonGenerator.writeString("other");
        return;
      case 2: 
        paramJsonGenerator.writeString("id");
        return;
      }
      paramJsonGenerator.writeString("path");
    }
  }
}
