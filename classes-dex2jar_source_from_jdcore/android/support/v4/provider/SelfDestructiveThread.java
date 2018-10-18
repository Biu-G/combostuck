package android.support.v4.provider;

import android.os.Handler;
import android.os.Handler.Callback;
import android.os.HandlerThread;
import android.os.Message;
import android.support.annotation.GuardedBy;
import android.support.annotation.RestrictTo;
import android.support.annotation.VisibleForTesting;
import java.util.concurrent.Callable;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.ReentrantLock;

@RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
public class SelfDestructiveThread
{
  private final Object a = new Object();
  @GuardedBy("mLock")
  private HandlerThread b;
  @GuardedBy("mLock")
  private Handler c;
  @GuardedBy("mLock")
  private int d;
  private Handler.Callback e = new Handler.Callback()
  {
    public boolean handleMessage(Message paramAnonymousMessage)
    {
      switch (what)
      {
      default: 
        return true;
      case 1: 
        a((Runnable)obj);
        return true;
      }
      a();
      return true;
    }
  };
  private final int f;
  private final int g;
  private final String h;
  
  public SelfDestructiveThread(String paramString, int paramInt1, int paramInt2)
  {
    h = paramString;
    g = paramInt1;
    f = paramInt2;
    d = 0;
  }
  
  private void b(Runnable paramRunnable)
  {
    synchronized (a)
    {
      if (b == null)
      {
        b = new HandlerThread(h, g);
        b.start();
        c = new Handler(b.getLooper(), e);
        d += 1;
      }
      c.removeMessages(0);
      c.sendMessage(c.obtainMessage(1, paramRunnable));
      return;
    }
  }
  
  void a()
  {
    synchronized (a)
    {
      if (c.hasMessages(1)) {
        return;
      }
      b.quit();
      b = null;
      c = null;
      return;
    }
  }
  
  void a(Runnable arg1)
  {
    ???.run();
    synchronized (a)
    {
      c.removeMessages(0);
      c.sendMessageDelayed(c.obtainMessage(0), f);
      return;
    }
  }
  
  @VisibleForTesting
  public int getGeneration()
  {
    synchronized (a)
    {
      int i = d;
      return i;
    }
  }
  
  @VisibleForTesting
  public boolean isRunning()
  {
    for (;;)
    {
      synchronized (a)
      {
        if (b != null)
        {
          bool = true;
          return bool;
        }
      }
      boolean bool = false;
    }
  }
  
  public <T> void postAndReply(final Callable<T> paramCallable, final ReplyCallback<T> paramReplyCallback)
  {
    b(new Runnable()
    {
      public void run()
      {
        try
        {
          localObject = paramCallable.call();
        }
        catch (Exception localException)
        {
          final Object localObject;
          for (;;) {}
        }
        localObject = null;
        b.post(new Runnable()
        {
          public void run()
          {
            c.onReply(localObject);
          }
        });
      }
    });
  }
  
  public <T> T postAndWait(final Callable<T> paramCallable, int paramInt)
    throws InterruptedException
  {
    localReentrantLock = new ReentrantLock();
    final Condition localCondition = localReentrantLock.newCondition();
    final AtomicReference localAtomicReference = new AtomicReference();
    final AtomicBoolean localAtomicBoolean = new AtomicBoolean(true);
    b(new Runnable()
    {
      public void run()
      {
        try
        {
          localAtomicReference.set(paramCallable.call());
          localReentrantLock.lock();
          try
          {
            localAtomicBoolean.set(false);
            localCondition.signal();
            return;
          }
          finally
          {
            localReentrantLock.unlock();
          }
        }
        catch (Exception localException)
        {
          for (;;) {}
        }
      }
    });
    localReentrantLock.lock();
    label104:
    do
    {
      try
      {
        if (!localAtomicBoolean.get())
        {
          paramCallable = localAtomicReference.get();
          return paramCallable;
        }
        l1 = TimeUnit.MILLISECONDS.toNanos(paramInt);
      }
      finally
      {
        long l1;
        long l2;
        localReentrantLock.unlock();
      }
      try
      {
        l2 = localCondition.awaitNanos(l1);
        l1 = l2;
      }
      catch (InterruptedException paramCallable)
      {
        break label104;
      }
      if (!localAtomicBoolean.get())
      {
        paramCallable = localAtomicReference.get();
        localReentrantLock.unlock();
        return paramCallable;
      }
    } while (l1 > 0L);
    throw new InterruptedException("timeout");
  }
  
  public static abstract interface ReplyCallback<T>
  {
    public abstract void onReply(T paramT);
  }
}
