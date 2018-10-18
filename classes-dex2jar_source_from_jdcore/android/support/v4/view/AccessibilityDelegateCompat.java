package android.support.v4.view;

import android.os.Build.VERSION;
import android.os.Bundle;
import android.support.annotation.RequiresApi;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.support.v4.view.accessibility.AccessibilityNodeProviderCompat;
import android.view.View;
import android.view.View.AccessibilityDelegate;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.accessibility.AccessibilityNodeProvider;

public class AccessibilityDelegateCompat
{
  private static final View.AccessibilityDelegate a = new View.AccessibilityDelegate();
  private final View.AccessibilityDelegate b = new a(this);
  
  public AccessibilityDelegateCompat() {}
  
  View.AccessibilityDelegate a()
  {
    return b;
  }
  
  public boolean dispatchPopulateAccessibilityEvent(View paramView, AccessibilityEvent paramAccessibilityEvent)
  {
    return a.dispatchPopulateAccessibilityEvent(paramView, paramAccessibilityEvent);
  }
  
  public AccessibilityNodeProviderCompat getAccessibilityNodeProvider(View paramView)
  {
    if (Build.VERSION.SDK_INT >= 16)
    {
      paramView = a.getAccessibilityNodeProvider(paramView);
      if (paramView != null) {
        return new AccessibilityNodeProviderCompat(paramView);
      }
    }
    return null;
  }
  
  public void onInitializeAccessibilityEvent(View paramView, AccessibilityEvent paramAccessibilityEvent)
  {
    a.onInitializeAccessibilityEvent(paramView, paramAccessibilityEvent);
  }
  
  public void onInitializeAccessibilityNodeInfo(View paramView, AccessibilityNodeInfoCompat paramAccessibilityNodeInfoCompat)
  {
    a.onInitializeAccessibilityNodeInfo(paramView, paramAccessibilityNodeInfoCompat.unwrap());
  }
  
  public void onPopulateAccessibilityEvent(View paramView, AccessibilityEvent paramAccessibilityEvent)
  {
    a.onPopulateAccessibilityEvent(paramView, paramAccessibilityEvent);
  }
  
  public boolean onRequestSendAccessibilityEvent(ViewGroup paramViewGroup, View paramView, AccessibilityEvent paramAccessibilityEvent)
  {
    return a.onRequestSendAccessibilityEvent(paramViewGroup, paramView, paramAccessibilityEvent);
  }
  
  public boolean performAccessibilityAction(View paramView, int paramInt, Bundle paramBundle)
  {
    if (Build.VERSION.SDK_INT >= 16) {
      return a.performAccessibilityAction(paramView, paramInt, paramBundle);
    }
    return false;
  }
  
  public void sendAccessibilityEvent(View paramView, int paramInt)
  {
    a.sendAccessibilityEvent(paramView, paramInt);
  }
  
  public void sendAccessibilityEventUnchecked(View paramView, AccessibilityEvent paramAccessibilityEvent)
  {
    a.sendAccessibilityEventUnchecked(paramView, paramAccessibilityEvent);
  }
  
  private static final class a
    extends View.AccessibilityDelegate
  {
    private final AccessibilityDelegateCompat a;
    
    a(AccessibilityDelegateCompat paramAccessibilityDelegateCompat)
    {
      a = paramAccessibilityDelegateCompat;
    }
    
    public boolean dispatchPopulateAccessibilityEvent(View paramView, AccessibilityEvent paramAccessibilityEvent)
    {
      return a.dispatchPopulateAccessibilityEvent(paramView, paramAccessibilityEvent);
    }
    
    @RequiresApi(16)
    public AccessibilityNodeProvider getAccessibilityNodeProvider(View paramView)
    {
      paramView = a.getAccessibilityNodeProvider(paramView);
      if (paramView != null) {
        return (AccessibilityNodeProvider)paramView.getProvider();
      }
      return null;
    }
    
    public void onInitializeAccessibilityEvent(View paramView, AccessibilityEvent paramAccessibilityEvent)
    {
      a.onInitializeAccessibilityEvent(paramView, paramAccessibilityEvent);
    }
    
    public void onInitializeAccessibilityNodeInfo(View paramView, AccessibilityNodeInfo paramAccessibilityNodeInfo)
    {
      a.onInitializeAccessibilityNodeInfo(paramView, AccessibilityNodeInfoCompat.wrap(paramAccessibilityNodeInfo));
    }
    
    public void onPopulateAccessibilityEvent(View paramView, AccessibilityEvent paramAccessibilityEvent)
    {
      a.onPopulateAccessibilityEvent(paramView, paramAccessibilityEvent);
    }
    
    public boolean onRequestSendAccessibilityEvent(ViewGroup paramViewGroup, View paramView, AccessibilityEvent paramAccessibilityEvent)
    {
      return a.onRequestSendAccessibilityEvent(paramViewGroup, paramView, paramAccessibilityEvent);
    }
    
    public boolean performAccessibilityAction(View paramView, int paramInt, Bundle paramBundle)
    {
      return a.performAccessibilityAction(paramView, paramInt, paramBundle);
    }
    
    public void sendAccessibilityEvent(View paramView, int paramInt)
    {
      a.sendAccessibilityEvent(paramView, paramInt);
    }
    
    public void sendAccessibilityEventUnchecked(View paramView, AccessibilityEvent paramAccessibilityEvent)
    {
      a.sendAccessibilityEventUnchecked(paramView, paramAccessibilityEvent);
    }
  }
}
