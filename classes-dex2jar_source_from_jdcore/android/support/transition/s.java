package android.support.transition;

import android.graphics.drawable.Drawable;
import android.support.annotation.NonNull;
import android.support.annotation.RequiresApi;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroupOverlay;

@RequiresApi(18)
class s
  implements t
{
  private final ViewGroupOverlay a;
  
  s(@NonNull ViewGroup paramViewGroup)
  {
    a = paramViewGroup.getOverlay();
  }
  
  public void a(@NonNull Drawable paramDrawable)
  {
    a.add(paramDrawable);
  }
  
  public void a(@NonNull View paramView)
  {
    a.add(paramView);
  }
  
  public void b(@NonNull Drawable paramDrawable)
  {
    a.remove(paramDrawable);
  }
  
  public void b(@NonNull View paramView)
  {
    a.remove(paramView);
  }
}
