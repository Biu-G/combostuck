package android.support.v4.app;

import android.app.Notification;
import android.app.Notification.Builder;
import android.app.PendingIntent;
import android.os.Bundle;
import android.os.Parcelable;
import android.support.annotation.RequiresApi;
import android.util.Log;
import android.util.SparseArray;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

@RequiresApi(16)
class i
{
  private static final Object a = new Object();
  private static Field b;
  private static boolean c;
  private static final Object d = new Object();
  private static Class<?> e;
  private static Field f;
  private static Field g;
  private static Field h;
  private static Field i;
  private static boolean j;
  
  public static Bundle a(Notification.Builder paramBuilder, NotificationCompat.Action paramAction)
  {
    paramBuilder.addAction(paramAction.getIcon(), paramAction.getTitle(), paramAction.getActionIntent());
    paramBuilder = new Bundle(paramAction.getExtras());
    if (paramAction.getRemoteInputs() != null) {
      paramBuilder.putParcelableArray("android.support.remoteInputs", a(paramAction.getRemoteInputs()));
    }
    if (paramAction.getDataOnlyRemoteInputs() != null) {
      paramBuilder.putParcelableArray("android.support.dataRemoteInputs", a(paramAction.getDataOnlyRemoteInputs()));
    }
    paramBuilder.putBoolean("android.support.allowGeneratedReplies", paramAction.getAllowGeneratedReplies());
    return paramBuilder;
  }
  
  public static Bundle a(Notification paramNotification)
  {
    synchronized (a)
    {
      if (c) {
        return null;
      }
      try
      {
        if (b == null)
        {
          localObject1 = Notification.class.getDeclaredField("extras");
          if (!Bundle.class.isAssignableFrom(((Field)localObject1).getType()))
          {
            Log.e("NotificationCompat", "Notification.extras field is not of type Bundle");
            c = true;
            return null;
          }
          ((Field)localObject1).setAccessible(true);
          b = (Field)localObject1;
        }
        Bundle localBundle = (Bundle)b.get(paramNotification);
        Object localObject1 = localBundle;
        if (localBundle == null)
        {
          localObject1 = new Bundle();
          b.set(paramNotification, localObject1);
        }
        return localObject1;
      }
      catch (NoSuchFieldException paramNotification)
      {
        Log.e("NotificationCompat", "Unable to access notification extras", paramNotification);
      }
      catch (IllegalAccessException paramNotification)
      {
        Log.e("NotificationCompat", "Unable to access notification extras", paramNotification);
      }
      c = true;
      return null;
    }
  }
  
  static Bundle a(NotificationCompat.Action paramAction)
  {
    Bundle localBundle2 = new Bundle();
    localBundle2.putInt("icon", paramAction.getIcon());
    localBundle2.putCharSequence("title", paramAction.getTitle());
    localBundle2.putParcelable("actionIntent", paramAction.getActionIntent());
    Bundle localBundle1;
    if (paramAction.getExtras() != null) {
      localBundle1 = new Bundle(paramAction.getExtras());
    } else {
      localBundle1 = new Bundle();
    }
    localBundle1.putBoolean("android.support.allowGeneratedReplies", paramAction.getAllowGeneratedReplies());
    localBundle2.putBundle("extras", localBundle1);
    localBundle2.putParcelableArray("remoteInputs", a(paramAction.getRemoteInputs()));
    localBundle2.putBoolean("showsUserInterface", paramAction.getShowsUserInterface());
    localBundle2.putInt("semanticAction", paramAction.getSemanticAction());
    return localBundle2;
  }
  
