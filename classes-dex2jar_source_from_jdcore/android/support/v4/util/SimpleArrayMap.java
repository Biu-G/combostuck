package android.support.v4.util;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import java.util.ConcurrentModificationException;
import java.util.Map;

public class SimpleArrayMap<K, V>
{
  @Nullable
  static Object[] b;
  static int c;
  @Nullable
  static Object[] d;
  static int e;
  int[] f;
  Object[] g;
  int h;
  
  public SimpleArrayMap()
  {
    f = a.a;
    g = a.c;
    h = 0;
  }
  
  public SimpleArrayMap(int paramInt)
  {
    if (paramInt == 0)
    {
      f = a.a;
      g = a.c;
    }
    else
    {
      a(paramInt);
    }
    h = 0;
  }
  
  public SimpleArrayMap(SimpleArrayMap<K, V> paramSimpleArrayMap)
  {
    this();
    if (paramSimpleArrayMap != null) {
      putAll(paramSimpleArrayMap);
    }
  }
  
  private static int a(int[] paramArrayOfInt, int paramInt1, int paramInt2)
  {
    try
    {
      paramInt1 = a.a(paramArrayOfInt, paramInt1, paramInt2);
      return paramInt1;
    }
    catch (ArrayIndexOutOfBoundsException paramArrayOfInt)
    {
      for (;;) {}
    }
    throw new ConcurrentModificationException();
  }
  
  private void a(int paramInt)
  {
    if (paramInt == 8) {
      try
      {
        if (d != null)
        {
          Object[] arrayOfObject1 = d;
          g = arrayOfObject1;
          d = (Object[])arrayOfObject1[0];
          f = ((int[])arrayOfObject1[1]);
          arrayOfObject1[1] = null;
          arrayOfObject1[0] = null;
          e -= 1;
          return;
        }
      }
      finally {}
    }
    if (paramInt == 4) {
      try
      {
        if (b != null)
        {
          Object[] arrayOfObject2 = b;
          g = arrayOfObject2;
          b = (Object[])arrayOfObject2[0];
          f = ((int[])arrayOfObject2[1]);
          arrayOfObject2[1] = null;
          arrayOfObject2[0] = null;
          c -= 1;
          return;
        }
      }
      finally {}
    }
    f = new int[paramInt];
    g = new Object[paramInt << 1];
  }
  
  private static void a(int[] paramArrayOfInt, Object[] paramArrayOfObject, int paramInt)
  {
    if (paramArrayOfInt.length == 8) {
      try
      {
        if (e < 10)
        {
          paramArrayOfObject[0] = d;
          paramArrayOfObject[1] = paramArrayOfInt;
          paramInt = (paramInt << 1) - 1;
          break label118;
          d = paramArrayOfObject;
          e += 1;
        }
        return;
      }
      finally {}
    }
    if (paramArrayOfInt.length == 4) {}
    for (;;)
    {
      try
      {
        if (c < 10)
        {
          paramArrayOfObject[0] = b;
          paramArrayOfObject[1] = paramArrayOfInt;
          paramInt = (paramInt << 1) - 1;
          break label134;
          b = paramArrayOfObject;
          c += 1;
        }
        return;
      }
      finally {}
      return;
      label118:
      while (paramInt >= 2)
      {
        paramArrayOfObject[paramInt] = null;
        paramInt -= 1;
      }
      break;
      label134:
      while (paramInt >= 2)
      {
        paramArrayOfObject[paramInt] = null;
        paramInt -= 1;
      }
    }
  }
  
  int a()
  {
    int j = h;
    if (j == 0) {
      return -1;
    }
    int k = a(f, j, 0);
    if (k < 0) {
      return k;
    }
    if (g[(k << 1)] == null) {
      return k;
    }
    int i = k + 1;
    while ((i < j) && (f[i] == 0))
    {
      if (g[(i << 1)] == null) {
        return i;
      }
      i += 1;
    }
    j = k - 1;
    while ((j >= 0) && (f[j] == 0))
    {
      if (g[(j << 1)] == null) {
        return j;
      }
      j -= 1;
    }
    return i;
  }
  
  int a(Object paramObject)
  {
    int j = h * 2;
    Object[] arrayOfObject = g;
    if (paramObject == null)
    {
      i = 1;
      while (i < j)
      {
        if (arrayOfObject[i] == null) {
          return i >> 1;
        }
        i += 2;
      }
    }
    int i = 1;
    while (i < j)
    {
      if (paramObject.equals(arrayOfObject[i])) {
        return i >> 1;
      }
      i += 2;
    }
    return -1;
  }
  
