package com.dropbox.core.v2.files;

import com.dropbox.core.stone.UnionSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;

public enum ThumbnailSize
{
  static
  {
    W128H128 = new ThumbnailSize("W128H128", 2);
    W256H256 = new ThumbnailSize("W256H256", 3);
    W480H320 = new ThumbnailSize("W480H320", 4);
    W640H480 = new ThumbnailSize("W640H480", 5);
    W960H640 = new ThumbnailSize("W960H640", 6);
  }
  
  private ThumbnailSize() {}
  
  static class a
    extends UnionSerializer<ThumbnailSize>
  {
    public static final a a = new a();
    
    a() {}
    
    public ThumbnailSize a(JsonParser paramJsonParser)
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
        if ("w32h32".equals(localObject))
        {
          localObject = ThumbnailSize.W32H32;
        }
        else if ("w64h64".equals(localObject))
        {
          localObject = ThumbnailSize.W64H64;
        }
        else if ("w128h128".equals(localObject))
        {
          localObject = ThumbnailSize.W128H128;
        }
        else if ("w256h256".equals(localObject))
        {
          localObject = ThumbnailSize.W256H256;
        }
        else if ("w480h320".equals(localObject))
        {
          localObject = ThumbnailSize.W480H320;
        }
        else if ("w640h480".equals(localObject))
        {
          localObject = ThumbnailSize.W640H480;
        }
        else if ("w960h640".equals(localObject))
        {
          localObject = ThumbnailSize.W960H640;
        }
        else if ("w1024h768".equals(localObject))
        {
          localObject = ThumbnailSize.W1024H768;
        }
        else
        {
          if (!"w2048h1536".equals(localObject)) {
            break label195;
          }
          localObject = ThumbnailSize.W2048H1536;
        }
        if (i == 0)
        {
          skipFields(paramJsonParser);
          expectEndObject(paramJsonParser);
        }
        return localObject;
        label195:
        StringBuilder localStringBuilder = new StringBuilder();
        localStringBuilder.append("Unknown tag: ");
        localStringBuilder.append((String)localObject);
        throw new JsonParseException(paramJsonParser, localStringBuilder.toString());
      }
      throw new JsonParseException(paramJsonParser, "Required field missing: .tag");
    }
    
    public void a(ThumbnailSize paramThumbnailSize, JsonGenerator paramJsonGenerator)
      throws IOException, JsonGenerationException
    {
      switch (ThumbnailSize.1.a[paramThumbnailSize.ordinal()])
      {
      default: 
        paramJsonGenerator = new StringBuilder();
        paramJsonGenerator.append("Unrecognized tag: ");
        paramJsonGenerator.append(paramThumbnailSize);
        throw new IllegalArgumentException(paramJsonGenerator.toString());
      case 9: 
        paramJsonGenerator.writeString("w2048h1536");
        return;
      case 8: 
        paramJsonGenerator.writeString("w1024h768");
        return;
      case 7: 
        paramJsonGenerator.writeString("w960h640");
        return;
      case 6: 
        paramJsonGenerator.writeString("w640h480");
        return;
      case 5: 
        paramJsonGenerator.writeString("w480h320");
        return;
      case 4: 
        paramJsonGenerator.writeString("w256h256");
        return;
      case 3: 
        paramJsonGenerator.writeString("w128h128");
        return;
      case 2: 
        paramJsonGenerator.writeString("w64h64");
        return;
      }
      paramJsonGenerator.writeString("w32h32");
    }
  }
}
