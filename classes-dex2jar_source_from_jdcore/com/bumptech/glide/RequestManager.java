package com.bumptech.glide;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.support.annotation.CheckResult;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.view.View;
import com.bumptech.glide.load.engine.DiskCacheStrategy;
import com.bumptech.glide.load.resource.gif.GifDrawable;
import com.bumptech.glide.manager.ConnectivityMonitor;
import com.bumptech.glide.manager.ConnectivityMonitor.ConnectivityListener;
import com.bumptech.glide.manager.ConnectivityMonitorFactory;
import com.bumptech.glide.manager.Lifecycle;
import com.bumptech.glide.manager.LifecycleListener;
import com.bumptech.glide.manager.RequestManagerTreeNode;
import com.bumptech.glide.manager.RequestTracker;
import com.bumptech.glide.manager.TargetTracker;
import com.bumptech.glide.request.Request;
import com.bumptech.glide.request.RequestOptions;
import com.bumptech.glide.request.target.Target;
import com.bumptech.glide.request.target.ViewTarget;
import com.bumptech.glide.request.transition.Transition;
import com.bumptech.glide.util.Util;
import java.io.File;
import java.net.URL;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

public class RequestManager
  implements LifecycleListener
{
  private static final RequestOptions b = RequestOptions.decodeTypeOf(Bitmap.class).lock();
  private static final RequestOptions c = RequestOptions.decodeTypeOf(GifDrawable.class).lock();
  private static final RequestOptions d = RequestOptions.diskCacheStrategyOf(DiskCacheStrategy.DATA).priority(Priority.LOW).skipMemoryCache(true);
  final Lifecycle a;
  protected final Context context;
  private final RequestTracker e;
  private final RequestManagerTreeNode f;
  private final TargetTracker g = new TargetTracker();
  protected final Glide glide;
  private final Runnable h = new Runnable()
  {
    public void run()
    {
      a.addListener(RequestManager.this);
    }
  };
  private final Handler i = new Handler(Looper.getMainLooper());
  private final ConnectivityMonitor j;
  private RequestOptions k;
  
  public RequestManager(@NonNull Glide paramGlide, @NonNull Lifecycle paramLifecycle, @NonNull RequestManagerTreeNode paramRequestManagerTreeNode, @NonNull Context paramContext)
  {
    this(paramGlide, paramLifecycle, paramRequestManagerTreeNode, new RequestTracker(), paramGlide.a(), paramContext);
  }
  
  RequestManager(Glide paramGlide, Lifecycle paramLifecycle, RequestManagerTreeNode paramRequestManagerTreeNode, RequestTracker paramRequestTracker, ConnectivityMonitorFactory paramConnectivityMonitorFactory, Context paramContext)
  {
    glide = paramGlide;
    a = paramLifecycle;
    f = paramRequestManagerTreeNode;
    e = paramRequestTracker;
    context = paramContext;
    j = paramConnectivityMonitorFactory.build(paramContext.getApplicationContext(), new b(paramRequestTracker));
    if (Util.isOnBackgroundThread()) {
      i.post(h);
    } else {
      paramLifecycle.addListener(this);
    }
    paramLifecycle.addListener(j);
    setRequestOptions(paramGlide.b().getDefaultRequestOptions());
    paramGlide.a(this);
  }
  
  private void a(@NonNull RequestOptions paramRequestOptions)
  {
    k = k.apply(paramRequestOptions);
  }
  
  private void b(@NonNull Target<?> paramTarget)
  {
    if ((!a(paramTarget)) && (!glide.a(paramTarget)) && (paramTarget.getRequest() != null))
    {
      Request localRequest = paramTarget.getRequest();
      paramTarget.setRequest(null);
      localRequest.clear();
    }
  }
  
  @NonNull
  <T> TransitionOptions<?, T> a(Class<T> paramClass)
  {
    return glide.b().getDefaultTransitionOptions(paramClass);
  }
  
  RequestOptions a()
  {
    return k;
  }
  
  void a(@NonNull Target<?> paramTarget, @NonNull Request paramRequest)
  {
    g.track(paramTarget);
    e.runRequest(paramRequest);
  }
  
  boolean a(@NonNull Target<?> paramTarget)
  {
    Request localRequest = paramTarget.getRequest();
    if (localRequest == null) {
      return true;
    }
    if (e.clearRemoveAndRecycle(localRequest))
    {
      g.untrack(paramTarget);
      paramTarget.setRequest(null);
      return true;
    }
    return false;
  }
  
  @NonNull
  public RequestManager applyDefaultRequestOptions(@NonNull RequestOptions paramRequestOptions)
  {
    a(paramRequestOptions);
    return this;
  }
  
  @CheckResult
  @NonNull
  public <ResourceType> RequestBuilder<ResourceType> as(@NonNull Class<ResourceType> paramClass)
  {
    return new RequestBuilder(glide, this, paramClass, context);
  }
  
  @CheckResult
  @NonNull
  public RequestBuilder<Bitmap> asBitmap()
  {
    return as(Bitmap.class).apply(b);
  }
  
  @CheckResult
  @NonNull
  public RequestBuilder<Drawable> asDrawable()
  {
    return as(Drawable.class);
  }
  
  @CheckResult
  @NonNull
  public RequestBuilder<File> asFile()
  {
    return as(File.class).apply(RequestOptions.skipMemoryCacheOf(true));
  }
  
  @CheckResult
  @NonNull
  public RequestBuilder<GifDrawable> asGif()
  {
    return as(GifDrawable.class).apply(c);
  }
  
  public void clear(@NonNull View paramView)
  {
    clear(new a(paramView));
  }
  
  public void clear(@Nullable final Target<?> paramTarget)
  {
    if (paramTarget == null) {
      return;
    }
    if (Util.isOnMainThread())
    {
      b(paramTarget);
      return;
    }
    i.post(new Runnable()
    {
      public void run()
      {
        clear(paramTarget);
      }
    });
  }
  
  @CheckResult
  @NonNull
  public RequestBuilder<File> download(@Nullable Object paramObject)
  {
    return downloadOnly().load(paramObject);
  }
  
  @CheckResult
  @NonNull
  public RequestBuilder<File> downloadOnly()
  {
    return as(File.class).apply(d);
  }
  
  public boolean isPaused()
  {
    Util.assertMainThread();
    return e.isPaused();
  }
  
  @CheckResult
  @NonNull
  public RequestBuilder<Drawable> load(@Nullable Bitmap paramBitmap)
  {
    return asDrawable().load(paramBitmap);
  }
  
  @CheckResult
  @NonNull
  public RequestBuilder<Drawable> load(@Nullable Drawable paramDrawable)
  {
    return asDrawable().load(paramDrawable);
  }
  
  @CheckResult
  @NonNull
  public RequestBuilder<Drawable> load(@Nullable Uri paramUri)
  {
    return asDrawable().load(paramUri);
  }
  
  @CheckResult
  @NonNull
  public RequestBuilder<Drawable> load(@Nullable File paramFile)
  {
    return asDrawable().load(paramFile);
  }
  
  @CheckResult
  @NonNull
  public RequestBuilder<Drawable> load(@Nullable Integer paramInteger)
  {
    return asDrawable().load(paramInteger);
  }
  
  @CheckResult
  @NonNull
  public RequestBuilder<Drawable> load(@Nullable Object paramObject)
  {
    return asDrawable().load(paramObject);
  }
  
  @CheckResult
  @NonNull
  public RequestBuilder<Drawable> load(@Nullable String paramString)
  {
    return asDrawable().load(paramString);
  }
  
  @Deprecated
  @CheckResult
  public RequestBuilder<Drawable> load(@Nullable URL paramURL)
  {
    return asDrawable().load(paramURL);
  }
  
  @CheckResult
  @NonNull
  public RequestBuilder<Drawable> load(@Nullable byte[] paramArrayOfByte)
  {
    return asDrawable().load(paramArrayOfByte);
  }
  
  public void onDestroy()
  {
    g.onDestroy();
    Iterator localIterator = g.getAll().iterator();
    while (localIterator.hasNext()) {
      clear((Target)localIterator.next());
    }
    g.clear();
    e.clearRequests();
    a.removeListener(this);
    a.removeListener(j);
    i.removeCallbacks(h);
    glide.b(this);
  }
  
  @Deprecated
  public void onLowMemory()
  {
    glide.onLowMemory();
  }
  
  public void onStart()
  {
    resumeRequests();
    g.onStart();
  }
  
  public void onStop()
  {
    pauseRequests();
    g.onStop();
  }
  
  @Deprecated
  public void onTrimMemory(int paramInt)
  {
    glide.onTrimMemory(paramInt);
  }
  
  public void pauseAllRequests()
  {
    Util.assertMainThread();
    e.pauseAllRequests();
  }
  
  public void pauseRequests()
  {
    Util.assertMainThread();
    e.pauseRequests();
  }
  
  public void pauseRequestsRecursive()
  {
    Util.assertMainThread();
    pauseRequests();
    Iterator localIterator = f.getDescendants().iterator();
    while (localIterator.hasNext()) {
      ((RequestManager)localIterator.next()).pauseRequests();
    }
  }
  
  public void resumeRequests()
  {
    Util.assertMainThread();
    e.resumeRequests();
  }
  
  public void resumeRequestsRecursive()
  {
    Util.assertMainThread();
    resumeRequests();
    Iterator localIterator = f.getDescendants().iterator();
    while (localIterator.hasNext()) {
      ((RequestManager)localIterator.next()).resumeRequests();
    }
  }
  
  @NonNull
  public RequestManager setDefaultRequestOptions(@NonNull RequestOptions paramRequestOptions)
  {
    setRequestOptions(paramRequestOptions);
    return this;
  }
  
  protected void setRequestOptions(@NonNull RequestOptions paramRequestOptions)
  {
    k = paramRequestOptions.clone().autoClone();
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(super.toString());
    localStringBuilder.append("{tracker=");
    localStringBuilder.append(e);
    localStringBuilder.append(", treeNode=");
    localStringBuilder.append(f);
    localStringBuilder.append("}");
    return localStringBuilder.toString();
  }
  
  private static class a
    extends ViewTarget<View, Object>
  {
    a(@NonNull View paramView)
    {
      super();
    }
    
    public void onResourceReady(@NonNull Object paramObject, @Nullable Transition<? super Object> paramTransition) {}
  }
  
  private static class b
    implements ConnectivityMonitor.ConnectivityListener
  {
    private final RequestTracker a;
    
    b(@NonNull RequestTracker paramRequestTracker)
    {
      a = paramRequestTracker;
    }
    
    public void onConnectivityChanged(boolean paramBoolean)
    {
      if (paramBoolean) {
        a.restartRequests();
      }
    }
  }
}
