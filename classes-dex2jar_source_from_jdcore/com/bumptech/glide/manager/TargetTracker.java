package com.bumptech.glide.manager;

import android.support.annotation.NonNull;
import com.bumptech.glide.request.target.Target;
import com.bumptech.glide.util.Util;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.WeakHashMap;

public final class TargetTracker
  implements LifecycleListener
{
  private final Set<Target<?>> a = Collections.newSetFromMap(new WeakHashMap());
  
  public TargetTracker() {}
  
  public void clear()
  {
    a.clear();
  }
  
  @NonNull
  public List<Target<?>> getAll()
  {
    return Util.getSnapshot(a);
  }
  
  public void onDestroy()
  {
    Iterator localIterator = Util.getSnapshot(a).iterator();
    while (localIterator.hasNext()) {
      ((Target)localIterator.next()).onDestroy();
    }
  }
  
  public void onStart()
  {
    Iterator localIterator = Util.getSnapshot(a).iterator();
    while (localIterator.hasNext()) {
      ((Target)localIterator.next()).onStart();
    }
  }
  
  public void onStop()
  {
    Iterator localIterator = Util.getSnapshot(a).iterator();
    while (localIterator.hasNext()) {
      ((Target)localIterator.next()).onStop();
    }
  }
  
  public void track(@NonNull Target<?> paramTarget)
  {
    a.add(paramTarget);
  }
  
  public void untrack(@NonNull Target<?> paramTarget)
  {
    a.remove(paramTarget);
  }
}
