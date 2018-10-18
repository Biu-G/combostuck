package com.dropbox.core.v2.paper;

import com.dropbox.core.stone.UnionSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;

public enum ExportFormat
{
  private ExportFormat() {}
  
  static class a
    extends UnionSerializer<ExportFormat>
  {
    public static final a a = new a();
    
    a() {}
    
    public ExportFormat a(JsonParser paramJsonParser)
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
        if ("html".equals(localObject)) {
          localObject = ExportFormat.HTML;
        } else if ("markdown".equals(localObject)) {
          localObject = ExportFormat.MARKDOWN;
        } else {
          localObject = ExportFormat.OTHER;
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
    
    public void a(ExportFormat paramExportFormat, JsonGenerator paramJsonGenerator)
      throws IOException, JsonGenerationException
    {
      switch (ExportFormat.1.a[paramExportFormat.ordinal()])
      {
      default: 
        paramJsonGenerator.writeString("other");
        return;
      case 2: 
        paramJsonGenerator.writeString("markdown");
        return;
      }
      paramJsonGenerator.writeString("html");
    }
  }
}