  private static Bundle a(RemoteInput paramRemoteInput)
  {
    Bundle localBundle = new Bundle();
    localBundle.putString("resultKey", paramRemoteInput.getResultKey());
    localBundle.putCharSequence("label", paramRemoteInput.getLabel());
    localBundle.putCharSequenceArray("choices", paramRemoteInput.getChoices());
    localBundle.putBoolean("allowFreeFormInput", paramRemoteInput.getAllowFreeFormInput());
    localBundle.putBundle("extras", paramRemoteInput.getExtras());
    Object localObject = paramRemoteInput.getAllowedDataTypes();
    if ((localObject != null) && (!((Set)localObject).isEmpty()))
    {
      paramRemoteInput = new ArrayList(((Set)localObject).size());
      localObject = ((Set)localObject).iterator();
      while (((Iterator)localObject).hasNext()) {
        paramRemoteInput.add((String)((Iterator)localObject).next());
      }
      localBundle.putStringArrayList("allowedDataTypes", paramRemoteInput);
    }
    return localBundle;
  }
  
  public static NotificationCompat.Action a(int paramInt, CharSequence paramCharSequence, PendingIntent paramPendingIntent, Bundle paramBundle)
  {
    RemoteInput[] arrayOfRemoteInput1;
    RemoteInput[] arrayOfRemoteInput2;
    boolean bool;
    if (paramBundle != null)
    {
      arrayOfRemoteInput1 = a(a(paramBundle, "android.support.remoteInputs"));
      arrayOfRemoteInput2 = a(a(paramBundle, "android.support.dataRemoteInputs"));
      bool = paramBundle.getBoolean("android.support.allowGeneratedReplies");
    }
    else
    {
      arrayOfRemoteInput1 = null;
      arrayOfRemoteInput2 = arrayOfRemoteInput1;
      bool = false;
    }
    return new NotificationCompat.Action(paramInt, paramCharSequence, paramPendingIntent, paramBundle, arrayOfRemoteInput1, arrayOfRemoteInput2, bool, 0, true);
  }
  
  public static NotificationCompat.Action a(Notification paramNotification, int paramInt)
  {
    synchronized (d)
    {
      try
      {
        Object localObject2 = c(paramNotification);
        if (localObject2 != null)
        {
          localObject2 = localObject2[paramInt];
          paramNotification = a(paramNotification);
          if (paramNotification == null) {
            break label111;
          }
          paramNotification = paramNotification.getSparseParcelableArray("android.support.actionExtras");
          if (paramNotification == null) {
            break label111;
          }
          paramNotification = (Bundle)paramNotification.get(paramInt);
          paramNotification = a(g.getInt(localObject2), (CharSequence)h.get(localObject2), (PendingIntent)i.get(localObject2), paramNotification);
          return paramNotification;
        }
      }
      catch (IllegalAccessException paramNotification)
      {
        Log.e("NotificationCompat", "Unable to access notification actions", paramNotification);
        j = true;
        return null;
      }
      throw paramNotification;
      label111:
      paramNotification = null;
    }
  }
  
  static NotificationCompat.Action a(Bundle paramBundle)
  {
    Bundle localBundle = paramBundle.getBundle("extras");
    boolean bool;
    if (localBundle != null) {
      bool = localBundle.getBoolean("android.support.allowGeneratedReplies", false);
    } else {
      bool = false;
    }
    return new NotificationCompat.Action(paramBundle.getInt("icon"), paramBundle.getCharSequence("title"), (PendingIntent)paramBundle.getParcelable("actionIntent"), paramBundle.getBundle("extras"), a(a(paramBundle, "remoteInputs")), a(a(paramBundle, "dataOnlyRemoteInputs")), bool, paramBundle.getInt("semanticAction"), paramBundle.getBoolean("showsUserInterface"));
  }
  
  public static SparseArray<Bundle> a(List<Bundle> paramList)
  {
    int m = paramList.size();
    Object localObject1 = null;
    int k = 0;
    while (k < m)
    {
      Bundle localBundle = (Bundle)paramList.get(k);
      Object localObject2 = localObject1;
      if (localBundle != null)
      {
        localObject2 = localObject1;
        if (localObject1 == null) {
          localObject2 = new SparseArray();
        }
        ((SparseArray)localObject2).put(k, localBundle);
      }
      k += 1;
      localObject1 = localObject2;
    }
    return localObject1;
  }
  
