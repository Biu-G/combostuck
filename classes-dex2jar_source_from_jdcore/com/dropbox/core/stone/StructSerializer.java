package com.dropbox.core.stone;

import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import java.io.IOException;

public abstract class StructSerializer<T>
  extends CompositeSerializer<T>
{
  public StructSerializer() {}
  
  public T deserialize(JsonParser paramJsonParser)
    throws IOException, JsonParseException
  {
    return deserialize(paramJsonParser, false);
  }
  
  public abstract T deserialize(JsonParser paramJsonParser, boolean paramBoolean)
    throws IOException, JsonParseException;
  
  public void serialize(T paramT, JsonGenerator paramJsonGenerator)
    throws IOException, JsonGenerationException
  {
    serialize(paramT, paramJsonGenerator, false);
  }
  
  public abstract void serialize(T paramT, JsonGenerator paramJsonGenerator, boolean paramBoolean)
    throws IOException, JsonGenerationException;
}
