package android.support.transition;

import android.support.annotation.NonNull;
import android.support.annotation.RequiresApi;
import android.view.View;
import android.view.WindowId;

@RequiresApi(18)
class ag
  implements ah
{
  private final WindowId a;
  
  ag(@NonNull View paramView)
  {
    a = paramView.getWindowId();
  }
  
  public boolean equals(Object paramObject)
  {
    return ((paramObject instanceof ag)) && (a.equals(a));
  }
  
  public int hashCode()
  {
    return a.hashCode();
  }
}
