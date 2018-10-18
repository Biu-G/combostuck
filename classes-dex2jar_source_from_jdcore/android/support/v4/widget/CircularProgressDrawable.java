package android.support.v4.widget;

import android.animation.Animator;
import android.animation.Animator.AnimatorListener;
import android.animation.ValueAnimator;
import android.animation.ValueAnimator.AnimatorUpdateListener;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Paint.Cap;
import android.graphics.Paint.Style;
import android.graphics.Path;
import android.graphics.Path.FillType;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.support.annotation.NonNull;
import android.support.annotation.RestrictTo;
import android.support.v4.util.Preconditions;
import android.support.v4.view.animation.FastOutSlowInInterpolator;
import android.util.DisplayMetrics;
import android.view.animation.Interpolator;
import android.view.animation.LinearInterpolator;
import java.lang.annotation.Annotation;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

public class CircularProgressDrawable
  extends Drawable
  implements Animatable
{
  public static final int DEFAULT = 1;
  public static final int LARGE = 0;
  private static final Interpolator c = new LinearInterpolator();
  private static final Interpolator d = new FastOutSlowInInterpolator();
  private static final int[] e = { -16777216 };
  float a;
  boolean b;
  private final a f;
  private float g;
  private Resources h;
  private Animator i;
  
  public CircularProgressDrawable(@NonNull Context paramContext)
  {
    h = ((Context)Preconditions.checkNotNull(paramContext)).getResources();
    f = new a();
    f.a(e);
    setStrokeWidth(2.5F);
    a();
  }
  
  private int a(float paramFloat, int paramInt1, int paramInt2)
  {
    int j = paramInt1 >> 24 & 0xFF;
    int k = paramInt1 >> 16 & 0xFF;
    int m = paramInt1 >> 8 & 0xFF;
    paramInt1 &= 0xFF;
    return j + (int)(((paramInt2 >> 24 & 0xFF) - j) * paramFloat) << 24 | k + (int)(((paramInt2 >> 16 & 0xFF) - k) * paramFloat) << 16 | m + (int)(((paramInt2 >> 8 & 0xFF) - m) * paramFloat) << 8 | paramInt1 + (int)(paramFloat * ((paramInt2 & 0xFF) - paramInt1));
  }
  
  private void a()
  {
    final a localA = f;
    ValueAnimator localValueAnimator = ValueAnimator.ofFloat(new float[] { 0.0F, 1.0F });
    localValueAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener()
    {
      public void onAnimationUpdate(ValueAnimator paramAnonymousValueAnimator)
      {
        float f = ((Float)paramAnonymousValueAnimator.getAnimatedValue()).floatValue();
        a(f, localA);
        a(f, localA, false);
        invalidateSelf();
      }
    });
    localValueAnimator.setRepeatCount(-1);
    localValueAnimator.setRepeatMode(1);
    localValueAnimator.setInterpolator(c);
    localValueAnimator.addListener(new Animator.AnimatorListener()
    {
      public void onAnimationCancel(Animator paramAnonymousAnimator) {}
      
      public void onAnimationEnd(Animator paramAnonymousAnimator) {}
      
      public void onAnimationRepeat(Animator paramAnonymousAnimator)
      {
        a(1.0F, localA, true);
        localA.u();
        localA.h();
        if (b)
        {
          b = false;
          paramAnonymousAnimator.cancel();
          paramAnonymousAnimator.setDuration(1332L);
          paramAnonymousAnimator.start();
          localA.a(false);
          return;
        }
        a += 1.0F;
      }
      
      public void onAnimationStart(Animator paramAnonymousAnimator)
      {
        a = 0.0F;
      }
    });
    i = localValueAnimator;
  }
  
  private void a(float paramFloat)
  {
    g = paramFloat;
  }
  
  private void a(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4)
  {
    a localA = f;
    float f1 = h.getDisplayMetrics().density;
    localA.a(paramFloat2 * f1);
    localA.e(paramFloat1 * f1);
    localA.c(0);
    localA.a(paramFloat3 * f1, paramFloat4 * f1);
  }
  
  private void b(float paramFloat, a paramA)
  {
    a(paramFloat, paramA);
    float f1 = (float)(Math.floor(paramA.t() / 0.8F) + 1.0D);
    paramA.b(paramA.l() + (paramA.m() - 0.01F - paramA.l()) * paramFloat);
    paramA.c(paramA.m());
    paramA.d(paramA.t() + (f1 - paramA.t()) * paramFloat);
  }
  
  void a(float paramFloat, a paramA)
  {
    if (paramFloat > 0.75F)
    {
      paramA.a(a((paramFloat - 0.75F) / 0.25F, paramA.n(), paramA.f()));
      return;
    }
    paramA.a(paramA.n());
  }
  
  void a(float paramFloat, a paramA, boolean paramBoolean)
  {
    if (b)
    {
      b(paramFloat, paramA);
      return;
    }
    if ((paramFloat != 1.0F) || (paramBoolean))
    {
      float f3 = paramA.t();
      float f2;
      float f1;
      if (paramFloat < 0.5F)
      {
        f2 = paramFloat / 0.5F;
        f1 = paramA.l();
        f2 = d.getInterpolation(f2) * 0.79F + 0.01F + f1;
      }
      else
      {
        f1 = (paramFloat - 0.5F) / 0.5F;
        f2 = paramA.l() + 0.79F;
        f1 = f2 - ((1.0F - d.getInterpolation(f1)) * 0.79F + 0.01F);
      }
      float f4 = a;
      paramA.b(f1);
      paramA.c(f2);
      paramA.d(f3 + 0.20999998F * paramFloat);
      a((paramFloat + f4) * 216.0F);
    }
  }
  
  public void draw(Canvas paramCanvas)
  {
    Rect localRect = getBounds();
    paramCanvas.save();
    paramCanvas.rotate(g, localRect.exactCenterX(), localRect.exactCenterY());
    f.a(paramCanvas, localRect);
    paramCanvas.restore();
  }
  
  public int getAlpha()
  {
    return f.i();
  }
  
  public boolean getArrowEnabled()
  {
    return f.r();
  }
  
  public float getArrowHeight()
  {
    return f.c();
  }
  
  public float getArrowScale()
  {
    return f.s();
  }
  
  public float getArrowWidth()
  {
    return f.b();
  }
  
  public int getBackgroundColor()
  {
    return f.e();
  }
  
  public float getCenterRadius()
  {
    return f.q();
  }
  
  @NonNull
  public int[] getColorSchemeColors()
  {
    return f.d();
  }
  
  public float getEndTrim()
  {
    return f.o();
  }
  
  public int getOpacity()
  {
    return -3;
  }
  
  public float getProgressRotation()
  {
    return f.p();
  }
  
  public float getStartTrim()
  {
    return f.k();
  }
  
  @NonNull
  public Paint.Cap getStrokeCap()
  {
    return f.a();
  }
  
  public float getStrokeWidth()
  {
    return f.j();
  }
  
  public boolean isRunning()
  {
    return i.isRunning();
  }
  
  public void setAlpha(int paramInt)
  {
    f.d(paramInt);
    invalidateSelf();
  }
  
  public void setArrowDimensions(float paramFloat1, float paramFloat2)
  {
    f.a(paramFloat1, paramFloat2);
    invalidateSelf();
  }
  
  public void setArrowEnabled(boolean paramBoolean)
  {
    f.a(paramBoolean);
    invalidateSelf();
  }
  
  public void setArrowScale(float paramFloat)
  {
    f.f(paramFloat);
    invalidateSelf();
  }
  
  public void setBackgroundColor(int paramInt)
  {
    f.b(paramInt);
    invalidateSelf();
  }
  
  public void setCenterRadius(float paramFloat)
  {
    f.e(paramFloat);
    invalidateSelf();
  }
  
  public void setColorFilter(ColorFilter paramColorFilter)
  {
    f.a(paramColorFilter);
    invalidateSelf();
  }
  
  public void setColorSchemeColors(@NonNull int... paramVarArgs)
  {
    f.a(paramVarArgs);
    f.c(0);
    invalidateSelf();
  }
  
  public void setProgressRotation(float paramFloat)
  {
    f.d(paramFloat);
    invalidateSelf();
  }
  
  public void setStartEndTrim(float paramFloat1, float paramFloat2)
  {
    f.b(paramFloat1);
    f.c(paramFloat2);
    invalidateSelf();
  }
  
  public void setStrokeCap(@NonNull Paint.Cap paramCap)
  {
    f.a(paramCap);
    invalidateSelf();
  }
  
  public void setStrokeWidth(float paramFloat)
  {
    f.a(paramFloat);
    invalidateSelf();
  }
  
  public void setStyle(int paramInt)
  {
    if (paramInt == 0) {
      a(11.0F, 3.0F, 12.0F, 6.0F);
    } else {
      a(7.5F, 2.5F, 10.0F, 5.0F);
    }
    invalidateSelf();
  }
  
  public void start()
  {
    i.cancel();
    f.u();
    if (f.o() != f.k())
    {
      b = true;
      i.setDuration(666L);
      i.start();
      return;
    }
    f.c(0);
    f.v();
    i.setDuration(1332L);
    i.start();
  }
  
  public void stop()
  {
    i.cancel();
    a(0.0F);
    f.a(false);
    f.c(0);
    f.v();
    invalidateSelf();
  }
  
  @Retention(RetentionPolicy.SOURCE)
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
  public static @interface ProgressDrawableSize {}
  
  private static class a
  {
    final RectF a = new RectF();
    final Paint b = new Paint();
    final Paint c = new Paint();
    final Paint d = new Paint();
    float e = 0.0F;
    float f = 0.0F;
    float g = 0.0F;
    float h = 5.0F;
    int[] i;
    int j;
    float k;
    float l;
    float m;
    boolean n;
    Path o;
    float p = 1.0F;
    float q;
    int r;
    int s;
    int t = 255;
    int u;
    
    a()
    {
      b.setStrokeCap(Paint.Cap.SQUARE);
      b.setAntiAlias(true);
      b.setStyle(Paint.Style.STROKE);
      c.setStyle(Paint.Style.FILL);
      c.setAntiAlias(true);
      d.setColor(0);
    }
    
    Paint.Cap a()
    {
      return b.getStrokeCap();
    }
    
    void a(float paramFloat)
    {
      h = paramFloat;
      b.setStrokeWidth(paramFloat);
    }
    
    void a(float paramFloat1, float paramFloat2)
    {
      r = ((int)paramFloat1);
      s = ((int)paramFloat2);
    }
    
    void a(int paramInt)
    {
      u = paramInt;
    }
    
    void a(Canvas paramCanvas, float paramFloat1, float paramFloat2, RectF paramRectF)
    {
      if (n)
      {
        if (o == null)
        {
          o = new Path();
          o.setFillType(Path.FillType.EVEN_ODD);
        }
        else
        {
          o.reset();
        }
        float f1 = Math.min(paramRectF.width(), paramRectF.height()) / 2.0F;
        float f2 = r * p / 2.0F;
        o.moveTo(0.0F, 0.0F);
        o.lineTo(r * p, 0.0F);
        o.lineTo(r * p / 2.0F, s * p);
        o.offset(f1 + paramRectF.centerX() - f2, paramRectF.centerY() + h / 2.0F);
        o.close();
        c.setColor(u);
        c.setAlpha(t);
        paramCanvas.save();
        paramCanvas.rotate(paramFloat1 + paramFloat2, paramRectF.centerX(), paramRectF.centerY());
        paramCanvas.drawPath(o, c);
        paramCanvas.restore();
      }
    }
    
    void a(Canvas paramCanvas, Rect paramRect)
    {
      RectF localRectF = a;
      float f1 = q + h / 2.0F;
      if (q <= 0.0F) {
        f1 = Math.min(paramRect.width(), paramRect.height()) / 2.0F - Math.max(r * p / 2.0F, h / 2.0F);
      }
      localRectF.set(paramRect.centerX() - f1, paramRect.centerY() - f1, paramRect.centerX() + f1, paramRect.centerY() + f1);
      f1 = (e + g) * 360.0F;
      float f2 = (f + g) * 360.0F - f1;
      b.setColor(u);
      b.setAlpha(t);
      float f3 = h / 2.0F;
      localRectF.inset(f3, f3);
      paramCanvas.drawCircle(localRectF.centerX(), localRectF.centerY(), localRectF.width() / 2.0F, d);
      f3 = -f3;
      localRectF.inset(f3, f3);
      paramCanvas.drawArc(localRectF, f1, f2, false, b);
      a(paramCanvas, f1, f2, localRectF);
    }
    
    void a(ColorFilter paramColorFilter)
    {
      b.setColorFilter(paramColorFilter);
    }
    
    void a(Paint.Cap paramCap)
    {
      b.setStrokeCap(paramCap);
    }
    
    void a(boolean paramBoolean)
    {
      if (n != paramBoolean) {
        n = paramBoolean;
      }
    }
    
    void a(@NonNull int[] paramArrayOfInt)
    {
      i = paramArrayOfInt;
      c(0);
    }
    
    float b()
    {
      return r;
    }
    
    void b(float paramFloat)
    {
      e = paramFloat;
    }
    
    void b(int paramInt)
    {
      d.setColor(paramInt);
    }
    
    float c()
    {
      return s;
    }
    
    void c(float paramFloat)
    {
      f = paramFloat;
    }
    
    void c(int paramInt)
    {
      j = paramInt;
      u = i[j];
    }
    
    void d(float paramFloat)
    {
      g = paramFloat;
    }
    
    void d(int paramInt)
    {
      t = paramInt;
    }
    
    int[] d()
    {
      return i;
    }
    
    int e()
    {
      return d.getColor();
    }
    
    void e(float paramFloat)
    {
      q = paramFloat;
    }
    
    int f()
    {
      return i[g()];
    }
    
    void f(float paramFloat)
    {
      if (paramFloat != p) {
        p = paramFloat;
      }
    }
    
    int g()
    {
      return (j + 1) % i.length;
    }
    
    void h()
    {
      c(g());
    }
    
    int i()
    {
      return t;
    }
    
    float j()
    {
      return h;
    }
    
    float k()
    {
      return e;
    }
    
    float l()
    {
      return k;
    }
    
    float m()
    {
      return l;
    }
    
    int n()
    {
      return i[j];
    }
    
    float o()
    {
      return f;
    }
    
    float p()
    {
      return g;
    }
    
    float q()
    {
      return q;
    }
    
    boolean r()
    {
      return n;
    }
    
    float s()
    {
      return p;
    }
    
    float t()
    {
      return m;
    }
    
    void u()
    {
      k = e;
      l = f;
      m = g;
    }
    
    void v()
    {
      k = 0.0F;
      l = 0.0F;
      m = 0.0F;
      b(0.0F);
      c(0.0F);
      d(0.0F);
    }
  }
}
