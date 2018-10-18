package com.bumptech.glide.load.engine;

import android.os.Handler;
import android.os.Handler.Callback;
import android.os.Looper;
import android.os.Message;
import android.os.Process;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.VisibleForTesting;
import com.bumptech.glide.load.Key;
import com.bumptech.glide.util.Preconditions;
import com.bumptech.glide.util.Util;
import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.TimeUnit;

final class a
{
  @VisibleForTesting
  final Map<Key, b> a = new HashMap();
  private final boolean b;
  private final Handler c = new Handler(Looper.getMainLooper(), new Handler.Callback()
  {
    public boolean handleMessage(Message paramAnonymousMessage)
    {
      if (what == 1)
      {
        a((a.b)obj);
        return true;
      }
      return false;
    }
  });
  private k.a d;
  @Nullable
  private ReferenceQueue<k<?>> e;
  @Nullable
  private Thread f;
  private volatile boolean g;
  @Nullable
  private volatile a h;
  
  a(boolean paramBoolean)
  {
    b = paramBoolean;
  }
  
  private ReferenceQueue<k<?>> c()
  {
    if (e == null)
    {
      e = new ReferenceQueue();
      f = new Thread(new Runnable()
      {
        public void run()
        {
          Process.setThreadPriority(10);
          a();
        }
      }, "glide-active-resources");
      f.start();
    }
    return e;
  }
  
  void a()
  {
    while (!g)
    {
      try
      {
        Object localObject = (b)e.remove();
        c.obtainMessage(1, localObject).sendToTarget();
        localObject = h;
        if (localObject == null) {
          continue;
        }
        ((a)localObject).a();
      }
      catch (InterruptedException localInterruptedException)
      {
        for (;;) {}
      }
      Thread.currentThread().interrupt();
    }
  }
  
  void a(Key paramKey)
  {
    paramKey = (b)a.remove(paramKey);
    if (paramKey != null) {
      paramKey.a();
    }
  }
  
  void a(Key paramKey, k<?> paramK)
  {
    paramK = new b(paramKey, paramK, c(), b);
    paramKey = (b)a.put(paramKey, paramK);
    if (paramKey != null) {
      paramKey.a();
    }
  }
  
  void a(@NonNull b paramB)
  {
    Util.assertMainThread();
    a.remove(a);
    if (b)
    {
      if (c == null) {
        return;
      }
      k localK = new k(c, true, false);
      localK.a(a, d);
      d.onResourceReleased(a, localK);
      return;
    }
  }
  
  void a(k.a paramA)
  {
    d = paramA;
  }
  
  @Nullable
  k<?> b(Key paramKey)
  {
    paramKey = (b)a.get(paramKey);
    if (paramKey == null) {
      return null;
    }
    k localK = (k)paramKey.get();
    if (localK == null) {
      a(paramKey);
    }
    return localK;
  }
  
  @VisibleForTesting
  void b()
  {
    g = true;
    if (f == null) {
      return;
    }
    f.interrupt();
    try
    {
      f.join(TimeUnit.SECONDS.toMillis(5L));
      if (!f.isAlive()) {
        return;
      }
      throw new RuntimeException("Failed to join in time");
    }
    catch (InterruptedException localInterruptedException)
    {
      for (;;) {}
    }
    Thread.currentThread().interrupt();
  }
  
  @VisibleForTesting
  static abstract interface a
  {
    public abstract void a();
  }
  
  @VisibleForTesting
  static final class b
    extends WeakReference<k<?>>
  {
    final Key a;
    final boolean b;
    @Nullable
    Resource<?> c;
    
    b(@NonNull Key paramKey, @NonNull k<?> paramK, @NonNull ReferenceQueue<? super k<?>> paramReferenceQueue, boolean paramBoolean)
    {
      super(paramReferenceQueue);
      a = ((Key)Preconditions.checkNotNull(paramKey));
      if ((paramK.b()) && (paramBoolean)) {
        paramKey = (Resource)Preconditions.checkNotNull(paramK.a());
      } else {
        paramKey = null;
      }
      c = paramKey;
      b = paramK.b();
    }
    
    void a()
    {
      c = null;
      clear();
    }
  }
}
