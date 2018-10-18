package android.support.v7.widget;

import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.PorterDuff.Mode;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.support.annotation.Nullable;
import android.support.annotation.RequiresApi;

@RequiresApi(21)
class x
  extends Drawable
{
  private float a;
  private final Paint b;
  private final RectF c;
  private final Rect d;
  private float e;
  private boolean f = false;
  private boolean g = true;
  private ColorStateList h;
  private PorterDuffColorFilter i;
  private ColorStateList j;
  private PorterDuff.Mode k = PorterDuff.Mode.SRC_IN;
  
  x(ColorStateList paramColorStateList, float paramFloat)
  {
    a = paramFloat;
    b = new Paint(5);
    b(paramColorStateList);
    c = new RectF();
    d = new Rect();
  }
  
  private PorterDuffColorFilter a(ColorStateList paramColorStateList, PorterDuff.Mode paramMode)
  {
    if ((paramColorStateList != null) && (paramMode != null)) {
      return new PorterDuffColorFilter(paramColorStateList.getColorForState(getState(), 0), paramMode);
    }
    return null;
  }
  
  private void a(Rect paramRect)
  {
    Rect localRect = paramRect;
    if (paramRect == null) {
      localRect = getBounds();
    }
    c.set(left, top, right, bottom);
    d.set(localRect);
    if (f)
    {
      float f1 = y.a(e, a, g);
      float f2 = y.b(e, a, g);
      d.inset((int)Math.ceil(f2), (int)Math.ceil(f1));
      c.set(d);
    }
  }
  
  private void b(ColorStateList paramColorStateList)
  {
    ColorStateList localColorStateList = paramColorStateList;
    if (paramColorStateList == null) {
      localColorStateList = ColorStateList.valueOf(0);
    }
    h = localColorStateList;
    b.setColor(h.getColorForState(getState(), h.getDefaultColor()));
  }
  
  float a()
  {
    return e;
  }
  
  void a(float paramFloat)
  {
    if (paramFloat == a) {
      return;
    }
    a = paramFloat;
    a(null);
    invalidateSelf();
  }
  
  void a(float paramFloat, boolean paramBoolean1, boolean paramBoolean2)
  {
    if ((paramFloat == e) && (f == paramBoolean1) && (g == paramBoolean2)) {
      return;
    }
    e = paramFloat;
    f = paramBoolean1;
    g = paramBoolean2;
    a(null);
    invalidateSelf();
  }
  
  public void a(@Nullable ColorStateList paramColorStateList)
  {
    b(paramColorStateList);
    invalidateSelf();
  }
  
  public float b()
  {
    return a;
  }
  
  public ColorStateList c()
  {
    return h;
  }
  
  public void draw(Canvas paramCanvas)
  {
    Paint localPaint = b;
    int m;
    if ((i != null) && (localPaint.getColorFilter() == null))
    {
      localPaint.setColorFilter(i);
      m = 1;
    }
    else
    {
      m = 0;
    }
    paramCanvas.drawRoundRect(c, a, a, localPaint);
    if (m != 0) {
      localPaint.setColorFilter(null);
    }
  }
  
  public int getOpacity()
  {
    return -3;
  }
  
  public void getOutline(Outline paramOutline)
  {
    paramOutline.setRoundRect(d, a);
  }
  
  public boolean isStateful()
  {
    return ((j != null) && (j.isStateful())) || ((h != null) && (h.isStateful())) || (super.isStateful());
  }
  
  protected void onBoundsChange(Rect paramRect)
  {
    super.onBoundsChange(paramRect);
    a(paramRect);
  }
  
  protected boolean onStateChange(int[] paramArrayOfInt)
  {
    int m = h.getColorForState(paramArrayOfInt, h.getDefaultColor());
    boolean bool;
    if (m != b.getColor()) {
      bool = true;
    } else {
      bool = false;
    }
    if (bool) {
      b.setColor(m);
    }
    if ((j != null) && (k != null))
    {
      i = a(j, k);
      return true;
    }
    return bool;
  }
  
  public void setAlpha(int paramInt)
  {
    b.setAlpha(paramInt);
  }
  
  public void setColorFilter(ColorFilter paramColorFilter)
  {
    b.setColorFilter(paramColorFilter);
  }
  
  public void setTintList(ColorStateList paramColorStateList)
  {
    j = paramColorStateList;
    i = a(j, k);
    invalidateSelf();
  }
  
  public void setTintMode(PorterDuff.Mode paramMode)
  {
    k = paramMode;
    i = a(j, k);
    invalidateSelf();
  }
}
