package com.dropbox.core.stone;

import com.fasterxml.jackson.core.JsonFactory;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.charset.Charset;

public abstract class StoneSerializer<T>
{
  private static final Charset a = Charset.forName("UTF-8");
  
  public StoneSerializer() {}
  
  protected static void expectEndArray(JsonParser paramJsonParser)
    throws IOException, JsonParseException
  {
    if (paramJsonParser.getCurrentToken() == JsonToken.END_ARRAY)
    {
      paramJsonParser.nextToken();
      return;
    }
    throw new JsonParseException(paramJsonParser, "expected end of array value.");
  }
  
  protected static void expectEndObject(JsonParser paramJsonParser)
    throws IOException, JsonParseException
  {
    if (paramJsonParser.getCurrentToken() == JsonToken.END_OBJECT)
    {
      paramJsonParser.nextToken();
      return;
    }
    throw new JsonParseException(paramJsonParser, "expected end of object value.");
  }
  
  protected static void expectField(String paramString, JsonParser paramJsonParser)
    throws IOException, JsonParseException
  {
    if (paramJsonParser.getCurrentToken() == JsonToken.FIELD_NAME)
    {
      if (paramString.equals(paramJsonParser.getCurrentName()))
      {
        paramJsonParser.nextToken();
        return;
      }
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("expected field '");
      localStringBuilder.append(paramString);
      localStringBuilder.append("', but was: '");
      localStringBuilder.append(paramJsonParser.getCurrentName());
      localStringBuilder.append("'");
      throw new JsonParseException(paramJsonParser, localStringBuilder.toString());
    }
    paramString = new StringBuilder();
    paramString.append("expected field name, but was: ");
    paramString.append(paramJsonParser.getCurrentToken());
    throw new JsonParseException(paramJsonParser, paramString.toString());
  }
  
  protected static void expectStartArray(JsonParser paramJsonParser)
    throws IOException, JsonParseException
  {
    if (paramJsonParser.getCurrentToken() == JsonToken.START_ARRAY)
    {
      paramJsonParser.nextToken();
      return;
    }
    throw new JsonParseException(paramJsonParser, "expected array value.");
  }
  
  protected static void expectStartObject(JsonParser paramJsonParser)
    throws IOException, JsonParseException
  {
    if (paramJsonParser.getCurrentToken() == JsonToken.START_OBJECT)
    {
      paramJsonParser.nextToken();
      return;
    }
    throw new JsonParseException(paramJsonParser, "expected object value.");
  }
  
  protected static String getStringValue(JsonParser paramJsonParser)
    throws IOException, JsonParseException
  {
    if (paramJsonParser.getCurrentToken() == JsonToken.VALUE_STRING) {
      return paramJsonParser.getText();
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("expected string value, but was ");
    localStringBuilder.append(paramJsonParser.getCurrentToken());
    throw new JsonParseException(paramJsonParser, localStringBuilder.toString());
  }
  
  protected static void skipFields(JsonParser paramJsonParser)
    throws IOException, JsonParseException
  {
    while ((paramJsonParser.getCurrentToken() != null) && (!paramJsonParser.getCurrentToken().isStructEnd())) {
      if (paramJsonParser.getCurrentToken().isStructStart())
      {
        paramJsonParser.skipChildren();
      }
      else if (paramJsonParser.getCurrentToken() == JsonToken.FIELD_NAME)
      {
        paramJsonParser.nextToken();
      }
      else if (paramJsonParser.getCurrentToken().isScalarValue())
      {
        paramJsonParser.nextToken();
      }
      else
      {
        StringBuilder localStringBuilder = new StringBuilder();
        localStringBuilder.append("Can't skip token: ");
        localStringBuilder.append(paramJsonParser.getCurrentToken());
        throw new JsonParseException(paramJsonParser, localStringBuilder.toString());
      }
    }
  }
  
  protected static void skipValue(JsonParser paramJsonParser)
    throws IOException, JsonParseException
  {
    if (paramJsonParser.getCurrentToken().isStructStart())
    {
      paramJsonParser.skipChildren();
      paramJsonParser.nextToken();
      return;
    }
    if (paramJsonParser.getCurrentToken().isScalarValue())
    {
      paramJsonParser.nextToken();
      return;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Can't skip JSON value token: ");
    localStringBuilder.append(paramJsonParser.getCurrentToken());
    throw new JsonParseException(paramJsonParser, localStringBuilder.toString());
  }
  
  public abstract T deserialize(JsonParser paramJsonParser)
    throws IOException, JsonParseException;
  
  public T deserialize(InputStream paramInputStream)
    throws IOException, JsonParseException
  {
    paramInputStream = a.a.createParser(paramInputStream);
    paramInputStream.nextToken();
    return deserialize(paramInputStream);
  }
  
  public T deserialize(String paramString)
    throws JsonParseException
  {
    try
    {
      paramString = a.a.createParser(paramString);
      paramString.nextToken();
      paramString = deserialize(paramString);
      return paramString;
    }
    catch (IOException paramString)
    {
      throw new IllegalStateException("Impossible I/O exception", paramString);
    }
    catch (JsonParseException paramString)
    {
      throw paramString;
    }
  }
  
  public String serialize(T paramT)
  {
    return serialize(paramT, false);
  }
  
  public String serialize(T paramT, boolean paramBoolean)
  {
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
    try
    {
      serialize(paramT, localByteArrayOutputStream, paramBoolean);
      return new String(localByteArrayOutputStream.toByteArray(), a);
    }
    catch (IOException paramT)
    {
      throw new IllegalStateException("Impossible I/O exception", paramT);
    }
    catch (JsonGenerationException paramT)
    {
      throw new IllegalStateException("Impossible JSON exception", paramT);
    }
  }
  
  public abstract void serialize(T paramT, JsonGenerator paramJsonGenerator)
    throws IOException, JsonGenerationException;
  
  public void serialize(T paramT, OutputStream paramOutputStream)
    throws IOException
  {
    serialize(paramT, paramOutputStream, false);
  }
  
  public void serialize(T paramT, OutputStream paramOutputStream, boolean paramBoolean)
    throws IOException
  {
    paramOutputStream = a.a.createGenerator(paramOutputStream);
    if (paramBoolean) {
      paramOutputStream.useDefaultPrettyPrinter();
    }
    try
    {
      serialize(paramT, paramOutputStream);
      paramOutputStream.flush();
      return;
    }
    catch (JsonGenerationException paramT)
    {
      throw new IllegalStateException("Impossible JSON generation exception", paramT);
    }
  }
}
