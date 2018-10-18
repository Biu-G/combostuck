package com.bumptech.glide.request;

import android.content.Context;
import android.content.res.Resources.Theme;
import android.graphics.drawable.Drawable;
import android.support.annotation.DrawableRes;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v4.util.Pools.Pool;
import android.util.Log;
import com.bumptech.glide.GlideContext;
import com.bumptech.glide.Priority;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.engine.Engine;
import com.bumptech.glide.load.engine.Engine.LoadStatus;
import com.bumptech.glide.load.engine.GlideException;
import com.bumptech.glide.load.engine.Resource;
import com.bumptech.glide.load.resource.drawable.DrawableDecoderCompat;
import com.bumptech.glide.request.target.SizeReadyCallback;
import com.bumptech.glide.request.target.Target;
import com.bumptech.glide.request.transition.TransitionFactory;
import com.bumptech.glide.util.LogTime;
import com.bumptech.glide.util.Util;
import com.bumptech.glide.util.pool.FactoryPools;
import com.bumptech.glide.util.pool.FactoryPools.Factory;
import com.bumptech.glide.util.pool.FactoryPools.Poolable;
import com.bumptech.glide.util.pool.StateVerifier;

public final class SingleRequest<R>
  implements Request, ResourceCallback, SizeReadyCallback, FactoryPools.Poolable
{
  private static final Pools.Pool<SingleRequest<?>> a = FactoryPools.simple(150, new FactoryPools.Factory()
  {
    public SingleRequest<?> a()
    {
      return new SingleRequest();
    }
  });
  private static final boolean c = Log.isLoggable("Request", 2);
  private int A;
  private int B;
  private boolean b;
  @Nullable
  private final String d;
  private final StateVerifier e;
  @Nullable
  private RequestListener<R> f;
  private RequestCoordinator g;
  private Context h;
  private GlideContext i;
  @Nullable
  private Object j;
  private Class<R> k;
  private RequestOptions l;
  private int m;
  private int n;
  private Priority o;
  private Target<R> p;
  private RequestListener<R> q;
  private Engine r;
  private TransitionFactory<? super R> s;
  private Resource<R> t;
  private Engine.LoadStatus u;
  private long v;
  private a w;
  private Drawable x;
  private Drawable y;
  private Drawable z;
  
  SingleRequest()
  {
    String str;
    if (c) {
      str = String.valueOf(super.hashCode());
    } else {
      str = null;
    }
    d = str;
    e = StateVerifier.newInstance();
  }
  
  private static int a(int paramInt, float paramFloat)
  {
    if (paramInt == Integer.MIN_VALUE) {
      return paramInt;
    }
    return Math.round(paramFloat * paramInt);
  }
  
  private Drawable a(@DrawableRes int paramInt)
  {
    Resources.Theme localTheme;
    if (l.getTheme() != null) {
      localTheme = l.getTheme();
    } else {
      localTheme = h.getTheme();
    }
    return DrawableDecoderCompat.getDrawable(i, paramInt, localTheme);
  }
  
  private void a(Context paramContext, GlideContext paramGlideContext, Object paramObject, Class<R> paramClass, RequestOptions paramRequestOptions, int paramInt1, int paramInt2, Priority paramPriority, Target<R> paramTarget, RequestListener<R> paramRequestListener1, RequestListener<R> paramRequestListener2, RequestCoordinator paramRequestCoordinator, Engine paramEngine, TransitionFactory<? super R> paramTransitionFactory)
  {
    h = paramContext;
    i = paramGlideContext;
    j = paramObject;
    k = paramClass;
    l = paramRequestOptions;
    m = paramInt1;
    n = paramInt2;
    o = paramPriority;
    p = paramTarget;
    f = paramRequestListener1;
    q = paramRequestListener2;
    g = paramRequestCoordinator;
    r = paramEngine;
    s = paramTransitionFactory;
    w = a.a;
  }
  
  private void a(GlideException paramGlideException, int paramInt)
  {
    e.throwIfRecycled();
    int i1 = i.getLogLevel();
    if (i1 <= paramInt)
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("Load failed for ");
      localStringBuilder.append(j);
      localStringBuilder.append(" with size [");
      localStringBuilder.append(A);
      localStringBuilder.append("x");
      localStringBuilder.append(B);
      localStringBuilder.append("]");
      Log.w("Glide", localStringBuilder.toString(), paramGlideException);
      if (i1 <= 4) {
        paramGlideException.logRootCauses("Glide");
      }
    }
    u = null;
    w = a.e;
    b = true;
    try
    {
      if (((q == null) || (!q.onLoadFailed(paramGlideException, j, p, j()))) && ((f == null) || (!f.onLoadFailed(paramGlideException, j, p, j())))) {
        f();
      }
      b = false;
      l();
      return;
    }
    finally
    {
      b = false;
    }
  }
  
  private void a(Resource<?> paramResource)
  {
    r.release(paramResource);
    t = null;
  }
  
  private void a(Resource<R> paramResource, R paramR, DataSource paramDataSource)
  {
    boolean bool = j();
    w = a.d;
    t = paramResource;
    if (i.getLogLevel() <= 3)
    {
      paramResource = new StringBuilder();
      paramResource.append("Finished loading ");
      paramResource.append(paramR.getClass().getSimpleName());
      paramResource.append(" from ");
      paramResource.append(paramDataSource);
      paramResource.append(" for ");
      paramResource.append(j);
      paramResource.append(" with size [");
      paramResource.append(A);
      paramResource.append("x");
      paramResource.append(B);
      paramResource.append("] in ");
      paramResource.append(LogTime.getElapsedMillis(v));
      paramResource.append(" ms");
      Log.d("Glide", paramResource.toString());
    }
    b = true;
    try
    {
      if (((q == null) || (!q.onResourceReady(paramR, j, p, paramDataSource, bool))) && ((f == null) || (!f.onResourceReady(paramR, j, p, paramDataSource, bool))))
      {
        paramResource = s.build(paramDataSource, bool);
        p.onResourceReady(paramR, paramResource);
      }
      b = false;
      k();
      return;
    }
    finally
    {
      b = false;
    }
  }
  
  private void a(String paramString)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(paramString);
    localStringBuilder.append(" this: ");
    localStringBuilder.append(d);
    Log.v("Request", localStringBuilder.toString());
  }
  
  private void b()
  {
    if (!b) {
      return;
    }
    throw new IllegalStateException("You can't start or clear loads in RequestListener or Target callbacks. If you're trying to start a fallback request when a load fails, use RequestBuilder#error(RequestBuilder). Otherwise consider posting your into() or clear() calls to the main thread using a Handler instead.");
  }
  
  private Drawable c()
  {
    if (x == null)
    {
      x = l.getErrorPlaceholder();
      if ((x == null) && (l.getErrorId() > 0)) {
        x = a(l.getErrorId());
      }
    }
    return x;
  }
  
  private Drawable d()
  {
    if (y == null)
    {
      y = l.getPlaceholderDrawable();
      if ((y == null) && (l.getPlaceholderId() > 0)) {
        y = a(l.getPlaceholderId());
      }
    }
    return y;
  }
  
  private Drawable e()
  {
    if (z == null)
    {
      z = l.getFallbackDrawable();
      if ((z == null) && (l.getFallbackId() > 0)) {
        z = a(l.getFallbackId());
      }
    }
    return z;
  }
  
  private void f()
  {
    if (!i()) {
      return;
    }
    Object localObject2 = null;
    if (j == null) {
      localObject2 = e();
    }
    Object localObject1 = localObject2;
    if (localObject2 == null) {
      localObject1 = c();
    }
    localObject2 = localObject1;
    if (localObject1 == null) {
      localObject2 = d();
    }
    p.onLoadFailed((Drawable)localObject2);
  }
  
  private boolean g()
  {
    return (g == null) || (g.canSetImage(this));
  }
  
  private boolean h()
  {
    return (g == null) || (g.canNotifyCleared(this));
  }
  
  private boolean i()
  {
    return (g == null) || (g.canNotifyStatusChanged(this));
  }
  
  private boolean j()
  {
    return (g == null) || (!g.isAnyResourceSet());
  }
  
  private void k()
  {
    if (g != null) {
      g.onRequestSuccess(this);
    }
  }
  
  private void l()
  {
    if (g != null) {
      g.onRequestFailed(this);
    }
  }
  
  public static <R> SingleRequest<R> obtain(Context paramContext, GlideContext paramGlideContext, Object paramObject, Class<R> paramClass, RequestOptions paramRequestOptions, int paramInt1, int paramInt2, Priority paramPriority, Target<R> paramTarget, RequestListener<R> paramRequestListener1, RequestListener<R> paramRequestListener2, RequestCoordinator paramRequestCoordinator, Engine paramEngine, TransitionFactory<? super R> paramTransitionFactory)
  {
    SingleRequest localSingleRequest2 = (SingleRequest)a.acquire();
    SingleRequest localSingleRequest1 = localSingleRequest2;
    if (localSingleRequest2 == null) {
      localSingleRequest1 = new SingleRequest();
    }
    localSingleRequest1.a(paramContext, paramGlideContext, paramObject, paramClass, paramRequestOptions, paramInt1, paramInt2, paramPriority, paramTarget, paramRequestListener1, paramRequestListener2, paramRequestCoordinator, paramEngine, paramTransitionFactory);
    return localSingleRequest1;
  }
  
  void a()
  {
    b();
    e.throwIfRecycled();
    p.removeCallback(this);
    w = a.f;
    if (u != null)
    {
      u.cancel();
      u = null;
    }
  }
  
  public void begin()
  {
    b();
    e.throwIfRecycled();
    v = LogTime.getLogTime();
    if (j == null)
    {
      if (Util.isValidDimensions(m, n))
      {
        A = m;
        B = n;
      }
      int i1;
      if (e() == null) {
        i1 = 5;
      } else {
        i1 = 3;
      }
      a(new GlideException("Received null model"), i1);
      return;
    }
    if (w != a.b)
    {
      if (w == a.d)
      {
        onResourceReady(t, DataSource.MEMORY_CACHE);
        return;
      }
      w = a.c;
      if (Util.isValidDimensions(m, n)) {
        onSizeReady(m, n);
      } else {
        p.getSize(this);
      }
      if (((w == a.b) || (w == a.c)) && (i())) {
        p.onLoadStarted(d());
      }
      if (c)
      {
        StringBuilder localStringBuilder = new StringBuilder();
        localStringBuilder.append("finished run method in ");
        localStringBuilder.append(LogTime.getElapsedMillis(v));
        a(localStringBuilder.toString());
      }
      return;
    }
    throw new IllegalArgumentException("Cannot restart a running request");
  }
  
  public void clear()
  {
    Util.assertMainThread();
    b();
    e.throwIfRecycled();
    if (w == a.g) {
      return;
    }
    a();
    if (t != null) {
      a(t);
    }
    if (h()) {
      p.onLoadCleared(d());
    }
    w = a.g;
  }
  
  @NonNull
  public StateVerifier getVerifier()
  {
    return e;
  }
  
  public boolean isCancelled()
  {
    return (w == a.f) || (w == a.g);
  }
  
  public boolean isComplete()
  {
    return w == a.d;
  }
  
  public boolean isEquivalentTo(Request paramRequest)
  {
    boolean bool1 = paramRequest instanceof SingleRequest;
    boolean bool2 = false;
    if (bool1)
    {
      paramRequest = (SingleRequest)paramRequest;
      bool1 = bool2;
      if (m == m)
      {
        bool1 = bool2;
        if (n == n)
        {
          bool1 = bool2;
          if (Util.bothModelsNullEquivalentOrEquals(j, j))
          {
            bool1 = bool2;
            if (k.equals(k))
            {
              bool1 = bool2;
              if (l.equals(l))
              {
                bool1 = bool2;
                if (o == o)
                {
                  if (q != null)
                  {
                    bool1 = bool2;
                    if (q == null) {
                      break label133;
                    }
                  }
                  else
                  {
                    bool1 = bool2;
                    if (q != null) {
                      break label133;
                    }
                  }
                  bool1 = true;
                }
              }
            }
          }
        }
      }
      label133:
      return bool1;
    }
    return false;
  }
  
  public boolean isFailed()
  {
    return w == a.e;
  }
  
  public boolean isPaused()
  {
    return w == a.h;
  }
  
  public boolean isResourceSet()
  {
    return isComplete();
  }
  
  public boolean isRunning()
  {
    return (w == a.b) || (w == a.c);
  }
  
  public void onLoadFailed(GlideException paramGlideException)
  {
    a(paramGlideException, 5);
  }
  
  public void onResourceReady(Resource<?> paramResource, DataSource paramDataSource)
  {
    e.throwIfRecycled();
    u = null;
    if (paramResource == null)
    {
      paramResource = new StringBuilder();
      paramResource.append("Expected to receive a Resource<R> with an object of ");
      paramResource.append(k);
      paramResource.append(" inside, but instead got null.");
      onLoadFailed(new GlideException(paramResource.toString()));
      return;
    }
    Object localObject = paramResource.get();
    if ((localObject != null) && (k.isAssignableFrom(localObject.getClass())))
    {
      if (!g())
      {
        a(paramResource);
        w = a.d;
        return;
      }
      a(paramResource, localObject, paramDataSource);
      return;
    }
    a(paramResource);
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Expected to receive an object of ");
    localStringBuilder.append(k);
    localStringBuilder.append(" but instead got ");
    if (localObject != null) {
      paramDataSource = localObject.getClass();
    } else {
      paramDataSource = "";
    }
    localStringBuilder.append(paramDataSource);
    localStringBuilder.append("{");
    localStringBuilder.append(localObject);
    localStringBuilder.append("} inside Resource{");
    localStringBuilder.append(paramResource);
    localStringBuilder.append("}.");
    if (localObject != null) {
      paramResource = "";
    } else {
      paramResource = " To indicate failure return a null Resource object, rather than a Resource object containing null data.";
    }
    localStringBuilder.append(paramResource);
    onLoadFailed(new GlideException(localStringBuilder.toString()));
  }
  
  public void onSizeReady(int paramInt1, int paramInt2)
  {
    e.throwIfRecycled();
    StringBuilder localStringBuilder;
    if (c)
    {
      localStringBuilder = new StringBuilder();
      localStringBuilder.append("Got onSizeReady in ");
      localStringBuilder.append(LogTime.getElapsedMillis(v));
      a(localStringBuilder.toString());
    }
    if (w != a.c) {
      return;
    }
    w = a.b;
    float f1 = l.getSizeMultiplier();
    A = a(paramInt1, f1);
    B = a(paramInt2, f1);
    if (c)
    {
      localStringBuilder = new StringBuilder();
      localStringBuilder.append("finished setup for calling load in ");
      localStringBuilder.append(LogTime.getElapsedMillis(v));
      a(localStringBuilder.toString());
    }
    u = r.load(i, j, l.getSignature(), A, B, l.getResourceClass(), k, o, l.getDiskCacheStrategy(), l.getTransformations(), l.isTransformationRequired(), l.a(), l.getOptions(), l.isMemoryCacheable(), l.getUseUnlimitedSourceGeneratorsPool(), l.getUseAnimationPool(), l.getOnlyRetrieveFromCache(), this);
    if (w != a.b) {
      u = null;
    }
    if (c)
    {
      localStringBuilder = new StringBuilder();
      localStringBuilder.append("finished onSizeReady in ");
      localStringBuilder.append(LogTime.getElapsedMillis(v));
      a(localStringBuilder.toString());
    }
  }
  
  public void pause()
  {
    clear();
    w = a.h;
  }
  
  public void recycle()
  {
    b();
    h = null;
    i = null;
    j = null;
    k = null;
    l = null;
    m = -1;
    n = -1;
    p = null;
    q = null;
    f = null;
    g = null;
    s = null;
    u = null;
    x = null;
    y = null;
    z = null;
    A = -1;
    B = -1;
    a.release(this);
  }
  
  private static enum a
  {
    private a() {}
  }
}
