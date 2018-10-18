package android.support.transition;

import android.graphics.Matrix;
import android.os.Build.VERSION;
import android.view.View;
import android.view.ViewGroup;

class f
{
  static e a(View paramView, ViewGroup paramViewGroup, Matrix paramMatrix)
  {
    if (Build.VERSION.SDK_INT >= 21) {
      return d.a(paramView, paramViewGroup, paramMatrix);
    }
    return c.a(paramView, paramViewGroup);
  }
  
  static void a(View paramView)
  {
    if (Build.VERSION.SDK_INT >= 21)
    {
      d.a(paramView);
      return;
    }
    c.a(paramView);
  }
}
