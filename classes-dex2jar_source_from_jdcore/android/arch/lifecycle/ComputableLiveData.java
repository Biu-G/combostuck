package android.arch.lifecycle;

import android.arch.core.executor.ArchTaskExecutor;
import android.support.annotation.MainThread;
import android.support.annotation.NonNull;
import android.support.annotation.RestrictTo;
import android.support.annotation.VisibleForTesting;
import android.support.annotation.WorkerThread;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicBoolean;

@RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
public abstract class ComputableLiveData<T>
{
  @VisibleForTesting
  final Runnable a = new Runnable()
  {
    @WorkerThread
    public void run()
    {
      int i;
      do
      {
        if (ComputableLiveData.b(ComputableLiveData.this).compareAndSet(false, true))
        {
          Object localObject1 = null;
          i = 0;
          try
          {
            while (ComputableLiveData.c(ComputableLiveData.this).compareAndSet(true, false))
            {
              localObject1 = compute();
              i = 1;
            }
            if (i != 0) {
              ComputableLiveData.d(ComputableLiveData.this).postValue(localObject1);
            }
          }
          finally
          {
            ComputableLiveData.b(ComputableLiveData.this).set(false);
          }
        }
        i = 0;
      } while ((i != 0) && (ComputableLiveData.c(ComputableLiveData.this).get()));
    }
  };
  @VisibleForTesting
  final Runnable b = new Runnable()
  {
    @MainThread
    public void run()
    {
      boolean bool = ComputableLiveData.d(ComputableLiveData.this).hasActiveObservers();
      if ((ComputableLiveData.c(ComputableLiveData.this).compareAndSet(false, true)) && (bool)) {
        ComputableLiveData.a(ComputableLiveData.this).execute(a);
      }
    }
  };
  private final Executor c;
  private final LiveData<T> d;
  private AtomicBoolean e = new AtomicBoolean(true);
  private AtomicBoolean f = new AtomicBoolean(false);
  
  public ComputableLiveData()
  {
    this(ArchTaskExecutor.getIOThreadExecutor());
  }
  
  public ComputableLiveData(@NonNull Executor paramExecutor)
  {
    c = paramExecutor;
    d = new LiveData()
    {
      protected void onActive()
      {
        ComputableLiveData.a(ComputableLiveData.this).execute(a);
      }
    };
  }
  
  @WorkerThread
  protected abstract T compute();
  
  @NonNull
  public LiveData<T> getLiveData()
  {
    return d;
  }
  
  public void invalidate()
  {
    ArchTaskExecutor.getInstance().executeOnMainThread(b);
  }
}
