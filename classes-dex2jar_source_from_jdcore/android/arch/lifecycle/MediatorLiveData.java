package android.arch.lifecycle;

import android.arch.core.internal.SafeIterableMap;
import android.support.annotation.CallSuper;
import android.support.annotation.MainThread;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import java.util.Iterator;
import java.util.Map.Entry;

public class MediatorLiveData<T>
  extends MutableLiveData<T>
{
  private SafeIterableMap<LiveData<?>, a<?>> a = new SafeIterableMap();
  
  public MediatorLiveData() {}
  
  @MainThread
  public <S> void addSource(@NonNull LiveData<S> paramLiveData, @NonNull Observer<S> paramObserver)
  {
    a localA = new a(paramLiveData, paramObserver);
    paramLiveData = (a)a.putIfAbsent(paramLiveData, localA);
    if ((paramLiveData != null) && (b != paramObserver)) {
      throw new IllegalArgumentException("This source was already added with the different observer");
    }
    if (paramLiveData != null) {
      return;
    }
    if (hasActiveObservers()) {
      localA.a();
    }
  }
  
  @CallSuper
  protected void onActive()
  {
    Iterator localIterator = a.iterator();
    while (localIterator.hasNext()) {
      ((a)((Map.Entry)localIterator.next()).getValue()).a();
    }
  }
  
  @CallSuper
  protected void onInactive()
  {
    Iterator localIterator = a.iterator();
    while (localIterator.hasNext()) {
      ((a)((Map.Entry)localIterator.next()).getValue()).b();
    }
  }
  
  @MainThread
  public <S> void removeSource(@NonNull LiveData<S> paramLiveData)
  {
    paramLiveData = (a)a.remove(paramLiveData);
    if (paramLiveData != null) {
      paramLiveData.b();
    }
  }
  
  private static class a<V>
    implements Observer<V>
  {
    final LiveData<V> a;
    final Observer<V> b;
    int c = -1;
    
    a(LiveData<V> paramLiveData, Observer<V> paramObserver)
    {
      a = paramLiveData;
      b = paramObserver;
    }
    
    void a()
    {
      a.observeForever(this);
    }
    
    void b()
    {
      a.removeObserver(this);
    }
    
    public void onChanged(@Nullable V paramV)
    {
      if (c != a.a())
      {
        c = a.a();
        b.onChanged(paramV);
      }
    }
  }
}
