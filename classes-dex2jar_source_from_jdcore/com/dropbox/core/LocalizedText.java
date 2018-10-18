package com.dropbox.core;

import com.dropbox.core.stone.StoneSerializer;
import com.dropbox.core.stone.StoneSerializers;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;

public final class LocalizedText
{
  static final StoneSerializer<LocalizedText> a = new StoneSerializer()
  {
    public LocalizedText a(JsonParser paramAnonymousJsonParser)
      throws IOException, JsonParseException
    {
      expectStartObject(paramAnonymousJsonParser);
      String str1 = null;
      Object localObject = null;
      while (paramAnonymousJsonParser.getCurrentToken() == JsonToken.FIELD_NAME)
      {
        String str2 = paramAnonymousJsonParser.getCurrentName();
        paramAnonymousJsonParser.nextToken();
        if ("text".equals(str2)) {
          str1 = (String)StoneSerializers.string().deserialize(paramAnonymousJsonParser);
        } else if ("locale".equals(str2)) {
          localObject = (String)StoneSerializers.string().deserialize(paramAnonymousJsonParser);
        } else {
          skipValue(paramAnonymousJsonParser);
        }
      }
      if (str1 != null)
      {
        if (localObject != null)
        {
          localObject = new LocalizedText(str1, (String)localObject);
          expectEndObject(paramAnonymousJsonParser);
          return localObject;
        }
        throw new JsonParseException(paramAnonymousJsonParser, "Required field \"locale\" missing.");
      }
      throw new JsonParseException(paramAnonymousJsonParser, "Required field \"text\" missing.");
    }
    
    public void a(LocalizedText paramAnonymousLocalizedText, JsonGenerator paramAnonymousJsonGenerator)
      throws IOException, JsonGenerationException
    {
      throw new UnsupportedOperationException("Error wrapper serialization not supported.");
    }
  };
  private final String b;
  private final String c;
  
  public LocalizedText(String paramString1, String paramString2)
  {
    if (paramString1 != null)
    {
      if (paramString2 != null)
      {
        b = paramString1;
        c = paramString2;
        return;
      }
      throw new NullPointerException("locale");
    }
    throw new NullPointerException("text");
  }
  
  public String getLocale()
  {
    return c;
  }
  
  public String getText()
  {
    return b;
  }
  
  public String toString()
  {
    return b;
  }
}
