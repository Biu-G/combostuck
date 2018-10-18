package android.arch.lifecycle;

class ReflectiveGenericLifecycleObserver
  implements GenericLifecycleObserver
{
  private final Object a;
  private final a.a b;
  
  ReflectiveGenericLifecycleObserver(Object paramObject)
  {
    a = paramObject;
    b = a.a.b(a.getClass());
  }
  
  public void onStateChanged(LifecycleOwner paramLifecycleOwner, Lifecycle.Event paramEvent)
  {
    b.a(paramLifecycleOwner, paramEvent, a);
  }
}
