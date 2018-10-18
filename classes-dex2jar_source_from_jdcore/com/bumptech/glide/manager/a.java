package com.bumptech.glide.manager;

import android.support.annotation.NonNull;
import com.bumptech.glide.util.Util;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.WeakHashMap;

class a
  implements Lifecycle
{
  private final Set<LifecycleListener> a = Collections.newSetFromMap(new WeakHashMap());
  private boolean b;
  private boolean c;
  
  a() {}
  
  void a()
  {
    b = true;
    Iterator localIterator = Util.getSnapshot(a).iterator();
    while (localIterator.hasNext()) {
      ((LifecycleListener)localIterator.next()).onStart();
    }
  }
  
  public void addListener(@NonNull LifecycleListener paramLifecycleListener)
  {
    a.add(paramLifecycleListener);
    if (c)
    {
      paramLifecycleListener.onDestroy();
      return;
    }
    if (b)
    {
      paramLifecycleListener.onStart();
      return;
    }
    paramLifecycleListener.onStop();
  }
  
  void b()
  {
    b = false;
    Iterator localIterator = Util.getSnapshot(a).iterator();
    while (localIterator.hasNext()) {
      ((LifecycleListener)localIterator.next()).onStop();
    }
  }
  
  void c()
  {
    c = true;
    Iterator localIterator = Util.getSnapshot(a).iterator();
    while (localIterator.hasNext()) {
      ((LifecycleListener)localIterator.next()).onDestroy();
    }
  }
  
  public void removeListener(@NonNull LifecycleListener paramLifecycleListener)
  {
    a.remove(paramLifecycleListener);
  }
}
