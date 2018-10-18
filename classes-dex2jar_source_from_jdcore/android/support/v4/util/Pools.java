package android.support.v4.util;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;

public final class Pools
{
  private Pools() {}
  
  public static abstract interface Pool<T>
  {
    @Nullable
    public abstract T acquire();
    
    public abstract boolean release(@NonNull T paramT);
  }
  
  public static class SimplePool<T>
    implements Pools.Pool<T>
  {
    private final Object[] a;
    private int b;
    
    public SimplePool(int paramInt)
    {
      if (paramInt > 0)
      {
        a = new Object[paramInt];
        return;
      }
      throw new IllegalArgumentException("The max pool size must be > 0");
    }
    
    private boolean a(@NonNull T paramT)
    {
      int i = 0;
      while (i < b)
      {
        if (a[i] == paramT) {
          return true;
        }
        i += 1;
      }
      return false;
    }
    
    public T acquire()
    {
      if (b > 0)
      {
        int i = b - 1;
        Object localObject = a[i];
        a[i] = null;
        b -= 1;
        return localObject;
      }
      return null;
    }
    
    public boolean release(@NonNull T paramT)
    {
      if (!a(paramT))
      {
        if (b < a.length)
        {
          a[b] = paramT;
          b += 1;
          return true;
        }
        return false;
      }
      throw new IllegalStateException("Already in the pool!");
    }
  }
  
  public static class SynchronizedPool<T>
    extends Pools.SimplePool<T>
  {
    private final Object a = new Object();
    
    public SynchronizedPool(int paramInt)
    {
      super();
    }
    
    public T acquire()
    {
      synchronized (a)
      {
        Object localObject2 = super.acquire();
        return localObject2;
      }
    }
    
    public boolean release(@NonNull T paramT)
    {
      synchronized (a)
      {
        boolean bool = super.release(paramT);
        return bool;
      }
    }
  }
}
