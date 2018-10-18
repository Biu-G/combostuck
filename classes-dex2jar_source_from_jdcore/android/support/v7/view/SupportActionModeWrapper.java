package android.support.v7.view;

import android.content.Context;
import android.support.annotation.RestrictTo;
import android.support.v4.internal.view.SupportMenu;
import android.support.v4.internal.view.SupportMenuItem;
import android.support.v4.util.SimpleArrayMap;
import android.support.v7.view.menu.MenuWrapperFactory;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import java.util.ArrayList;

@RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
public class SupportActionModeWrapper
  extends android.view.ActionMode
{
  final Context a;
  final ActionMode b;
  
  public SupportActionModeWrapper(Context paramContext, ActionMode paramActionMode)
  {
    a = paramContext;
    b = paramActionMode;
  }
  
  public void finish()
  {
    b.finish();
  }
  
  public View getCustomView()
  {
    return b.getCustomView();
  }
  
  public Menu getMenu()
  {
    return MenuWrapperFactory.wrapSupportMenu(a, (SupportMenu)b.getMenu());
  }
  
  public MenuInflater getMenuInflater()
  {
    return b.getMenuInflater();
  }
  
  public CharSequence getSubtitle()
  {
    return b.getSubtitle();
  }
  
  public Object getTag()
  {
    return b.getTag();
  }
  
  public CharSequence getTitle()
  {
    return b.getTitle();
  }
  
  public boolean getTitleOptionalHint()
  {
    return b.getTitleOptionalHint();
  }
  
  public void invalidate()
  {
    b.invalidate();
  }
  
  public boolean isTitleOptional()
  {
    return b.isTitleOptional();
  }
  
  public void setCustomView(View paramView)
  {
    b.setCustomView(paramView);
  }
  
  public void setSubtitle(int paramInt)
  {
    b.setSubtitle(paramInt);
  }
  
  public void setSubtitle(CharSequence paramCharSequence)
  {
    b.setSubtitle(paramCharSequence);
  }
  
  public void setTag(Object paramObject)
  {
    b.setTag(paramObject);
  }
  
  public void setTitle(int paramInt)
  {
    b.setTitle(paramInt);
  }
  
  public void setTitle(CharSequence paramCharSequence)
  {
    b.setTitle(paramCharSequence);
  }
  
  public void setTitleOptionalHint(boolean paramBoolean)
  {
    b.setTitleOptionalHint(paramBoolean);
  }
  
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
  public static class CallbackWrapper
    implements ActionMode.Callback
  {
    final android.view.ActionMode.Callback a;
    final Context b;
    final ArrayList<SupportActionModeWrapper> c;
    final SimpleArrayMap<Menu, Menu> d;
    
    public CallbackWrapper(Context paramContext, android.view.ActionMode.Callback paramCallback)
    {
      b = paramContext;
      a = paramCallback;
      c = new ArrayList();
      d = new SimpleArrayMap();
    }
    
    private Menu a(Menu paramMenu)
    {
      Menu localMenu2 = (Menu)d.get(paramMenu);
      Menu localMenu1 = localMenu2;
      if (localMenu2 == null)
      {
        localMenu1 = MenuWrapperFactory.wrapSupportMenu(b, (SupportMenu)paramMenu);
        d.put(paramMenu, localMenu1);
      }
      return localMenu1;
    }
    
    public android.view.ActionMode getActionModeWrapper(ActionMode paramActionMode)
    {
      int j = c.size();
      int i = 0;
      while (i < j)
      {
        SupportActionModeWrapper localSupportActionModeWrapper = (SupportActionModeWrapper)c.get(i);
        if ((localSupportActionModeWrapper != null) && (b == paramActionMode)) {
          return localSupportActionModeWrapper;
        }
        i += 1;
      }
      paramActionMode = new SupportActionModeWrapper(b, paramActionMode);
      c.add(paramActionMode);
      return paramActionMode;
    }
    
    public boolean onActionItemClicked(ActionMode paramActionMode, MenuItem paramMenuItem)
    {
      return a.onActionItemClicked(getActionModeWrapper(paramActionMode), MenuWrapperFactory.wrapSupportMenuItem(b, (SupportMenuItem)paramMenuItem));
    }
    
    public boolean onCreateActionMode(ActionMode paramActionMode, Menu paramMenu)
    {
      return a.onCreateActionMode(getActionModeWrapper(paramActionMode), a(paramMenu));
    }
    
    public void onDestroyActionMode(ActionMode paramActionMode)
    {
      a.onDestroyActionMode(getActionModeWrapper(paramActionMode));
    }
    
    public boolean onPrepareActionMode(ActionMode paramActionMode, Menu paramMenu)
    {
      return a.onPrepareActionMode(getActionModeWrapper(paramActionMode), a(paramMenu));
    }
  }
}
