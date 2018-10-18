package android.arch.lifecycle;

import android.app.Activity;
import android.app.Fragment;
import android.app.FragmentManager;
import android.app.FragmentTransaction;
import android.os.Bundle;
import android.support.annotation.RestrictTo;

@RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
public class ReportFragment
  extends Fragment
{
  private a a;
  
  public ReportFragment() {}
  
  private void a(Lifecycle.Event paramEvent)
  {
    Object localObject = getActivity();
    if ((localObject instanceof LifecycleRegistryOwner))
    {
      ((LifecycleRegistryOwner)localObject).getLifecycle().handleLifecycleEvent(paramEvent);
      return;
    }
    if ((localObject instanceof LifecycleOwner))
    {
      localObject = ((LifecycleOwner)localObject).getLifecycle();
      if ((localObject instanceof LifecycleRegistry)) {
        ((LifecycleRegistry)localObject).handleLifecycleEvent(paramEvent);
      }
    }
  }
  
  private void a(a paramA)
  {
    if (paramA != null) {
      paramA.a();
    }
  }
  
  private void b(a paramA)
  {
    if (paramA != null) {
      paramA.b();
    }
  }
  
  private void c(a paramA)
  {
    if (paramA != null) {
      paramA.c();
    }
  }
  
  public static void injectIfNeededIn(Activity paramActivity)
  {
    paramActivity = paramActivity.getFragmentManager();
    if (paramActivity.findFragmentByTag("android.arch.lifecycle.LifecycleDispatcher.report_fragment_tag") == null)
    {
      paramActivity.beginTransaction().add(new ReportFragment(), "android.arch.lifecycle.LifecycleDispatcher.report_fragment_tag").commit();
      paramActivity.executePendingTransactions();
    }
  }
  
  public void onActivityCreated(Bundle paramBundle)
  {
    super.onActivityCreated(paramBundle);
    a(a);
    a(Lifecycle.Event.ON_CREATE);
  }
  
  public void onDestroy()
  {
    super.onDestroy();
    a(Lifecycle.Event.ON_DESTROY);
    a = null;
  }
  
  public void onPause()
  {
    super.onPause();
    a(Lifecycle.Event.ON_PAUSE);
  }
  
  public void onResume()
  {
    super.onResume();
    c(a);
    a(Lifecycle.Event.ON_RESUME);
  }
  
  public void onStart()
  {
    super.onStart();
    b(a);
    a(Lifecycle.Event.ON_START);
  }
  
  public void onStop()
  {
    super.onStop();
    a(Lifecycle.Event.ON_STOP);
  }
  
  static abstract interface a
  {
    public abstract void a();
    
    public abstract void b();
    
    public abstract void c();
  }
}
