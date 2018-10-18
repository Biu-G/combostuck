package android.arch.lifecycle;

import android.support.annotation.RestrictTo;

@RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
public class SingleGeneratedAdapterObserver
  implements GenericLifecycleObserver
{
  private final GeneratedAdapter a;
  
  SingleGeneratedAdapterObserver(GeneratedAdapter paramGeneratedAdapter)
  {
    a = paramGeneratedAdapter;
  }
  
  public void onStateChanged(LifecycleOwner paramLifecycleOwner, Lifecycle.Event paramEvent)
  {
    a.callMethods(paramLifecycleOwner, paramEvent, false, null);
    a.callMethods(paramLifecycleOwner, paramEvent, true, null);
  }
}
