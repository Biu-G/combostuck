package com.dropbox.core.json;

import com.fasterxml.jackson.core.JsonFactory;
import com.fasterxml.jackson.core.JsonLocation;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.HashMap;

public abstract class JsonReader<T>
{
  public static final JsonReader<byte[]> BinaryReader = new JsonReader()
  {
    public byte[] a(JsonParser paramAnonymousJsonParser)
      throws IOException, JsonReadException
    {
      try
      {
        byte[] arrayOfByte = paramAnonymousJsonParser.getBinaryValue();
        paramAnonymousJsonParser.nextToken();
        return arrayOfByte;
      }
      catch (JsonParseException paramAnonymousJsonParser)
      {
        throw JsonReadException.fromJackson(paramAnonymousJsonParser);
      }
    }
  };
  public static final JsonReader<Boolean> BooleanReader = new JsonReader()
  {
    public Boolean a(JsonParser paramAnonymousJsonParser)
      throws IOException, JsonReadException
    {
      return Boolean.valueOf(readBoolean(paramAnonymousJsonParser));
    }
  };
  public static final JsonReader<Float> Float32Reader;
  public static final JsonReader<Double> Float64Reader;
  public static final JsonReader<Integer> Int32Reader;
  public static final JsonReader<Long> Int64Reader;
  public static final JsonReader<String> StringReader;
  public static final JsonReader<Long> UInt32Reader;
  public static final JsonReader<Long> UInt64Reader;
  public static final JsonReader<Long> UnsignedLongReader;
  public static final JsonReader<Object> VoidReader = new JsonReader()
  {
    public Object read(JsonParser paramAnonymousJsonParser)
      throws IOException, JsonReadException
    {
      skipValue(paramAnonymousJsonParser);
      return null;
    }
  };
  static final JsonFactory a = new JsonFactory();
  
  static
  {
    UnsignedLongReader = new JsonReader()
    {
      public Long a(JsonParser paramAnonymousJsonParser)
        throws IOException, JsonReadException
      {
        return Long.valueOf(readUnsignedLong(paramAnonymousJsonParser));
      }
    };
    Int64Reader = new JsonReader()
    {
      public Long a(JsonParser paramAnonymousJsonParser)
        throws IOException, JsonReadException
      {
        long l = paramAnonymousJsonParser.getLongValue();
        paramAnonymousJsonParser.nextToken();
        return Long.valueOf(l);
      }
    };
    Int32Reader = new JsonReader()
    {
      public Integer a(JsonParser paramAnonymousJsonParser)
        throws IOException, JsonReadException
      {
        int i = paramAnonymousJsonParser.getIntValue();
        paramAnonymousJsonParser.nextToken();
        return Integer.valueOf(i);
      }
    };
    UInt64Reader = new JsonReader()
    {
      public Long a(JsonParser paramAnonymousJsonParser)
        throws IOException, JsonReadException
      {
        return Long.valueOf(readUnsignedLong(paramAnonymousJsonParser));
      }
    };
    UInt32Reader = new JsonReader()
    {
      public Long a(JsonParser paramAnonymousJsonParser)
        throws IOException, JsonReadException
      {
        long l = readUnsignedLong(paramAnonymousJsonParser);
        if (l < 4294967296L) {
          return Long.valueOf(l);
        }
        StringBuilder localStringBuilder = new StringBuilder();
        localStringBuilder.append("expecting a 32-bit unsigned integer, got: ");
        localStringBuilder.append(l);
        throw new JsonReadException(localStringBuilder.toString(), paramAnonymousJsonParser.getTokenLocation());
      }
    };
    Float64Reader = new JsonReader()
    {
      public Double a(JsonParser paramAnonymousJsonParser)
        throws IOException, JsonReadException
      {
        double d = paramAnonymousJsonParser.getDoubleValue();
        paramAnonymousJsonParser.nextToken();
        return Double.valueOf(d);
      }
    };
    Float32Reader = new JsonReader()
    {
      public Float a(JsonParser paramAnonymousJsonParser)
        throws IOException, JsonReadException
      {
        float f = paramAnonymousJsonParser.getFloatValue();
        paramAnonymousJsonParser.nextToken();
        return Float.valueOf(f);
      }
    };
    StringReader = new JsonReader()
    {
      public String a(JsonParser paramAnonymousJsonParser)
        throws IOException, JsonReadException
      {
        try
        {
          String str = paramAnonymousJsonParser.getText();
          paramAnonymousJsonParser.nextToken();
          return str;
        }
        catch (JsonParseException paramAnonymousJsonParser)
        {
          throw JsonReadException.fromJackson(paramAnonymousJsonParser);
        }
      }
    };
  }
  
