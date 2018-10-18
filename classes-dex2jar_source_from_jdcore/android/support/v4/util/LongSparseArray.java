package android.support.v4.util;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;

public class LongSparseArray<E>
  implements Cloneable
{
  private static final Object a = new Object();
  private boolean b = false;
  private long[] c;
  private Object[] d;
  private int e;
  
  public LongSparseArray()
  {
    this(10);
  }
  
  public LongSparseArray(int paramInt)
  {
    if (paramInt == 0)
    {
      c = a.b;
      d = a.c;
    }
    else
    {
      paramInt = a.b(paramInt);
      c = new long[paramInt];
      d = new Object[paramInt];
    }
    e = 0;
  }
  
  private void a()
  {
    int m = e;
    long[] arrayOfLong = c;
    Object[] arrayOfObject = d;
    int i = 0;
    int k;
    for (int j = 0; i < m; j = k)
    {
      Object localObject = arrayOfObject[i];
      k = j;
      if (localObject != a)
      {
        if (i != j)
        {
          arrayOfLong[j] = arrayOfLong[i];
          arrayOfObject[j] = localObject;
          arrayOfObject[i] = null;
        }
        k = j + 1;
      }
      i += 1;
    }
    b = false;
    e = j;
  }
  
  public void append(long paramLong, E paramE)
  {
    if ((e != 0) && (paramLong <= c[(e - 1)]))
    {
      put(paramLong, paramE);
      return;
    }
    if ((b) && (e >= c.length)) {
      a();
    }
    int i = e;
    if (i >= c.length)
    {
      int j = a.b(i + 1);
      long[] arrayOfLong = new long[j];
      Object[] arrayOfObject = new Object[j];
      System.arraycopy(c, 0, arrayOfLong, 0, c.length);
      System.arraycopy(d, 0, arrayOfObject, 0, d.length);
      c = arrayOfLong;
      d = arrayOfObject;
    }
    c[i] = paramLong;
    d[i] = paramE;
    e = (i + 1);
  }
  
  public void clear()
  {
    int j = e;
    Object[] arrayOfObject = d;
    int i = 0;
    while (i < j)
    {
      arrayOfObject[i] = null;
      i += 1;
    }
    e = 0;
    b = false;
  }
  
  public LongSparseArray<E> clone()
  {
    try
    {
      LongSparseArray localLongSparseArray = (LongSparseArray)super.clone();
      c = ((long[])c.clone());
      d = ((Object[])d.clone());
      return localLongSparseArray;
    }
    catch (CloneNotSupportedException localCloneNotSupportedException)
    {
      throw new AssertionError(localCloneNotSupportedException);
    }
  }
  
  public boolean containsKey(long paramLong)
  {
    return indexOfKey(paramLong) >= 0;
  }
  
  public boolean containsValue(E paramE)
  {
    return indexOfValue(paramE) >= 0;
  }
  
  public void delete(long paramLong)
  {
    int i = a.a(c, e, paramLong);
    if ((i >= 0) && (d[i] != a))
    {
      d[i] = a;
      b = true;
    }
  }
  
  @Nullable
  public E get(long paramLong)
  {
    return get(paramLong, null);
  }
  
  public E get(long paramLong, E paramE)
  {
    int i = a.a(c, e, paramLong);
    if (i >= 0)
    {
      if (d[i] == a) {
        return paramE;
      }
      return d[i];
    }
    return paramE;
  }
  
  public int indexOfKey(long paramLong)
  {
    if (b) {
      a();
    }
    return a.a(c, e, paramLong);
  }
  
  public int indexOfValue(E paramE)
  {
    if (b) {
      a();
    }
    int i = 0;
    while (i < e)
    {
      if (d[i] == paramE) {
        return i;
      }
      i += 1;
    }
    return -1;
  }
  
  public boolean isEmpty()
  {
    return size() == 0;
  }
  
  public long keyAt(int paramInt)
  {
    if (b) {
      a();
    }
    return c[paramInt];
  }
  
  public void put(long paramLong, E paramE)
  {
    int i = a.a(c, e, paramLong);
    if (i >= 0)
    {
      d[i] = paramE;
      return;
    }
    int j = i;
    if ((j < e) && (d[j] == a))
    {
      c[j] = paramLong;
      d[j] = paramE;
      return;
    }
    i = j;
    if (b)
    {
      i = j;
      if (e >= c.length)
      {
        a();
        i = a.a(c, e, paramLong);
      }
    }
    long[] arrayOfLong;
    Object localObject;
    if (e >= c.length)
    {
      j = a.b(e + 1);
      arrayOfLong = new long[j];
      localObject = new Object[j];
      System.arraycopy(c, 0, arrayOfLong, 0, c.length);
      System.arraycopy(d, 0, localObject, 0, d.length);
      c = arrayOfLong;
      d = ((Object[])localObject);
    }
    if (e - i != 0)
    {
      arrayOfLong = c;
      localObject = c;
      j = i + 1;
      System.arraycopy(arrayOfLong, i, localObject, j, e - i);
      System.arraycopy(d, i, d, j, e - i);
    }
    c[i] = paramLong;
    d[i] = paramE;
    e += 1;
  }
  
  public void putAll(@NonNull LongSparseArray<? extends E> paramLongSparseArray)
  {
    int j = paramLongSparseArray.size();
    int i = 0;
    while (i < j)
    {
      put(paramLongSparseArray.keyAt(i), paramLongSparseArray.valueAt(i));
      i += 1;
    }
  }
  
  public void remove(long paramLong)
  {
    delete(paramLong);
  }
  
  public void removeAt(int paramInt)
  {
    if (d[paramInt] != a)
    {
      d[paramInt] = a;
      b = true;
    }
  }
  
  public void setValueAt(int paramInt, E paramE)
  {
    if (b) {
      a();
    }
    d[paramInt] = paramE;
  }
  
  public int size()
  {
    if (b) {
      a();
    }
    return e;
  }
  
  public String toString()
  {
    if (size() <= 0) {
      return "{}";
    }
    StringBuilder localStringBuilder = new StringBuilder(e * 28);
    localStringBuilder.append('{');
    int i = 0;
    while (i < e)
    {
      if (i > 0) {
        localStringBuilder.append(", ");
      }
      localStringBuilder.append(keyAt(i));
      localStringBuilder.append('=');
      Object localObject = valueAt(i);
      if (localObject != this) {
        localStringBuilder.append(localObject);
      } else {
        localStringBuilder.append("(this Map)");
      }
      i += 1;
    }
    localStringBuilder.append('}');
    return localStringBuilder.toString();
  }
  
  public E valueAt(int paramInt)
  {
    if (b) {
      a();
    }
    return d[paramInt];
  }
}
