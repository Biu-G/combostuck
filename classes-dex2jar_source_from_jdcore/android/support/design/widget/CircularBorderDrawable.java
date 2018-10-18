package android.support.design.widget;

import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.Shader.TileMode;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Drawable.ConstantState;
import android.support.annotation.ColorInt;
import android.support.annotation.Dimension;
import android.support.annotation.FloatRange;
import android.support.annotation.IntRange;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.RestrictTo;
import android.support.v4.graphics.ColorUtils;

@RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
public class CircularBorderDrawable
  extends Drawable
{
  final Paint a = new Paint(1);
  final Rect b = new Rect();
  final RectF c = new RectF();
  final a d = new a(null);
  @Dimension
  float e;
  @ColorInt
  private int f;
  @ColorInt
  private int g;
  @ColorInt
  private int h;
  @ColorInt
  private int i;
  private ColorStateList j;
  @ColorInt
  private int k;
  private boolean l = true;
  @FloatRange(from=0.0D, to=360.0D)
  private float m;
  
  public CircularBorderDrawable()
  {
    a.setStyle(Paint.Style.STROKE);
  }
  
  private Shader a()
  {
    Object localObject = b;
    copyBounds((Rect)localObject);
    float f1 = e / ((Rect)localObject).height();
    int n = ColorUtils.compositeColors(f, k);
    int i1 = ColorUtils.compositeColors(g, k);
    int i2 = ColorUtils.compositeColors(ColorUtils.setAlphaComponent(g, 0), k);
    int i3 = ColorUtils.compositeColors(ColorUtils.setAlphaComponent(i, 0), k);
    int i4 = ColorUtils.compositeColors(i, k);
    int i5 = ColorUtils.compositeColors(h, k);
    float f2 = top;
    float f3 = bottom;
    localObject = Shader.TileMode.CLAMP;
    return new LinearGradient(0.0F, f2, 0.0F, f3, new int[] { n, i1, i2, i3, i4, i5 }, new float[] { 0.0F, f1, 0.5F, 0.5F, 1.0F - f1, 1.0F }, (Shader.TileMode)localObject);
  }
  
  public void draw(Canvas paramCanvas)
  {
    if (l)
    {
      a.setShader(a());
      l = false;
    }
    float f1 = a.getStrokeWidth() / 2.0F;
    RectF localRectF = c;
    copyBounds(b);
    localRectF.set(b);
    left += f1;
    top += f1;
    right -= f1;
    bottom -= f1;
    paramCanvas.save();
    paramCanvas.rotate(m, localRectF.centerX(), localRectF.centerY());
    paramCanvas.drawOval(localRectF, a);
    paramCanvas.restore();
  }
  
  @Nullable
  public Drawable.ConstantState getConstantState()
  {
    return d;
  }
  
  public int getOpacity()
  {
    if (e > 0.0F) {
      return -3;
    }
    return -2;
  }
  
  public boolean getPadding(Rect paramRect)
  {
    int n = Math.round(e);
    paramRect.set(n, n, n, n);
    return true;
  }
  
  public boolean isStateful()
  {
    return ((j != null) && (j.isStateful())) || (super.isStateful());
  }
  
  protected void onBoundsChange(Rect paramRect)
  {
    l = true;
  }
  
  protected boolean onStateChange(int[] paramArrayOfInt)
  {
    if (j != null)
    {
      int n = j.getColorForState(paramArrayOfInt, k);
      if (n != k)
      {
        l = true;
        k = n;
      }
    }
    if (l) {
      invalidateSelf();
    }
    return l;
  }
  
  public void setAlpha(@IntRange(from=0L, to=255L) int paramInt)
  {
    a.setAlpha(paramInt);
    invalidateSelf();
  }
  
  public void setBorderTint(ColorStateList paramColorStateList)
  {
    if (paramColorStateList != null) {
      k = paramColorStateList.getColorForState(getState(), k);
    }
    j = paramColorStateList;
    l = true;
    invalidateSelf();
  }
  
  public void setBorderWidth(@Dimension float paramFloat)
  {
    if (e != paramFloat)
    {
      e = paramFloat;
      a.setStrokeWidth(paramFloat * 1.3333F);
      l = true;
      invalidateSelf();
    }
  }
  
  public void setColorFilter(ColorFilter paramColorFilter)
  {
    a.setColorFilter(paramColorFilter);
    invalidateSelf();
  }
  
  public void setGradientColors(@ColorInt int paramInt1, @ColorInt int paramInt2, @ColorInt int paramInt3, @ColorInt int paramInt4)
  {
    f = paramInt1;
    g = paramInt2;
    h = paramInt3;
    i = paramInt4;
  }
  
  public final void setRotation(float paramFloat)
  {
    if (paramFloat != m)
    {
      m = paramFloat;
      invalidateSelf();
    }
  }
  
  private class a
    extends Drawable.ConstantState
  {
    private a() {}
    
    public int getChangingConfigurations()
    {
      return 0;
    }
    
    @NonNull
    public Drawable newDrawable()
    {
      return CircularBorderDrawable.this;
    }
  }
}
