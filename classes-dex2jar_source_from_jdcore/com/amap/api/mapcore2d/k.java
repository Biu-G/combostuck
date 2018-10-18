package com.amap.api.mapcore2d;

import android.content.Context;
import android.content.res.Resources;
import android.util.DisplayMetrics;
import android.view.ViewConfiguration;
import android.view.animation.AnimationUtils;
import android.view.animation.Interpolator;

class k
{
  private static float I = (float)(Math.log(0.78D) / Math.log(0.9D));
  private static final float[] J = new float[101];
  private static final float[] K = new float[101];
  private static float O;
  private static float P = 1.0F / a(1.0F);
  private float A;
  private float B;
  private boolean C = true;
  private Interpolator D;
  private boolean E;
  private float F;
  private int G;
  private float H = ViewConfiguration.getScrollFriction();
  private float L;
  private final float M;
  private float N;
  private int a;
  private int b;
  private int c;
  private float d;
  private float e;
  private float f;
  private int g;
  private int h;
  private float i;
  private float j;
  private float k;
  private int l;
  private int m;
  private int n;
  private int o;
  private int p;
  private int q;
  private float r;
  private float s;
  private float t;
  private long u;
  private long v;
  private float w;
  private float x;
  private float y;
  private float z;
  
  static
  {
    float f1 = 0.0F;
    int i1 = 0;
    float f2 = 0.0F;
    if (i1 < 100)
    {
      float f5 = i1 / 100.0F;
      float f3 = 1.0F;
      for (;;)
      {
        float f4 = (f3 - f1) / 2.0F + f1;
        float f6 = 1.0F - f4;
        float f7 = f4 * 3.0F * f6;
        float f8 = f4 * f4 * f4;
        float f9 = (f6 * 0.175F + f4 * 0.35000002F) * f7 + f8;
        if (Math.abs(f9 - f5) < 1.0E-5D)
        {
          J[i1] = (f7 * (f6 * 0.5F + f4) + f8);
          f3 = 1.0F;
          f4 = (f3 - f2) / 2.0F + f2;
          f6 = 1.0F - f4;
          f7 = f4 * 3.0F * f6;
          f8 = f4 * f4 * f4;
          f9 = (f6 * 0.5F + f4) * f7 + f8;
          if (Math.abs(f9 - f5) < 1.0E-5D)
          {
            K[i1] = (f7 * (f6 * 0.175F + f4 * 0.35000002F) + f8);
            i1 += 1;
            break;
          }
          if (f9 > f5) {
            f3 = f4;
          }
          for (;;)
          {
            break;
            f2 = f4;
          }
        }
        if (f9 > f5) {
          f3 = f4;
        } else {
          f1 = f4;
        }
      }
    }
    float[] arrayOfFloat = J;
    K[100] = 1.0F;
    arrayOfFloat[100] = 1.0F;
    O = 8.0F;
    P = 1.0F;
  }
  
  public k(Context paramContext)
  {
    this(paramContext, null);
  }
  
  private k(Context paramContext, Interpolator paramInterpolator)
  {
    this(paramContext, paramInterpolator, bool);
  }
  
  private k(Context paramContext, Interpolator paramInterpolator, boolean paramBoolean)
  {
    D = paramInterpolator;
    M = (getResourcesgetDisplayMetricsdensity * 160.0F);
    L = b(ViewConfiguration.getScrollFriction());
    E = paramBoolean;
    N = b(0.84F);
  }
  
  static float a(float paramFloat)
  {
    paramFloat *= O;
    if (paramFloat < 1.0F) {
      paramFloat -= 1.0F - (float)Math.exp(-paramFloat);
    } else {
      paramFloat = (1.0F - (float)Math.exp(1.0F - paramFloat)) * 0.63212055F + 0.36787945F;
    }
    return paramFloat * P;
  }
  
  private float b(float paramFloat)
  {
    return M * 386.0878F * paramFloat;
  }
  
  public final void a(boolean paramBoolean)
  {
    C = paramBoolean;
  }
  
  public final boolean a()
  {
    return C;
  }
  
  public final int b()
  {
    return p;
  }
  
  public final int c()
  {
    return q;
  }
  
  public final float d()
  {
    return r;
  }
  
  public final float e()
  {
    return s;
  }
  
  public final float f()
  {
    return t;
  }
  
  public boolean g()
  {
    if (C) {
      return false;
    }
    int i1 = (int)(AnimationUtils.currentAnimationTimeMillis() - u);
    if (i1 < v)
    {
      switch (a)
      {
      default: 
        return true;
      case 2: 
        f1 = i1 * w;
        if (D == null) {
          f1 = a(f1);
        } else {
          f1 = D.getInterpolation(f1);
        }
        p = (b + Math.round(x * f1));
        q = (c + Math.round(y * f1));
        r = (d + z * f1);
        s = (e + A * f1);
        t = (f + f1 * B);
        return true;
      }
      float f3 = i1 / (float)v;
      i1 = (int)(f3 * 100.0F);
      float f1 = 1.0F;
      float f2 = 0.0F;
      if (i1 < 100)
      {
        f1 = i1 / 100.0F;
        int i2 = i1 + 1;
        f2 = i2 / 100.0F;
        float f4 = J[i1];
        f2 = (J[i2] - f4) / (f2 - f1);
        f1 = f4 + (f3 - f1) * f2;
      }
      F = (f2 * G / (float)v * 1000.0F);
      p = (b + Math.round((g - b) * f1));
      p = Math.min(p, m);
      p = Math.max(p, l);
      q = (c + Math.round(f1 * (h - c)));
      q = Math.min(q, o);
      q = Math.max(q, n);
      if ((p == g) && (q == h))
      {
        C = true;
        return true;
      }
    }
    else
    {
      p = g;
      q = h;
      r = i;
      s = j;
      t = k;
      C = true;
    }
    return true;
  }
  
  public final int h()
  {
    return a;
  }
}
