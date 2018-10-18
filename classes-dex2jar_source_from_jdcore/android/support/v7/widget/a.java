package android.support.v7.widget;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Outline;
import android.graphics.drawable.Drawable;
import android.support.annotation.NonNull;
import android.support.annotation.RequiresApi;

class a
  extends Drawable
{
  final ActionBarContainer a;
  
  public a(ActionBarContainer paramActionBarContainer)
  {
    a = paramActionBarContainer;
  }
  
  public void draw(Canvas paramCanvas)
  {
    if (a.d)
    {
      if (a.c != null) {
        a.c.draw(paramCanvas);
      }
    }
    else
    {
      if (a.a != null) {
        a.a.draw(paramCanvas);
      }
      if ((a.b != null) && (a.e)) {
        a.b.draw(paramCanvas);
      }
    }
  }
  
  public int getOpacity()
  {
    return 0;
  }
  
  @RequiresApi(21)
  public void getOutline(@NonNull Outline paramOutline)
  {
    if (a.d)
    {
      if (a.c != null) {
        a.c.getOutline(paramOutline);
      }
    }
    else if (a.a != null) {
      a.a.getOutline(paramOutline);
    }
  }
  
  public void setAlpha(int paramInt) {}
  
  public void setColorFilter(ColorFilter paramColorFilter) {}
}
