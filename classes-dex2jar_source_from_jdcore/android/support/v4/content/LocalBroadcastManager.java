package android.support.v4.content;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.support.annotation.NonNull;
import android.util.Log;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Set;

public final class LocalBroadcastManager
{
  private static final Object f = new Object();
  private static LocalBroadcastManager g;
  private final Context a;
  private final HashMap<BroadcastReceiver, ArrayList<b>> b = new HashMap();
  private final HashMap<String, ArrayList<b>> c = new HashMap();
  private final ArrayList<a> d = new ArrayList();
  private final Handler e;
  
  private LocalBroadcastManager(Context paramContext)
  {
    a = paramContext;
    e = new Handler(paramContext.getMainLooper())
    {
      public void handleMessage(Message paramAnonymousMessage)
      {
        if (what != 1)
        {
          super.handleMessage(paramAnonymousMessage);
          return;
        }
        a();
      }
    };
  }
  
  @NonNull
  public static LocalBroadcastManager getInstance(@NonNull Context paramContext)
  {
    synchronized (f)
    {
      if (g == null) {
        g = new LocalBroadcastManager(paramContext.getApplicationContext());
      }
      paramContext = g;
      return paramContext;
    }
  }
  
  void a()
  {
    synchronized (b)
    {
      int i;
      a[] arrayOfA;
      do
      {
        i = d.size();
        if (i <= 0) {
          return;
        }
        arrayOfA = new a[i];
        d.toArray(arrayOfA);
        d.clear();
        i = 0;
      } while (i >= arrayOfA.length);
      ??? = arrayOfA[i];
      int k = b.size();
      int j = 0;
      while (j < k)
      {
        b localB = (b)b.get(j);
        if (!d) {
          b.onReceive(a, a);
        }
        j += 1;
      }
      i += 1;
    }
  }
  
  public void registerReceiver(@NonNull BroadcastReceiver paramBroadcastReceiver, @NonNull IntentFilter paramIntentFilter)
  {
    synchronized (b)
    {
      b localB = new b(paramIntentFilter, paramBroadcastReceiver);
      Object localObject2 = (ArrayList)b.get(paramBroadcastReceiver);
      Object localObject1 = localObject2;
      if (localObject2 == null)
      {
        localObject1 = new ArrayList(1);
        b.put(paramBroadcastReceiver, localObject1);
      }
      ((ArrayList)localObject1).add(localB);
      int i = 0;
      while (i < paramIntentFilter.countActions())
      {
        localObject2 = paramIntentFilter.getAction(i);
        localObject1 = (ArrayList)c.get(localObject2);
        paramBroadcastReceiver = (BroadcastReceiver)localObject1;
        if (localObject1 == null)
        {
          paramBroadcastReceiver = new ArrayList(1);
          c.put(localObject2, paramBroadcastReceiver);
        }
        paramBroadcastReceiver.add(localB);
        i += 1;
      }
      return;
    }
  }
  
