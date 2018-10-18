package android.arch.core.executor;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.RestrictTo;
import java.util.concurrent.Executor;

@RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
public class ArchTaskExecutor
  extends TaskExecutor
{
  private static volatile ArchTaskExecutor a;
  @NonNull
  private static final Executor d = new Executor()
  {
    public void execute(Runnable paramAnonymousRunnable)
    {
      ArchTaskExecutor.getInstance().postToMainThread(paramAnonymousRunnable);
    }
  };
  @NonNull
  private static final Executor e = new Executor()
  {
    public void execute(Runnable paramAnonymousRunnable)
    {
      ArchTaskExecutor.getInstance().executeOnDiskIO(paramAnonymousRunnable);
    }
  };
  @NonNull
  private TaskExecutor b = c;
  @NonNull
  private TaskExecutor c = new DefaultTaskExecutor();
  
  private ArchTaskExecutor() {}
  
  @NonNull
  public static Executor getIOThreadExecutor()
  {
    return e;
  }
  
  @NonNull
  public static ArchTaskExecutor getInstance()
  {
    if (a != null) {
      return a;
    }
    try
    {
      if (a == null) {
        a = new ArchTaskExecutor();
      }
      return a;
    }
    finally {}
  }
  
  @NonNull
  public static Executor getMainThreadExecutor()
  {
    return d;
  }
  
  public void executeOnDiskIO(Runnable paramRunnable)
  {
    b.executeOnDiskIO(paramRunnable);
  }
  
  public boolean isMainThread()
  {
    return b.isMainThread();
  }
  
  public void postToMainThread(Runnable paramRunnable)
  {
    b.postToMainThread(paramRunnable);
  }
  
  public void setDelegate(@Nullable TaskExecutor paramTaskExecutor)
  {
    TaskExecutor localTaskExecutor = paramTaskExecutor;
    if (paramTaskExecutor == null) {
      localTaskExecutor = c;
    }
    b = localTaskExecutor;
  }
}
