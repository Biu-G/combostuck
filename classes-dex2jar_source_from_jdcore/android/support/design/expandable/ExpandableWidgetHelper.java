package android.support.design.expandable;

import android.os.Bundle;
import android.support.annotation.IdRes;
import android.support.design.widget.CoordinatorLayout;
import android.view.View;
import android.view.ViewParent;

public final class ExpandableWidgetHelper
{
  private final View a;
  private boolean b = false;
  @IdRes
  private int c = 0;
  
  public ExpandableWidgetHelper(ExpandableWidget paramExpandableWidget)
  {
    a = ((View)paramExpandableWidget);
  }
  
  private void a()
  {
    ViewParent localViewParent = a.getParent();
    if ((localViewParent instanceof CoordinatorLayout)) {
      ((CoordinatorLayout)localViewParent).dispatchDependentViewsChanged(a);
    }
  }
  
  @IdRes
  public int getExpandedComponentIdHint()
  {
    return c;
  }
  
  public boolean isExpanded()
  {
    return b;
  }
  
  public void onRestoreInstanceState(Bundle paramBundle)
  {
    b = paramBundle.getBoolean("expanded", false);
    c = paramBundle.getInt("expandedComponentIdHint", 0);
    if (b) {
      a();
    }
  }
  
  public Bundle onSaveInstanceState()
  {
    Bundle localBundle = new Bundle();
    localBundle.putBoolean("expanded", b);
    localBundle.putInt("expandedComponentIdHint", c);
    return localBundle;
  }
  
  public boolean setExpanded(boolean paramBoolean)
  {
    if (b != paramBoolean)
    {
      b = paramBoolean;
      a();
      return true;
    }
    return false;
  }
  
  public void setExpandedComponentIdHint(@IdRes int paramInt)
  {
    c = paramInt;
  }
}