  int a(Object paramObject, int paramInt)
  {
    int j = h;
    if (j == 0) {
      return -1;
    }
    int k = a(f, j, paramInt);
    if (k < 0) {
      return k;
    }
    if (paramObject.equals(g[(k << 1)])) {
      return k;
    }
    int i = k + 1;
    while ((i < j) && (f[i] == paramInt))
    {
      if (paramObject.equals(g[(i << 1)])) {
        return i;
      }
      i += 1;
    }
    j = k - 1;
    while ((j >= 0) && (f[j] == paramInt))
    {
      if (paramObject.equals(g[(j << 1)])) {
        return j;
      }
      j -= 1;
    }
    return i;
  }
  
  public void clear()
  {
    if (h > 0)
    {
      int[] arrayOfInt = f;
      Object[] arrayOfObject = g;
      int i = h;
      f = a.a;
      g = a.c;
      h = 0;
      a(arrayOfInt, arrayOfObject, i);
    }
    if (h <= 0) {
      return;
    }
    throw new ConcurrentModificationException();
  }
  
  public boolean containsKey(@Nullable Object paramObject)
  {
    return indexOfKey(paramObject) >= 0;
  }
  
  public boolean containsValue(Object paramObject)
  {
    return a(paramObject) >= 0;
  }
  
  public void ensureCapacity(int paramInt)
  {
    int i = h;
    if (f.length < paramInt)
    {
      int[] arrayOfInt = f;
      Object[] arrayOfObject = g;
      a(paramInt);
      if (h > 0)
      {
        System.arraycopy(arrayOfInt, 0, f, 0, i);
        System.arraycopy(arrayOfObject, 0, g, 0, i << 1);
      }
      a(arrayOfInt, arrayOfObject, i);
    }
    if (h == i) {
      return;
    }
    throw new ConcurrentModificationException();
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {
      return true;
    }
    int i;
    if ((paramObject instanceof SimpleArrayMap))
    {
      paramObject = (SimpleArrayMap)paramObject;
      if (size() != paramObject.size()) {
        return false;
      }
      i = 0;
    }
    try
    {
      while (i < h)
      {
        localObject1 = keyAt(i);
        localObject2 = valueAt(i);
        localObject3 = paramObject.get(localObject1);
        if (localObject2 == null)
        {
          if (localObject3 != null) {
            break label229;
          }
          if (!paramObject.containsKey(localObject1)) {
            return false;
          }
        }
        else
        {
          bool = localObject2.equals(localObject3);
          if (!bool) {
            return false;
          }
        }
        i += 1;
      }
      return true;
    }
    catch (NullPointerException paramObject)
    {
      Object localObject1;
      Object localObject2;
      Object localObject3;
      boolean bool;
      return false;
    }
    catch (ClassCastException paramObject)
    {
      return false;
    }
    if ((paramObject instanceof Map))
    {
      paramObject = (Map)paramObject;
      if (size() != paramObject.size()) {
        return false;
      }
      i = 0;
    }
    try
    {
      while (i < h)
      {
        localObject1 = keyAt(i);
        localObject2 = valueAt(i);
        localObject3 = paramObject.get(localObject1);
        if (localObject2 == null)
        {
          if (localObject3 != null) {
            break label231;
          }
          if (!paramObject.containsKey(localObject1)) {
            return false;
          }
        }
        else
        {
          bool = localObject2.equals(localObject3);
          if (!bool) {
            return false;
          }
        }
        i += 1;
      }
      return true;
    }
    catch (NullPointerException paramObject)
    {
      return false;
    }
    catch (ClassCastException paramObject)
    {
      return false;
    }
    return false;
    label229:
    return false;
    label231:
    return false;
  }
  
  @Nullable
  public V get(Object paramObject)
  {
    int i = indexOfKey(paramObject);
    if (i >= 0) {
      return g[((i << 1) + 1)];
    }
    return null;
  }
  
  public int hashCode()
  {
    int[] arrayOfInt = f;
    Object[] arrayOfObject = g;
    int n = h;
    int j = 0;
    int i = 1;
    int k = 0;
    while (j < n)
    {
      Object localObject = arrayOfObject[i];
      int i1 = arrayOfInt[j];
      int m;
      if (localObject == null) {
        m = 0;
      } else {
        m = localObject.hashCode();
      }
      k += (m ^ i1);
      j += 1;
      i += 2;
    }
    return k;
  }
  
  public int indexOfKey(@Nullable Object paramObject)
  {
    if (paramObject == null) {
      return a();
    }
    return a(paramObject, paramObject.hashCode());
  }
  
  public boolean isEmpty()
  {
    return h <= 0;
  }
  
  public K keyAt(int paramInt)
  {
    return g[(paramInt << 1)];
  }
  
