package com.dropbox.core.v2.files;

import com.dropbox.core.stone.UnionSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;

public enum ThumbnailMode
{
  private ThumbnailMode() {}
  
  static class a
    extends UnionSerializer<ThumbnailMode>
  {
    public static final a a = new a();
    
    a() {}
    
    public ThumbnailMode a(JsonParser paramJsonParser)
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
        if ("strict".equals(localObject))
        {
          localObject = ThumbnailMode.STRICT;
        }
        else if ("bestfit".equals(localObject))
        {
          localObject = ThumbnailMode.BESTFIT;
        }
        else
        {
          if (!"fitone_bestfit".equals(localObject)) {
            break label99;
          }
          localObject = ThumbnailMode.FITONE_BESTFIT;
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
    
    public void a(ThumbnailMode paramThumbnailMode, JsonGenerator paramJsonGenerator)
      throws IOException, JsonGenerationException
    {
      switch (ThumbnailMode.1.a[paramThumbnailMode.ordinal()])
      {
      default: 
        paramJsonGenerator = new StringBuilder();
        paramJsonGenerator.append("Unrecognized tag: ");
        paramJsonGenerator.append(paramThumbnailMode);
        throw new IllegalArgumentException(paramJsonGenerator.toString());
      case 3: 
        paramJsonGenerator.writeString("fitone_bestfit");
        return;
      case 2: 
        paramJsonGenerator.writeString("bestfit");
        return;
      }
      paramJsonGenerator.writeString("strict");
    }
  }
}
