package android.support.v4.util;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Locale;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public class LruCache<K, V>
{
  private final LinkedHashMap<K, V> a;
  private int b;
  private int c;
  private int d;
  private int e;
  private int f;
  private int g;
  private int h;
  
  public LruCache(int paramInt)
  {
    if (paramInt > 0)
    {
      c = paramInt;
      a = new LinkedHashMap(0, 0.75F, true);
      return;
    }
    throw new IllegalArgumentException("maxSize <= 0");
  }
  
  private int a(K paramK, V paramV)
  {
    int i = sizeOf(paramK, paramV);
    if (i >= 0) {
      return i;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Negative size: ");
    localStringBuilder.append(paramK);
    localStringBuilder.append("=");
    localStringBuilder.append(paramV);
    throw new IllegalStateException(localStringBuilder.toString());
  }
  
  @Nullable
  protected V create(@NonNull K paramK)
  {
    return null;
  }
  
  public final int createCount()
  {
    try
    {
      int i = e;
      return i;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  protected void entryRemoved(boolean paramBoolean, @NonNull K paramK, @NonNull V paramV1, @Nullable V paramV2) {}
  
  public final void evictAll()
  {
    trimToSize(-1);
  }
  
  public final int evictionCount()
  {
    try
    {
      int i = f;
      return i;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  @Nullable
  public final V get(@NonNull K paramK)
  {
    if (paramK != null) {
      try
      {
        Object localObject1 = a.get(paramK);
        if (localObject1 != null)
        {
          g += 1;
          return localObject1;
        }
        h += 1;
        localObject1 = create(paramK);
        if (localObject1 == null) {
          return null;
        }
        try
        {
          e += 1;
          Object localObject2 = a.put(paramK, localObject1);
          if (localObject2 != null) {
            a.put(paramK, localObject2);
          } else {
            b += a(paramK, localObject1);
          }
          if (localObject2 != null)
          {
            entryRemoved(false, paramK, localObject1, localObject2);
            return localObject2;
          }
          trimToSize(c);
          return localObject1;
        }
        finally {}
        throw new NullPointerException("key == null");
      }
      finally {}
    }
  }
  
  public final int hitCount()
  {
    try
    {
      int i = g;
      return i;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  public final int maxSize()
  {
    try
    {
      int i = c;
      return i;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  public final int missCount()
  {
    try
    {
      int i = h;
      return i;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  @Nullable
  public final V put(@NonNull K paramK, @NonNull V paramV)
  {
    if ((paramK != null) && (paramV != null)) {
      try
      {
        d += 1;
        b += a(paramK, paramV);
        Object localObject = a.put(paramK, paramV);
        if (localObject != null) {
          b -= a(paramK, localObject);
        }
        if (localObject != null) {
          entryRemoved(false, paramK, localObject, paramV);
        }
        trimToSize(c);
        return localObject;
      }
      finally {}
    }
    throw new NullPointerException("key == null || value == null");
  }
  
  public final int putCount()
  {
    try
    {
      int i = d;
      return i;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  @Nullable
  public final V remove(@NonNull K paramK)
  {
    if (paramK != null) {
      try
      {
        Object localObject = a.remove(paramK);
        if (localObject != null) {
          b -= a(paramK, localObject);
        }
        if (localObject != null) {
          entryRemoved(false, paramK, localObject, null);
        }
        return localObject;
      }
      finally {}
    }
    throw new NullPointerException("key == null");
  }
  
  public void resize(int paramInt)
  {
    if (paramInt > 0) {
      try
      {
        c = paramInt;
        trimToSize(paramInt);
        return;
      }
      finally {}
    }
    throw new IllegalArgumentException("maxSize <= 0");
  }
  
  public final int size()
  {
    try
    {
      int i = b;
      return i;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  protected int sizeOf(@NonNull K paramK, @NonNull V paramV)
  {
    return 1;
  }
  
  public final Map<K, V> snapshot()
  {
    try
    {
      LinkedHashMap localLinkedHashMap = new LinkedHashMap(a);
      return localLinkedHashMap;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  public final String toString()
  {
    for (;;)
    {
      try
      {
        i = g + h;
        if (i != 0)
        {
          i = g * 100 / i;
          String str = String.format(Locale.US, "LruCache[maxSize=%d,hits=%d,misses=%d,hitRate=%d%%]", new Object[] { Integer.valueOf(c), Integer.valueOf(g), Integer.valueOf(h), Integer.valueOf(i) });
          return str;
        }
      }
      finally {}
      int i = 0;
    }
  }
  
  public void trimToSize(int paramInt)
  {
    for (;;)
    {
      try
      {
        if ((b >= 0) && ((!a.isEmpty()) || (b == 0)))
        {
          if ((b > paramInt) && (!a.isEmpty()))
          {
            Object localObject3 = (Map.Entry)a.entrySet().iterator().next();
            localObject1 = ((Map.Entry)localObject3).getKey();
            localObject3 = ((Map.Entry)localObject3).getValue();
            a.remove(localObject1);
            b -= a(localObject1, localObject3);
            f += 1;
            entryRemoved(true, localObject1, localObject3, null);
            continue;
          }
          return;
        }
        Object localObject1 = new StringBuilder();
        ((StringBuilder)localObject1).append(getClass().getName());
        ((StringBuilder)localObject1).append(".sizeOf() is reporting inconsistent results!");
        throw new IllegalStateException(((StringBuilder)localObject1).toString());
      }
      finally {}
    }
  }
}
