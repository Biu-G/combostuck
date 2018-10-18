package android.support.v4.app;

import android.app.Notification;
import android.app.Notification.Action.Builder;
import android.app.Notification.Builder;
import android.app.PendingIntent;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.support.annotation.RestrictTo;
import android.text.TextUtils;
import android.util.SparseArray;
import android.widget.RemoteViews;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

@RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
class h
  implements NotificationBuilderWithBuilderAccessor
{
  private final Notification.Builder a;
  private final NotificationCompat.Builder b;
  private RemoteViews c;
  private RemoteViews d;
  private final List<Bundle> e = new ArrayList();
  private final Bundle f = new Bundle();
  private int g;
  private RemoteViews h;
  
  h(NotificationCompat.Builder paramBuilder)
  {
    b = paramBuilder;
    if (Build.VERSION.SDK_INT >= 26) {
      a = new Notification.Builder(mContext, G);
    } else {
      a = new Notification.Builder(mContext);
    }
    Object localObject1 = L;
    Object localObject2 = a.setWhen(when).setSmallIcon(icon, iconLevel).setContent(contentView).setTicker(tickerText, f).setVibrate(vibrate).setLights(ledARGB, ledOnMS, ledOffMS);
    boolean bool;
    if ((flags & 0x2) != 0) {
      bool = true;
    } else {
      bool = false;
    }
    localObject2 = ((Notification.Builder)localObject2).setOngoing(bool);
    if ((flags & 0x8) != 0) {
      bool = true;
    } else {
      bool = false;
    }
    localObject2 = ((Notification.Builder)localObject2).setOnlyAlertOnce(bool);
    if ((flags & 0x10) != 0) {
      bool = true;
    } else {
      bool = false;
    }
    localObject2 = ((Notification.Builder)localObject2).setAutoCancel(bool).setDefaults(defaults).setContentTitle(b).setContentText(c).setContentInfo(h).setContentIntent(d).setDeleteIntent(deleteIntent);
    PendingIntent localPendingIntent = e;
    if ((flags & 0x80) != 0) {
      bool = true;
    } else {
      bool = false;
    }
    ((Notification.Builder)localObject2).setFullScreenIntent(localPendingIntent, bool).setLargeIcon(g).setNumber(i).setProgress(p, q, r);
    if (Build.VERSION.SDK_INT < 21) {
      a.setSound(sound, audioStreamType);
    }
    if (Build.VERSION.SDK_INT >= 16)
    {
      a.setSubText(n).setUsesChronometer(l).setPriority(j);
      localObject2 = mActions.iterator();
      while (((Iterator)localObject2).hasNext()) {
        a((NotificationCompat.Action)((Iterator)localObject2).next());
      }
      if (z != null) {
        f.putAll(z);
      }
      if (Build.VERSION.SDK_INT < 20)
      {
        if (v) {
          f.putBoolean("android.support.localOnly", true);
        }
        if (s != null)
        {
          f.putString("android.support.groupKey", s);
          if (t) {
            f.putBoolean("android.support.isGroupSummary", true);
          } else {
            f.putBoolean("android.support.useSideChannel", true);
          }
        }
        if (u != null) {
          f.putString("android.support.sortKey", u);
        }
      }
      c = D;
      d = E;
    }
    if (Build.VERSION.SDK_INT >= 19)
    {
      a.setShowWhen(k);
      if ((Build.VERSION.SDK_INT < 21) && (mPeople != null) && (!mPeople.isEmpty())) {
        f.putStringArray("android.people", (String[])mPeople.toArray(new String[mPeople.size()]));
      }
    }
    if (Build.VERSION.SDK_INT >= 20)
    {
      a.setLocalOnly(v).setGroup(s).setGroupSummary(t).setSortKey(u);
      g = K;
    }
    if (Build.VERSION.SDK_INT >= 21)
    {
      a.setCategory(y).setColor(A).setVisibility(B).setPublicVersion(C).setSound(sound, audioAttributes);
      localObject1 = mPeople.iterator();
      while (((Iterator)localObject1).hasNext())
      {
        localObject2 = (String)((Iterator)localObject1).next();
        a.addPerson((String)localObject2);
      }
      h = F;
      if (a.size() > 0)
      {
        localObject2 = paramBuilder.getExtras().getBundle("android.car.EXTENSIONS");
        localObject1 = localObject2;
        if (localObject2 == null) {
          localObject1 = new Bundle();
        }
        localObject2 = new Bundle();
        int i = 0;
        while (i < a.size())
        {
          ((Bundle)localObject2).putBundle(Integer.toString(i), i.a((NotificationCompat.Action)a.get(i)));
          i += 1;
        }
        ((Bundle)localObject1).putBundle("invisible_actions", (Bundle)localObject2);
        paramBuilder.getExtras().putBundle("android.car.EXTENSIONS", (Bundle)localObject1);
        f.putBundle("android.car.EXTENSIONS", (Bundle)localObject1);
      }
    }
    if (Build.VERSION.SDK_INT >= 24)
    {
      a.setExtras(z).setRemoteInputHistory(o);
      if (D != null) {
        a.setCustomContentView(D);
      }
      if (E != null) {
        a.setCustomBigContentView(E);
      }
      if (F != null) {
        a.setCustomHeadsUpContentView(F);
      }
    }
    if (Build.VERSION.SDK_INT >= 26)
    {
      a.setBadgeIconType(H).setShortcutId(I).setTimeoutAfter(J).setGroupAlertBehavior(K);
      if (x) {
        a.setColorized(w);
      }
      if (!TextUtils.isEmpty(G)) {
        a.setSound(null).setDefaults(0).setLights(0, 0, 0).setVibrate(null);
      }
    }
  }
  
  private void a(Notification paramNotification)
  {
    sound = null;
    vibrate = null;
    defaults &= 0xFFFFFFFE;
    defaults &= 0xFFFFFFFD;
  }
  
  private void a(NotificationCompat.Action paramAction)
  {
    if (Build.VERSION.SDK_INT >= 20)
    {
      Notification.Action.Builder localBuilder = new Notification.Action.Builder(paramAction.getIcon(), paramAction.getTitle(), paramAction.getActionIntent());
      Object localObject;
      if (paramAction.getRemoteInputs() != null)
      {
        localObject = RemoteInput.a(paramAction.getRemoteInputs());
        int j = localObject.length;
        int i = 0;
        while (i < j)
        {
          localBuilder.addRemoteInput(localObject[i]);
          i += 1;
        }
      }
      if (paramAction.getExtras() != null) {
        localObject = new Bundle(paramAction.getExtras());
      } else {
        localObject = new Bundle();
      }
      ((Bundle)localObject).putBoolean("android.support.allowGeneratedReplies", paramAction.getAllowGeneratedReplies());
      if (Build.VERSION.SDK_INT >= 24) {
        localBuilder.setAllowGeneratedReplies(paramAction.getAllowGeneratedReplies());
      }
      ((Bundle)localObject).putInt("android.support.action.semanticAction", paramAction.getSemanticAction());
      if (Build.VERSION.SDK_INT >= 28) {
        localBuilder.setSemanticAction(paramAction.getSemanticAction());
      }
      ((Bundle)localObject).putBoolean("android.support.action.showsUserInterface", paramAction.getShowsUserInterface());
      localBuilder.addExtras((Bundle)localObject);
      a.addAction(localBuilder.build());
      return;
    }
    if (Build.VERSION.SDK_INT >= 16) {
      e.add(i.a(a, paramAction));
    }
  }
  
  public Notification a()
  {
    NotificationCompat.Style localStyle = b.m;
    if (localStyle != null) {
      localStyle.apply(this);
    }
    Object localObject;
    if (localStyle != null) {
      localObject = localStyle.makeContentView(this);
    } else {
      localObject = null;
    }
    Notification localNotification = b();
    if (localObject != null) {
      contentView = ((RemoteViews)localObject);
    } else if (b.D != null) {
      contentView = b.D;
    }
    if ((Build.VERSION.SDK_INT >= 16) && (localStyle != null))
    {
      localObject = localStyle.makeBigContentView(this);
      if (localObject != null) {
        bigContentView = ((RemoteViews)localObject);
      }
    }
    if ((Build.VERSION.SDK_INT >= 21) && (localStyle != null))
    {
      localObject = b.m.makeHeadsUpContentView(this);
      if (localObject != null) {
        headsUpContentView = ((RemoteViews)localObject);
      }
    }
    if ((Build.VERSION.SDK_INT >= 16) && (localStyle != null))
    {
      localObject = NotificationCompat.getExtras(localNotification);
      if (localObject != null) {
        localStyle.addCompatExtras((Bundle)localObject);
      }
    }
    return localNotification;
  }
  
  protected Notification b()
  {
    if (Build.VERSION.SDK_INT >= 26) {
      return a.build();
    }
    Object localObject1;
    if (Build.VERSION.SDK_INT >= 24)
    {
      localObject1 = a.build();
      if (g != 0)
      {
        if ((((Notification)localObject1).getGroup() != null) && ((flags & 0x200) != 0) && (g == 2)) {
          a((Notification)localObject1);
        }
        if ((((Notification)localObject1).getGroup() != null) && ((flags & 0x200) == 0) && (g == 1)) {
          a((Notification)localObject1);
        }
      }
      return localObject1;
    }
    if (Build.VERSION.SDK_INT >= 21)
    {
      a.setExtras(f);
      localObject1 = a.build();
      if (c != null) {
        contentView = c;
      }
      if (d != null) {
        bigContentView = d;
      }
      if (h != null) {
        headsUpContentView = h;
      }
      if (g != 0)
      {
        if ((((Notification)localObject1).getGroup() != null) && ((flags & 0x200) != 0) && (g == 2)) {
          a((Notification)localObject1);
        }
        if ((((Notification)localObject1).getGroup() != null) && ((flags & 0x200) == 0) && (g == 1)) {
          a((Notification)localObject1);
        }
      }
      return localObject1;
    }
    if (Build.VERSION.SDK_INT >= 20)
    {
      a.setExtras(f);
      localObject1 = a.build();
      if (c != null) {
        contentView = c;
      }
      if (d != null) {
        bigContentView = d;
      }
      if (g != 0)
      {
        if ((((Notification)localObject1).getGroup() != null) && ((flags & 0x200) != 0) && (g == 2)) {
          a((Notification)localObject1);
        }
        if ((((Notification)localObject1).getGroup() != null) && ((flags & 0x200) == 0) && (g == 1)) {
          a((Notification)localObject1);
        }
      }
      return localObject1;
    }
    if (Build.VERSION.SDK_INT >= 19)
    {
      localObject1 = i.a(e);
      if (localObject1 != null) {
        f.putSparseParcelableArray("android.support.actionExtras", (SparseArray)localObject1);
      }
      a.setExtras(f);
      localObject1 = a.build();
      if (c != null) {
        contentView = c;
      }
      if (d != null) {
        bigContentView = d;
      }
      return localObject1;
    }
    if (Build.VERSION.SDK_INT >= 16)
    {
      localObject1 = a.build();
      Object localObject2 = NotificationCompat.getExtras((Notification)localObject1);
      Bundle localBundle = new Bundle(f);
      Iterator localIterator = f.keySet().iterator();
      while (localIterator.hasNext())
      {
        String str = (String)localIterator.next();
        if (((Bundle)localObject2).containsKey(str)) {
          localBundle.remove(str);
        }
      }
      ((Bundle)localObject2).putAll(localBundle);
      localObject2 = i.a(e);
      if (localObject2 != null) {
        NotificationCompat.getExtras((Notification)localObject1).putSparseParcelableArray("android.support.actionExtras", (SparseArray)localObject2);
      }
      if (c != null) {
        contentView = c;
      }
      if (d != null) {
        bigContentView = d;
      }
      return localObject1;
    }
    return a.getNotification();
  }
  
  public Notification.Builder getBuilder()
  {
    return a;
  }
}
