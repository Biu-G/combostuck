package android.support.v7.widget;

import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.v4.view.AccessibilityDelegateCompat;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;

public class RecyclerViewAccessibilityDelegate
  extends AccessibilityDelegateCompat
{
  final RecyclerView d;
  final AccessibilityDelegateCompat e;
  
  public RecyclerViewAccessibilityDelegate(@NonNull RecyclerView paramRecyclerView)
  {
    d = paramRecyclerView;
    e = new ItemDelegate(this);
  }
  
  boolean b()
  {
    return d.hasPendingAdapterUpdates();
  }
  
  @NonNull
  public AccessibilityDelegateCompat getItemDelegate()
  {
    return e;
  }
  
  public void onInitializeAccessibilityEvent(View paramView, AccessibilityEvent paramAccessibilityEvent)
  {
    super.onInitializeAccessibilityEvent(paramView, paramAccessibilityEvent);
    paramAccessibilityEvent.setClassName(RecyclerView.class.getName());
    if (((paramView instanceof RecyclerView)) && (!b()))
    {
      paramView = (RecyclerView)paramView;
      if (paramView.getLayoutManager() != null) {
        paramView.getLayoutManager().onInitializeAccessibilityEvent(paramAccessibilityEvent);
      }
    }
  }
  
  public void onInitializeAccessibilityNodeInfo(View paramView, AccessibilityNodeInfoCompat paramAccessibilityNodeInfoCompat)
  {
    super.onInitializeAccessibilityNodeInfo(paramView, paramAccessibilityNodeInfoCompat);
    paramAccessibilityNodeInfoCompat.setClassName(RecyclerView.class.getName());
    if ((!b()) && (d.getLayoutManager() != null)) {
      d.getLayoutManager().a(paramAccessibilityNodeInfoCompat);
    }
  }
  
  public boolean performAccessibilityAction(View paramView, int paramInt, Bundle paramBundle)
  {
    if (super.performAccessibilityAction(paramView, paramInt, paramBundle)) {
      return true;
    }
    if ((!b()) && (d.getLayoutManager() != null)) {
      return d.getLayoutManager().a(paramInt, paramBundle);
    }
    return false;
  }
  
  public static class ItemDelegate
    extends AccessibilityDelegateCompat
  {
    final RecyclerViewAccessibilityDelegate a;
    
    public ItemDelegate(@NonNull RecyclerViewAccessibilityDelegate paramRecyclerViewAccessibilityDelegate)
    {
      a = paramRecyclerViewAccessibilityDelegate;
    }
    
    public void onInitializeAccessibilityNodeInfo(View paramView, AccessibilityNodeInfoCompat paramAccessibilityNodeInfoCompat)
    {
      super.onInitializeAccessibilityNodeInfo(paramView, paramAccessibilityNodeInfoCompat);
      if ((!a.b()) && (a.d.getLayoutManager() != null)) {
        a.d.getLayoutManager().a(paramView, paramAccessibilityNodeInfoCompat);
      }
    }
    
    public boolean performAccessibilityAction(View paramView, int paramInt, Bundle paramBundle)
    {
      if (super.performAccessibilityAction(paramView, paramInt, paramBundle)) {
        return true;
      }
      if ((!a.b()) && (a.d.getLayoutManager() != null)) {
        return a.d.getLayoutManager().a(paramView, paramInt, paramBundle);
      }
      return false;
    }
  }
}
