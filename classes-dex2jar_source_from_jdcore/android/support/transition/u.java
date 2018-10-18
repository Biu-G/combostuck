package android.support.transition;

import android.os.Build.VERSION;
import android.support.annotation.NonNull;
import android.view.ViewGroup;

class u
{
  static t a(@NonNull ViewGroup paramViewGroup)
  {
    if (Build.VERSION.SDK_INT >= 18) {
      return new s(paramViewGroup);
    }
    return q.a(paramViewGroup);
  }
  
  static void a(@NonNull ViewGroup paramViewGroup, boolean paramBoolean)
  {
    if (Build.VERSION.SDK_INT >= 18)
    {
      w.a(paramViewGroup, paramBoolean);
      return;
    }
    v.a(paramViewGroup, paramBoolean);
  }
}
