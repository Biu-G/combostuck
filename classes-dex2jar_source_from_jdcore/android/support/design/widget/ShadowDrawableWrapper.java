package android.support.design.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.graphics.Path;
import android.graphics.Path.FillType;
import android.graphics.RadialGradient;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader.TileMode;
import android.graphics.drawable.Drawable;
import android.support.design.R.color;
import android.support.v4.content.ContextCompat;
import android.support.v7.graphics.drawable.DrawableWrapper;

public class ShadowDrawableWrapper
  extends DrawableWrapper
{
  static final double a = Math.cos(Math.toRadians(45.0D));
  final Paint b;
  final Paint c;
  final RectF d;
  float e;
  Path f;
  float g;
  float h;
  float i;
  float j;
  private boolean k = true;
  private final int l;
  private final int m;
  private final int n;
  private boolean o = true;
  private float p;
  private boolean q = false;
  
  public ShadowDrawableWrapper(Context paramContext, Drawable paramDrawable, float paramFloat1, float paramFloat2, float paramFloat3)
  {
    super(paramDrawable);
    l = ContextCompat.getColor(paramContext, R.color.design_fab_shadow_start_color);
    m = ContextCompat.getColor(paramContext, R.color.design_fab_shadow_mid_color);
    n = ContextCompat.getColor(paramContext, R.color.design_fab_shadow_end_color);
    b = new Paint(5);
    b.setStyle(Paint.Style.FILL);
    e = Math.round(paramFloat1);
    d = new RectF();
    c = new Paint(b);
    c.setAntiAlias(false);
    setShadowSize(paramFloat2, paramFloat3);
  }
  
  private static int a(float paramFloat)
  {
    int i2 = Math.round(paramFloat);
    int i1 = i2;
    if (i2 % 2 == 1) {
      i1 = i2 - 1;
    }
    return i1;
  }
  
  private void a()
  {
    Object localObject = new RectF(-e, -e, e, e);
    RectF localRectF = new RectF((RectF)localObject);
    localRectF.inset(-i, -i);
    if (f == null) {
      f = new Path();
    } else {
      f.reset();
    }
    f.setFillType(Path.FillType.EVEN_ODD);
    f.moveTo(-e, 0.0F);
    f.rLineTo(-i, 0.0F);
    f.arcTo(localRectF, 180.0F, 90.0F, false);
    f.arcTo((RectF)localObject, 270.0F, -90.0F, false);
    f.close();
    float f1 = -top;
    if (f1 > 0.0F)
    {
      f2 = e / f1;
      float f3 = (1.0F - f2) / 2.0F;
      localPaint = b;
      i1 = l;
      i2 = m;
      i3 = n;
      Shader.TileMode localTileMode = Shader.TileMode.CLAMP;
      localPaint.setShader(new RadialGradient(0.0F, 0.0F, f1, new int[] { 0, i1, i2, i3 }, new float[] { 0.0F, f2, f3 + f2, 1.0F }, localTileMode));
    }
    Paint localPaint = c;
    f1 = top;
    float f2 = top;
    int i1 = l;
    int i2 = m;
    int i3 = n;
    localObject = Shader.TileMode.CLAMP;
    localPaint.setShader(new LinearGradient(0.0F, f1, 0.0F, f2, new int[] { i1, i2, i3 }, new float[] { 0.0F, 0.5F, 1.0F }, (Shader.TileMode)localObject));
    c.setAntiAlias(false);
  }
  
  private void a(Canvas paramCanvas)
  {
    int i3 = paramCanvas.save();
    paramCanvas.rotate(p, d.centerX(), d.centerY());
    float f3 = -e - i;
    float f4 = e;
    float f1 = d.width();
    float f5 = f4 * 2.0F;
    if (f1 - f5 > 0.0F) {
      i1 = 1;
    } else {
      i1 = 0;
    }
    int i2;
    if (d.height() - f5 > 0.0F) {
      i2 = 1;
    } else {
      i2 = 0;
    }
    float f2 = j;
    float f8 = j;
    float f6 = j;
    float f9 = j;
    f1 = j;
    float f7 = j;
    f6 = f4 / (f6 - f9 * 0.5F + f4);
    f2 = f4 / (f2 - f8 * 0.25F + f4);
    f1 = f4 / (f1 - f7 * 1.0F + f4);
    int i4 = paramCanvas.save();
    paramCanvas.translate(d.left + f4, d.top + f4);
    paramCanvas.scale(f6, f2);
    paramCanvas.drawPath(f, b);
    if (i1 != 0)
    {
      paramCanvas.scale(1.0F / f6, 1.0F);
      paramCanvas.drawRect(0.0F, f3, d.width() - f5, -e, c);
    }
    paramCanvas.restoreToCount(i4);
    i4 = paramCanvas.save();
    paramCanvas.translate(d.right - f4, d.bottom - f4);
    paramCanvas.scale(f6, f1);
    paramCanvas.rotate(180.0F);
    paramCanvas.drawPath(f, b);
    if (i1 != 0)
    {
      paramCanvas.scale(1.0F / f6, 1.0F);
      paramCanvas.drawRect(0.0F, f3, d.width() - f5, -e + i, c);
    }
    paramCanvas.restoreToCount(i4);
    int i1 = paramCanvas.save();
    paramCanvas.translate(d.left + f4, d.bottom - f4);
    paramCanvas.scale(f6, f1);
    paramCanvas.rotate(270.0F);
    paramCanvas.drawPath(f, b);
    if (i2 != 0)
    {
      paramCanvas.scale(1.0F / f1, 1.0F);
      paramCanvas.drawRect(0.0F, f3, d.height() - f5, -e, c);
    }
    paramCanvas.restoreToCount(i1);
    i1 = paramCanvas.save();
    paramCanvas.translate(d.right - f4, d.top + f4);
    paramCanvas.scale(f6, f2);
    paramCanvas.rotate(90.0F);
    paramCanvas.drawPath(f, b);
    if (i2 != 0)
    {
      paramCanvas.scale(1.0F / f2, 1.0F);
      paramCanvas.drawRect(0.0F, f3, d.height() - f5, -e, c);
    }
    paramCanvas.restoreToCount(i1);
    paramCanvas.restoreToCount(i3);
  }
  
  private void a(Rect paramRect)
  {
    float f1 = h * 1.5F;
    d.set(left + h, top + f1, right - h, bottom - f1);
    getWrappedDrawable().setBounds((int)d.left, (int)d.top, (int)d.right, (int)d.bottom);
    a();
  }
  
  public static float calculateHorizontalPadding(float paramFloat1, float paramFloat2, boolean paramBoolean)
  {
    if (paramBoolean) {
      return (float)(paramFloat1 + (1.0D - a) * paramFloat2);
    }
    return paramFloat1;
  }
  
  public static float calculateVerticalPadding(float paramFloat1, float paramFloat2, boolean paramBoolean)
  {
    if (paramBoolean) {
      return (float)(paramFloat1 * 1.5F + (1.0D - a) * paramFloat2);
    }
    return paramFloat1 * 1.5F;
  }
  
  public void draw(Canvas paramCanvas)
  {
    if (k)
    {
      a(getBounds());
      k = false;
    }
    a(paramCanvas);
    super.draw(paramCanvas);
  }
  
  public float getCornerRadius()
  {
    return e;
  }
  
  public float getMaxShadowSize()
  {
    return h;
  }
  
  public float getMinHeight()
  {
    return Math.max(h, e + h * 1.5F / 2.0F) * 2.0F + h * 1.5F * 2.0F;
  }
  
  public float getMinWidth()
  {
    return Math.max(h, e + h / 2.0F) * 2.0F + h * 2.0F;
  }
  
  public int getOpacity()
  {
    return -3;
  }
  
  public boolean getPadding(Rect paramRect)
  {
    int i1 = (int)Math.ceil(calculateVerticalPadding(h, e, o));
    int i2 = (int)Math.ceil(calculateHorizontalPadding(h, e, o));
    paramRect.set(i2, i1, i2, i1);
    return true;
  }
  
  public float getShadowSize()
  {
    return j;
  }
  
  protected void onBoundsChange(Rect paramRect)
  {
    k = true;
  }
  
  public void setAddPaddingForCorners(boolean paramBoolean)
  {
    o = paramBoolean;
    invalidateSelf();
  }
  
  public void setAlpha(int paramInt)
  {
    super.setAlpha(paramInt);
    b.setAlpha(paramInt);
    c.setAlpha(paramInt);
  }
  
  public void setCornerRadius(float paramFloat)
  {
    paramFloat = Math.round(paramFloat);
    if (e == paramFloat) {
      return;
    }
    e = paramFloat;
    k = true;
    invalidateSelf();
  }
  
  public void setMaxShadowSize(float paramFloat)
  {
    setShadowSize(j, paramFloat);
  }
  
  public final void setRotation(float paramFloat)
  {
    if (p != paramFloat)
    {
      p = paramFloat;
      invalidateSelf();
    }
  }
  
  public void setShadowSize(float paramFloat)
  {
    setShadowSize(paramFloat, h);
  }
  
  public void setShadowSize(float paramFloat1, float paramFloat2)
  {
    if ((paramFloat1 >= 0.0F) && (paramFloat2 >= 0.0F))
    {
      float f1 = a(paramFloat1);
      paramFloat2 = a(paramFloat2);
      paramFloat1 = f1;
      if (f1 > paramFloat2)
      {
        if (!q) {
          q = true;
        }
        paramFloat1 = paramFloat2;
      }
      if ((j == paramFloat1) && (h == paramFloat2)) {
        return;
      }
      j = paramFloat1;
      h = paramFloat2;
      i = Math.round(paramFloat1 * 1.5F);
      g = paramFloat2;
      k = true;
      invalidateSelf();
      return;
    }
    throw new IllegalArgumentException("invalid shadow size");
  }
}