  public boolean sendBroadcast(@NonNull Intent paramIntent)
  {
    for (;;)
    {
      Object localObject1;
      int k;
      synchronized (b)
      {
        String str1 = paramIntent.getAction();
        String str2 = paramIntent.resolveTypeIfNeeded(a.getContentResolver());
        Uri localUri = paramIntent.getData();
        String str3 = paramIntent.getScheme();
        Set localSet = paramIntent.getCategories();
        if ((paramIntent.getFlags() & 0x8) != 0)
        {
          i = 1;
          if (i != 0)
          {
            localObject1 = new StringBuilder();
            ((StringBuilder)localObject1).append("Resolving type ");
            ((StringBuilder)localObject1).append(str2);
            ((StringBuilder)localObject1).append(" scheme ");
            ((StringBuilder)localObject1).append(str3);
            ((StringBuilder)localObject1).append(" of intent ");
            ((StringBuilder)localObject1).append(paramIntent);
            Log.v("LocalBroadcastManager", ((StringBuilder)localObject1).toString());
          }
          ArrayList localArrayList = (ArrayList)c.get(paramIntent.getAction());
          if (localArrayList != null)
          {
            if (i == 0) {
              break label521;
            }
            localObject1 = new StringBuilder();
            ((StringBuilder)localObject1).append("Action list: ");
            ((StringBuilder)localObject1).append(localArrayList);
            Log.v("LocalBroadcastManager", ((StringBuilder)localObject1).toString());
            break label521;
            if (j >= localArrayList.size()) {
              break label618;
            }
            Object localObject3 = (b)localArrayList.get(j);
            if (i != 0)
            {
              localObject1 = new StringBuilder();
              ((StringBuilder)localObject1).append("Matching against filter ");
              ((StringBuilder)localObject1).append(a);
              Log.v("LocalBroadcastManager", ((StringBuilder)localObject1).toString());
            }
            if (c)
            {
              if (i == 0) {
                break label529;
              }
              Log.v("LocalBroadcastManager", "  Filter's target already added");
              break label529;
            }
            IntentFilter localIntentFilter = a;
            localObject1 = localObject2;
            k = localIntentFilter.match(str1, str2, str3, localUri, localSet, "LocalBroadcastManager");
            if (k < 0) {
              break label539;
            }
            if (i != 0)
            {
              localObject2 = new StringBuilder();
              ((StringBuilder)localObject2).append("  Filter matched!  match=0x");
              ((StringBuilder)localObject2).append(Integer.toHexString(k));
              Log.v("LocalBroadcastManager", ((StringBuilder)localObject2).toString());
            }
            if (localObject1 != null) {
              break label532;
            }
            localObject2 = new ArrayList();
            ((ArrayList)localObject2).add(localObject3);
            c = true;
            break label611;
            localObject3 = new StringBuilder();
            ((StringBuilder)localObject3).append("  Filter did not match: ");
            ((StringBuilder)localObject3).append((String)localObject1);
            Log.v("LocalBroadcastManager", ((StringBuilder)localObject3).toString());
            break label611;
            if (i < ((ArrayList)localObject2).size())
            {
              getc = false;
              i += 1;
              continue;
            }
            d.add(new a(paramIntent, (ArrayList)localObject2));
            if (!e.hasMessages(1)) {
              e.sendEmptyMessage(1);
            }
            return true;
          }
          return false;
        }
      }
      int i = 0;
      continue;
      label521:
      Object localObject2 = null;
      int j = 0;
      continue;
      label529:
      break label611;
      label532:
      localObject2 = localObject1;
      continue;
      label539:
      if (i != 0)
      {
        switch (k)
        {
        default: 
          localObject1 = "unknown reason";
          break;
        case -1: 
          localObject1 = "type";
          break;
        case -2: 
          localObject1 = "data";
          break;
        case -3: 
          localObject1 = "action";
          break;
        case -4: 
          localObject1 = "category";
          break;
        }
      }
      else
      {
        label611:
        j += 1;
        continue;
        label618:
        if (localObject2 != null) {
          i = 0;
        }
      }
    }
  }
  
  public void sendBroadcastSync(@NonNull Intent paramIntent)
  {
    if (sendBroadcast(paramIntent)) {
      a();
    }
  }
  
  public void unregisterReceiver(@NonNull BroadcastReceiver paramBroadcastReceiver)
  {
    for (;;)
    {
      int i;
      int j;
      int k;
      synchronized (b)
      {
        ArrayList localArrayList1 = (ArrayList)b.remove(paramBroadcastReceiver);
        if (localArrayList1 == null) {
          return;
        }
        i = localArrayList1.size() - 1;
        if (i >= 0)
        {
          b localB1 = (b)localArrayList1.get(i);
          d = true;
          j = 0;
          if (j >= a.countActions()) {
            break label203;
          }
          String str = a.getAction(j);
          ArrayList localArrayList2 = (ArrayList)c.get(str);
          if (localArrayList2 == null) {
            break label196;
          }
          k = localArrayList2.size() - 1;
          if (k >= 0)
          {
            b localB2 = (b)localArrayList2.get(k);
            if (b == paramBroadcastReceiver)
            {
              d = true;
              localArrayList2.remove(k);
            }
          }
          else
          {
            if (localArrayList2.size() > 0) {
              break label196;
            }
            c.remove(str);
            break label196;
          }
        }
        else
        {
          return;
        }
      }
      k -= 1;
      continue;
      label196:
      j += 1;
      continue;
      label203:
      i -= 1;
    }
  }
  
  private static final class a
  {
    final Intent a;
    final ArrayList<LocalBroadcastManager.b> b;
    
    a(Intent paramIntent, ArrayList<LocalBroadcastManager.b> paramArrayList)
    {
      a = paramIntent;
      b = paramArrayList;
    }
  }
  
  private static final class b
  {
    final IntentFilter a;
    final BroadcastReceiver b;
    boolean c;
    boolean d;
    
    b(IntentFilter paramIntentFilter, BroadcastReceiver paramBroadcastReceiver)
    {
      a = paramIntentFilter;
      b = paramBroadcastReceiver;
    }
    
    public String toString()
    {
      StringBuilder localStringBuilder = new StringBuilder(128);
      localStringBuilder.append("Receiver{");
      localStringBuilder.append(b);
      localStringBuilder.append(" filter=");
      localStringBuilder.append(a);
      if (d) {
        localStringBuilder.append(" DEAD");
      }
      localStringBuilder.append("}");
      return localStringBuilder.toString();
    }
  }
}