  @Nullable
  public V put(K paramK, V paramV)
  {
    int k = h;
    int i;
    int j;
    if (paramK == null)
    {
      i = a();
      j = 0;
    }
    else
    {
      j = paramK.hashCode();
      i = a(paramK, j);
    }
    if (i >= 0)
    {
      i = (i << 1) + 1;
      paramK = g[i];
      g[i] = paramV;
      return paramK;
    }
    int m = i;
    Object localObject1;
    Object localObject2;
    if (k >= f.length)
    {
      i = 4;
      if (k >= 8) {
        i = (k >> 1) + k;
      } else if (k >= 4) {
        i = 8;
      }
      localObject1 = f;
      localObject2 = g;
      a(i);
      if (k == h)
      {
        if (f.length > 0)
        {
          System.arraycopy(localObject1, 0, f, 0, localObject1.length);
          System.arraycopy(localObject2, 0, g, 0, localObject2.length);
        }
        a((int[])localObject1, (Object[])localObject2, k);
      }
      else
      {
        throw new ConcurrentModificationException();
      }
    }
    if (m < k)
    {
      localObject1 = f;
      localObject2 = f;
      i = m + 1;
      System.arraycopy(localObject1, m, localObject2, i, k - m);
      System.arraycopy(g, m << 1, g, i << 1, h - m << 1);
    }
    if ((k == h) && (m < f.length))
    {
      f[m] = j;
      localObject1 = g;
      i = m << 1;
      localObject1[i] = paramK;
      g[(i + 1)] = paramV;
      h += 1;
      return null;
    }
    throw new ConcurrentModificationException();
  }
  
  public void putAll(@NonNull SimpleArrayMap<? extends K, ? extends V> paramSimpleArrayMap)
  {
    int j = h;
    ensureCapacity(h + j);
    int k = h;
    int i = 0;
    if (k == 0)
    {
      if (j > 0)
      {
        System.arraycopy(f, 0, f, 0, j);
        System.arraycopy(g, 0, g, 0, j << 1);
        h = j;
      }
    }
    else {
      while (i < j)
      {
        put(paramSimpleArrayMap.keyAt(i), paramSimpleArrayMap.valueAt(i));
        i += 1;
      }
    }
  }
  
  @Nullable
  public V remove(Object paramObject)
  {
    int i = indexOfKey(paramObject);
    if (i >= 0) {
      return removeAt(i);
    }
    return null;
  }
  
  public V removeAt(int paramInt)
  {
    Object localObject1 = g;
    int m = paramInt << 1;
    localObject1 = localObject1[(m + 1)];
    int k = h;
    int i = 0;
    if (k <= 1)
    {
      a(f, g, k);
      f = a.a;
      g = a.c;
      paramInt = i;
    }
    else
    {
      int j = k - 1;
      int n = f.length;
      i = 8;
      Object localObject2;
      Object localObject3;
      if ((n > 8) && (h < f.length / 3))
      {
        if (k > 8) {
          i = k + (k >> 1);
        }
        localObject2 = f;
        localObject3 = g;
        a(i);
        if (k == h)
        {
          if (paramInt > 0)
          {
            System.arraycopy(localObject2, 0, f, 0, paramInt);
            System.arraycopy(localObject3, 0, g, 0, m);
          }
          if (paramInt < j)
          {
            i = paramInt + 1;
            int[] arrayOfInt = f;
            n = j - paramInt;
            System.arraycopy(localObject2, i, arrayOfInt, paramInt, n);
            System.arraycopy(localObject3, i << 1, g, m, n << 1);
          }
        }
        else
        {
          throw new ConcurrentModificationException();
        }
      }
      else
      {
        if (paramInt < j)
        {
          localObject2 = f;
          i = paramInt + 1;
          localObject3 = f;
          n = j - paramInt;
          System.arraycopy(localObject2, i, localObject3, paramInt, n);
          System.arraycopy(g, i << 1, g, m, n << 1);
        }
        localObject2 = g;
        paramInt = j << 1;
        localObject2[paramInt] = null;
        g[(paramInt + 1)] = null;
      }
      paramInt = j;
    }
    if (k == h)
    {
      h = paramInt;
      return localObject1;
    }
    throw new ConcurrentModificationException();
  }
  
  public V setValueAt(int paramInt, V paramV)
  {
    paramInt = (paramInt << 1) + 1;
    Object localObject = g[paramInt];
    g[paramInt] = paramV;
    return localObject;
  }
  
  public int size()
  {
    return h;
  }
  
  public String toString()
  {
    if (isEmpty()) {
      return "{}";
    }
    StringBuilder localStringBuilder = new StringBuilder(h * 28);
    localStringBuilder.append('{');
    int i = 0;
    while (i < h)
    {
      if (i > 0) {
        localStringBuilder.append(", ");
      }
      Object localObject = keyAt(i);
      if (localObject != this) {
        localStringBuilder.append(localObject);
      } else {
        localStringBuilder.append("(this Map)");
      }
      localStringBuilder.append('=');
      localObject = valueAt(i);
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
  
  public V valueAt(int paramInt)
  {
    return g[((paramInt << 1) + 1)];
  }
}
