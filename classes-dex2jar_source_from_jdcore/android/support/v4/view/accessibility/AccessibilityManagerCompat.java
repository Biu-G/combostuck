package android.support.v4.view.accessibility;

import android.accessibilityservice.AccessibilityServiceInfo;
import android.os.Build.VERSION;
import android.support.annotation.NonNull;
import android.support.annotation.RequiresApi;
import android.view.accessibility.AccessibilityManager;
import android.view.accessibility.AccessibilityManager.AccessibilityStateChangeListener;
import android.view.accessibility.AccessibilityManager.TouchExplorationStateChangeListener;
import java.util.List;

public final class AccessibilityManagerCompat
{
  private AccessibilityManagerCompat() {}
  
  @Deprecated
  public static boolean addAccessibilityStateChangeListener(AccessibilityManager paramAccessibilityManager, AccessibilityStateChangeListener paramAccessibilityStateChangeListener)
  {
    if (paramAccessibilityStateChangeListener == null) {
      return false;
    }
    return paramAccessibilityManager.addAccessibilityStateChangeListener(new a(paramAccessibilityStateChangeListener));
  }
  
  public static boolean addTouchExplorationStateChangeListener(AccessibilityManager paramAccessibilityManager, TouchExplorationStateChangeListener paramTouchExplorationStateChangeListener)
  {
    if (Build.VERSION.SDK_INT >= 19)
    {
      if (paramTouchExplorationStateChangeListener == null) {
        return false;
      }
      return paramAccessibilityManager.addTouchExplorationStateChangeListener(new b(paramTouchExplorationStateChangeListener));
    }
    return false;
  }
  
  @Deprecated
  public static List<AccessibilityServiceInfo> getEnabledAccessibilityServiceList(AccessibilityManager paramAccessibilityManager, int paramInt)
  {
    return paramAccessibilityManager.getEnabledAccessibilityServiceList(paramInt);
  }
  
  @Deprecated
  public static List<AccessibilityServiceInfo> getInstalledAccessibilityServiceList(AccessibilityManager paramAccessibilityManager)
  {
    return paramAccessibilityManager.getInstalledAccessibilityServiceList();
  }
  
  @Deprecated
  public static boolean isTouchExplorationEnabled(AccessibilityManager paramAccessibilityManager)
  {
    return paramAccessibilityManager.isTouchExplorationEnabled();
  }
  
  @Deprecated
  public static boolean removeAccessibilityStateChangeListener(AccessibilityManager paramAccessibilityManager, AccessibilityStateChangeListener paramAccessibilityStateChangeListener)
  {
    if (paramAccessibilityStateChangeListener == null) {
      return false;
    }
    return paramAccessibilityManager.removeAccessibilityStateChangeListener(new a(paramAccessibilityStateChangeListener));
  }
  
  public static boolean removeTouchExplorationStateChangeListener(AccessibilityManager paramAccessibilityManager, TouchExplorationStateChangeListener paramTouchExplorationStateChangeListener)
  {
    if (Build.VERSION.SDK_INT >= 19)
    {
      if (paramTouchExplorationStateChangeListener == null) {
        return false;
      }
      return paramAccessibilityManager.removeTouchExplorationStateChangeListener(new b(paramTouchExplorationStateChangeListener));
    }
    return false;
  }
  
  @Deprecated
  public static abstract interface AccessibilityStateChangeListener
  {
    @Deprecated
    public abstract void onAccessibilityStateChanged(boolean paramBoolean);
  }
  
  @Deprecated
  public static abstract class AccessibilityStateChangeListenerCompat
    implements AccessibilityManagerCompat.AccessibilityStateChangeListener
  {
    public AccessibilityStateChangeListenerCompat() {}
  }
  
  public static abstract interface TouchExplorationStateChangeListener
  {
    public abstract void onTouchExplorationStateChanged(boolean paramBoolean);
  }
  
  private static class a
    implements AccessibilityManager.AccessibilityStateChangeListener
  {
    AccessibilityManagerCompat.AccessibilityStateChangeListener a;
    
    a(@NonNull AccessibilityManagerCompat.AccessibilityStateChangeListener paramAccessibilityStateChangeListener)
    {
      a = paramAccessibilityStateChangeListener;
    }
    
    public boolean equals(Object paramObject)
    {
      if (this == paramObject) {
        return true;
      }
      if ((paramObject != null) && (getClass() == paramObject.getClass()))
      {
        paramObject = (a)paramObject;
        return a.equals(a);
      }
      return false;
    }
    
    public int hashCode()
    {
      return a.hashCode();
    }
    
    public void onAccessibilityStateChanged(boolean paramBoolean)
    {
      a.onAccessibilityStateChanged(paramBoolean);
    }
  }
  
  @RequiresApi(19)
  private static class b
    implements AccessibilityManager.TouchExplorationStateChangeListener
  {
    final AccessibilityManagerCompat.TouchExplorationStateChangeListener a;
    
    b(@NonNull AccessibilityManagerCompat.TouchExplorationStateChangeListener paramTouchExplorationStateChangeListener)
    {
      a = paramTouchExplorationStateChangeListener;
    }
    
    public boolean equals(Object paramObject)
    {
      if (this == paramObject) {
        return true;
      }
      if ((paramObject != null) && (getClass() == paramObject.getClass()))
      {
        paramObject = (b)paramObject;
        return a.equals(a);
      }
      return false;
    }
    
    public int hashCode()
    {
      return a.hashCode();
    }
    
    public void onTouchExplorationStateChanged(boolean paramBoolean)
    {
      a.onTouchExplorationStateChanged(paramBoolean);
    }
  }
}
