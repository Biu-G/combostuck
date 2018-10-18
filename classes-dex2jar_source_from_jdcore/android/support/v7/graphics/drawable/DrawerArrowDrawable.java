package android.support.v7.graphics.drawable;

import android.content.Context;
import android.content.res.Resources.Theme;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Paint.Cap;
import android.graphics.Paint.Join;
import android.graphics.Paint.Style;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.support.annotation.ColorInt;
import android.support.annotation.FloatRange;
import android.support.annotation.RestrictTo;
import android.support.v4.graphics.drawable.DrawableCompat;
import android.support.v7.appcompat.R.attr;
import android.support.v7.appcompat.R.style;
import android.support.v7.appcompat.R.styleable;
import java.lang.annotation.Annotation;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

public class DrawerArrowDrawable
  extends Drawable
{
  public static final int ARROW_DIRECTION_END = 3;
  public static final int ARROW_DIRECTION_LEFT = 0;
  public static final int ARROW_DIRECTION_RIGHT = 1;
  public static final int ARROW_DIRECTION_START = 2;
  private static final float b = (float)Math.toRadians(45.0D);
  private final Paint a = new Paint();
  private float c;
  private float d;
  private float e;
  private float f;
  private boolean g;
  private final Path h = new Path();
  private final int i;
  private boolean j = false;
  private float k;
  private float l;
  private int m = 2;
  
  public DrawerArrowDrawable(Context paramContext)
  {
    a.setStyle(Paint.Style.STROKE);
    a.setStrokeJoin(Paint.Join.MITER);
    a.setStrokeCap(Paint.Cap.BUTT);
    a.setAntiAlias(true);
    paramContext = paramContext.getTheme().obtainStyledAttributes(null, R.styleable.DrawerArrowToggle, R.attr.drawerArrowStyle, R.style.Base_Widget_AppCompat_DrawerArrowToggle);
    setColor(paramContext.getColor(R.styleable.DrawerArrowToggle_color, 0));
    setBarThickness(paramContext.getDimension(R.styleable.DrawerArrowToggle_thickness, 0.0F));
    setSpinEnabled(paramContext.getBoolean(R.styleable.DrawerArrowToggle_spinBars, true));
    setGapSize(Math.round(paramContext.getDimension(R.styleable.DrawerArrowToggle_gapBetweenBars, 0.0F)));
    i = paramContext.getDimensionPixelSize(R.styleable.DrawerArrowToggle_drawableSize, 0);
    d = Math.round(paramContext.getDimension(R.styleable.DrawerArrowToggle_barLength, 0.0F));
    c = Math.round(paramContext.getDimension(R.styleable.DrawerArrowToggle_arrowHeadLength, 0.0F));
    e = paramContext.getDimension(R.styleable.DrawerArrowToggle_arrowShaftLength, 0.0F);
    paramContext.recycle();
  }
  
  private static float a(float paramFloat1, float paramFloat2, float paramFloat3)
  {
    return paramFloat1 + (paramFloat2 - paramFloat1) * paramFloat3;
  }
  
  public void draw(Canvas paramCanvas)
  {
    Rect localRect = getBounds();
    int i3 = m;
    int i2 = 0;
    int i1 = 1;
    int n;
    if (i3 != 3) {
      n = i2;
    }
    switch (i3)
    {
    default: 
      n = i2;
      if (DrawableCompat.getLayoutDirection(this) != 1) {
        break;
      }
    case 1: 
      do
      {
        n = 1;
        break;
        n = i2;
      } while (DrawableCompat.getLayoutDirection(this) == 0);
    }
    float f1 = (float)Math.sqrt(c * c * 2.0F);
    float f5 = a(d, f1, k);
    float f3 = a(d, e, k);
    float f4 = Math.round(a(0.0F, l, k));
    float f6 = a(0.0F, b, k);
    if (n != 0) {
      f1 = 0.0F;
    } else {
      f1 = -180.0F;
    }
    if (n != 0) {
      f2 = 180.0F;
    } else {
      f2 = 0.0F;
    }
    f1 = a(f1, f2, k);
    double d1 = f5;
    double d2 = f6;
    float f2 = (float)Math.round(Math.cos(d2) * d1);
    f5 = (float)Math.round(d1 * Math.sin(d2));
    h.rewind();
    f6 = a(f + a.getStrokeWidth(), -l, k);
    float f7 = -f3 / 2.0F;
    h.moveTo(f7 + f4, 0.0F);
    h.rLineTo(f3 - f4 * 2.0F, 0.0F);
    h.moveTo(f7, f6);
    h.rLineTo(f2, f5);
    h.moveTo(f7, -f6);
    h.rLineTo(f2, -f5);
    h.close();
    paramCanvas.save();
    f2 = a.getStrokeWidth();
    f3 = (int)(localRect.height() - 3.0F * f2 - f * 2.0F) / 4 * 2;
    f4 = f;
    paramCanvas.translate(localRect.centerX(), f3 + (f2 * 1.5F + f4));
    if (g)
    {
      if ((j ^ n)) {
        i1 = -1;
      }
      paramCanvas.rotate(f1 * i1);
    }
    else if (n != 0)
    {
      paramCanvas.rotate(180.0F);
    }
    paramCanvas.drawPath(h, a);
    paramCanvas.restore();
  }
  
  public float getArrowHeadLength()
  {
    return c;
  }
  
  public float getArrowShaftLength()
  {
    return e;
  }
  
  public float getBarLength()
  {
    return d;
  }
  
  public float getBarThickness()
  {
    return a.getStrokeWidth();
  }
  
  @ColorInt
  public int getColor()
  {
    return a.getColor();
  }
  
  public int getDirection()
  {
    return m;
  }
  
  public float getGapSize()
  {
    return f;
  }
  
  public int getIntrinsicHeight()
  {
    return i;
  }
  
  public int getIntrinsicWidth()
  {
    return i;
  }
  
  public int getOpacity()
  {
    return -3;
  }
  
  public final Paint getPaint()
  {
    return a;
  }
  
  @FloatRange(from=0.0D, to=1.0D)
  public float getProgress()
  {
    return k;
  }
  
  public boolean isSpinEnabled()
  {
    return g;
  }
  
  public void setAlpha(int paramInt)
  {
    if (paramInt != a.getAlpha())
    {
      a.setAlpha(paramInt);
      invalidateSelf();
    }
  }
  
  public void setArrowHeadLength(float paramFloat)
  {
    if (c != paramFloat)
    {
      c = paramFloat;
      invalidateSelf();
    }
  }
  
  public void setArrowShaftLength(float paramFloat)
  {
    if (e != paramFloat)
    {
      e = paramFloat;
      invalidateSelf();
    }
  }
  
  public void setBarLength(float paramFloat)
  {
    if (d != paramFloat)
    {
      d = paramFloat;
      invalidateSelf();
    }
  }
  
  public void setBarThickness(float paramFloat)
  {
    if (a.getStrokeWidth() != paramFloat)
    {
      a.setStrokeWidth(paramFloat);
      l = ((float)(paramFloat / 2.0F * Math.cos(b)));
      invalidateSelf();
    }
  }
  
  public void setColor(@ColorInt int paramInt)
  {
    if (paramInt != a.getColor())
    {
      a.setColor(paramInt);
      invalidateSelf();
    }
  }
  
  public void setColorFilter(ColorFilter paramColorFilter)
  {
    a.setColorFilter(paramColorFilter);
    invalidateSelf();
  }
  
  public void setDirection(int paramInt)
  {
    if (paramInt != m)
    {
      m = paramInt;
      invalidateSelf();
    }
  }
  
  public void setGapSize(float paramFloat)
  {
    if (paramFloat != f)
    {
      f = paramFloat;
      invalidateSelf();
    }
  }
  
  public void setProgress(@FloatRange(from=0.0D, to=1.0D) float paramFloat)
  {
    if (k != paramFloat)
    {
      k = paramFloat;
      invalidateSelf();
    }
  }
  
  public void setSpinEnabled(boolean paramBoolean)
  {
    if (g != paramBoolean)
    {
      g = paramBoolean;
      invalidateSelf();
    }
  }
  
  public void setVerticalMirror(boolean paramBoolean)
  {
    if (j != paramBoolean)
    {
      j = paramBoolean;
      invalidateSelf();
    }
  }
  
  @Retention(RetentionPolicy.SOURCE)
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
  public static @interface ArrowDirection {}
}
