package android.support.v4.content;

import android.content.Context;
import android.os.Handler;
import android.os.SystemClock;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.RestrictTo;
import android.support.v4.os.OperationCanceledException;
import android.support.v4.util.TimeUtils;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.Executor;

public abstract class AsyncTaskLoader<D>
  extends Loader<D>
{
  volatile AsyncTaskLoader<D>.a a;
  volatile AsyncTaskLoader<D>.a b;
  long c;
  long d = -10000L;
  Handler e;
  private final Executor f;
  
  public AsyncTaskLoader(@NonNull Context paramContext)
  {
    this(paramContext, ModernAsyncTask.c);
  }
  
  private AsyncTaskLoader(@NonNull Context paramContext, @NonNull Executor paramExecutor)
  {
    super(paramContext);
    f = paramExecutor;
  }
  
  void a()
  {
    if ((b == null) && (a != null))
    {
      if (a.a)
      {
        a.a = false;
        e.removeCallbacks(a);
      }
      if ((c > 0L) && (SystemClock.uptimeMillis() < d + c))
      {
        a.a = true;
        e.postAtTime(a, d + c);
        return;
      }
      a.a(f, (Void[])null);
    }
  }
  
  void a(AsyncTaskLoader<D>.a paramAsyncTaskLoader, D paramD)
  {
    onCanceled(paramD);
    if (b == paramAsyncTaskLoader)
    {
      rollbackContentChanged();
      d = SystemClock.uptimeMillis();
      b = null;
      deliverCancellation();
      a();
    }
  }
  
  void b(AsyncTaskLoader<D>.a paramAsyncTaskLoader, D paramD)
  {
    if (a != paramAsyncTaskLoader)
    {
      a(paramAsyncTaskLoader, paramD);
      return;
    }
    if (isAbandoned())
    {
      onCanceled(paramD);
      return;
    }
    commitContentChanged();
    d = SystemClock.uptimeMillis();
    a = null;
    deliverResult(paramD);
  }
  
  public void cancelLoadInBackground() {}
  
  @Deprecated
  public void dump(String paramString, FileDescriptor paramFileDescriptor, PrintWriter paramPrintWriter, String[] paramArrayOfString)
  {
    super.dump(paramString, paramFileDescriptor, paramPrintWriter, paramArrayOfString);
    if (a != null)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("mTask=");
      paramPrintWriter.print(a);
      paramPrintWriter.print(" waiting=");
      paramPrintWriter.println(a.a);
    }
    if (b != null)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("mCancellingTask=");
      paramPrintWriter.print(b);
      paramPrintWriter.print(" waiting=");
      paramPrintWriter.println(b.a);
    }
    if (c != 0L)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("mUpdateThrottle=");
      TimeUtils.formatDuration(c, paramPrintWriter);
      paramPrintWriter.print(" mLastLoadCompleteTime=");
      TimeUtils.formatDuration(d, SystemClock.uptimeMillis(), paramPrintWriter);
      paramPrintWriter.println();
    }
  }
  
  public boolean isLoadInBackgroundCanceled()
  {
    return b != null;
  }
  
  @Nullable
  public abstract D loadInBackground();
  
  protected boolean onCancelLoad()
  {
    if (a != null)
    {
      if (!r) {
        u = true;
      }
      if (b != null)
      {
        if (a.a)
        {
          a.a = false;
          e.removeCallbacks(a);
        }
        a = null;
        return false;
      }
      if (a.a)
      {
        a.a = false;
        e.removeCallbacks(a);
        a = null;
        return false;
      }
      boolean bool = a.a(false);
      if (bool)
      {
        b = a;
        cancelLoadInBackground();
      }
      a = null;
      return bool;
    }
    return false;
  }
  
  public void onCanceled(@Nullable D paramD) {}
  
  protected void onForceLoad()
  {
    super.onForceLoad();
    cancelLoad();
    a = new a();
    a();
  }
  
  @Nullable
  protected D onLoadInBackground()
  {
    return loadInBackground();
  }
  
  public void setUpdateThrottle(long paramLong)
  {
    c = paramLong;
    if (paramLong != 0L) {
      e = new Handler();
    }
  }
  
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
  public void waitForLoader()
  {
    a localA = a;
    if (localA != null) {
      localA.a();
    }
  }
  
  final class a
    extends ModernAsyncTask<Void, Void, D>
    implements Runnable
  {
    boolean a;
    private final CountDownLatch f = new CountDownLatch(1);
    
    a() {}
    
    protected D a(Void... paramVarArgs)
    {
      try
      {
        paramVarArgs = onLoadInBackground();
        return paramVarArgs;
      }
      catch (OperationCanceledException paramVarArgs)
      {
        if (d()) {
          return null;
        }
        throw paramVarArgs;
      }
    }
    
    public void a()
    {
      try
      {
        f.await();
        return;
      }
      catch (InterruptedException localInterruptedException) {}
    }
    
    protected void a(D paramD)
    {
      try
      {
        b(this, paramD);
        return;
      }
      finally
      {
        f.countDown();
      }
    }
    
    protected void b(D paramD)
    {
      try
      {
        a(this, paramD);
        return;
      }
      finally
      {
        f.countDown();
      }
    }
    
    public void run()
    {
      a = false;
      AsyncTaskLoader.this.a();
    }
  }
}
