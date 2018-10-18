package com.dropbox.core.stone;

import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public final class StoneSerializers
{
  public StoneSerializers() {}
  
  public static StoneSerializer<byte[]> binary()
  {
    return b.a;
  }
  
  public static StoneSerializer<Boolean> boolean_()
  {
    return a.a;
  }
  
  public static StoneSerializer<Float> float32()
  {
    return e.a;
  }
  
  public static StoneSerializer<Double> float64()
  {
    return d.a;
  }
  
  public static StoneSerializer<Integer> int32()
  {
    return f.a;
  }
  
  public static StoneSerializer<Long> int64()
  {
    return h.a;
  }
  
  public static <T> StoneSerializer<List<T>> list(StoneSerializer<T> paramStoneSerializer)
  {
    return new g(paramStoneSerializer);
  }
  
  public static <T> StoneSerializer<Map<String, T>> map(StoneSerializer<T> paramStoneSerializer)
  {
    return new i(paramStoneSerializer);
  }
  
  public static <T> StoneSerializer<T> nullable(StoneSerializer<T> paramStoneSerializer)
  {
    return new j(paramStoneSerializer);
  }
  
  public static <T> StructSerializer<T> nullableStruct(StructSerializer<T> paramStructSerializer)
  {
    return new k(paramStructSerializer);
  }
  
  public static StoneSerializer<String> string()
  {
    return l.a;
  }
  
  public static StoneSerializer<Date> timestamp()
  {
    return c.a;
  }
  
  public static StoneSerializer<Long> uInt32()
  {
    return h.a;
  }
  
  public static StoneSerializer<Long> uInt64()
  {
    return h.a;
  }
  
  public static StoneSerializer<Void> void_()
  {
    return m.a;
  }
  
  private static final class a
    extends StoneSerializer<Boolean>
  {
    public static final a a = new a();
    
    private a() {}
    
    public Boolean a(JsonParser paramJsonParser)
      throws IOException, JsonParseException
    {
      boolean bool = paramJsonParser.getBooleanValue();
      paramJsonParser.nextToken();
      return Boolean.valueOf(bool);
    }
    
    public void a(Boolean paramBoolean, JsonGenerator paramJsonGenerator)
      throws IOException, JsonGenerationException
    {
      paramJsonGenerator.writeBoolean(paramBoolean.booleanValue());
    }
  }
  
  private static final class b
    extends StoneSerializer<byte[]>
  {
    public static final b a = new b();
    
    private b() {}
    
    public void a(byte[] paramArrayOfByte, JsonGenerator paramJsonGenerator)
      throws IOException, JsonGenerationException
    {
      paramJsonGenerator.writeBinary(paramArrayOfByte);
    }
    
    public byte[] a(JsonParser paramJsonParser)
      throws IOException, JsonParseException
    {
      byte[] arrayOfByte = paramJsonParser.getBinaryValue();
      paramJsonParser.nextToken();
      return arrayOfByte;
    }
  }
  
  private static final class c
    extends StoneSerializer<Date>
  {
    public static final c a = new c();
    
    private c() {}
    
    public Date a(JsonParser paramJsonParser)
      throws IOException, JsonParseException
    {
      String str = getStringValue(paramJsonParser);
      paramJsonParser.nextToken();
      try
      {
        Date localDate = a.a(str);
        return localDate;
      }
      catch (ParseException localParseException)
      {
        StringBuilder localStringBuilder = new StringBuilder();
        localStringBuilder.append("Malformed timestamp: '");
        localStringBuilder.append(str);
        localStringBuilder.append("'");
        throw new JsonParseException(paramJsonParser, localStringBuilder.toString(), localParseException);
      }
    }
    
    public void a(Date paramDate, JsonGenerator paramJsonGenerator)
      throws IOException, JsonGenerationException
    {
      paramJsonGenerator.writeString(a.a(paramDate));
    }
  }
  
  private static final class d
    extends StoneSerializer<Double>
  {
    public static final d a = new d();
    
    private d() {}
    
    public Double a(JsonParser paramJsonParser)
      throws IOException, JsonParseException
    {
      double d = paramJsonParser.getDoubleValue();
      paramJsonParser.nextToken();
      return Double.valueOf(d);
    }
    
    public void a(Double paramDouble, JsonGenerator paramJsonGenerator)
      throws IOException, JsonGenerationException
    {
      paramJsonGenerator.writeNumber(paramDouble.doubleValue());
    }
  }
  
  private static final class e
    extends StoneSerializer<Float>
  {
    public static final e a = new e();
    
    private e() {}
    
    public Float a(JsonParser paramJsonParser)
      throws IOException, JsonParseException
    {
      float f = paramJsonParser.getFloatValue();
      paramJsonParser.nextToken();
      return Float.valueOf(f);
    }
    
    public void a(Float paramFloat, JsonGenerator paramJsonGenerator)
      throws IOException, JsonGenerationException
    {
      paramJsonGenerator.writeNumber(paramFloat.floatValue());
    }
  }
  
  private static final class f
    extends StoneSerializer<Integer>
  {
    public static final f a = new f();
    
    private f() {}
    
    public Integer a(JsonParser paramJsonParser)
      throws IOException, JsonParseException
    {
      int i = paramJsonParser.getIntValue();
      paramJsonParser.nextToken();
      return Integer.valueOf(i);
    }
    
    public void a(Integer paramInteger, JsonGenerator paramJsonGenerator)
      throws IOException, JsonGenerationException
    {
      paramJsonGenerator.writeNumber(paramInteger.intValue());
    }
  }
  
  private static final class g<T>
    extends StoneSerializer<List<T>>
  {
    private final StoneSerializer<T> a;
    
    public g(StoneSerializer<T> paramStoneSerializer)
    {
      a = paramStoneSerializer;
    }
    
    public List<T> a(JsonParser paramJsonParser)
      throws IOException, JsonParseException
    {
      expectStartArray(paramJsonParser);
      ArrayList localArrayList = new ArrayList();
      while (paramJsonParser.getCurrentToken() != JsonToken.END_ARRAY) {
        localArrayList.add(a.deserialize(paramJsonParser));
      }
      expectEndArray(paramJsonParser);
      return localArrayList;
    }
    
    public void a(List<T> paramList, JsonGenerator paramJsonGenerator)
      throws IOException, JsonGenerationException
    {
      paramJsonGenerator.writeStartArray(paramList.size());
      paramList = paramList.iterator();
      while (paramList.hasNext())
      {
        Object localObject = paramList.next();
        a.serialize(localObject, paramJsonGenerator);
      }
      paramJsonGenerator.writeEndArray();
    }
  }
  
  private static final class h
    extends StoneSerializer<Long>
  {
    public static final h a = new h();
    
    private h() {}
    
    public Long a(JsonParser paramJsonParser)
      throws IOException, JsonParseException
    {
      long l = paramJsonParser.getLongValue();
      paramJsonParser.nextToken();
      return Long.valueOf(l);
    }
    
    public void a(Long paramLong, JsonGenerator paramJsonGenerator)
      throws IOException, JsonGenerationException
    {
      paramJsonGenerator.writeNumber(paramLong.longValue());
    }
  }
  
  private static final class i<T>
    extends StoneSerializer<Map<String, T>>
  {
    private final StoneSerializer<T> a;
    
    public i(StoneSerializer<T> paramStoneSerializer)
    {
      a = paramStoneSerializer;
    }
    
    public Map<String, T> a(JsonParser paramJsonParser)
      throws IOException, JsonParseException
    {
      HashMap localHashMap = new HashMap();
      expectStartObject(paramJsonParser);
      while (paramJsonParser.getCurrentToken() == JsonToken.FIELD_NAME)
      {
        String str = paramJsonParser.getCurrentName();
        paramJsonParser.nextToken();
        localHashMap.put(str, a.deserialize(paramJsonParser));
      }
      expectEndObject(paramJsonParser);
      return localHashMap;
    }
    
    public void a(Map<String, T> paramMap, JsonGenerator paramJsonGenerator)
      throws IOException, JsonGenerationException
    {
      paramJsonGenerator.writeString(paramMap.toString());
    }
  }
  
  private static final class j<T>
    extends StoneSerializer<T>
  {
    private final StoneSerializer<T> a;
    
    public j(StoneSerializer<T> paramStoneSerializer)
    {
      a = paramStoneSerializer;
    }
    
    public T deserialize(JsonParser paramJsonParser)
      throws IOException, JsonParseException
    {
      if (paramJsonParser.getCurrentToken() == JsonToken.VALUE_NULL)
      {
        paramJsonParser.nextToken();
        return null;
      }
      return a.deserialize(paramJsonParser);
    }
    
    public void serialize(T paramT, JsonGenerator paramJsonGenerator)
      throws IOException, JsonGenerationException
    {
      if (paramT == null)
      {
        paramJsonGenerator.writeNull();
        return;
      }
      a.serialize(paramT, paramJsonGenerator);
    }
  }
  
  private static final class k<T>
    extends StructSerializer<T>
  {
    private final StructSerializer<T> a;
    
    public k(StructSerializer<T> paramStructSerializer)
    {
      a = paramStructSerializer;
    }
    
    public T deserialize(JsonParser paramJsonParser)
      throws IOException
    {
      if (paramJsonParser.getCurrentToken() == JsonToken.VALUE_NULL)
      {
        paramJsonParser.nextToken();
        return null;
      }
      return a.deserialize(paramJsonParser);
    }
    
    public T deserialize(JsonParser paramJsonParser, boolean paramBoolean)
      throws IOException
    {
      if (paramJsonParser.getCurrentToken() == JsonToken.VALUE_NULL)
      {
        paramJsonParser.nextToken();
        return null;
      }
      return a.deserialize(paramJsonParser, paramBoolean);
    }
    
    public void serialize(T paramT, JsonGenerator paramJsonGenerator)
      throws IOException
    {
      if (paramT == null)
      {
        paramJsonGenerator.writeNull();
        return;
      }
      a.serialize(paramT, paramJsonGenerator);
    }
    
    public void serialize(T paramT, JsonGenerator paramJsonGenerator, boolean paramBoolean)
      throws IOException
    {
      if (paramT == null)
      {
        paramJsonGenerator.writeNull();
        return;
      }
      a.serialize(paramT, paramJsonGenerator, paramBoolean);
    }
  }
  
  private static final class l
    extends StoneSerializer<String>
  {
    public static final l a = new l();
    
    private l() {}
    
    public String a(JsonParser paramJsonParser)
      throws IOException, JsonParseException
    {
      String str = getStringValue(paramJsonParser);
      paramJsonParser.nextToken();
      return str;
    }
    
    public void a(String paramString, JsonGenerator paramJsonGenerator)
      throws IOException, JsonGenerationException
    {
      paramJsonGenerator.writeString(paramString);
    }
  }
  
  private static final class m
    extends StoneSerializer<Void>
  {
    public static final m a = new m();
    
    private m() {}
    
    public Void a(JsonParser paramJsonParser)
      throws IOException, JsonParseException
    {
      skipValue(paramJsonParser);
      return null;
    }
    
    public void a(Void paramVoid, JsonGenerator paramJsonGenerator)
      throws IOException, JsonGenerationException
    {
      paramJsonGenerator.writeNull();
    }
  }
}
