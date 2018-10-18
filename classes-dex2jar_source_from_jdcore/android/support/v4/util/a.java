package android.support.v4.util;

class a
{
  static final int[] a = new int[0];
  static final long[] b = new long[0];
  static final Object[] c = new Object[0];
  
  public static int a(int paramInt)
  {
    return c(paramInt * 4) / 4;
  }
  
  static int a(int[] paramArrayOfInt, int paramInt1, int paramInt2)
  {
    paramInt1 -= 1;
    int i = 0;
    while (i <= paramInt1)
    {
      int j = i + paramInt1 >>> 1;
      int k = paramArrayOfInt[j];
      if (k < paramInt2) {
        i = j + 1;
      } else if (k > paramInt2) {
        paramInt1 = j - 1;
      } else {
        return j;
      }
    }
    return i;
  }
  
  static int a(long[] paramArrayOfLong, int paramInt, long paramLong)
  {
    paramInt -= 1;
    int i = 0;
    while (i <= paramInt)
    {
      int j = i + paramInt >>> 1;
      boolean bool = paramArrayOfLong[j] < paramLong;
      if (bool) {
        i = j + 1;
      } else if (bool) {
        paramInt = j - 1;
      } else {
        return j;
      }
    }
    return i;
  }
  
  public static boolean a(Object paramObject1, Object paramObject2)
  {
    return (paramObject1 == paramObject2) || ((paramObject1 != null) && (paramObject1.equals(paramObject2)));
  }
  
  public static int b(int paramInt)
  {
    return c(paramInt * 8) / 8;
  }
  
  public static int c(int paramInt)
  {
    int i = 4;
    while (i < 32)
    {
      int j = (1 << i) - 12;
      if (paramInt <= j) {
        return j;
      }
      i += 1;
    }
    return paramInt;
  }
}
