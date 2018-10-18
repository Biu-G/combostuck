package android.arch.core.executor;

import android.os.Handler;
import android.os.Looper;
import android.support.annotation.Nullable;
import android.support.annotation.RestrictTo;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

@RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
public class DefaultTaskExecutor
  extends TaskExecutor
{
  private final Object a = new Object();
  private ExecutorService b = Executors.newFixedThreadPool(2);
  @Nullable
  private volatile Handler c;
  
  public DefaultTaskExecutor() {}
  
  public void executeOnDiskIO(Runnable paramRunnable)
  {
    b.execute(paramRunnable);
  }
  
  public boolean isMainThread()
  {
    return Looper.getMainLooper().getThread() == Thread.currentThread();
  }
  
  public void postToMainThread(Runnable paramRunnable)
  {
    if (c == null) {
      synchronized (a)
      {
        if (c == null) {
          c = new Handler(Looper.getMainLooper());
        }
      }
    }
    c.post(paramRunnable);
  }
}
