package android.support.v7.widget;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.res.Resources.Theme;
import android.os.Build.VERSION;
import android.support.v4.view.ActionProvider;
import android.support.v7.appcompat.R.attr;
import android.support.v7.appcompat.R.string;
import android.support.v7.content.res.AppCompatResources;
import android.util.TypedValue;
import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import android.view.SubMenu;
import android.view.View;

public class ShareActionProvider
  extends ActionProvider
{
  public static final String DEFAULT_SHARE_HISTORY_FILE_NAME = "share_history.xml";
  final Context a;
  String b = "share_history.xml";
  OnShareTargetSelectedListener c;
  private int d = 4;
  private final b e = new b();
  private ActivityChooserModel.OnChooseActivityListener f;
  
  public ShareActionProvider(Context paramContext)
  {
    super(paramContext);
    a = paramContext;
  }
  
  private void a()
  {
    if (c == null) {
      return;
    }
    if (f == null) {
      f = new a();
    }
    ActivityChooserModel.a(a, b).a(f);
  }
  
  void a(Intent paramIntent)
  {
    if (Build.VERSION.SDK_INT >= 21)
    {
      paramIntent.addFlags(134742016);
      return;
    }
    paramIntent.addFlags(524288);
  }
  
  public boolean hasSubMenu()
  {
    return true;
  }
  
  public View onCreateActionView()
  {
    ActivityChooserView localActivityChooserView = new ActivityChooserView(a);
    if (!localActivityChooserView.isInEditMode()) {
      localActivityChooserView.setActivityChooserModel(ActivityChooserModel.a(a, b));
    }
    TypedValue localTypedValue = new TypedValue();
    a.getTheme().resolveAttribute(R.attr.actionModeShareDrawable, localTypedValue, true);
    localActivityChooserView.setExpandActivityOverflowButtonDrawable(AppCompatResources.getDrawable(a, resourceId));
    localActivityChooserView.setProvider(this);
    localActivityChooserView.setDefaultActionButtonContentDescription(R.string.abc_shareactionprovider_share_with_application);
    localActivityChooserView.setExpandActivityOverflowButtonContentDescription(R.string.abc_shareactionprovider_share_with);
    return localActivityChooserView;
  }
  
  public void onPrepareSubMenu(SubMenu paramSubMenu)
  {
    paramSubMenu.clear();
    ActivityChooserModel localActivityChooserModel = ActivityChooserModel.a(a, b);
    PackageManager localPackageManager = a.getPackageManager();
    int j = localActivityChooserModel.a();
    int k = Math.min(j, d);
    int i = 0;
    ResolveInfo localResolveInfo;
    while (i < k)
    {
      localResolveInfo = localActivityChooserModel.a(i);
      paramSubMenu.add(0, i, i, localResolveInfo.loadLabel(localPackageManager)).setIcon(localResolveInfo.loadIcon(localPackageManager)).setOnMenuItemClickListener(e);
      i += 1;
    }
    if (k < j)
    {
      paramSubMenu = paramSubMenu.addSubMenu(0, k, k, a.getString(R.string.abc_activity_chooser_view_see_all));
      i = 0;
      while (i < j)
      {
        localResolveInfo = localActivityChooserModel.a(i);
        paramSubMenu.add(0, i, i, localResolveInfo.loadLabel(localPackageManager)).setIcon(localResolveInfo.loadIcon(localPackageManager)).setOnMenuItemClickListener(e);
        i += 1;
      }
    }
  }
  
  public void setOnShareTargetSelectedListener(OnShareTargetSelectedListener paramOnShareTargetSelectedListener)
  {
    c = paramOnShareTargetSelectedListener;
    a();
  }
  
  public void setShareHistoryFileName(String paramString)
  {
    b = paramString;
    a();
  }
  
  public void setShareIntent(Intent paramIntent)
  {
    if (paramIntent != null)
    {
      String str = paramIntent.getAction();
      if (("android.intent.action.SEND".equals(str)) || ("android.intent.action.SEND_MULTIPLE".equals(str))) {
        a(paramIntent);
      }
    }
    ActivityChooserModel.a(a, b).a(paramIntent);
  }
  
  public static abstract interface OnShareTargetSelectedListener
  {
    public abstract boolean onShareTargetSelected(ShareActionProvider paramShareActionProvider, Intent paramIntent);
  }
  
  private class a
    implements ActivityChooserModel.OnChooseActivityListener
  {
    a() {}
    
    public boolean onChooseActivity(ActivityChooserModel paramActivityChooserModel, Intent paramIntent)
    {
      if (c != null) {
        c.onShareTargetSelected(ShareActionProvider.this, paramIntent);
      }
      return false;
    }
  }
  
  private class b
    implements MenuItem.OnMenuItemClickListener
  {
    b() {}
    
    public boolean onMenuItemClick(MenuItem paramMenuItem)
    {
      paramMenuItem = ActivityChooserModel.a(a, b).b(paramMenuItem.getItemId());
      if (paramMenuItem != null)
      {
        String str = paramMenuItem.getAction();
        if (("android.intent.action.SEND".equals(str)) || ("android.intent.action.SEND_MULTIPLE".equals(str))) {
          a(paramMenuItem);
        }
        a.startActivity(paramMenuItem);
      }
      return true;
    }
  }
}
