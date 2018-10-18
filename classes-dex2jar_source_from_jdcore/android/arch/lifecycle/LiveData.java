package android.arch.lifecycle;

import android.arch.core.executor.ArchTaskExecutor;
import android.arch.core.internal.SafeIterableMap;
import android.arch.core.internal.SafeIterableMap.d;
import android.support.annotation.MainThread;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import java.util.Iterator;
import java.util.Map.Entry;

public abstract class LiveData<T>
{
  private static final Object b = new Object();
  private final Object a = new Object();
  private SafeIterableMap<Observer<T>, LiveData<T>.b> c = new SafeIterableMap();
  private int d = 0;
  private volatile Object e = b;
  private volatile Object f = b;
  private int g = -1;
  private boolean h;
  private boolean i;
  private final Runnable j = new Runnable()
  {
    public void run()
    {
      synchronized (LiveData.a(LiveData.this))
      {
        Object localObject2 = LiveData.b(LiveData.this);
        LiveData.a(LiveData.this, LiveData.b());
        setValue(localObject2);
        return;
      }
    }
  };
  
  public LiveData() {}
  
  private void a(LiveData<T>.b paramLiveData)
  {
    if (!d) {
      return;
    }
    if (!paramLiveData.a())
    {
      paramLiveData.a(false);
      return;
    }
    if (e >= g) {
      return;
    }
    e = g;
    c.onChanged(e);
  }
  
  private static void a(String paramString)
  {
    if (ArchTaskExecutor.getInstance().isMainThread()) {
      return;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Cannot invoke ");
    localStringBuilder.append(paramString);
    localStringBuilder.append(" on a background");
    localStringBuilder.append(" thread");
    throw new IllegalStateException(localStringBuilder.toString());
  }
  
  private void b(@Nullable LiveData<T>.b paramLiveData)
  {
    if (h)
    {
      i = true;
      return;
    }
    h = true;
    do
    {
      i = false;
      LiveData<T>.b localLiveData;
      if (paramLiveData != null)
      {
        a(paramLiveData);
        localLiveData = null;
      }
      else
      {
        SafeIterableMap.d localD = c.iteratorWithAdditions();
        do
        {
          localLiveData = paramLiveData;
          if (!localD.hasNext()) {
            break;
          }
          a((b)((Map.Entry)localD.next()).getValue());
        } while (!i);
        localLiveData = paramLiveData;
      }
      paramLiveData = localLiveData;
    } while (i);
    h = false;
  }
  
  int a()
  {
    return g;
  }
  
  @Nullable
  public T getValue()
  {
    Object localObject = e;
    if (localObject != b) {
      return localObject;
    }
    return null;
  }
  
  public boolean hasActiveObservers()
  {
    return d > 0;
  }
  
  public boolean hasObservers()
  {
    return c.size() > 0;
  }
  
  @MainThread
  public void observe(@NonNull LifecycleOwner paramLifecycleOwner, @NonNull Observer<T> paramObserver)
  {
    if (paramLifecycleOwner.getLifecycle().getCurrentState() == Lifecycle.State.DESTROYED) {
      return;
    }
    LifecycleBoundObserver localLifecycleBoundObserver = new LifecycleBoundObserver(paramLifecycleOwner, paramObserver);
    paramObserver = (b)c.putIfAbsent(paramObserver, localLifecycleBoundObserver);
    if ((paramObserver != null) && (!paramObserver.a(paramLifecycleOwner))) {
      throw new IllegalArgumentException("Cannot add the same observer with different lifecycles");
    }
    if (paramObserver != null) {
      return;
    }
    paramLifecycleOwner.getLifecycle().addObserver(localLifecycleBoundObserver);
  }
  
  @MainThread
  public void observeForever(@NonNull Observer<T> paramObserver)
  {
    a localA = new a(paramObserver);
    paramObserver = (b)c.putIfAbsent(paramObserver, localA);
    if ((paramObserver != null) && ((paramObserver instanceof LifecycleBoundObserver))) {
      throw new IllegalArgumentException("Cannot add the same observer with different lifecycles");
    }
    if (paramObserver != null) {
      return;
    }
    localA.a(true);
  }
  
  protected void onActive() {}
  
  protected void onInactive() {}
  
  protected void postValue(T paramT)
  {
    for (;;)
    {
      synchronized (a)
      {
        if (f == b)
        {
          k = 1;
          f = paramT;
          if (k == 0) {
            return;
          }
          ArchTaskExecutor.getInstance().postToMainThread(j);
          return;
        }
      }
      int k = 0;
    }
  }
  
  @MainThread
  public void removeObserver(@NonNull Observer<T> paramObserver)
  {
    a("removeObserver");
    paramObserver = (b)c.remove(paramObserver);
    if (paramObserver == null) {
      return;
    }
    paramObserver.b();
    paramObserver.a(false);
  }
  
  @MainThread
  public void removeObservers(@NonNull LifecycleOwner paramLifecycleOwner)
  {
    a("removeObservers");
    Iterator localIterator = c.iterator();
    while (localIterator.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      if (((b)localEntry.getValue()).a(paramLifecycleOwner)) {
        removeObserver((Observer)localEntry.getKey());
      }
    }
  }
  
  @MainThread
  protected void setValue(T paramT)
  {
    a("setValue");
    g += 1;
    e = paramT;
    b(null);
  }
  
  class LifecycleBoundObserver
    extends LiveData<T>.b
    implements GenericLifecycleObserver
  {
    @NonNull
    final LifecycleOwner a;
    
    LifecycleBoundObserver(@NonNull Observer<T> paramObserver)
    {
      super(localObserver);
      a = paramObserver;
    }
    
    boolean a()
    {
      return a.getLifecycle().getCurrentState().isAtLeast(Lifecycle.State.STARTED);
    }
    
    boolean a(LifecycleOwner paramLifecycleOwner)
    {
      return a == paramLifecycleOwner;
    }
    
    void b()
    {
      a.getLifecycle().removeObserver(this);
    }
    
    public void onStateChanged(LifecycleOwner paramLifecycleOwner, Lifecycle.Event paramEvent)
    {
      if (a.getLifecycle().getCurrentState() == Lifecycle.State.DESTROYED)
      {
        removeObserver(c);
        return;
      }
      a(a());
    }
  }
  
  private class a
    extends LiveData<T>.b
  {
    a()
    {
      super(localObserver);
    }
    
    boolean a()
    {
      return true;
    }
  }
  
  private abstract class b
  {
    final Observer<T> c;
    boolean d;
    int e = -1;
    
    b()
    {
      Object localObject;
      c = localObject;
    }
    
    void a(boolean paramBoolean)
    {
      if (paramBoolean == d) {
        return;
      }
      d = paramBoolean;
      int i = LiveData.c(LiveData.this);
      int j = 1;
      if (i == 0) {
        i = 1;
      } else {
        i = 0;
      }
      LiveData localLiveData = LiveData.this;
      int k = LiveData.c(localLiveData);
      if (!d) {
        j = -1;
      }
      LiveData.a(localLiveData, k + j);
      if ((i != 0) && (d)) {
        onActive();
      }
      if ((LiveData.c(LiveData.this) == 0) && (!d)) {
        onInactive();
      }
      if (d) {
        LiveData.a(LiveData.this, this);
      }
    }
    
    abstract boolean a();
    
    boolean a(LifecycleOwner paramLifecycleOwner)
    {
      return false;
    }
    
    void b() {}
  }
}
