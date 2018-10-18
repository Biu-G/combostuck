package com.bumptech.glide.load.model;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.VisibleForTesting;
import com.bumptech.glide.util.LruCache;
import com.bumptech.glide.util.Util;
import java.util.Queue;

public class ModelCache<A, B>
{
  private final LruCache<a<A>, B> a;
  
  public ModelCache()
  {
    this(250L);
  }
  
  public ModelCache(long paramLong)
  {
    a = new LruCache(paramLong)
    {
      protected void a(@NonNull ModelCache.a<A> paramAnonymousA, @Nullable B paramAnonymousB)
      {
        paramAnonymousA.a();
      }
    };
  }
  
  public void clear()
  {
    a.clearMemory();
  }
  
  @Nullable
  public B get(A paramA, int paramInt1, int paramInt2)
  {
    paramA = a.a(paramA, paramInt1, paramInt2);
    Object localObject = a.get(paramA);
    paramA.a();
    return localObject;
  }
  
  public void put(A paramA, int paramInt1, int paramInt2, B paramB)
  {
    paramA = a.a(paramA, paramInt1, paramInt2);
    a.put(paramA, paramB);
  }
  
  @VisibleForTesting
  static final class a<A>
  {
    private static final Queue<a<?>> a = Util.createQueue(0);
    private int b;
    private int c;
    private A d;
    
    private a() {}
    
    static <A> a<A> a(A paramA, int paramInt1, int paramInt2)
    {
      synchronized (a)
      {
        a localA = (a)a.poll();
        ??? = localA;
        if (localA == null) {
          ??? = new a();
        }
        ((a)???).b(paramA, paramInt1, paramInt2);
        return ???;
      }
    }
    
    private void b(A paramA, int paramInt1, int paramInt2)
    {
      d = paramA;
      c = paramInt1;
      b = paramInt2;
    }
    
    public void a()
    {
      synchronized (a)
      {
        a.offer(this);
        return;
      }
    }
    
    public boolean equals(Object paramObject)
    {
      boolean bool1 = paramObject instanceof a;
      boolean bool2 = false;
      if (bool1)
      {
        paramObject = (a)paramObject;
        bool1 = bool2;
        if (c == c)
        {
          bool1 = bool2;
          if (b == b)
          {
            bool1 = bool2;
            if (d.equals(d)) {
              bool1 = true;
            }
          }
        }
        return bool1;
      }
      return false;
    }
    
    public int hashCode()
    {
      return (b * 31 + c) * 31 + d.hashCode();
    }
  }
}
