package android.support.transition;

import android.graphics.drawable.Drawable;
import android.support.annotation.NonNull;
import android.support.annotation.RequiresApi;
import android.view.View;
import android.view.ViewOverlay;

@RequiresApi(18)
class y
  implements z
{
  private final ViewOverlay a;
  
  y(@NonNull View paramView)
  {
    a = paramView.getOverlay();
  }
  
  public void a(@NonNull Drawable paramDrawable)
  {
    a.add(paramDrawable);
  }
  
  public void b(@NonNull Drawable paramDrawable)
  {
    a.remove(paramDrawable);
  }
}
