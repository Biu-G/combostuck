package android.arch.lifecycle;

class FullLifecycleObserverAdapter
  implements GenericLifecycleObserver
{
  private final FullLifecycleObserver a;
  
  FullLifecycleObserverAdapter(FullLifecycleObserver paramFullLifecycleObserver)
  {
    a = paramFullLifecycleObserver;
  }
  
  public void onStateChanged(LifecycleOwner paramLifecycleOwner, Lifecycle.Event paramEvent)
  {
    switch (1.a[paramEvent.ordinal()])
    {
    default: 
      return;
    case 7: 
      throw new IllegalArgumentException("ON_ANY must not been send by anybody");
    case 6: 
      a.f(paramLifecycleOwner);
      return;
    case 5: 
      a.e(paramLifecycleOwner);
      return;
    case 4: 
      a.d(paramLifecycleOwner);
      return;
    case 3: 
      a.c(paramLifecycleOwner);
      return;
    case 2: 
      a.b(paramLifecycleOwner);
      return;
    }
    a.a(paramLifecycleOwner);
  }
}
