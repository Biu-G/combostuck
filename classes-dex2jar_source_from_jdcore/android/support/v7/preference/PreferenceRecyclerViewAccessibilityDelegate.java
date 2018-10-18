package android.support.v7.preference;

import android.os.Bundle;
import android.support.annotation.RestrictTo;
import android.support.v4.view.AccessibilityDelegateCompat;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.RecyclerViewAccessibilityDelegate;
import android.view.View;

@RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
public class PreferenceRecyclerViewAccessibilityDelegate
  extends RecyclerViewAccessibilityDelegate
{
  final RecyclerView a;
  final AccessibilityDelegateCompat b = super.getItemDelegate();
  final AccessibilityDelegateCompat c = new AccessibilityDelegateCompat()
  {
    public void onInitializeAccessibilityNodeInfo(View paramAnonymousView, AccessibilityNodeInfoCompat paramAnonymousAccessibilityNodeInfoCompat)
    {
      b.onInitializeAccessibilityNodeInfo(paramAnonymousView, paramAnonymousAccessibilityNodeInfoCompat);
      int i = a.getChildAdapterPosition(paramAnonymousView);
      paramAnonymousView = a.getAdapter();
      if (!(paramAnonymousView instanceof PreferenceGroupAdapter)) {
        return;
      }
      paramAnonymousView = ((PreferenceGroupAdapter)paramAnonymousView).getItem(i);
      if (paramAnonymousView == null) {
        return;
      }
      paramAnonymousView.onInitializeAccessibilityNodeInfo(paramAnonymousAccessibilityNodeInfoCompat);
    }
    
    public boolean performAccessibilityAction(View paramAnonymousView, int paramAnonymousInt, Bundle paramAnonymousBundle)
    {
      return b.performAccessibilityAction(paramAnonymousView, paramAnonymousInt, paramAnonymousBundle);
    }
  };
  
  public PreferenceRecyclerViewAccessibilityDelegate(RecyclerView paramRecyclerView)
  {
    super(paramRecyclerView);
    a = paramRecyclerView;
  }
  
  public AccessibilityDelegateCompat getItemDelegate()
  {
    return c;
  }
}
