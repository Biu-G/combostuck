package android.support.v4.view;

import android.content.Context;
import android.os.Handler;
import android.os.Handler.Callback;
import android.os.Message;
import android.support.annotation.LayoutRes;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.UiThread;
import android.support.v4.util.Pools.SynchronizedPool;
import android.util.AttributeSet;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import java.util.concurrent.ArrayBlockingQueue;

public final class AsyncLayoutInflater
{
  LayoutInflater a;
  Handler b;
  c c;
  private Handler.Callback d = new Handler.Callback()
  {
    public boolean handleMessage(Message paramAnonymousMessage)
    {
      paramAnonymousMessage = (AsyncLayoutInflater.b)obj;
      if (d == null) {
        d = a.inflate(c, b, false);
      }
      e.onInflateFinished(d, c, b);
      c.a(paramAnonymousMessage);
      return true;
    }
  };
  
  public AsyncLayoutInflater(@NonNull Context paramContext)
  {
    a = new a(paramContext);
    b = new Handler(d);
    c = c.a();
  }
  
  @UiThread
  public void inflate(@LayoutRes int paramInt, @Nullable ViewGroup paramViewGroup, @NonNull OnInflateFinishedListener paramOnInflateFinishedListener)
  {
    if (paramOnInflateFinishedListener != null)
    {
      b localB = c.c();
      a = this;
      c = paramInt;
      b = paramViewGroup;
      e = paramOnInflateFinishedListener;
      c.b(localB);
      return;
    }
    throw new NullPointerException("callback argument may not be null!");
  }
  
  public static abstract interface OnInflateFinishedListener
  {
    public abstract void onInflateFinished(@NonNull View paramView, @LayoutRes int paramInt, @Nullable ViewGroup paramViewGroup);
  }
  
  private static class a
    extends LayoutInflater
  {
    private static final String[] a = { "android.widget.", "android.webkit.", "android.app." };
    
    a(Context paramContext)
    {
      super();
    }
    
    public LayoutInflater cloneInContext(Context paramContext)
    {
      return new a(paramContext);
    }
    
    protected View onCreateView(String paramString, AttributeSet paramAttributeSet)
      throws ClassNotFoundException
    {
      String[] arrayOfString = a;
      int j = arrayOfString.length;
      int i = 0;
      while (i < j)
      {
        Object localObject = arrayOfString[i];
        try
        {
          localObject = createView(paramString, (String)localObject, paramAttributeSet);
          if (localObject != null) {
            return localObject;
          }
        }
        catch (ClassNotFoundException localClassNotFoundException)
        {
          for (;;) {}
        }
        i += 1;
      }
      return super.onCreateView(paramString, paramAttributeSet);
    }
  }
  
  private static class b
  {
    AsyncLayoutInflater a;
    ViewGroup b;
    int c;
    View d;
    AsyncLayoutInflater.OnInflateFinishedListener e;
    
    b() {}
  }
  
  private static class c
    extends Thread
  {
    private static final c a = new c();
    private ArrayBlockingQueue<AsyncLayoutInflater.b> b = new ArrayBlockingQueue(10);
    private Pools.SynchronizedPool<AsyncLayoutInflater.b> c = new Pools.SynchronizedPool(10);
    
    static
    {
      a.start();
    }
    
    private c() {}
    
    public static c a()
    {
      return a;
    }
    
    public void a(AsyncLayoutInflater.b paramB)
    {
      e = null;
      a = null;
      b = null;
      c = 0;
      d = null;
      c.release(paramB);
    }
    
    public void b()
    {
      try
      {
        AsyncLayoutInflater.b localB = (AsyncLayoutInflater.b)b.take();
        try
        {
          d = a.a.inflate(c, b, false);
        }
        catch (RuntimeException localRuntimeException)
        {
          Log.w("AsyncLayoutInflater", "Failed to inflate resource in the background! Retrying on the UI thread", localRuntimeException);
        }
        Message.obtain(a.b, 0, localB).sendToTarget();
        return;
      }
      catch (InterruptedException localInterruptedException)
      {
        Log.w("AsyncLayoutInflater", localInterruptedException);
      }
    }
    
    public void b(AsyncLayoutInflater.b paramB)
    {
      try
      {
        b.put(paramB);
        return;
      }
      catch (InterruptedException paramB)
      {
        throw new RuntimeException("Failed to enqueue async inflate request", paramB);
      }
    }
    
    public AsyncLayoutInflater.b c()
    {
      AsyncLayoutInflater.b localB2 = (AsyncLayoutInflater.b)c.acquire();
      AsyncLayoutInflater.b localB1 = localB2;
      if (localB2 == null) {
        localB1 = new AsyncLayoutInflater.b();
      }
      return localB1;
    }
    
    public void run()
    {
      for (;;)
      {
        b();
      }
    }
  }
}
