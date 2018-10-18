package com.bumptech.glide.load.engine;

import android.support.annotation.NonNull;
import android.support.v4.util.Pools.Pool;
import com.bumptech.glide.util.Preconditions;
import com.bumptech.glide.util.pool.FactoryPools;
import com.bumptech.glide.util.pool.FactoryPools.Factory;
import com.bumptech.glide.util.pool.FactoryPools.Poolable;
import com.bumptech.glide.util.pool.StateVerifier;

final class m<Z>
  implements Resource<Z>, FactoryPools.Poolable
{
  private static final Pools.Pool<m<?>> a = FactoryPools.threadSafe(20, new FactoryPools.Factory()
  {
    public m<?> a()
    {
      return new m();
    }
  });
  private final StateVerifier b = StateVerifier.newInstance();
  private Resource<Z> c;
  private boolean d;
  private boolean e;
  
  m() {}
  
  @NonNull
  static <Z> m<Z> a(Resource<Z> paramResource)
  {
    m localM = (m)Preconditions.checkNotNull((m)a.acquire());
    localM.b(paramResource);
    return localM;
  }
  
  private void b()
  {
    c = null;
    a.release(this);
  }
  
  private void b(Resource<Z> paramResource)
  {
    e = false;
    d = true;
    c = paramResource;
  }
  
  void a()
  {
    try
    {
      b.throwIfRecycled();
      if (d)
      {
        d = false;
        if (e) {
          recycle();
        }
        return;
      }
      throw new IllegalStateException("Already unlocked");
    }
    finally {}
  }
  
  @NonNull
  public Z get()
  {
    return c.get();
  }
  
  @NonNull
  public Class<Z> getResourceClass()
  {
    return c.getResourceClass();
  }
  
  public int getSize()
  {
    return c.getSize();
  }
  
  @NonNull
  public StateVerifier getVerifier()
  {
    return b;
  }
  
  public void recycle()
  {
    try
    {
      b.throwIfRecycled();
      e = true;
      if (!d)
      {
        c.recycle();
        b();
      }
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
}
