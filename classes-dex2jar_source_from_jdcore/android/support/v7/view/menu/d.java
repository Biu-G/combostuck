package android.support.v7.view.menu;

import android.content.Context;
import android.support.annotation.RequiresApi;
import android.support.annotation.RestrictTo;
import android.support.v4.internal.view.SupportMenuItem;
import android.view.ActionProvider;
import android.view.MenuItem;
import android.view.View;

@RequiresApi(16)
@RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
class d
  extends MenuItemWrapperICS
{
  d(Context paramContext, SupportMenuItem paramSupportMenuItem)
  {
    super(paramContext, paramSupportMenuItem);
  }
  
  MenuItemWrapperICS.a a(ActionProvider paramActionProvider)
  {
    return new a(a, paramActionProvider);
  }
  
  class a
    extends MenuItemWrapperICS.a
    implements android.view.ActionProvider.VisibilityListener
  {
    android.support.v4.view.ActionProvider.VisibilityListener c;
    
    public a(Context paramContext, ActionProvider paramActionProvider)
    {
      super(paramContext, paramActionProvider);
    }
    
    public boolean isVisible()
    {
      return a.isVisible();
    }
    
    public void onActionProviderVisibilityChanged(boolean paramBoolean)
    {
      if (c != null) {
        c.onActionProviderVisibilityChanged(paramBoolean);
      }
    }
    
    public View onCreateActionView(MenuItem paramMenuItem)
    {
      return a.onCreateActionView(paramMenuItem);
    }
    
    public boolean overridesItemVisibility()
    {
      return a.overridesItemVisibility();
    }
    
    public void refreshVisibility()
    {
      a.refreshVisibility();
    }
    
    public void setVisibilityListener(android.support.v4.view.ActionProvider.VisibilityListener paramVisibilityListener)
    {
      c = paramVisibilityListener;
      ActionProvider localActionProvider = a;
      if (paramVisibilityListener != null) {
        paramVisibilityListener = this;
      } else {
        paramVisibilityListener = null;
      }
      localActionProvider.setVisibilityListener(paramVisibilityListener);
    }
  }
}
