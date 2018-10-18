package com.dropbox.core.v2.paper;

import com.dropbox.core.stone.UnionSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;

public enum PaperDocUpdatePolicy
{
  static
  {
    OVERWRITE_ALL = new PaperDocUpdatePolicy("OVERWRITE_ALL", 2);
  }
  
  private PaperDocUpdatePolicy() {}
  
  static class a
    extends UnionSerializer<PaperDocUpdatePolicy>
  {
    public static final a a = new a();
    
    a() {}
    
    public PaperDocUpdatePolicy a(JsonParser paramJsonParser)
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
        if ("append".equals(localObject)) {
          localObject = PaperDocUpdatePolicy.APPEND;
        } else if ("prepend".equals(localObject)) {
          localObject = PaperDocUpdatePolicy.PREPEND;
        } else if ("overwrite_all".equals(localObject)) {
          localObject = PaperDocUpdatePolicy.OVERWRITE_ALL;
        } else {
          localObject = PaperDocUpdatePolicy.OTHER;
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
    
    public void a(PaperDocUpdatePolicy paramPaperDocUpdatePolicy, JsonGenerator paramJsonGenerator)
      throws IOException, JsonGenerationException
    {
      switch (PaperDocUpdatePolicy.1.a[paramPaperDocUpdatePolicy.ordinal()])
      {
      default: 
        paramJsonGenerator.writeString("other");
        return;
      case 3: 
        paramJsonGenerator.writeString("overwrite_all");
        return;
      case 2: 
        paramJsonGenerator.writeString("prepend");
        return;
      }
      paramJsonGenerator.writeString("append");
    }
  }
}
