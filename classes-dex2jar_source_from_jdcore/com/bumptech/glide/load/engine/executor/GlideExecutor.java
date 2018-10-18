package com.bumptech.glide.load.engine.executor;

import android.os.Process;
import android.os.StrictMode;
import android.os.StrictMode.ThreadPolicy.Builder;
import android.support.annotation.NonNull;
import android.support.annotation.VisibleForTesting;
import android.util.Log;
import java.util.Collection;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

public final class GlideExecutor
  implements ExecutorService
{
  private static final long a = TimeUnit.SECONDS.toMillis(10L);
  private static volatile int b;
  private final ExecutorService c;
  
  @VisibleForTesting
  GlideExecutor(ExecutorService paramExecutorService)
  {
    c = paramExecutorService;
  }
  
  public static int calculateBestThreadCount()
  {
    if (b == 0) {
      b = Math.min(4, a.a());
    }
    return b;
  }
  
  public static GlideExecutor newAnimationExecutor()
  {
    int i;
    if (calculateBestThreadCount() >= 4) {
      i = 2;
    } else {
      i = 1;
    }
    return newAnimationExecutor(i, UncaughtThrowableStrategy.DEFAULT);
  }
  
  public static GlideExecutor newAnimationExecutor(int paramInt, UncaughtThrowableStrategy paramUncaughtThrowableStrategy)
  {
    return new GlideExecutor(new ThreadPoolExecutor(0, paramInt, a, TimeUnit.MILLISECONDS, new PriorityBlockingQueue(), new a("animation", paramUncaughtThrowableStrategy, true)));
  }
  
  public static GlideExecutor newDiskCacheExecutor()
  {
    return newDiskCacheExecutor(1, "disk-cache", UncaughtThrowableStrategy.DEFAULT);
  }
  
  public static GlideExecutor newDiskCacheExecutor(int paramInt, String paramString, UncaughtThrowableStrategy paramUncaughtThrowableStrategy)
  {
    return new GlideExecutor(new ThreadPoolExecutor(paramInt, paramInt, 0L, TimeUnit.MILLISECONDS, new PriorityBlockingQueue(), new a(paramString, paramUncaughtThrowableStrategy, true)));
  }
  
  public static GlideExecutor newDiskCacheExecutor(UncaughtThrowableStrategy paramUncaughtThrowableStrategy)
  {
    return newDiskCacheExecutor(1, "disk-cache", paramUncaughtThrowableStrategy);
  }
  
  public static GlideExecutor newSourceExecutor()
  {
    return newSourceExecutor(calculateBestThreadCount(), "source", UncaughtThrowableStrategy.DEFAULT);
  }
  
  public static GlideExecutor newSourceExecutor(int paramInt, String paramString, UncaughtThrowableStrategy paramUncaughtThrowableStrategy)
  {
    return new GlideExecutor(new ThreadPoolExecutor(paramInt, paramInt, 0L, TimeUnit.MILLISECONDS, new PriorityBlockingQueue(), new a(paramString, paramUncaughtThrowableStrategy, false)));
  }
  
  public static GlideExecutor newSourceExecutor(UncaughtThrowableStrategy paramUncaughtThrowableStrategy)
  {
    return newSourceExecutor(calculateBestThreadCount(), "source", paramUncaughtThrowableStrategy);
  }
  
  public static GlideExecutor newUnlimitedSourceExecutor()
  {
    return new GlideExecutor(new ThreadPoolExecutor(0, Integer.MAX_VALUE, a, TimeUnit.MILLISECONDS, new SynchronousQueue(), new a("source-unlimited", UncaughtThrowableStrategy.DEFAULT, false)));
  }
  
  public boolean awaitTermination(long paramLong, @NonNull TimeUnit paramTimeUnit)
    throws InterruptedException
  {
    return c.awaitTermination(paramLong, paramTimeUnit);
  }
  
  public void execute(@NonNull Runnable paramRunnable)
  {
    c.execute(paramRunnable);
  }
  
  @NonNull
  public <T> List<Future<T>> invokeAll(@NonNull Collection<? extends Callable<T>> paramCollection)
    throws InterruptedException
  {
    return c.invokeAll(paramCollection);
  }
  
  @NonNull
  public <T> List<Future<T>> invokeAll(@NonNull Collection<? extends Callable<T>> paramCollection, long paramLong, @NonNull TimeUnit paramTimeUnit)
    throws InterruptedException
  {
    return c.invokeAll(paramCollection, paramLong, paramTimeUnit);
  }
  
  @NonNull
  public <T> T invokeAny(@NonNull Collection<? extends Callable<T>> paramCollection)
    throws InterruptedException, ExecutionException
  {
    return c.invokeAny(paramCollection);
  }
  
  public <T> T invokeAny(@NonNull Collection<? extends Callable<T>> paramCollection, long paramLong, @NonNull TimeUnit paramTimeUnit)
    throws InterruptedException, ExecutionException, TimeoutException
  {
    return c.invokeAny(paramCollection, paramLong, paramTimeUnit);
  }
  
  public boolean isShutdown()
  {
    return c.isShutdown();
  }
  
  public boolean isTerminated()
  {
    return c.isTerminated();
  }
  
  public void shutdown()
  {
    c.shutdown();
  }
  
  @NonNull
  public List<Runnable> shutdownNow()
  {
    return c.shutdownNow();
  }
  
  @NonNull
  public Future<?> submit(@NonNull Runnable paramRunnable)
  {
    return c.submit(paramRunnable);
  }
  
  @NonNull
  public <T> Future<T> submit(@NonNull Runnable paramRunnable, T paramT)
  {
    return c.submit(paramRunnable, paramT);
  }
  
  public <T> Future<T> submit(@NonNull Callable<T> paramCallable)
  {
    return c.submit(paramCallable);
  }
  
  public String toString()
  {
    return c.toString();
  }
  
  public static abstract interface UncaughtThrowableStrategy
  {
    public static final UncaughtThrowableStrategy DEFAULT = LOG;
    public static final UncaughtThrowableStrategy IGNORE = new UncaughtThrowableStrategy()
    {
      public void handle(Throwable paramAnonymousThrowable) {}
    };
    public static final UncaughtThrowableStrategy LOG = new UncaughtThrowableStrategy()
    {
      public void handle(Throwable paramAnonymousThrowable)
      {
        if ((paramAnonymousThrowable != null) && (Log.isLoggable("GlideExecutor", 6))) {
          Log.e("GlideExecutor", "Request threw uncaught throwable", paramAnonymousThrowable);
        }
      }
    };
    public static final UncaughtThrowableStrategy THROW = new UncaughtThrowableStrategy()
    {
      public void handle(Throwable paramAnonymousThrowable)
      {
        if (paramAnonymousThrowable == null) {
          return;
        }
        throw new RuntimeException("Request threw uncaught throwable", paramAnonymousThrowable);
      }
    };
    
    public abstract void handle(Throwable paramThrowable);
  }
  
  private static final class a
    implements ThreadFactory
  {
    final GlideExecutor.UncaughtThrowableStrategy a;
    final boolean b;
    private final String c;
    private int d;
    
    a(String paramString, GlideExecutor.UncaughtThrowableStrategy paramUncaughtThrowableStrategy, boolean paramBoolean)
    {
      c = paramString;
      a = paramUncaughtThrowableStrategy;
      b = paramBoolean;
    }
    
    public Thread newThread(@NonNull Runnable paramRunnable)
    {
      try
      {
        StringBuilder localStringBuilder = new StringBuilder();
        localStringBuilder.append("glide-");
        localStringBuilder.append(c);
        localStringBuilder.append("-thread-");
        localStringBuilder.append(d);
        paramRunnable = new Thread(paramRunnable, localStringBuilder.toString())
        {
          public void run()
          {
            Process.setThreadPriority(9);
            if (b) {
              StrictMode.setThreadPolicy(new StrictMode.ThreadPolicy.Builder().detectNetwork().penaltyDeath().build());
            }
            try
            {
              super.run();
              return;
            }
            catch (Throwable localThrowable)
            {
              a.handle(localThrowable);
            }
          }
        };
        d += 1;
        return paramRunnable;
      }
      finally
      {
        paramRunnable = finally;
        throw paramRunnable;
      }
    }
  }
}
