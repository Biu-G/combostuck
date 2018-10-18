package android.support.v4.app;

import android.app.AppOpsManager;
import android.app.Notification;
import android.app.NotificationManager;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.Handler;
import android.os.Handler.Callback;
import android.os.HandlerThread;
import android.os.IBinder;
import android.os.Message;
import android.os.RemoteException;
import android.provider.Settings.Secure;
import android.support.annotation.GuardedBy;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.util.Log;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayDeque;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public final class NotificationManagerCompat
{
  public static final String ACTION_BIND_SIDE_CHANNEL = "android.support.BIND_NOTIFICATION_SIDE_CHANNEL";
  public static final String EXTRA_USE_SIDE_CHANNEL = "android.support.useSideChannel";
  public static final int IMPORTANCE_DEFAULT = 3;
  public static final int IMPORTANCE_HIGH = 4;
  public static final int IMPORTANCE_LOW = 2;
  public static final int IMPORTANCE_MAX = 5;
  public static final int IMPORTANCE_MIN = 1;
  public static final int IMPORTANCE_NONE = 0;
  public static final int IMPORTANCE_UNSPECIFIED = -1000;
  private static final Object a = new Object();
  @GuardedBy("sEnabledNotificationListenersLock")
  private static String b;
  @GuardedBy("sEnabledNotificationListenersLock")
  private static Set<String> c = new HashSet();
  private static final Object f = new Object();
  @GuardedBy("sLock")
  private static d g;
  private final Context d;
  private final NotificationManager e;
  
  private NotificationManagerCompat(Context paramContext)
  {
    d = paramContext;
    e = ((NotificationManager)d.getSystemService("notification"));
  }
  
  private void a(e paramE)
  {
    synchronized (f)
    {
      if (g == null) {
        g = new d(d.getApplicationContext());
      }
      g.a(paramE);
      return;
    }
  }
  
  private static boolean a(Notification paramNotification)
  {
    paramNotification = NotificationCompat.getExtras(paramNotification);
    return (paramNotification != null) && (paramNotification.getBoolean("android.support.useSideChannel"));
  }
  
  @NonNull
  public static NotificationManagerCompat from(@NonNull Context paramContext)
  {
    return new NotificationManagerCompat(paramContext);
  }
  
  @NonNull
  public static Set<String> getEnabledListenerPackages(@NonNull Context paramContext)
  {
    Object localObject1 = Settings.Secure.getString(paramContext.getContentResolver(), "enabled_notification_listeners");
    paramContext = a;
    if (localObject1 != null) {}
    for (;;)
    {
      try
      {
        if (!((String)localObject1).equals(b))
        {
          String[] arrayOfString = ((String)localObject1).split(":", -1);
          HashSet localHashSet = new HashSet(arrayOfString.length);
          int j = arrayOfString.length;
          i = 0;
          if (i < j)
          {
            ComponentName localComponentName = ComponentName.unflattenFromString(arrayOfString[i]);
            if (localComponentName == null) {
              continue;
            }
            localHashSet.add(localComponentName.getPackageName());
            continue;
          }
          c = localHashSet;
          b = (String)localObject1;
        }
        localObject1 = c;
        return localObject1;
      }
      finally
      {
        int i;
        continue;
      }
      throw ((Throwable)localObject1);
      i += 1;
    }
  }
  
  public boolean areNotificationsEnabled()
  {
    if (Build.VERSION.SDK_INT >= 24) {
      return e.areNotificationsEnabled();
    }
    AppOpsManager localAppOpsManager;
    Object localObject;
    String str;
    int i;
    if (Build.VERSION.SDK_INT >= 19)
    {
      localAppOpsManager = (AppOpsManager)d.getSystemService("appops");
      localObject = d.getApplicationInfo();
      str = d.getApplicationContext().getPackageName();
      i = uid;
    }
    try
    {
      localObject = Class.forName(AppOpsManager.class.getName());
      i = ((Integer)((Class)localObject).getMethod("checkOpNoThrow", new Class[] { Integer.TYPE, Integer.TYPE, String.class }).invoke(localAppOpsManager, new Object[] { Integer.valueOf(((Integer)((Class)localObject).getDeclaredField("OP_POST_NOTIFICATION").get(Integer.class)).intValue()), Integer.valueOf(i), str })).intValue();
      return i == 0;
    }
    catch (ClassNotFoundException|NoSuchMethodException|NoSuchFieldException|InvocationTargetException|IllegalAccessException|RuntimeException localClassNotFoundException) {}
    return true;
    return true;
  }
  
  public void cancel(int paramInt)
  {
    cancel(null, paramInt);
  }
  
  public void cancel(@Nullable String paramString, int paramInt)
  {
    e.cancel(paramString, paramInt);
    if (Build.VERSION.SDK_INT <= 19) {
      a(new a(d.getPackageName(), paramInt, paramString));
    }
  }
  
  public void cancelAll()
  {
    e.cancelAll();
    if (Build.VERSION.SDK_INT <= 19) {
      a(new a(d.getPackageName()));
    }
  }
  
  public int getImportance()
  {
    if (Build.VERSION.SDK_INT >= 24) {
      return e.getImportance();
    }
    return 64536;
  }
  
  public void notify(int paramInt, @NonNull Notification paramNotification)
  {
    notify(null, paramInt, paramNotification);
  }
  
  public void notify(@Nullable String paramString, int paramInt, @NonNull Notification paramNotification)
  {
    if (a(paramNotification))
    {
      a(new b(d.getPackageName(), paramInt, paramString, paramNotification));
      e.cancel(paramString, paramInt);
      return;
    }
    e.notify(paramString, paramInt, paramNotification);
  }
  
  private static class a
    implements NotificationManagerCompat.e
  {
    final String a;
    final int b;
    final String c;
    final boolean d;
    
    a(String paramString)
    {
      a = paramString;
      b = 0;
      c = null;
      d = true;
    }
    
    a(String paramString1, int paramInt, String paramString2)
    {
      a = paramString1;
      b = paramInt;
      c = paramString2;
      d = false;
    }
    
    public void a(INotificationSideChannel paramINotificationSideChannel)
      throws RemoteException
    {
      if (d)
      {
        paramINotificationSideChannel.cancelAll(a);
        return;
      }
      paramINotificationSideChannel.cancel(a, b, c);
    }
    
    public String toString()
    {
      StringBuilder localStringBuilder = new StringBuilder("CancelTask[");
      localStringBuilder.append("packageName:");
      localStringBuilder.append(a);
      localStringBuilder.append(", id:");
      localStringBuilder.append(b);
      localStringBuilder.append(", tag:");
      localStringBuilder.append(c);
      localStringBuilder.append(", all:");
      localStringBuilder.append(d);
      localStringBuilder.append("]");
      return localStringBuilder.toString();
    }
  }
  
  private static class b
    implements NotificationManagerCompat.e
  {
    final String a;
    final int b;
    final String c;
    final Notification d;
    
    b(String paramString1, int paramInt, String paramString2, Notification paramNotification)
    {
      a = paramString1;
      b = paramInt;
      c = paramString2;
      d = paramNotification;
    }
    
    public void a(INotificationSideChannel paramINotificationSideChannel)
      throws RemoteException
    {
      paramINotificationSideChannel.notify(a, b, c, d);
    }
    
    public String toString()
    {
      StringBuilder localStringBuilder = new StringBuilder("NotifyTask[");
      localStringBuilder.append("packageName:");
      localStringBuilder.append(a);
      localStringBuilder.append(", id:");
      localStringBuilder.append(b);
      localStringBuilder.append(", tag:");
      localStringBuilder.append(c);
      localStringBuilder.append("]");
      return localStringBuilder.toString();
    }
  }
  
  private static class c
  {
    final ComponentName a;
    final IBinder b;
    
    c(ComponentName paramComponentName, IBinder paramIBinder)
    {
      a = paramComponentName;
      b = paramIBinder;
    }
  }
  
  private static class d
    implements ServiceConnection, Handler.Callback
  {
    private final Context a;
    private final HandlerThread b;
    private final Handler c;
    private final Map<ComponentName, a> d = new HashMap();
    private Set<String> e = new HashSet();
    
    d(Context paramContext)
    {
      a = paramContext;
      b = new HandlerThread("NotificationManagerCompat");
      b.start();
      c = new Handler(b.getLooper(), this);
    }
    
    private void a()
    {
      Object localObject1 = NotificationManagerCompat.getEnabledListenerPackages(a);
      if (((Set)localObject1).equals(e)) {
        return;
      }
      e = ((Set)localObject1);
      Object localObject2 = a.getPackageManager().queryIntentServices(new Intent().setAction("android.support.BIND_NOTIFICATION_SIDE_CHANNEL"), 0);
      HashSet localHashSet = new HashSet();
      localObject2 = ((List)localObject2).iterator();
      Object localObject3;
      while (((Iterator)localObject2).hasNext())
      {
        Object localObject4 = (ResolveInfo)((Iterator)localObject2).next();
        if (((Set)localObject1).contains(serviceInfo.packageName))
        {
          localObject3 = new ComponentName(serviceInfo.packageName, serviceInfo.name);
          if (serviceInfo.permission != null)
          {
            localObject4 = new StringBuilder();
            ((StringBuilder)localObject4).append("Permission present on component ");
            ((StringBuilder)localObject4).append(localObject3);
            ((StringBuilder)localObject4).append(", not adding listener record.");
            Log.w("NotifManCompat", ((StringBuilder)localObject4).toString());
          }
          else
          {
            localHashSet.add(localObject3);
          }
        }
      }
      localObject1 = localHashSet.iterator();
      while (((Iterator)localObject1).hasNext())
      {
        localObject2 = (ComponentName)((Iterator)localObject1).next();
        if (!d.containsKey(localObject2))
        {
          if (Log.isLoggable("NotifManCompat", 3))
          {
            localObject3 = new StringBuilder();
            ((StringBuilder)localObject3).append("Adding listener record for ");
            ((StringBuilder)localObject3).append(localObject2);
            Log.d("NotifManCompat", ((StringBuilder)localObject3).toString());
          }
          d.put(localObject2, new a((ComponentName)localObject2));
        }
      }
      localObject1 = d.entrySet().iterator();
      while (((Iterator)localObject1).hasNext())
      {
        localObject2 = (Map.Entry)((Iterator)localObject1).next();
        if (!localHashSet.contains(((Map.Entry)localObject2).getKey()))
        {
          if (Log.isLoggable("NotifManCompat", 3))
          {
            localObject3 = new StringBuilder();
            ((StringBuilder)localObject3).append("Removing listener record for ");
            ((StringBuilder)localObject3).append(((Map.Entry)localObject2).getKey());
            Log.d("NotifManCompat", ((StringBuilder)localObject3).toString());
          }
          b((a)((Map.Entry)localObject2).getValue());
          ((Iterator)localObject1).remove();
        }
      }
    }
    
    private void a(ComponentName paramComponentName)
    {
      paramComponentName = (a)d.get(paramComponentName);
      if (paramComponentName != null) {
        b(paramComponentName);
      }
    }
    
    private void a(ComponentName paramComponentName, IBinder paramIBinder)
    {
      paramComponentName = (a)d.get(paramComponentName);
      if (paramComponentName != null)
      {
        c = INotificationSideChannel.Stub.asInterface(paramIBinder);
        e = 0;
        d(paramComponentName);
      }
    }
    
    private boolean a(a paramA)
    {
      if (b) {
        return true;
      }
      Object localObject = new Intent("android.support.BIND_NOTIFICATION_SIDE_CHANNEL").setComponent(a);
      b = a.bindService((Intent)localObject, this, 33);
      if (b)
      {
        e = 0;
      }
      else
      {
        localObject = new StringBuilder();
        ((StringBuilder)localObject).append("Unable to bind to listener ");
        ((StringBuilder)localObject).append(a);
        Log.w("NotifManCompat", ((StringBuilder)localObject).toString());
        a.unbindService(this);
      }
      return b;
    }
    
    private void b(ComponentName paramComponentName)
    {
      paramComponentName = (a)d.get(paramComponentName);
      if (paramComponentName != null) {
        d(paramComponentName);
      }
    }
    
    private void b(a paramA)
    {
      if (b)
      {
        a.unbindService(this);
        b = false;
      }
      c = null;
    }
    
    private void b(NotificationManagerCompat.e paramE)
    {
      a();
      Iterator localIterator = d.values().iterator();
      while (localIterator.hasNext())
      {
        a localA = (a)localIterator.next();
        d.add(paramE);
        d(localA);
      }
    }
    
    private void c(a paramA)
    {
      if (c.hasMessages(3, a)) {
        return;
      }
      e += 1;
      StringBuilder localStringBuilder;
      if (e > 6)
      {
        localStringBuilder = new StringBuilder();
        localStringBuilder.append("Giving up on delivering ");
        localStringBuilder.append(d.size());
        localStringBuilder.append(" tasks to ");
        localStringBuilder.append(a);
        localStringBuilder.append(" after ");
        localStringBuilder.append(e);
        localStringBuilder.append(" retries");
        Log.w("NotifManCompat", localStringBuilder.toString());
        d.clear();
        return;
      }
      int i = (1 << e - 1) * 1000;
      if (Log.isLoggable("NotifManCompat", 3))
      {
        localStringBuilder = new StringBuilder();
        localStringBuilder.append("Scheduling retry for ");
        localStringBuilder.append(i);
        localStringBuilder.append(" ms");
        Log.d("NotifManCompat", localStringBuilder.toString());
      }
      paramA = c.obtainMessage(3, a);
      c.sendMessageDelayed(paramA, i);
    }
    
    private void d(a paramA)
    {
      Object localObject;
      if (Log.isLoggable("NotifManCompat", 3))
      {
        localObject = new StringBuilder();
        ((StringBuilder)localObject).append("Processing component ");
        ((StringBuilder)localObject).append(a);
        ((StringBuilder)localObject).append(", ");
        ((StringBuilder)localObject).append(d.size());
        ((StringBuilder)localObject).append(" queued tasks");
        Log.d("NotifManCompat", ((StringBuilder)localObject).toString());
      }
      if (d.isEmpty()) {
        return;
      }
      if ((a(paramA)) && (c != null)) {}
      for (;;)
      {
        localObject = (NotificationManagerCompat.e)d.peek();
        if (localObject != null) {}
        try
        {
          if (Log.isLoggable("NotifManCompat", 3))
          {
            localStringBuilder2 = new StringBuilder();
            localStringBuilder2.append("Sending task ");
            localStringBuilder2.append(localObject);
            Log.d("NotifManCompat", localStringBuilder2.toString());
          }
          ((NotificationManagerCompat.e)localObject).a(c);
          d.remove();
        }
        catch (RemoteException localRemoteException)
        {
          StringBuilder localStringBuilder2 = new StringBuilder();
          localStringBuilder2.append("RemoteException communicating with ");
          localStringBuilder2.append(a);
          Log.w("NotifManCompat", localStringBuilder2.toString(), localRemoteException);
          break label265;
          if (Log.isLoggable("NotifManCompat", 3))
          {
            StringBuilder localStringBuilder1 = new StringBuilder();
            localStringBuilder1.append("Remote service has died: ");
            localStringBuilder1.append(a);
            Log.d("NotifManCompat", localStringBuilder1.toString());
          }
          if (!d.isEmpty()) {
            c(paramA);
          }
          return;
          c(paramA);
          return;
        }
        catch (DeadObjectException localDeadObjectException)
        {
          label265:
          for (;;) {}
        }
      }
    }
    
    public void a(NotificationManagerCompat.e paramE)
    {
      c.obtainMessage(0, paramE).sendToTarget();
    }
    
    public boolean handleMessage(Message paramMessage)
    {
      switch (what)
      {
      default: 
        return false;
      case 3: 
        b((ComponentName)obj);
        return true;
      case 2: 
        a((ComponentName)obj);
        return true;
      case 1: 
        paramMessage = (NotificationManagerCompat.c)obj;
        a(a, b);
        return true;
      }
      b((NotificationManagerCompat.e)obj);
      return true;
    }
    
    public void onServiceConnected(ComponentName paramComponentName, IBinder paramIBinder)
    {
      if (Log.isLoggable("NotifManCompat", 3))
      {
        StringBuilder localStringBuilder = new StringBuilder();
        localStringBuilder.append("Connected to service ");
        localStringBuilder.append(paramComponentName);
        Log.d("NotifManCompat", localStringBuilder.toString());
      }
      c.obtainMessage(1, new NotificationManagerCompat.c(paramComponentName, paramIBinder)).sendToTarget();
    }
    
    public void onServiceDisconnected(ComponentName paramComponentName)
    {
      if (Log.isLoggable("NotifManCompat", 3))
      {
        StringBuilder localStringBuilder = new StringBuilder();
        localStringBuilder.append("Disconnected from service ");
        localStringBuilder.append(paramComponentName);
        Log.d("NotifManCompat", localStringBuilder.toString());
      }
      c.obtainMessage(2, paramComponentName).sendToTarget();
    }
    
    private static class a
    {
      final ComponentName a;
      boolean b = false;
      INotificationSideChannel c;
      ArrayDeque<NotificationManagerCompat.e> d = new ArrayDeque();
      int e = 0;
      
      a(ComponentName paramComponentName)
      {
        a = paramComponentName;
      }
    }
  }
  
  private static abstract interface e
  {
    public abstract void a(INotificationSideChannel paramINotificationSideChannel)
      throws RemoteException;
  }
}