  public JsonReader() {}
  
  public static JsonLocation expectArrayEnd(JsonParser paramJsonParser)
    throws IOException, JsonReadException
  {
    if (paramJsonParser.getCurrentToken() == JsonToken.END_ARRAY)
    {
      JsonLocation localJsonLocation = paramJsonParser.getTokenLocation();
      nextToken(paramJsonParser);
      return localJsonLocation;
    }
    throw new JsonReadException("expecting the end of an array (\"[\")", paramJsonParser.getTokenLocation());
  }
  
  public static JsonLocation expectArrayStart(JsonParser paramJsonParser)
    throws IOException, JsonReadException
  {
    if (paramJsonParser.getCurrentToken() == JsonToken.START_ARRAY)
    {
      JsonLocation localJsonLocation = paramJsonParser.getTokenLocation();
      nextToken(paramJsonParser);
      return localJsonLocation;
    }
    throw new JsonReadException("expecting the start of an array (\"[\")", paramJsonParser.getTokenLocation());
  }
  
  public static void expectObjectEnd(JsonParser paramJsonParser)
    throws IOException, JsonReadException
  {
    if (paramJsonParser.getCurrentToken() == JsonToken.END_OBJECT)
    {
      nextToken(paramJsonParser);
      return;
    }
    throw new JsonReadException("expecting the end of an object (\"}\")", paramJsonParser.getTokenLocation());
  }
  
  public static JsonLocation expectObjectStart(JsonParser paramJsonParser)
    throws IOException, JsonReadException
  {
    if (paramJsonParser.getCurrentToken() == JsonToken.START_OBJECT)
    {
      JsonLocation localJsonLocation = paramJsonParser.getTokenLocation();
      nextToken(paramJsonParser);
      return localJsonLocation;
    }
    throw new JsonReadException("expecting the start of an object (\"{\")", paramJsonParser.getTokenLocation());
  }
  
  public static boolean isArrayEnd(JsonParser paramJsonParser)
  {
    return paramJsonParser.getCurrentToken() == JsonToken.END_ARRAY;
  }
  
  public static boolean isArrayStart(JsonParser paramJsonParser)
  {
    return paramJsonParser.getCurrentToken() == JsonToken.START_ARRAY;
  }
  
  public static JsonToken nextToken(JsonParser paramJsonParser)
    throws IOException, JsonReadException
  {
    try
    {
      paramJsonParser = paramJsonParser.nextToken();
      return paramJsonParser;
    }
    catch (JsonParseException paramJsonParser)
    {
      throw JsonReadException.fromJackson(paramJsonParser);
    }
  }
  
  public static boolean readBoolean(JsonParser paramJsonParser)
    throws IOException, JsonReadException
  {
    try
    {
      boolean bool = paramJsonParser.getBooleanValue();
      paramJsonParser.nextToken();
      return bool;
    }
    catch (JsonParseException paramJsonParser)
    {
      throw JsonReadException.fromJackson(paramJsonParser);
    }
  }
  
  public static double readDouble(JsonParser paramJsonParser)
    throws IOException, JsonReadException
  {
    try
    {
      double d = paramJsonParser.getDoubleValue();
      paramJsonParser.nextToken();
      return d;
    }
    catch (JsonParseException paramJsonParser)
    {
      throw JsonReadException.fromJackson(paramJsonParser);
    }
  }
  
