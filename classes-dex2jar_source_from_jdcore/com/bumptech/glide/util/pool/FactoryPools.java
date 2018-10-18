package com.bumptech.glide.util.pool;

import android.support.annotation.NonNull;
import android.support.v4.util.Pools.Pool;
import android.support.v4.util.Pools.SimplePool;
import android.support.v4.util.Pools.SynchronizedPool;
import android.util.Log;
import java.util.ArrayList;
import java.util.List;

public final class FactoryPools
{
  private static final Resetter<Object> a = new Resetter()
  {
    public void reset(@NonNull Object paramAnonymousObject) {}
  };
  
  private FactoryPools() {}
  
  @NonNull
  private static <T extends Poolable> Pools.Pool<T> a(@NonNull Pools.Pool<T> paramPool, @NonNull Factory<T> paramFactory)
  {
    return a(paramPool, paramFactory, a());
  }
  
  @NonNull
  private static <T> Pools.Pool<T> a(@NonNull Pools.Pool<T> paramPool, @NonNull Factory<T> paramFactory, @NonNull Resetter<T> paramResetter)
  {
    return new a(paramPool, paramFactory, paramResetter);
  }
  
  @NonNull
  private static <T> Resetter<T> a()
  {
    return a;
  }
  
  @NonNull
  public static <T extends Poolable> Pools.Pool<T> simple(int paramInt, @NonNull Factory<T> paramFactory)
  {
    return a(new Pools.SimplePool(paramInt), paramFactory);
  }
  
  @NonNull
  public static <T extends Poolable> Pools.Pool<T> threadSafe(int paramInt, @NonNull Factory<T> paramFactory)
  {
    return a(new Pools.SynchronizedPool(paramInt), paramFactory);
  }
  
  @NonNull
  public static <T> Pools.Pool<List<T>> threadSafeList()
  {
    return threadSafeList(20);
  }
  
  @NonNull
  public static <T> Pools.Pool<List<T>> threadSafeList(int paramInt)
  {
    a(new Pools.SynchronizedPool(paramInt), new Factory()new Resetter
    {
      @NonNull
      public List<T> a()
      {
        return new ArrayList();
      }
    }, new Resetter()
    {
      public void a(@NonNull List<T> paramAnonymousList)
      {
        paramAnonymousList.clear();
      }
    });
  }
  
  public static abstract interface Factory<T>
  {
    public abstract T create();
  }
  
  public static abstract interface Poolable
  {
    @NonNull
    public abstract StateVerifier getVerifier();
  }
  
  public static abstract interface Resetter<T>
  {
    public abstract void reset(@NonNull T paramT);
  }
  
  private static final class a<T>
    implements Pools.Pool<T>
  {
    private final FactoryPools.Factory<T> a;
    private final FactoryPools.Resetter<T> b;
    private final Pools.Pool<T> c;
    
    a(@NonNull Pools.Pool<T> paramPool, @NonNull FactoryPools.Factory<T> paramFactory, @NonNull FactoryPools.Resetter<T> paramResetter)
    {
      c = paramPool;
      a = paramFactory;
      b = paramResetter;
    }
    
    public T acquire()
    {
      Object localObject2 = c.acquire();
      Object localObject1 = localObject2;
      if (localObject2 == null)
      {
        localObject2 = a.create();
        localObject1 = localObject2;
        if (Log.isLoggable("FactoryPools", 2))
        {
          localObject1 = new StringBuilder();
          ((StringBuilder)localObject1).append("Created new ");
          ((StringBuilder)localObject1).append(localObject2.getClass());
          Log.v("FactoryPools", ((StringBuilder)localObject1).toString());
          localObject1 = localObject2;
        }
      }
      if ((localObject1 instanceof FactoryPools.Poolable)) {
        ((FactoryPools.Poolable)localObject1).getVerifier().a(false);
      }
      return localObject1;
    }
    
    public boolean release(@NonNull T paramT)
    {
      if ((paramT instanceof FactoryPools.Poolable)) {
        ((FactoryPools.Poolable)paramT).getVerifier().a(true);
      }
      b.reset(paramT);
      return c.release(paramT);
    }
  }
}
