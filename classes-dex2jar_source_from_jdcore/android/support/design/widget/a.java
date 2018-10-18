package android.support.design.widget;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.graphics.PorterDuff.Mode;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import android.graphics.drawable.Drawable.Callback;
import android.graphics.drawable.GradientDrawable;
import android.os.Build.VERSION;
import android.support.annotation.NonNull;
import android.view.View;

class a
  extends GradientDrawable
{
  private final Paint a = new Paint(1);
  private final RectF b;
  private int c;
  
  a()
  {
    c();
    b = new RectF();
  }
  
  private void a(@NonNull Canvas paramCanvas)
  {
    Drawable.Callback localCallback = getCallback();
    if (a(localCallback))
    {
      ((View)localCallback).setLayerType(2, null);
      return;
    }
    b(paramCanvas);
  }
  
  private boolean a(Drawable.Callback paramCallback)
  {
    return paramCallback instanceof View;
  }
  
  private void b(@NonNull Canvas paramCanvas)
  {
    if (Build.VERSION.SDK_INT >= 21)
    {
      c = paramCanvas.saveLayer(0.0F, 0.0F, paramCanvas.getWidth(), paramCanvas.getHeight(), null);
      return;
    }
    c = paramCanvas.saveLayer(0.0F, 0.0F, paramCanvas.getWidth(), paramCanvas.getHeight(), null, 31);
  }
  
  private void c()
  {
    a.setStyle(Paint.Style.FILL_AND_STROKE);
    a.setColor(-1);
    a.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_OUT));
  }
  
  private void c(@NonNull Canvas paramCanvas)
  {
    if (!a(getCallback())) {
      paramCanvas.restoreToCount(c);
    }
  }
  
  void a(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4)
  {
    if ((paramFloat1 != b.left) || (paramFloat2 != b.top) || (paramFloat3 != b.right) || (paramFloat4 != b.bottom))
    {
      b.set(paramFloat1, paramFloat2, paramFloat3, paramFloat4);
      invalidateSelf();
    }
  }
  
  void a(RectF paramRectF)
  {
    a(left, top, right, bottom);
  }
  
  boolean a()
  {
    return b.isEmpty() ^ true;
  }
  
  void b()
  {
    a(0.0F, 0.0F, 0.0F, 0.0F);
  }
  
  public void draw(@NonNull Canvas paramCanvas)
  {
    a(paramCanvas);
    super.draw(paramCanvas);
    paramCanvas.drawRect(b, a);
    c(paramCanvas);
  }
}
