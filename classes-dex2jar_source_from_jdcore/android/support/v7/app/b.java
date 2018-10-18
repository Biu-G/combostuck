package android.support.v7.app;

import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemSelectedListener;

class b
  implements AdapterView.OnItemSelectedListener
{
  private final ActionBar.OnNavigationListener a;
  
  public b(ActionBar.OnNavigationListener paramOnNavigationListener)
  {
    a = paramOnNavigationListener;
  }
  
  public void onItemSelected(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    if (a != null) {
      a.onNavigationItemSelected(paramInt, paramLong);
    }
  }
  
  public void onNothingSelected(AdapterView<?> paramAdapterView) {}
}