  public static <T> T readEnum(JsonParser paramJsonParser, HashMap<String, T> paramHashMap, T paramT)
    throws IOException, JsonReadException
  {
    Object localObject2;
    Object localObject1;
    if (paramJsonParser.getCurrentToken() == JsonToken.START_OBJECT)
    {
      paramJsonParser.nextToken();
      localObject2 = readTags(paramJsonParser);
      if ((localObject2 != null) && (paramJsonParser.getCurrentToken() == JsonToken.END_OBJECT))
      {
        if ((!b) && ((localObject2.length != 1) || (localObject2[0] == null))) {
          throw new AssertionError();
        }
        localObject1 = localObject2[0];
      }
      else
      {
        if (paramJsonParser.getCurrentToken() != JsonToken.FIELD_NAME) {
          break label210;
        }
        localObject1 = paramJsonParser.getText();
        if ((!b) && (localObject2 != null) && (!localObject2[0].equals(localObject1))) {
          throw new AssertionError();
        }
        paramJsonParser.nextToken();
        skipValue(paramJsonParser);
      }
      localObject2 = paramHashMap.get(localObject1);
      if (localObject2 != null) {
        paramT = (TT)localObject2;
      }
      if (paramT != null)
      {
        expectObjectEnd(paramJsonParser);
        return paramT;
      }
      paramT = new StringBuilder();
      paramT.append("Expected one of ");
      paramT.append(paramHashMap);
      paramT.append(", got: ");
      paramT.append((String)localObject1);
      throw new JsonReadException(paramT.toString(), paramJsonParser.getTokenLocation());
      label210:
      throw new JsonReadException("expecting a field name", paramJsonParser.getTokenLocation());
    }
    if (paramJsonParser.getCurrentToken() == JsonToken.VALUE_STRING)
    {
      localObject2 = paramJsonParser.getText();
      localObject1 = paramHashMap.get(localObject2);
      if (localObject1 != null) {
        paramT = (TT)localObject1;
      }
      if (paramT != null)
      {
        paramJsonParser.nextToken();
        return paramT;
      }
      paramT = new StringBuilder();
      paramT.append("Expected one of ");
      paramT.append(paramHashMap);
      paramT.append(", got: ");
      paramT.append((String)localObject2);
      throw new JsonReadException(paramT.toString(), paramJsonParser.getTokenLocation());
    }
    throw new JsonReadException("Expected a string value", paramJsonParser.getTokenLocation());
  }
  
  public static String[] readTags(JsonParser paramJsonParser)
    throws IOException, JsonReadException
  {
    if (paramJsonParser.getCurrentToken() != JsonToken.FIELD_NAME) {
      return null;
    }
    if (!".tag".equals(paramJsonParser.getCurrentName())) {
      return null;
    }
    paramJsonParser.nextToken();
    if (paramJsonParser.getCurrentToken() == JsonToken.VALUE_STRING)
    {
      String str = paramJsonParser.getText();
      paramJsonParser.nextToken();
      return str.split("\\.");
    }
    throw new JsonReadException("expected a string value for .tag field", paramJsonParser.getTokenLocation());
  }
  
  public static long readUnsignedLong(JsonParser paramJsonParser)
    throws IOException, JsonReadException
  {
    try
    {
      long l = paramJsonParser.getLongValue();
      if (l >= 0L)
      {
        paramJsonParser.nextToken();
        return l;
      }
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("expecting a non-negative number, got: ");
      localStringBuilder.append(l);
      throw new JsonReadException(localStringBuilder.toString(), paramJsonParser.getTokenLocation());
    }
    catch (JsonParseException paramJsonParser)
    {
      throw JsonReadException.fromJackson(paramJsonParser);
    }
  }
  
