package com.dropbox.core;

import com.dropbox.core.stone.StoneSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;

final class a<T>
{
  private final T a;
  private LocalizedText b;
  
  public a(T paramT, LocalizedText paramLocalizedText)
  {
    if (paramT != null)
    {
      a = paramT;
      b = paramLocalizedText;
      return;
    }
    throw new NullPointerException("error");
  }
  
  public T a()
  {
    return a;
  }
  
  public LocalizedText b()
  {
    return b;
  }
  
  static final class a<T>
    extends StoneSerializer<a<T>>
  {
    private StoneSerializer<T> a;
    
    public a(StoneSerializer<T> paramStoneSerializer)
    {
      a = paramStoneSerializer;
    }
    
    public a<T> a(JsonParser paramJsonParser)
      throws IOException, JsonParseException
    {
      expectStartObject(paramJsonParser);
      Object localObject2 = null;
      Object localObject1 = null;
      while (paramJsonParser.getCurrentToken() == JsonToken.FIELD_NAME)
      {
        String str = paramJsonParser.getCurrentName();
        paramJsonParser.nextToken();
        if ("error".equals(str)) {
          localObject2 = a.deserialize(paramJsonParser);
        } else if ("user_message".equals(str)) {
          localObject1 = (LocalizedText)LocalizedText.a.deserialize(paramJsonParser);
        } else {
          skipValue(paramJsonParser);
        }
      }
      if (localObject2 != null)
      {
        localObject1 = new a(localObject2, (LocalizedText)localObject1);
        expectEndObject(paramJsonParser);
        return localObject1;
      }
      throw new JsonParseException(paramJsonParser, "Required field \"error\" missing.");
    }
    
    public void a(a<T> paramA, JsonGenerator paramJsonGenerator)
      throws IOException, JsonGenerationException
    {
      throw new UnsupportedOperationException("Error wrapper serialization not supported.");
    }
  }
}
