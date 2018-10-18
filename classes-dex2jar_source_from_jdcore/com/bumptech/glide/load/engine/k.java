package com.bumptech.glide.load.engine;

import android.os.Looper;
import android.support.annotation.NonNull;
import com.bumptech.glide.load.Key;
import com.bumptech.glide.util.Preconditions;

class k<Z>
  implements Resource<Z>
{
  private final boolean a;
  private final boolean b;
  private a c;
  private Key d;
  private int e;
  private boolean f;
  private final Resource<Z> g;
  
  k(Resource<Z> paramResource, boolean paramBoolean1, boolean paramBoolean2)
  {
    g = ((Resource)Preconditions.checkNotNull(paramResource));
    a = paramBoolean1;
    b = paramBoolean2;
  }
  
  Resource<Z> a()
  {
    return g;
  }
  
  void a(Key paramKey, a paramA)
  {
    d = paramKey;
    c = paramA;
  }
  
  boolean b()
  {
    return a;
  }
  
  void c()
  {
    if (!f)
    {
      if (Looper.getMainLooper().equals(Looper.myLooper()))
      {
        e += 1;
        return;
      }
      throw new IllegalThreadStateException("Must call acquire on the main thread");
    }
    throw new IllegalStateException("Cannot acquire a recycled resource");
  }
  
  void d()
  {
    if (e > 0)
    {
      if (Looper.getMainLooper().equals(Looper.myLooper()))
      {
        int i = e - 1;
        e = i;
        if (i == 0) {
          c.onResourceReleased(d, this);
        }
        return;
      }
      throw new IllegalThreadStateException("Must call release on the main thread");
    }
    throw new IllegalStateException("Cannot release a recycled or not yet acquired resource");
  }
  
  @NonNull
  public Z get()
  {
    return g.get();
  }
  
  @NonNull
  public Class<Z> getResourceClass()
  {
    return g.getResourceClass();
  }
  
  public int getSize()
  {
    return g.getSize();
  }
  
  public void recycle()
  {
    if (e <= 0)
    {
      if (!f)
      {
        f = true;
        if (b) {
          g.recycle();
        }
        return;
      }
      throw new IllegalStateException("Cannot recycle a resource that has already been recycled");
    }
    throw new IllegalStateException("Cannot recycle a resource while it is still acquired");
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("EngineResource{isCacheable=");
    localStringBuilder.append(a);
    localStringBuilder.append(", listener=");
    localStringBuilder.append(c);
    localStringBuilder.append(", key=");
    localStringBuilder.append(d);
    localStringBuilder.append(", acquired=");
    localStringBuilder.append(e);
    localStringBuilder.append(", isRecycled=");
    localStringBuilder.append(f);
    localStringBuilder.append(", resource=");
    localStringBuilder.append(g);
    localStringBuilder.append('}');
    return localStringBuilder.toString();
  }
  
  static abstract interface a
  {
    public abstract void onResourceReleased(Key paramKey, k<?> paramK);
  }
}