  public static long readUnsignedLongField(JsonParser paramJsonParser, String paramString, long paramLong)
    throws IOException, JsonReadException
  {
    if (paramLong < 0L) {
      return readUnsignedLong(paramJsonParser);
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("duplicate field \"");
    localStringBuilder.append(paramString);
    localStringBuilder.append("\"");
    throw new JsonReadException(localStringBuilder.toString(), paramJsonParser.getCurrentLocation());
  }
  
  public static void skipValue(JsonParser paramJsonParser)
    throws IOException, JsonReadException
  {
    try
    {
      paramJsonParser.skipChildren();
      paramJsonParser.nextToken();
      return;
    }
    catch (JsonParseException paramJsonParser)
    {
      throw JsonReadException.fromJackson(paramJsonParser);
    }
  }
  
  public abstract T read(JsonParser paramJsonParser)
    throws IOException, JsonReadException;
  
  public final T readField(JsonParser paramJsonParser, String paramString, T paramT)
    throws IOException, JsonReadException
  {
    if (paramT == null) {
      return read(paramJsonParser);
    }
    paramT = new StringBuilder();
    paramT.append("duplicate field \"");
    paramT.append(paramString);
    paramT.append("\"");
    throw new JsonReadException(paramT.toString(), paramJsonParser.getTokenLocation());
  }
  
  public T readFields(JsonParser paramJsonParser)
    throws IOException, JsonReadException
  {
    return null;
  }
  
  /* Error */
  public T readFromFile(File paramFile)
    throws JsonReader.FileLoadException
  {
    // Byte code:
    //   0: new 301	java/io/FileInputStream
    //   3: dup
    //   4: aload_1
    //   5: invokespecial 304	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   8: astore_2
    //   9: aload_0
    //   10: aload_2
    //   11: invokevirtual 308	com/dropbox/core/json/JsonReader:readFully	(Ljava/io/InputStream;)Ljava/lang/Object;
    //   14: astore_3
    //   15: aload_2
    //   16: invokestatic 314	com/dropbox/core/util/IOUtil:closeInput	(Ljava/io/InputStream;)V
    //   19: aload_3
    //   20: areturn
    //   21: astore_3
    //   22: aload_2
    //   23: invokestatic 314	com/dropbox/core/util/IOUtil:closeInput	(Ljava/io/InputStream;)V
    //   26: aload_3
    //   27: athrow
    //   28: astore_2
    //   29: new 38	com/dropbox/core/json/JsonReader$FileLoadException$IOError
    //   32: dup
    //   33: aload_1
    //   34: aload_2
    //   35: invokespecial 317	com/dropbox/core/json/JsonReader$FileLoadException$IOError:<init>	(Ljava/io/File;Ljava/io/IOException;)V
    //   38: athrow
    //   39: astore_2
    //   40: new 41	com/dropbox/core/json/JsonReader$FileLoadException$JsonError
    //   43: dup
    //   44: aload_1
    //   45: aload_2
    //   46: invokespecial 320	com/dropbox/core/json/JsonReader$FileLoadException$JsonError:<init>	(Ljava/io/File;Lcom/dropbox/core/json/JsonReadException;)V
    //   49: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	50	0	this	JsonReader
    //   0	50	1	paramFile	File
    //   8	15	2	localFileInputStream	java.io.FileInputStream
    //   28	7	2	localIOException	IOException
    //   39	7	2	localJsonReadException	JsonReadException
    //   14	6	3	localObject1	Object
    //   21	6	3	localObject2	Object
    // Exception table:
    //   from	to	target	type
    //   9	15	21	finally
    //   0	9	28	java/io/IOException
    //   15	19	28	java/io/IOException
    //   22	28	28	java/io/IOException
    //   0	9	39	com/dropbox/core/json/JsonReadException
    //   15	19	39	com/dropbox/core/json/JsonReadException
    //   22	28	39	com/dropbox/core/json/JsonReadException
  }
  
  public T readFromFile(String paramString)
    throws JsonReader.FileLoadException
  {
    return readFromFile(new File(paramString));
  }
  
  public T readFromTags(String[] paramArrayOfString, JsonParser paramJsonParser)
    throws IOException, JsonReadException
  {
    return null;
  }
  
  public T readFully(JsonParser paramJsonParser)
    throws IOException, JsonReadException
  {
    paramJsonParser.nextToken();
    Object localObject = read(paramJsonParser);
    if (paramJsonParser.getCurrentToken() == null)
    {
      validate(localObject);
      return localObject;
    }
    localObject = new StringBuilder();
    ((StringBuilder)localObject).append("The JSON library should ensure there's no tokens after the main value: ");
    ((StringBuilder)localObject).append(paramJsonParser.getCurrentToken());
    ((StringBuilder)localObject).append("@");
    ((StringBuilder)localObject).append(paramJsonParser.getCurrentLocation());
    throw new AssertionError(((StringBuilder)localObject).toString());
  }
  
  public T readFully(InputStream paramInputStream)
    throws IOException, JsonReadException
  {
    try
    {
      paramInputStream = readFully(a.createParser(paramInputStream));
      return paramInputStream;
    }
    catch (JsonParseException paramInputStream)
    {
      throw JsonReadException.fromJackson(paramInputStream);
    }
  }
  
  /* Error */
  public T readFully(String paramString)
    throws JsonReadException
  {
    // Byte code:
    //   0: getstatic 116	com/dropbox/core/json/JsonReader:a	Lcom/fasterxml/jackson/core/JsonFactory;
    //   3: aload_1
    //   4: invokevirtual 353	com/fasterxml/jackson/core/JsonFactory:createParser	(Ljava/lang/String;)Lcom/fasterxml/jackson/core/JsonParser;
    //   7: astore_1
    //   8: aload_0
    //   9: aload_1
    //   10: invokevirtual 349	com/dropbox/core/json/JsonReader:readFully	(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;
    //   13: astore_2
    //   14: aload_1
    //   15: invokevirtual 356	com/fasterxml/jackson/core/JsonParser:close	()V
    //   18: aload_2
    //   19: areturn
    //   20: astore_2
    //   21: aload_1
    //   22: invokevirtual 356	com/fasterxml/jackson/core/JsonParser:close	()V
    //   25: aload_2
    //   26: athrow
    //   27: astore_1
    //   28: ldc_w 358
    //   31: aload_1
    //   32: invokestatic 364	com/dropbox/core/util/LangUtil:mkAssert	(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/RuntimeException;
    //   35: athrow
    //   36: astore_1
    //   37: aload_1
    //   38: invokestatic 180	com/dropbox/core/json/JsonReadException:fromJackson	(Lcom/fasterxml/jackson/core/JsonProcessingException;)Lcom/dropbox/core/json/JsonReadException;
    //   41: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	42	0	this	JsonReader
    //   0	42	1	paramString	String
    //   13	6	2	localObject1	Object
    //   20	6	2	localObject2	Object
    // Exception table:
    //   from	to	target	type
    //   8	14	20	finally
    //   0	8	27	java/io/IOException
    //   14	18	27	java/io/IOException
    //   21	27	27	java/io/IOException
    //   0	8	36	com/fasterxml/jackson/core/JsonParseException
    //   14	18	36	com/fasterxml/jackson/core/JsonParseException
    //   21	27	36	com/fasterxml/jackson/core/JsonParseException
  }
  
  /* Error */
  public T readFully(byte[] paramArrayOfByte)
    throws JsonReadException
  {
    // Byte code:
    //   0: getstatic 116	com/dropbox/core/json/JsonReader:a	Lcom/fasterxml/jackson/core/JsonFactory;
    //   3: aload_1
    //   4: invokevirtual 368	com/fasterxml/jackson/core/JsonFactory:createParser	([B)Lcom/fasterxml/jackson/core/JsonParser;
    //   7: astore_1
    //   8: aload_0
    //   9: aload_1
    //   10: invokevirtual 349	com/dropbox/core/json/JsonReader:readFully	(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;
    //   13: astore_2
    //   14: aload_1
    //   15: invokevirtual 356	com/fasterxml/jackson/core/JsonParser:close	()V
    //   18: aload_2
    //   19: areturn
    //   20: astore_2
    //   21: aload_1
    //   22: invokevirtual 356	com/fasterxml/jackson/core/JsonParser:close	()V
    //   25: aload_2
    //   26: athrow
    //   27: astore_1
    //   28: ldc_w 370
    //   31: aload_1
    //   32: invokestatic 364	com/dropbox/core/util/LangUtil:mkAssert	(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/RuntimeException;
    //   35: athrow
    //   36: astore_1
    //   37: aload_1
    //   38: invokestatic 180	com/dropbox/core/json/JsonReadException:fromJackson	(Lcom/fasterxml/jackson/core/JsonProcessingException;)Lcom/dropbox/core/json/JsonReadException;
    //   41: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	42	0	this	JsonReader
    //   0	42	1	paramArrayOfByte	byte[]
    //   13	6	2	localObject1	Object
    //   20	6	2	localObject2	Object
    // Exception table:
    //   from	to	target	type
    //   8	14	20	finally
    //   0	8	27	java/io/IOException
    //   14	18	27	java/io/IOException
    //   21	27	27	java/io/IOException
    //   0	8	36	com/fasterxml/jackson/core/JsonParseException
    //   14	18	36	com/fasterxml/jackson/core/JsonParseException
    //   21	27	36	com/fasterxml/jackson/core/JsonParseException
  }
  
  public final T readOptional(JsonParser paramJsonParser)
    throws IOException, JsonReadException
  {
    if (paramJsonParser.getCurrentToken() == JsonToken.VALUE_NULL)
    {
      paramJsonParser.nextToken();
      return null;
    }
    return read(paramJsonParser);
  }
  
  public void validate(T paramT) {}
  
  public static final class FieldMapping
  {
    public final HashMap<String, Integer> fields;
    
    private FieldMapping(HashMap<String, Integer> paramHashMap)
    {
      if ((!a) && (paramHashMap == null)) {
        throw new AssertionError();
      }
      fields = paramHashMap;
    }
    
    public int get(String paramString)
    {
      paramString = (Integer)fields.get(paramString);
      if (paramString == null) {
        return -1;
      }
      return paramString.intValue();
    }
    
    public static final class Builder
    {
      private HashMap<String, Integer> a = new HashMap();
      
      public Builder() {}
      
      public void add(String paramString, int paramInt)
      {
        if (a != null)
        {
          int i = a.size();
          if (paramInt == i)
          {
            if (a.put(paramString, Integer.valueOf(i)) == null) {
              return;
            }
            StringBuilder localStringBuilder = new StringBuilder();
            localStringBuilder.append("duplicate field name: \"");
            localStringBuilder.append(paramString);
            localStringBuilder.append("\"");
            throw new IllegalStateException(localStringBuilder.toString());
          }
          paramString = new StringBuilder();
          paramString.append("expectedIndex = ");
          paramString.append(paramInt);
          paramString.append(", actual = ");
          paramString.append(i);
          throw new IllegalStateException(paramString.toString());
        }
        throw new IllegalStateException("already called build(); can't call add() anymore");
      }
      
      public JsonReader.FieldMapping build()
      {
        if (a != null)
        {
          HashMap localHashMap = a;
          a = null;
          return new JsonReader.FieldMapping(localHashMap, null);
        }
        throw new IllegalStateException("already called build(); can't call build() again");
      }
    }
  }
  
  public static abstract class FileLoadException
    extends Exception
  {
    private static final long serialVersionUID = 0L;
    
    protected FileLoadException(String paramString)
    {
      super();
    }
    
    public static final class IOError
      extends JsonReader.FileLoadException
    {
      private static final long serialVersionUID = 0L;
      public final IOException reason;
      
      public IOError(File paramFile, IOException paramIOException)
      {
        super();
        reason = paramIOException;
      }
    }
    
    public static final class JsonError
      extends JsonReader.FileLoadException
    {
      private static final long serialVersionUID = 0L;
      public final JsonReadException reason;
      
      public JsonError(File paramFile, JsonReadException paramJsonReadException)
      {
        super();
        reason = paramJsonReadException;
      }
    }
  }
}
