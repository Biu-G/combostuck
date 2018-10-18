package android.support.v4.app;

import android.app.Service;
import android.app.job.JobInfo;
import android.app.job.JobInfo.Builder;
import android.app.job.JobParameters;
import android.app.job.JobScheduler;
import android.app.job.JobServiceEngine;
import android.app.job.JobWorkItem;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.AsyncTask;
import android.os.Build.VERSION;
import android.os.IBinder;
import android.os.PowerManager;
import android.os.PowerManager.WakeLock;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.RequiresApi;
import java.util.ArrayList;
import java.util.HashMap;

public abstract class JobIntentService
  extends Service
{
  static final Object h = new Object();
  static final HashMap<ComponentName, h> i = new HashMap();
  b a;
  h b;
  a c;
  boolean d = false;
  boolean e = false;
  boolean f = false;
  final ArrayList<d> g;
  
  public JobIntentService()
  {
    if (Build.VERSION.SDK_INT >= 26)
    {
      g = null;
      return;
    }
    g = new ArrayList();
  }
  
  static h a(Context paramContext, ComponentName paramComponentName, boolean paramBoolean, int paramInt)
  {
    h localH = (h)i.get(paramComponentName);
    Object localObject = localH;
    if (localH == null)
    {
      if (Build.VERSION.SDK_INT >= 26)
      {
        if (paramBoolean) {
          paramContext = new g(paramContext, paramComponentName, paramInt);
        } else {
          throw new IllegalArgumentException("Can't be here without a job id");
        }
      }
      else {
        paramContext = new c(paramContext, paramComponentName);
      }
      i.put(paramComponentName, paramContext);
      localObject = paramContext;
    }
    return localObject;
  }
  
  public static void enqueueWork(@NonNull Context paramContext, @NonNull ComponentName paramComponentName, int paramInt, @NonNull Intent paramIntent)
  {
    if (paramIntent != null) {
      synchronized (h)
      {
        paramContext = a(paramContext, paramComponentName, true, paramInt);
        paramContext.a(paramInt);
        paramContext.a(paramIntent);
        return;
      }
    }
    throw new IllegalArgumentException("work must not be null");
  }
  
  public static void enqueueWork(@NonNull Context paramContext, @NonNull Class paramClass, int paramInt, @NonNull Intent paramIntent)
  {
    enqueueWork(paramContext, new ComponentName(paramContext, paramClass), paramInt, paramIntent);
  }
  
  void a(boolean paramBoolean)
  {
    if (c == null)
    {
      c = new a();
      if ((b != null) && (paramBoolean)) {
        b.b();
      }
      c.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
    }
  }
  
  boolean a()
  {
    if (c != null) {
      c.cancel(d);
    }
    e = true;
    return onStopCurrentWork();
  }
  
  void b()
  {
    if (g != null) {
      synchronized (g)
      {
        c = null;
        if ((g != null) && (g.size() > 0)) {
          a(false);
        } else if (!f) {
          b.c();
        }
        return;
      }
    }
  }
  
  e c()
  {
    if (a != null) {
      return a.b();
    }
    synchronized (g)
    {
      if (g.size() > 0)
      {
        e localE = (e)g.remove(0);
        return localE;
      }
      return null;
    }
  }
  
  public boolean isStopped()
  {
    return e;
  }
  
  public IBinder onBind(@NonNull Intent paramIntent)
  {
    if (a != null) {
      return a.a();
    }
    return null;
  }
  
  public void onCreate()
  {
    super.onCreate();
    if (Build.VERSION.SDK_INT >= 26)
    {
      a = new f(this);
      b = null;
      return;
    }
    a = null;
    b = a(this, new ComponentName(this, getClass()), false, 0);
  }
  
  public void onDestroy()
  {
    super.onDestroy();
    if (g != null) {
      synchronized (g)
      {
        f = true;
        b.c();
        return;
      }
    }
  }
  
  protected abstract void onHandleWork(@NonNull Intent paramIntent);
  
  public int onStartCommand(@Nullable Intent paramIntent, int paramInt1, int paramInt2)
  {
    if (g != null)
    {
      b.a();
      synchronized (g)
      {
        ArrayList localArrayList2 = g;
        if (paramIntent == null) {
          paramIntent = new Intent();
        }
        localArrayList2.add(new d(paramIntent, paramInt2));
        a(true);
        return 3;
      }
    }
    return 2;
  }
  
  public boolean onStopCurrentWork()
  {
    return true;
  }
  
  public void setInterruptIfStopped(boolean paramBoolean)
  {
    d = paramBoolean;
  }
  
  final class a
    extends AsyncTask<Void, Void, Void>
  {
    a() {}
    
    protected Void a(Void... paramVarArgs)
    {
      for (;;)
      {
        paramVarArgs = c();
        if (paramVarArgs == null) {
          break;
        }
        onHandleWork(paramVarArgs.a());
        paramVarArgs.b();
      }
      return null;
    }
    
    protected void a(Void paramVoid)
    {
      b();
    }
    
    protected void b(Void paramVoid)
    {
      b();
    }
  }
  
  static abstract interface b
  {
    public abstract IBinder a();
    
    public abstract JobIntentService.e b();
  }
  
  static final class c
    extends JobIntentService.h
  {
    boolean a;
    boolean b;
    private final Context f;
    private final PowerManager.WakeLock g;
    private final PowerManager.WakeLock h;
    
    c(Context paramContext, ComponentName paramComponentName)
    {
      super(paramComponentName);
      f = paramContext.getApplicationContext();
      paramContext = (PowerManager)paramContext.getSystemService("power");
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append(paramComponentName.getClassName());
      localStringBuilder.append(":launch");
      g = paramContext.newWakeLock(1, localStringBuilder.toString());
      g.setReferenceCounted(false);
      localStringBuilder = new StringBuilder();
      localStringBuilder.append(paramComponentName.getClassName());
      localStringBuilder.append(":run");
      h = paramContext.newWakeLock(1, localStringBuilder.toString());
      h.setReferenceCounted(false);
    }
    
    public void a()
    {
      try
      {
        a = false;
        return;
      }
      finally {}
    }
    
    void a(Intent paramIntent)
    {
      paramIntent = new Intent(paramIntent);
      paramIntent.setComponent(c);
      if (f.startService(paramIntent) != null) {
        try
        {
          if (!a)
          {
            a = true;
            if (!b) {
              g.acquire(60000L);
            }
          }
          return;
        }
        finally {}
      }
    }
    
    public void b()
    {
      try
      {
        if (!b)
        {
          b = true;
          h.acquire(600000L);
          g.release();
        }
        return;
      }
      finally {}
    }
    
    public void c()
    {
      try
      {
        if (b)
        {
          if (a) {
            g.acquire(60000L);
          }
          b = false;
          h.release();
        }
        return;
      }
      finally {}
    }
  }
  
  final class d
    implements JobIntentService.e
  {
    final Intent a;
    final int b;
    
    d(Intent paramIntent, int paramInt)
    {
      a = paramIntent;
      b = paramInt;
    }
    
    public Intent a()
    {
      return a;
    }
    
    public void b()
    {
      stopSelf(b);
    }
  }
  
  static abstract interface e
  {
    public abstract Intent a();
    
    public abstract void b();
  }
  
  @RequiresApi(26)
  static final class f
    extends JobServiceEngine
    implements JobIntentService.b
  {
    final JobIntentService a;
    final Object b = new Object();
    JobParameters c;
    
    f(JobIntentService paramJobIntentService)
    {
      super();
      a = paramJobIntentService;
    }
    
    public IBinder a()
    {
      return getBinder();
    }
    
    public JobIntentService.e b()
    {
      synchronized (b)
      {
        if (c == null) {
          return null;
        }
        JobWorkItem localJobWorkItem = c.dequeueWork();
        if (localJobWorkItem != null)
        {
          localJobWorkItem.getIntent().setExtrasClassLoader(a.getClassLoader());
          return new a(localJobWorkItem);
        }
        return null;
      }
    }
    
    public boolean onStartJob(JobParameters paramJobParameters)
    {
      c = paramJobParameters;
      a.a(false);
      return true;
    }
    
    public boolean onStopJob(JobParameters arg1)
    {
      boolean bool = a.a();
      synchronized (b)
      {
        c = null;
        return bool;
      }
    }
    
    final class a
      implements JobIntentService.e
    {
      final JobWorkItem a;
      
      a(JobWorkItem paramJobWorkItem)
      {
        a = paramJobWorkItem;
      }
      
      public Intent a()
      {
        return a.getIntent();
      }
      
      public void b()
      {
        synchronized (b)
        {
          if (c != null) {
            c.completeWork(a);
          }
          return;
        }
      }
    }
  }
  
  @RequiresApi(26)
  static final class g
    extends JobIntentService.h
  {
    private final JobInfo a;
    private final JobScheduler b;
    
    g(Context paramContext, ComponentName paramComponentName, int paramInt)
    {
      super(paramComponentName);
      a(paramInt);
      a = new JobInfo.Builder(paramInt, c).setOverrideDeadline(0L).build();
      b = ((JobScheduler)paramContext.getApplicationContext().getSystemService("jobscheduler"));
    }
    
    void a(Intent paramIntent)
    {
      b.enqueue(a, new JobWorkItem(paramIntent));
    }
  }
  
  static abstract class h
  {
    final ComponentName c;
    boolean d;
    int e;
    
    h(Context paramContext, ComponentName paramComponentName)
    {
      c = paramComponentName;
    }
    
    public void a() {}
    
    void a(int paramInt)
    {
      if (!d)
      {
        d = true;
        e = paramInt;
        return;
      }
      if (e == paramInt) {
        return;
      }
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("Given job ID ");
      localStringBuilder.append(paramInt);
      localStringBuilder.append(" is different than previous ");
      localStringBuilder.append(e);
      throw new IllegalArgumentException(localStringBuilder.toString());
    }
    
    abstract void a(Intent paramIntent);
    
    public void b() {}
    
    public void c() {}
  }
}
