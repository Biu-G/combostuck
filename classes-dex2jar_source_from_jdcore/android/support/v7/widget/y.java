package android.support.v7.widget;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
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
import android.support.annotation.Nullable;
import android.support.v7.cardview.R.color;
import android.support.v7.cardview.R.dimen;

class y
  extends Drawable
{
  static a a;
  private static final double b = Math.cos(Math.toRadians(45.0D));
  private final int c;
  private Paint d;
  private Paint e;
  private Paint f;
  private final RectF g;
  private float h;
  private Path i;
  private float j;
  private float k;
  private float l;
  private ColorStateList m;
  private boolean n = true;
  private final int o;
  private final int p;
  private boolean q = true;
  private boolean r = false;
  
  y(Resources paramResources, ColorStateList paramColorStateList, float paramFloat1, float paramFloat2, float paramFloat3)
  {
    o = paramResources.getColor(R.color.cardview_shadow_start_color);
    p = paramResources.getColor(R.color.cardview_shadow_end_color);
    c = paramResources.getDimensionPixelSize(R.dimen.cardview_compat_inset_shadow);
    d = new Paint(5);
    b(paramColorStateList);
    e = new Paint(5);
    e.setStyle(Paint.Style.FILL);
    h = ((int)(paramFloat1 + 0.5F));
    g = new RectF();
    f = new Paint(e);
    f.setAntiAlias(false);
    a(paramFloat2, paramFloat3);
  }
  
  static float a(float paramFloat1, float paramFloat2, boolean paramBoolean)
  {
    if (paramBoolean) {
      return (float)(paramFloat1 * 1.5F + (1.0D - b) * paramFloat2);
    }
    return paramFloat1 * 1.5F;
  }
  
  private void a(float paramFloat1, float paramFloat2)
  {
    if (paramFloat1 >= 0.0F)
    {
      if (paramFloat2 >= 0.0F)
      {
        float f1 = d(paramFloat1);
        paramFloat2 = d(paramFloat2);
        paramFloat1 = f1;
        if (f1 > paramFloat2)
        {
          if (!r) {
            r = true;
          }
          paramFloat1 = paramFloat2;
        }
        if ((l == paramFloat1) && (j == paramFloat2)) {
          return;
        }
        l = paramFloat1;
        j = paramFloat2;
        k = ((int)(paramFloat1 * 1.5F + c + 0.5F));
        n = true;
        invalidateSelf();
        return;
      }
      localStringBuilder = new StringBuilder();
      localStringBuilder.append("Invalid max shadow size ");
      localStringBuilder.append(paramFloat2);
      localStringBuilder.append(". Must be >= 0");
      throw new IllegalArgumentException(localStringBuilder.toString());
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Invalid shadow size ");
    localStringBuilder.append(paramFloat1);
    localStringBuilder.append(". Must be >= 0");
    throw new IllegalArgumentException(localStringBuilder.toString());
  }
  
  private void a(Canvas paramCanvas)
  {
    float f1 = -h - k;
    float f2 = h + c + l / 2.0F;
    float f3 = g.width();
    float f4 = f2 * 2.0F;
    if (f3 - f4 > 0.0F) {
      i1 = 1;
    } else {
      i1 = 0;
    }
    int i2;
    if (g.height() - f4 > 0.0F) {
      i2 = 1;
    } else {
      i2 = 0;
    }
    int i3 = paramCanvas.save();
    paramCanvas.translate(g.left + f2, g.top + f2);
    paramCanvas.drawPath(i, e);
    if (i1 != 0) {
      paramCanvas.drawRect(0.0F, f1, g.width() - f4, -h, f);
    }
    paramCanvas.restoreToCount(i3);
    i3 = paramCanvas.save();
    paramCanvas.translate(g.right - f2, g.bottom - f2);
    paramCanvas.rotate(180.0F);
    paramCanvas.drawPath(i, e);
    if (i1 != 0) {
      paramCanvas.drawRect(0.0F, f1, g.width() - f4, -h + k, f);
    }
    paramCanvas.restoreToCount(i3);
    int i1 = paramCanvas.save();
    paramCanvas.translate(g.left + f2, g.bottom - f2);
    paramCanvas.rotate(270.0F);
    paramCanvas.drawPath(i, e);
    if (i2 != 0) {
      paramCanvas.drawRect(0.0F, f1, g.height() - f4, -h, f);
    }
    paramCanvas.restoreToCount(i1);
    i1 = paramCanvas.save();
    paramCanvas.translate(g.right - f2, g.top + f2);
    paramCanvas.rotate(90.0F);
    paramCanvas.drawPath(i, e);
    if (i2 != 0) {
      paramCanvas.drawRect(0.0F, f1, g.height() - f4, -h, f);
    }
    paramCanvas.restoreToCount(i1);
  }
  
  static float b(float paramFloat1, float paramFloat2, boolean paramBoolean)
  {
    if (paramBoolean) {
      return (float)(paramFloat1 + (1.0D - b) * paramFloat2);
    }
    return paramFloat1;
  }
  
  private void b(ColorStateList paramColorStateList)
  {
    ColorStateList localColorStateList = paramColorStateList;
    if (paramColorStateList == null) {
      localColorStateList = ColorStateList.valueOf(0);
    }
    m = localColorStateList;
    d.setColor(m.getColorForState(getState(), m.getDefaultColor()));
  }
  
  private void b(Rect paramRect)
  {
    float f1 = j * 1.5F;
    g.set(left + j, top + f1, right - j, bottom - f1);
    g();
  }
  
  private int d(float paramFloat)
  {
    int i1 = (int)(paramFloat + 0.5F);
    if (i1 % 2 == 1) {
      return i1 - 1;
    }
    return i1;
  }
  
  private void g()
  {
    Object localObject1 = new RectF(-h, -h, h, h);
    Object localObject2 = new RectF((RectF)localObject1);
    ((RectF)localObject2).inset(-k, -k);
    if (i == null) {
      i = new Path();
    } else {
      i.reset();
    }
    i.setFillType(Path.FillType.EVEN_ODD);
    i.moveTo(-h, 0.0F);
    i.rLineTo(-k, 0.0F);
    i.arcTo((RectF)localObject2, 180.0F, 90.0F, false);
    i.arcTo((RectF)localObject1, 270.0F, -90.0F, false);
    i.close();
    float f1 = h / (h + k);
    localObject1 = e;
    float f2 = h;
    float f3 = k;
    int i1 = o;
    int i2 = o;
    int i3 = p;
    localObject2 = Shader.TileMode.CLAMP;
    ((Paint)localObject1).setShader(new RadialGradient(0.0F, 0.0F, f2 + f3, new int[] { i1, i2, i3 }, new float[] { 0.0F, f1, 1.0F }, (Shader.TileMode)localObject2));
    localObject1 = f;
    f1 = -h;
    f2 = k;
    f3 = -h;
    float f4 = k;
    i1 = o;
    i2 = o;
    i3 = p;
    localObject2 = Shader.TileMode.CLAMP;
    ((Paint)localObject1).setShader(new LinearGradient(0.0F, f1 + f2, 0.0F, f3 - f4, new int[] { i1, i2, i3 }, new float[] { 0.0F, 0.5F, 1.0F }, (Shader.TileMode)localObject2));
    f.setAntiAlias(false);
  }
  
  float a()
  {
    return h;
  }
  
  void a(float paramFloat)
  {
    if (paramFloat >= 0.0F)
    {
      paramFloat = (int)(paramFloat + 0.5F);
      if (h == paramFloat) {
        return;
      }
      h = paramFloat;
      n = true;
      invalidateSelf();
      return;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Invalid radius ");
    localStringBuilder.append(paramFloat);
    localStringBuilder.append(". Must be >= 0");
    throw new IllegalArgumentException(localStringBuilder.toString());
  }
  
  void a(@Nullable ColorStateList paramColorStateList)
  {
    b(paramColorStateList);
    invalidateSelf();
  }
  
  void a(Rect paramRect)
  {
    getPadding(paramRect);
  }
  
  void a(boolean paramBoolean)
  {
    q = paramBoolean;
    invalidateSelf();
  }
  
  float b()
  {
    return l;
  }
  
  void b(float paramFloat)
  {
    a(paramFloat, j);
  }
  
  float c()
  {
    return j;
  }
  
  void c(float paramFloat)
  {
    a(l, paramFloat);
  }
  
  float d()
  {
    return Math.max(j, h + c + j / 2.0F) * 2.0F + (j + c) * 2.0F;
  }
  
  public void draw(Canvas paramCanvas)
  {
    if (n)
    {
      b(getBounds());
      n = false;
    }
    paramCanvas.translate(0.0F, l / 2.0F);
    a(paramCanvas);
    paramCanvas.translate(0.0F, -l / 2.0F);
    a.a(paramCanvas, g, h, d);
  }
  
  float e()
  {
    return Math.max(j, h + c + j * 1.5F / 2.0F) * 2.0F + (j * 1.5F + c) * 2.0F;
  }
  
  ColorStateList f()
  {
    return m;
  }
  
  public int getOpacity()
  {
    return -3;
  }
  
  public boolean getPadding(Rect paramRect)
  {
    int i1 = (int)Math.ceil(a(j, h, q));
    int i2 = (int)Math.ceil(b(j, h, q));
    paramRect.set(i2, i1, i2, i1);
    return true;
  }
  
  public boolean isStateful()
  {
    return ((m != null) && (m.isStateful())) || (super.isStateful());
  }
  
  protected void onBoundsChange(Rect paramRect)
  {
    super.onBoundsChange(paramRect);
    n = true;
  }
  
  protected boolean onStateChange(int[] paramArrayOfInt)
  {
    int i1 = m.getColorForState(paramArrayOfInt, m.getDefaultColor());
    if (d.getColor() == i1) {
      return false;
    }
    d.setColor(i1);
    n = true;
    invalidateSelf();
    return true;
  }
  
  public void setAlpha(int paramInt)
  {
    d.setAlpha(paramInt);
    e.setAlpha(paramInt);
    f.setAlpha(paramInt);
  }
  
  public void setColorFilter(ColorFilter paramColorFilter)
  {
    d.setColorFilter(paramColorFilter);
  }
  
  static abstract interface a
  {
    public abstract void a(Canvas paramCanvas, RectF paramRectF, float paramFloat, Paint paramPaint);
  }
}
