package android.support.v4.util;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;

public class SparseArrayCompat<E>
  implements Cloneable
{
  private static final Object a = new Object();
  private boolean b = false;
  private int[] c;
  private Object[] d;
  private int e;
  
  public SparseArrayCompat()
  {
    this(10);
  }
  
  public SparseArrayCompat(int paramInt)
  {
    if (paramInt == 0)
    {
      c = a.a;
      d = a.c;
    }
    else
    {
      paramInt = a.a(paramInt);
      c = new int[paramInt];
      d = new Object[paramInt];
    }
    e = 0;
  }
  
  private void a()
  {
    int m = e;
    int[] arrayOfInt = c;
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
          arrayOfInt[j] = arrayOfInt[i];
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
  
  public void append(int paramInt, E paramE)
  {
    if ((e != 0) && (paramInt <= c[(e - 1)]))
    {
      put(paramInt, paramE);
      return;
    }
    if ((b) && (e >= c.length)) {
      a();
    }
    int i = e;
    if (i >= c.length)
    {
      int j = a.a(i + 1);
      int[] arrayOfInt = new int[j];
      Object[] arrayOfObject = new Object[j];
      System.arraycopy(c, 0, arrayOfInt, 0, c.length);
      System.arraycopy(d, 0, arrayOfObject, 0, d.length);
      c = arrayOfInt;
      d = arrayOfObject;
    }
    c[i] = paramInt;
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
  
  public SparseArrayCompat<E> clone()
  {
    try
    {
      SparseArrayCompat localSparseArrayCompat = (SparseArrayCompat)super.clone();
      c = ((int[])c.clone());
      d = ((Object[])d.clone());
      return localSparseArrayCompat;
    }
    catch (CloneNotSupportedException localCloneNotSupportedException)
    {
      throw new AssertionError(localCloneNotSupportedException);
    }
  }
  
  public boolean containsKey(int paramInt)
  {
    return indexOfKey(paramInt) >= 0;
  }
  
  public boolean containsValue(E paramE)
  {
    return indexOfValue(paramE) >= 0;
  }
  
  public void delete(int paramInt)
  {
    paramInt = a.a(c, e, paramInt);
    if ((paramInt >= 0) && (d[paramInt] != a))
    {
      d[paramInt] = a;
      b = true;
    }
  }
  
  @Nullable
  public E get(int paramInt)
  {
    return get(paramInt, null);
  }
  
  public E get(int paramInt, E paramE)
  {
    paramInt = a.a(c, e, paramInt);
    if (paramInt >= 0)
    {
      if (d[paramInt] == a) {
        return paramE;
      }
      return d[paramInt];
    }
    return paramE;
  }
  
  public int indexOfKey(int paramInt)
  {
    if (b) {
      a();
    }
    return a.a(c, e, paramInt);
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
  
  public int keyAt(int paramInt)
  {
    if (b) {
      a();
    }
    return c[paramInt];
  }
  
  public void put(int paramInt, E paramE)
  {
    int i = a.a(c, e, paramInt);
    if (i >= 0)
    {
      d[i] = paramE;
      return;
    }
    int j = i;
    if ((j < e) && (d[j] == a))
    {
      c[j] = paramInt;
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
        i = a.a(c, e, paramInt);
      }
    }
    int[] arrayOfInt;
    Object localObject;
    if (e >= c.length)
    {
      j = a.a(e + 1);
      arrayOfInt = new int[j];
      localObject = new Object[j];
      System.arraycopy(c, 0, arrayOfInt, 0, c.length);
      System.arraycopy(d, 0, localObject, 0, d.length);
      c = arrayOfInt;
      d = ((Object[])localObject);
    }
    if (e - i != 0)
    {
      arrayOfInt = c;
      localObject = c;
      j = i + 1;
      System.arraycopy(arrayOfInt, i, localObject, j, e - i);
      System.arraycopy(d, i, d, j, e - i);
    }
    c[i] = paramInt;
    d[i] = paramE;
    e += 1;
  }
  
  public void putAll(@NonNull SparseArrayCompat<? extends E> paramSparseArrayCompat)
  {
    int j = paramSparseArrayCompat.size();
    int i = 0;
    while (i < j)
    {
      put(paramSparseArrayCompat.keyAt(i), paramSparseArrayCompat.valueAt(i));
      i += 1;
    }
  }
  
  public void remove(int paramInt)
  {
    delete(paramInt);
  }
  
  public void removeAt(int paramInt)
  {
    if (d[paramInt] != a)
    {
      d[paramInt] = a;
      b = true;
    }
  }
  
  public void removeAtRange(int paramInt1, int paramInt2)
  {
    paramInt2 = Math.min(e, paramInt2 + paramInt1);
    while (paramInt1 < paramInt2)
    {
      removeAt(paramInt1);
      paramInt1 += 1;
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
