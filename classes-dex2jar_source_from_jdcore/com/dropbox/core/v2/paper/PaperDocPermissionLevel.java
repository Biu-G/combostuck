package com.dropbox.core.v2.paper;

import com.dropbox.core.stone.UnionSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;

public enum PaperDocPermissionLevel
{
  private PaperDocPermissionLevel() {}
  
  static class a
    extends UnionSerializer<PaperDocPermissionLevel>
  {
    public static final a a = new a();
    
    a() {}
    
    public PaperDocPermissionLevel a(JsonParser paramJsonParser)
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
        if ("edit".equals(localObject)) {
          localObject = PaperDocPermissionLevel.EDIT;
        } else if ("view_and_comment".equals(localObject)) {
          localObject = PaperDocPermissionLevel.VIEW_AND_COMMENT;
        } else {
          localObject = PaperDocPermissionLevel.OTHER;
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
    
    public void a(PaperDocPermissionLevel paramPaperDocPermissionLevel, JsonGenerator paramJsonGenerator)
      throws IOException, JsonGenerationException
    {
      switch (PaperDocPermissionLevel.1.a[paramPaperDocPermissionLevel.ordinal()])
      {
      default: 
        paramJsonGenerator.writeString("other");
        return;
      case 2: 
        paramJsonGenerator.writeString("view_and_comment");
        return;
      }
      paramJsonGenerator.writeString("edit");
    }
  }
}
