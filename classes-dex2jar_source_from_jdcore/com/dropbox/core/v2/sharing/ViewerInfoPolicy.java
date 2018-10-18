package com.dropbox.core.v2.sharing;

import com.dropbox.core.stone.UnionSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;

public enum ViewerInfoPolicy
{
  private ViewerInfoPolicy() {}
  
  public static class Serializer
    extends UnionSerializer<ViewerInfoPolicy>
  {
    public static final Serializer INSTANCE = new Serializer();
    
    public Serializer() {}
    
    public ViewerInfoPolicy deserialize(JsonParser paramJsonParser)
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
        if ("enabled".equals(localObject)) {
          localObject = ViewerInfoPolicy.ENABLED;
        } else if ("disabled".equals(localObject)) {
          localObject = ViewerInfoPolicy.DISABLED;
        } else {
          localObject = ViewerInfoPolicy.OTHER;
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
    
    public void serialize(ViewerInfoPolicy paramViewerInfoPolicy, JsonGenerator paramJsonGenerator)
      throws IOException, JsonGenerationException
    {
      switch (ViewerInfoPolicy.1.a[paramViewerInfoPolicy.ordinal()])
      {
      default: 
        paramJsonGenerator.writeString("other");
        return;
      case 2: 
        paramJsonGenerator.writeString("disabled");
        return;
      }
      paramJsonGenerator.writeString("enabled");
    }
  }
}
