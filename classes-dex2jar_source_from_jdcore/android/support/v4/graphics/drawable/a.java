package android.support.v4.graphics.drawable;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Outline;
import android.graphics.Rect;
import android.support.annotation.RequiresApi;
import android.view.Gravity;

@RequiresApi(21)
class a
  extends RoundedBitmapDrawable
{
  protected a(Resources paramResources, Bitmap paramBitmap)
  {
    super(paramResources, paramBitmap);
  }
  
  void a(int paramInt1, int paramInt2, int paramInt3, Rect paramRect1, Rect paramRect2)
  {
    Gravity.apply(paramInt1, paramInt2, paramInt3, paramRect1, paramRect2, 0);
  }
  
  public void getOutline(Outline paramOutline)
  {
    a();
    paramOutline.setRoundRect(b, getCornerRadius());
  }
  
  public boolean hasMipMap()
  {
    return (a != null) && (a.hasMipMap());
  }
  
  public void setMipMap(boolean paramBoolean)
  {
    if (a != null)
    {
      a.setHasMipMap(paramBoolean);
      invalidateSelf();
    }
  }
}
