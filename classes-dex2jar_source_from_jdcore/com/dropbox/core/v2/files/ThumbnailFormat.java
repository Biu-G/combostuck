package com.dropbox.core.v2.files;

import com.dropbox.core.stone.UnionSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;

public enum ThumbnailFormat
{
  private ThumbnailFormat() {}
  
  static class a
    extends UnionSerializer<ThumbnailFormat>
  {
    public static final a a = new a();
    
    a() {}
    
    public ThumbnailFormat a(JsonParser paramJsonParser)
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
        if ("jpeg".equals(localObject))
        {
          localObject = ThumbnailFormat.JPEG;
        }
        else
        {
          if (!"png".equals(localObject)) {
            break label83;
          }
          localObject = ThumbnailFormat.PNG;
        }
        if (i == 0)
        {
          skipFields(paramJsonParser);
          expectEndObject(paramJsonParser);
        }
        return localObject;
        label83:
        StringBuilder localStringBuilder = new StringBuilder();
        localStringBuilder.append("Unknown tag: ");
        localStringBuilder.append((String)localObject);
        throw new JsonParseException(paramJsonParser, localStringBuilder.toString());
      }
      throw new JsonParseException(paramJsonParser, "Required field missing: .tag");
    }
    
    public void a(ThumbnailFormat paramThumbnailFormat, JsonGenerator paramJsonGenerator)
      throws IOException, JsonGenerationException
    {
      switch (ThumbnailFormat.1.a[paramThumbnailFormat.ordinal()])
      {
      default: 
        paramJsonGenerator = new StringBuilder();
        paramJsonGenerator.append("Unrecognized tag: ");
        paramJsonGenerator.append(paramThumbnailFormat);
        throw new IllegalArgumentException(paramJsonGenerator.toString());
      case 2: 
        paramJsonGenerator.writeString("png");
        return;
      }
      paramJsonGenerator.writeString("jpeg");
    }
  }
}
