package android.arch.lifecycle;

import android.arch.core.internal.FastSafeIterableMap;
import android.arch.core.internal.SafeIterableMap.d;
import android.support.annotation.MainThread;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.util.Log;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map.Entry;

public class LifecycleRegistry
  extends Lifecycle
{
  private FastSafeIterableMap<LifecycleObserver, a> a = new FastSafeIterableMap();
  private Lifecycle.State b;
  private final WeakReference<LifecycleOwner> c;
  private int d = 0;
  private boolean e = false;
  private boolean f = false;
  private ArrayList<Lifecycle.State> g = new ArrayList();
  
  public LifecycleRegistry(@NonNull LifecycleOwner paramLifecycleOwner)
  {
    c = new WeakReference(paramLifecycleOwner);
    b = Lifecycle.State.INITIALIZED;
  }
  
  static Lifecycle.State a(Lifecycle.Event paramEvent)
  {
    switch (1.a[paramEvent.ordinal()])
    {
    default: 
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("Unexpected event value ");
      localStringBuilder.append(paramEvent);
      throw new IllegalArgumentException(localStringBuilder.toString());
    case 6: 
      return Lifecycle.State.DESTROYED;
    case 5: 
      return Lifecycle.State.RESUMED;
    case 3: 
    case 4: 
      return Lifecycle.State.STARTED;
    }
    return Lifecycle.State.CREATED;
  }
  
  static Lifecycle.State a(@NonNull Lifecycle.State paramState1, @Nullable Lifecycle.State paramState2)
  {
    Lifecycle.State localState = paramState1;
    if (paramState2 != null)
    {
      localState = paramState1;
      if (paramState2.compareTo(paramState1) < 0) {
        localState = paramState2;
      }
    }
    return localState;
  }
  
  private Lifecycle.State a(LifecycleObserver paramLifecycleObserver)
  {
    paramLifecycleObserver = a.ceil(paramLifecycleObserver);
    Lifecycle.State localState = null;
    if (paramLifecycleObserver != null) {
      paramLifecycleObserver = getValuea;
    } else {
      paramLifecycleObserver = null;
    }
    if (!g.isEmpty()) {
      localState = (Lifecycle.State)g.get(g.size() - 1);
    }
    return a(a(b, paramLifecycleObserver), localState);
  }
  
  private void a(Lifecycle.State paramState)
  {
    if (b == paramState) {
      return;
    }
    b = paramState;
    if ((!e) && (d == 0))
    {
      e = true;
      c();
      e = false;
      return;
    }
    f = true;
  }
  
  private void a(LifecycleOwner paramLifecycleOwner)
  {
    SafeIterableMap.d localD = a.iteratorWithAdditions();
    while ((localD.hasNext()) && (!f))
    {
      Map.Entry localEntry = (Map.Entry)localD.next();
      a localA = (a)localEntry.getValue();
      while ((a.compareTo(b) < 0) && (!f) && (a.contains(localEntry.getKey())))
      {
        b(a);
        localA.a(paramLifecycleOwner, d(a));
        b();
      }
    }
  }
  
  private boolean a()
  {
    if (a.size() == 0) {
      return true;
    }
    Lifecycle.State localState1 = a.eldest().getValue()).a;
    Lifecycle.State localState2 = a.newest().getValue()).a;
    return (localState1 == localState2) && (b == localState2);
  }
  
  private void b()
  {
    g.remove(g.size() - 1);
  }
  
  private void b(Lifecycle.State paramState)
  {
    g.add(paramState);
  }
  
  private void b(LifecycleOwner paramLifecycleOwner)
  {
    Iterator localIterator = a.descendingIterator();
    while ((localIterator.hasNext()) && (!f))
    {
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      a localA = (a)localEntry.getValue();
      while ((a.compareTo(b) > 0) && (!f) && (a.contains(localEntry.getKey())))
      {
        Lifecycle.Event localEvent = c(a);
        b(a(localEvent));
        localA.a(paramLifecycleOwner, localEvent);
        b();
      }
    }
  }
  
  private static Lifecycle.Event c(Lifecycle.State paramState)
  {
    switch (1.b[paramState.ordinal()])
    {
    default: 
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("Unexpected state value ");
      localStringBuilder.append(paramState);
      throw new IllegalArgumentException(localStringBuilder.toString());
    case 5: 
      throw new IllegalArgumentException();
    case 4: 
      return Lifecycle.Event.ON_PAUSE;
    case 3: 
      return Lifecycle.Event.ON_STOP;
    case 2: 
      return Lifecycle.Event.ON_DESTROY;
    }
    throw new IllegalArgumentException();
  }
  
  private void c()
  {
    LifecycleOwner localLifecycleOwner = (LifecycleOwner)c.get();
    if (localLifecycleOwner == null)
    {
      Log.w("LifecycleRegistry", "LifecycleOwner is garbage collected, you shouldn't try dispatch new events from it.");
      return;
    }
    while (!a())
    {
      f = false;
      if (b.compareTo(a.eldest().getValue()).a) < 0) {
        b(localLifecycleOwner);
      }
      Map.Entry localEntry = a.newest();
      if ((!f) && (localEntry != null) && (b.compareTo(getValuea) > 0)) {
        a(localLifecycleOwner);
      }
    }
    f = false;
  }
  
  private static Lifecycle.Event d(Lifecycle.State paramState)
  {
    switch (1.b[paramState.ordinal()])
    {
    default: 
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("Unexpected state value ");
      localStringBuilder.append(paramState);
      throw new IllegalArgumentException(localStringBuilder.toString());
    case 4: 
      throw new IllegalArgumentException();
    case 3: 
      return Lifecycle.Event.ON_RESUME;
    case 2: 
      return Lifecycle.Event.ON_START;
    }
    return Lifecycle.Event.ON_CREATE;
  }
  
  public void addObserver(@NonNull LifecycleObserver paramLifecycleObserver)
  {
    if (b == Lifecycle.State.DESTROYED) {
      localState = Lifecycle.State.DESTROYED;
    } else {
      localState = Lifecycle.State.INITIALIZED;
    }
    a localA = new a(paramLifecycleObserver, localState);
    if ((a)a.putIfAbsent(paramLifecycleObserver, localA) != null) {
      return;
    }
    LifecycleOwner localLifecycleOwner = (LifecycleOwner)c.get();
    if (localLifecycleOwner == null) {
      return;
    }
    int i;
    if ((d == 0) && (!e)) {
      i = 0;
    } else {
      i = 1;
    }
    Lifecycle.State localState = a(paramLifecycleObserver);
    d += 1;
    while ((a.compareTo(localState) < 0) && (a.contains(paramLifecycleObserver)))
    {
      b(a);
      localA.a(localLifecycleOwner, d(a));
      b();
      localState = a(paramLifecycleObserver);
    }
    if (i == 0) {
      c();
    }
    d -= 1;
  }
  
  @NonNull
  public Lifecycle.State getCurrentState()
  {
    return b;
  }
  
  public int getObserverCount()
  {
    return a.size();
  }
  
  public void handleLifecycleEvent(@NonNull Lifecycle.Event paramEvent)
  {
    a(a(paramEvent));
  }
  
  @MainThread
  public void markState(@NonNull Lifecycle.State paramState)
  {
    a(paramState);
  }
  
  public void removeObserver(@NonNull LifecycleObserver paramLifecycleObserver)
  {
    a.remove(paramLifecycleObserver);
  }
  
  static class a
  {
    Lifecycle.State a;
    GenericLifecycleObserver b;
    
    a(LifecycleObserver paramLifecycleObserver, Lifecycle.State paramState)
    {
      b = Lifecycling.a(paramLifecycleObserver);
      a = paramState;
    }
    
    void a(LifecycleOwner paramLifecycleOwner, Lifecycle.Event paramEvent)
    {
      Lifecycle.State localState = LifecycleRegistry.a(paramEvent);
      a = LifecycleRegistry.a(a, localState);
      b.onStateChanged(paramLifecycleOwner, paramEvent);
      a = localState;
    }
  }
}
