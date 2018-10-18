package com.bumptech.glide.request;

import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.VisibleForTesting;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.engine.GlideException;
import com.bumptech.glide.request.target.SizeReadyCallback;
import com.bumptech.glide.request.target.Target;
import com.bumptech.glide.request.transition.Transition;
import com.bumptech.glide.util.Util;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

public class RequestFutureTarget<R>
  implements FutureTarget<R>, RequestListener<R>, Runnable
{
  private static final a a = new a();
  private final Handler b;
  private final int c;
  private final int d;
  private final boolean e;
  private final a f;
  @Nullable
  private R g;
  @Nullable
  private Request h;
  private boolean i;
  private boolean j;
  private boolean k;
  @Nullable
  private GlideException l;
  
  public RequestFutureTarget(Handler paramHandler, int paramInt1, int paramInt2)
  {
    this(paramHandler, paramInt1, paramInt2, true, a);
  }
  
  RequestFutureTarget(Handler paramHandler, int paramInt1, int paramInt2, boolean paramBoolean, a paramA)
  {
    b = paramHandler;
    c = paramInt1;
    d = paramInt2;
    e = paramBoolean;
    f = paramA;
  }
  
  private R a(Long paramLong)
    throws ExecutionException, InterruptedException, TimeoutException
  {
    try
    {
      if ((e) && (!isDone())) {
        Util.assertBackgroundThread();
      }
      if (!i)
      {
        if (!k)
        {
          if (j)
          {
            paramLong = g;
            return paramLong;
          }
          if (paramLong == null)
          {
            f.a(this, 0L);
          }
          else if (paramLong.longValue() > 0L)
          {
            long l1 = System.currentTimeMillis();
            long l2 = paramLong.longValue() + l1;
            while ((!isDone()) && (l1 < l2))
            {
              f.a(this, l2 - l1);
              l1 = System.currentTimeMillis();
            }
          }
          if (!Thread.interrupted())
          {
            if (!k)
            {
              if (!i)
              {
                if (j)
                {
                  paramLong = g;
                  return paramLong;
                }
                throw new TimeoutException();
              }
              throw new CancellationException();
            }
            throw new ExecutionException(l);
          }
          throw new InterruptedException();
        }
        throw new ExecutionException(l);
      }
      throw new CancellationException();
    }
    finally {}
  }
  
  private void a()
  {
    b.post(this);
  }
  
  public boolean cancel(boolean paramBoolean)
  {
    try
    {
      boolean bool = isDone();
      if (bool) {
        return false;
      }
      i = true;
      f.a(this);
      if (paramBoolean) {
        a();
      }
      return true;
    }
    finally {}
  }
  
  public R get()
    throws InterruptedException, ExecutionException
  {
    try
    {
      Object localObject = a(null);
      return localObject;
    }
    catch (TimeoutException localTimeoutException)
    {
      throw new AssertionError(localTimeoutException);
    }
  }
  
  public R get(long paramLong, @NonNull TimeUnit paramTimeUnit)
    throws InterruptedException, ExecutionException, TimeoutException
  {
    return a(Long.valueOf(paramTimeUnit.toMillis(paramLong)));
  }
  
  @Nullable
  public Request getRequest()
  {
    return h;
  }
  
  public void getSize(@NonNull SizeReadyCallback paramSizeReadyCallback)
  {
    paramSizeReadyCallback.onSizeReady(c, d);
  }
  
  public boolean isCancelled()
  {
    try
    {
      boolean bool = i;
      return bool;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  public boolean isDone()
  {
    try
    {
      if ((!i) && (!j))
      {
        bool = k;
        if (!bool)
        {
          bool = false;
          break label35;
        }
      }
      boolean bool = true;
      label35:
      return bool;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  public void onDestroy() {}
  
  public void onLoadCleared(@Nullable Drawable paramDrawable) {}
  
  public void onLoadFailed(@Nullable Drawable paramDrawable) {}
  
  public boolean onLoadFailed(@Nullable GlideException paramGlideException, Object paramObject, Target<R> paramTarget, boolean paramBoolean)
  {
    try
    {
      k = true;
      l = paramGlideException;
      f.a(this);
      return false;
    }
    finally
    {
      paramGlideException = finally;
      throw paramGlideException;
    }
  }
  
  public void onLoadStarted(@Nullable Drawable paramDrawable) {}
  
  public void onResourceReady(@NonNull R paramR, @Nullable Transition<? super R> paramTransition) {}
  
  public boolean onResourceReady(R paramR, Object paramObject, Target<R> paramTarget, DataSource paramDataSource, boolean paramBoolean)
  {
    try
    {
      j = true;
      g = paramR;
      f.a(this);
      return false;
    }
    finally
    {
      paramR = finally;
      throw paramR;
    }
  }
  
  public void onStart() {}
  
  public void onStop() {}
  
  public void removeCallback(@NonNull SizeReadyCallback paramSizeReadyCallback) {}
  
  public void run()
  {
    if (h != null)
    {
      h.clear();
      h = null;
    }
  }
  
  public void setRequest(@Nullable Request paramRequest)
  {
    h = paramRequest;
  }
  
  @VisibleForTesting
  static class a
  {
    a() {}
    
    void a(Object paramObject)
    {
      paramObject.notifyAll();
    }
    
    void a(Object paramObject, long paramLong)
      throws InterruptedException
    {
      paramObject.wait(paramLong);
    }
  }
}
