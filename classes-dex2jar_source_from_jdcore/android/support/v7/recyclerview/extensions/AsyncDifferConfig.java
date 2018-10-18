package android.support.v7.recyclerview.extensions;

import android.support.annotation.NonNull;
import android.support.annotation.RestrictTo;
import android.support.v7.util.DiffUtil.ItemCallback;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;

public final class AsyncDifferConfig<T>
{
  @NonNull
  private final Executor a;
  @NonNull
  private final Executor b;
  @NonNull
  private final DiffUtil.ItemCallback<T> c;
  
  AsyncDifferConfig(@NonNull Executor paramExecutor1, @NonNull Executor paramExecutor2, @NonNull DiffUtil.ItemCallback<T> paramItemCallback)
  {
    a = paramExecutor1;
    b = paramExecutor2;
    c = paramItemCallback;
  }
  
  @NonNull
  public Executor getBackgroundThreadExecutor()
  {
    return b;
  }
  
  @NonNull
  public DiffUtil.ItemCallback<T> getDiffCallback()
  {
    return c;
  }
  
  @NonNull
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
  public Executor getMainThreadExecutor()
  {
    return a;
  }
  
  public static final class Builder<T>
  {
    private static final Object d = new Object();
    private static Executor e = null;
    private Executor a;
    private Executor b;
    private final DiffUtil.ItemCallback<T> c;
    
    public Builder(@NonNull DiffUtil.ItemCallback<T> paramItemCallback)
    {
      c = paramItemCallback;
    }
    
    @NonNull
    public AsyncDifferConfig<T> build()
    {
      if (b == null) {
        synchronized (d)
        {
          if (e == null) {
            e = Executors.newFixedThreadPool(2);
          }
          b = e;
        }
      }
      return new AsyncDifferConfig(a, b, c);
    }
    
    @NonNull
    public Builder<T> setBackgroundThreadExecutor(Executor paramExecutor)
    {
      b = paramExecutor;
      return this;
    }
    
    @NonNull
    @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
    public Builder<T> setMainThreadExecutor(Executor paramExecutor)
    {
      a = paramExecutor;
      return this;
    }
  }
}
