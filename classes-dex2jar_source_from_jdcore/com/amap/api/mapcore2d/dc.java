package com.amap.api.mapcore2d;

public class dc
{
  private final int a = 37;
  private int b = 0;
  
  public dc() {}
  
  public int a()
  {
    return b;
  }
  
  public dc a(byte paramByte)
  {
    b = (b * a + paramByte);
    return this;
  }
  
  public dc a(char paramChar)
  {
    b = (b * a + paramChar);
    return this;
  }
  
  public dc a(double paramDouble)
  {
    return a(Double.doubleToLongBits(paramDouble));
  }
  
  public dc a(float paramFloat)
  {
    b = (b * a + Float.floatToIntBits(paramFloat));
    return this;
  }
  
  public dc a(int paramInt)
  {
    b = (b * a + paramInt);
    return this;
  }
  
  public dc a(long paramLong)
  {
    b = (b * a + (int)(paramLong ^ paramLong >> 32));
    return this;
  }
  
  public dc a(Object paramObject)
  {
    if (paramObject == null)
    {
      b *= a;
      return this;
    }
    if (paramObject.getClass().isArray())
    {
      if ((paramObject instanceof long[]))
      {
        a((long[])paramObject);
        return this;
      }
      if ((paramObject instanceof int[]))
      {
        a((int[])paramObject);
        return this;
      }
      if ((paramObject instanceof short[]))
      {
        a((short[])paramObject);
        return this;
      }
      if ((paramObject instanceof char[]))
      {
        a((char[])paramObject);
        return this;
      }
      if ((paramObject instanceof byte[]))
      {
        a((byte[])paramObject);
        return this;
      }
      if ((paramObject instanceof double[]))
      {
        a((double[])paramObject);
        return this;
      }
      if ((paramObject instanceof float[]))
      {
        a((float[])paramObject);
        return this;
      }
      if ((paramObject instanceof boolean[]))
      {
        a((boolean[])paramObject);
        return this;
      }
      a((Object[])paramObject);
      return this;
    }
    b = (b * a + paramObject.hashCode());
    return this;
  }
  
  public dc a(short paramShort)
  {
    b = (b * a + paramShort);
    return this;
  }
  
  public dc a(boolean paramBoolean)
  {
    b = (b * a + (paramBoolean ^ true));
    return this;
  }
  
  public dc a(byte[] paramArrayOfByte)
  {
    if (paramArrayOfByte == null)
    {
      b *= a;
      return this;
    }
    int i = 0;
    while (i < paramArrayOfByte.length)
    {
      a(paramArrayOfByte[i]);
      i += 1;
    }
    return this;
  }
  
  public dc a(char[] paramArrayOfChar)
  {
    if (paramArrayOfChar == null)
    {
      b *= a;
      return this;
    }
    int i = 0;
    while (i < paramArrayOfChar.length)
    {
      a(paramArrayOfChar[i]);
      i += 1;
    }
    return this;
  }
  
  public dc a(double[] paramArrayOfDouble)
  {
    if (paramArrayOfDouble == null)
    {
      b *= a;
      return this;
    }
    int i = 0;
    while (i < paramArrayOfDouble.length)
    {
      a(paramArrayOfDouble[i]);
      i += 1;
    }
    return this;
  }
  
  public dc a(float[] paramArrayOfFloat)
  {
    if (paramArrayOfFloat == null)
    {
      b *= a;
      return this;
    }
    int i = 0;
    while (i < paramArrayOfFloat.length)
    {
      a(paramArrayOfFloat[i]);
      i += 1;
    }
    return this;
  }
  
  public dc a(int[] paramArrayOfInt)
  {
    if (paramArrayOfInt == null)
    {
      b *= a;
      return this;
    }
    int i = 0;
    while (i < paramArrayOfInt.length)
    {
      a(paramArrayOfInt[i]);
      i += 1;
    }
    return this;
  }
  
  public dc a(long[] paramArrayOfLong)
  {
    if (paramArrayOfLong == null)
    {
      b *= a;
      return this;
    }
    int i = 0;
    while (i < paramArrayOfLong.length)
    {
      a(paramArrayOfLong[i]);
      i += 1;
    }
    return this;
  }
  
  public dc a(Object[] paramArrayOfObject)
  {
    if (paramArrayOfObject == null)
    {
      b *= a;
      return this;
    }
    int i = 0;
    while (i < paramArrayOfObject.length)
    {
      a(paramArrayOfObject[i]);
      i += 1;
    }
    return this;
  }
  
  public dc a(short[] paramArrayOfShort)
  {
    if (paramArrayOfShort == null)
    {
      b *= a;
      return this;
    }
    int i = 0;
    while (i < paramArrayOfShort.length)
    {
      a(paramArrayOfShort[i]);
      i += 1;
    }
    return this;
  }
  
  public dc a(boolean[] paramArrayOfBoolean)
  {
    if (paramArrayOfBoolean == null)
    {
      b *= a;
      return this;
    }
    int i = 0;
    while (i < paramArrayOfBoolean.length)
    {
      a(paramArrayOfBoolean[i]);
      i += 1;
    }
    return this;
  }
  
  public int hashCode()
  {
    return a();
  }
}