  private static boolean a()
  {
    if (j) {
      return false;
    }
    try
    {
      if (f == null)
      {
        e = Class.forName("android.app.Notification$Action");
        g = e.getDeclaredField("icon");
        h = e.getDeclaredField("title");
        i = e.getDeclaredField("actionIntent");
        f = Notification.class.getDeclaredField("actions");
        f.setAccessible(true);
      }
    }
    catch (NoSuchFieldException localNoSuchFieldException)
    {
      Log.e("NotificationCompat", "Unable to access notification actions", localNoSuchFieldException);
      j = true;
    }
    catch (ClassNotFoundException localClassNotFoundException)
    {
      Log.e("NotificationCompat", "Unable to access notification actions", localClassNotFoundException);
      j = true;
    }
    return true ^ j;
  }
  
  private static Bundle[] a(Bundle paramBundle, String paramString)
  {
    Object localObject = paramBundle.getParcelableArray(paramString);
    if ((!(localObject instanceof Bundle[])) && (localObject != null))
    {
      localObject = (Bundle[])Arrays.copyOf((Object[])localObject, localObject.length, [Landroid.os.Bundle.class);
      paramBundle.putParcelableArray(paramString, (Parcelable[])localObject);
      return localObject;
    }
    return (Bundle[])localObject;
  }
  
  private static Bundle[] a(RemoteInput[] paramArrayOfRemoteInput)
  {
    if (paramArrayOfRemoteInput == null) {
      return null;
    }
    Bundle[] arrayOfBundle = new Bundle[paramArrayOfRemoteInput.length];
    int k = 0;
    while (k < paramArrayOfRemoteInput.length)
    {
      arrayOfBundle[k] = a(paramArrayOfRemoteInput[k]);
      k += 1;
    }
    return arrayOfBundle;
  }
  
  private static RemoteInput[] a(Bundle[] paramArrayOfBundle)
  {
    if (paramArrayOfBundle == null) {
      return null;
    }
    RemoteInput[] arrayOfRemoteInput = new RemoteInput[paramArrayOfBundle.length];
    int k = 0;
    while (k < paramArrayOfBundle.length)
    {
      arrayOfRemoteInput[k] = b(paramArrayOfBundle[k]);
      k += 1;
    }
    return arrayOfRemoteInput;
  }
  
  public static int b(Notification paramNotification)
  {
    for (;;)
    {
      synchronized (d)
      {
        paramNotification = c(paramNotification);
        if (paramNotification != null)
        {
          k = paramNotification.length;
          return k;
        }
      }
      int k = 0;
    }
  }
  
  private static RemoteInput b(Bundle paramBundle)
  {
    Object localObject = paramBundle.getStringArrayList("allowedDataTypes");
    HashSet localHashSet = new HashSet();
    if (localObject != null)
    {
      localObject = ((ArrayList)localObject).iterator();
      while (((Iterator)localObject).hasNext()) {
        localHashSet.add((String)((Iterator)localObject).next());
      }
    }
    return new RemoteInput(paramBundle.getString("resultKey"), paramBundle.getCharSequence("label"), paramBundle.getCharSequenceArray("choices"), paramBundle.getBoolean("allowFreeFormInput"), paramBundle.getBundle("extras"), localHashSet);
  }
  
  private static Object[] c(Notification paramNotification)
  {
    synchronized (d)
    {
      if (!a()) {
        return null;
      }
      try
      {
        paramNotification = (Object[])f.get(paramNotification);
        return paramNotification;
      }
      catch (IllegalAccessException paramNotification)
      {
        Log.e("NotificationCompat", "Unable to access notification actions", paramNotification);
        j = true;
        return null;
      }
    }
  }
}
