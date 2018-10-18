package com.bumptech.glide.load.engine;

import android.os.Handler;
import android.os.Handler.Callback;
import android.os.Looper;
import android.os.Message;
import android.support.annotation.NonNull;
import android.support.annotation.VisibleForTesting;
import android.support.v4.util.Pools.Pool;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.Key;
import com.bumptech.glide.load.engine.executor.GlideExecutor;
import com.bumptech.glide.request.ResourceCallback;
import com.bumptech.glide.util.Util;
import com.bumptech.glide.util.pool.FactoryPools.Poolable;
import com.bumptech.glide.util.pool.StateVerifier;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

class g<R>
  implements f.a<R>, FactoryPools.Poolable
{
  private static final a a = new a();
  private static final Handler b = new Handler(Looper.getMainLooper(), new b());
  private final List<ResourceCallback> c = new ArrayList(2);
  private final StateVerifier d = StateVerifier.newInstance();
  private final Pools.Pool<g<?>> e;
  private final a f;
  private final h g;
  private final GlideExecutor h;
  private final GlideExecutor i;
  private final GlideExecutor j;
  private final GlideExecutor k;
  private Key l;
  private boolean m;
  private boolean n;
  private boolean o;
  private boolean p;
  private Resource<?> q;
  private DataSource r;
  private boolean s;
  private GlideException t;
  private boolean u;
  private List<ResourceCallback> v;
  private k<?> w;
  private f<R> x;
  private volatile boolean y;
  
  g(GlideExecutor paramGlideExecutor1, GlideExecutor paramGlideExecutor2, GlideExecutor paramGlideExecutor3, GlideExecutor paramGlideExecutor4, h paramH, Pools.Pool<g<?>> paramPool)
  {
    this(paramGlideExecutor1, paramGlideExecutor2, paramGlideExecutor3, paramGlideExecutor4, paramH, paramPool, a);
  }
  
  @VisibleForTesting
  g(GlideExecutor paramGlideExecutor1, GlideExecutor paramGlideExecutor2, GlideExecutor paramGlideExecutor3, GlideExecutor paramGlideExecutor4, h paramH, Pools.Pool<g<?>> paramPool, a paramA)
  {
    h = paramGlideExecutor1;
    i = paramGlideExecutor2;
    j = paramGlideExecutor3;
    k = paramGlideExecutor4;
    g = paramH;
    e = paramPool;
    f = paramA;
  }
  
  private void a(boolean paramBoolean)
  {
    Util.assertMainThread();
    c.clear();
    l = null;
    w = null;
    q = null;
    if (v != null) {
      v.clear();
    }
    u = false;
    y = false;
    s = false;
    x.a(paramBoolean);
    x = null;
    t = null;
    r = null;
    e.release(this);
  }
  
  private void c(ResourceCallback paramResourceCallback)
  {
    if (v == null) {
      v = new ArrayList(2);
    }
    if (!v.contains(paramResourceCallback)) {
      v.add(paramResourceCallback);
    }
  }
  
  private boolean d(ResourceCallback paramResourceCallback)
  {
    return (v != null) && (v.contains(paramResourceCallback));
  }
  
  private GlideExecutor f()
  {
    if (n) {
      return j;
    }
    if (o) {
      return k;
    }
    return i;
  }
  
  @VisibleForTesting
  g<R> a(Key paramKey, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3, boolean paramBoolean4)
  {
    l = paramKey;
    m = paramBoolean1;
    n = paramBoolean2;
    o = paramBoolean3;
    p = paramBoolean4;
    return this;
  }
  
  public void a(GlideException paramGlideException)
  {
    t = paramGlideException;
    b.obtainMessage(2, this).sendToTarget();
  }
  
  public void a(Resource<R> paramResource, DataSource paramDataSource)
  {
    q = paramResource;
    r = paramDataSource;
    b.obtainMessage(1, this).sendToTarget();
  }
  
  public void a(f<?> paramF)
  {
    f().execute(paramF);
  }
  
  void a(ResourceCallback paramResourceCallback)
  {
    Util.assertMainThread();
    d.throwIfRecycled();
    if (s)
    {
      paramResourceCallback.onResourceReady(w, r);
      return;
    }
    if (u)
    {
      paramResourceCallback.onLoadFailed(t);
      return;
    }
    c.add(paramResourceCallback);
  }
  
  boolean a()
  {
    return p;
  }
  
  void b()
  {
    if ((!u) && (!s))
    {
      if (y) {
        return;
      }
      y = true;
      x.b();
      g.onEngineJobCancelled(this, l);
      return;
    }
  }
  
  public void b(f<R> paramF)
  {
    x = paramF;
    GlideExecutor localGlideExecutor;
    if (paramF.a()) {
      localGlideExecutor = h;
    } else {
      localGlideExecutor = f();
    }
    localGlideExecutor.execute(paramF);
  }
  
  void b(ResourceCallback paramResourceCallback)
  {
    Util.assertMainThread();
    d.throwIfRecycled();
    if ((!s) && (!u))
    {
      c.remove(paramResourceCallback);
      if (c.isEmpty()) {
        b();
      }
    }
    else
    {
      c(paramResourceCallback);
    }
  }
  
  void c()
  {
    d.throwIfRecycled();
    if (y)
    {
      q.recycle();
      a(false);
      return;
    }
    if (!c.isEmpty())
    {
      if (!s)
      {
        w = f.a(q, m);
        s = true;
        w.c();
        g.onEngineJobComplete(this, l, w);
        int i2 = c.size();
        int i1 = 0;
        while (i1 < i2)
        {
          ResourceCallback localResourceCallback = (ResourceCallback)c.get(i1);
          if (!d(localResourceCallback))
          {
            w.c();
            localResourceCallback.onResourceReady(w, r);
          }
          i1 += 1;
        }
        w.d();
        a(false);
        return;
      }
      throw new IllegalStateException("Already have resource");
    }
    throw new IllegalStateException("Received a resource without any callbacks to notify");
  }
  
  void d()
  {
    d.throwIfRecycled();
    if (y)
    {
      g.onEngineJobCancelled(this, l);
      a(false);
      return;
    }
    throw new IllegalStateException("Not cancelled");
  }
  
  void e()
  {
    d.throwIfRecycled();
    if (y)
    {
      a(false);
      return;
    }
    if (!c.isEmpty())
    {
      if (!u)
      {
        u = true;
        g.onEngineJobComplete(this, l, null);
        Iterator localIterator = c.iterator();
        while (localIterator.hasNext())
        {
          ResourceCallback localResourceCallback = (ResourceCallback)localIterator.next();
          if (!d(localResourceCallback)) {
            localResourceCallback.onLoadFailed(t);
          }
        }
        a(false);
        return;
      }
      throw new IllegalStateException("Already failed once");
    }
    throw new IllegalStateException("Received an exception without any callbacks to notify");
  }
  
  @NonNull
  public StateVerifier getVerifier()
  {
    return d;
  }
  
  @VisibleForTesting
  static class a
  {
    a() {}
    
    public <R> k<R> a(Resource<R> paramResource, boolean paramBoolean)
    {
      return new k(paramResource, paramBoolean, true);
    }
  }
  
  private static class b
    implements Handler.Callback
  {
    b() {}
    
    public boolean handleMessage(Message paramMessage)
    {
      Object localObject = (g)obj;
      switch (what)
      {
      default: 
        localObject = new StringBuilder();
        ((StringBuilder)localObject).append("Unrecognized message: ");
        ((StringBuilder)localObject).append(what);
        throw new IllegalStateException(((StringBuilder)localObject).toString());
      case 3: 
        ((g)localObject).d();
        break;
      case 2: 
        ((g)localObject).e();
        break;
      case 1: 
        ((g)localObject).c();
      }
      return true;
    }
  }
}
