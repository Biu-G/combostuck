package android.support.v4.widget;

import android.content.res.Resources;
import android.os.SystemClock;
import android.support.annotation.NonNull;
import android.support.v4.view.ViewCompat;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import android.view.ViewConfiguration;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.AnimationUtils;
import android.view.animation.Interpolator;

public abstract class AutoScrollHelper
  implements View.OnTouchListener
{
  public static final int EDGE_TYPE_INSIDE = 0;
  public static final int EDGE_TYPE_INSIDE_EXTEND = 1;
  public static final int EDGE_TYPE_OUTSIDE = 2;
  public static final float NO_MAX = Float.MAX_VALUE;
  public static final float NO_MIN = 0.0F;
  public static final float RELATIVE_UNSPECIFIED = 0.0F;
  private static final int r = ;
  final a a = new a();
  final View b;
  boolean c;
  boolean d;
  boolean e;
  private final Interpolator f = new AccelerateInterpolator();
  private Runnable g;
  private float[] h = { 0.0F, 0.0F };
  private float[] i = { Float.MAX_VALUE, Float.MAX_VALUE };
  private int j;
  private int k;
  private float[] l = { 0.0F, 0.0F };
  private float[] m = { 0.0F, 0.0F };
  private float[] n = { Float.MAX_VALUE, Float.MAX_VALUE };
  private boolean o;
  private boolean p;
  private boolean q;
  
  public AutoScrollHelper(@NonNull View paramView)
  {
    b = paramView;
    paramView = Resources.getSystem().getDisplayMetrics();
    int i1 = (int)(density * 1575.0F + 0.5F);
    int i2 = (int)(density * 315.0F + 0.5F);
    float f1 = i1;
    setMaximumVelocity(f1, f1);
    f1 = i2;
    setMinimumVelocity(f1, f1);
    setEdgeType(1);
    setMaximumEdges(Float.MAX_VALUE, Float.MAX_VALUE);
    setRelativeEdges(0.2F, 0.2F);
    setRelativeVelocity(1.0F, 1.0F);
    setActivationDelay(r);
    setRampUpDuration(500);
    setRampDownDuration(500);
  }
  
  private float a(float paramFloat1, float paramFloat2)
  {
    if (paramFloat2 == 0.0F) {
      return 0.0F;
    }
    switch (j)
    {
    default: 
      return 0.0F;
    case 2: 
      if (paramFloat1 < 0.0F) {
        return paramFloat1 / -paramFloat2;
      }
      break;
    case 0: 
    case 1: 
      if (paramFloat1 < paramFloat2)
      {
        if (paramFloat1 >= 0.0F) {
          return 1.0F - paramFloat1 / paramFloat2;
        }
        if ((e) && (j == 1)) {
          return 1.0F;
        }
      }
      break;
    }
    return 0.0F;
  }
  
  static float a(float paramFloat1, float paramFloat2, float paramFloat3)
  {
    if (paramFloat1 > paramFloat3) {
      return paramFloat3;
    }
    if (paramFloat1 < paramFloat2) {
      return paramFloat2;
    }
    return paramFloat1;
  }
  
  private float a(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4)
  {
    paramFloat1 = a(paramFloat1 * paramFloat2, 0.0F, paramFloat3);
    paramFloat3 = a(paramFloat4, paramFloat1);
    paramFloat1 = a(paramFloat2 - paramFloat4, paramFloat1) - paramFloat3;
    if (paramFloat1 < 0.0F)
    {
      paramFloat1 = -f.getInterpolation(-paramFloat1);
    }
    else
    {
      if (paramFloat1 <= 0.0F) {
        break label76;
      }
      paramFloat1 = f.getInterpolation(paramFloat1);
    }
    return a(paramFloat1, -1.0F, 1.0F);
    label76:
    return 0.0F;
  }
  
  private float a(int paramInt, float paramFloat1, float paramFloat2, float paramFloat3)
  {
    paramFloat1 = a(h[paramInt], paramFloat2, i[paramInt], paramFloat1);
    boolean bool = paramFloat1 < 0.0F;
    if (!bool) {
      return 0.0F;
    }
    float f2 = l[paramInt];
    paramFloat2 = m[paramInt];
    float f1 = n[paramInt];
    paramFloat3 = f2 * paramFloat3;
    if (bool) {
      return a(paramFloat1 * paramFloat3, paramFloat2, f1);
    }
    return -a(-paramFloat1 * paramFloat3, paramFloat2, f1);
  }
  
  static int a(int paramInt1, int paramInt2, int paramInt3)
  {
    if (paramInt1 > paramInt3) {
      return paramInt3;
    }
    if (paramInt1 < paramInt2) {
      return paramInt2;
    }
    return paramInt1;
  }
  
  private void c()
  {
    if (g == null) {
      g = new b();
    }
    e = true;
    c = true;
    if ((!o) && (k > 0)) {
      ViewCompat.postOnAnimationDelayed(b, g, k);
    } else {
      g.run();
    }
    o = true;
  }
  
  private void d()
  {
    if (c)
    {
      e = false;
      return;
    }
    a.b();
  }
  
  boolean a()
  {
    a localA = a;
    int i1 = localA.f();
    int i2 = localA.e();
    return ((i1 != 0) && (canTargetScrollVertically(i1))) || ((i2 != 0) && (canTargetScrollHorizontally(i2)));
  }
  
  void b()
  {
    long l1 = SystemClock.uptimeMillis();
    MotionEvent localMotionEvent = MotionEvent.obtain(l1, l1, 3, 0.0F, 0.0F, 0);
    b.onTouchEvent(localMotionEvent);
    localMotionEvent.recycle();
  }
  
  public abstract boolean canTargetScrollHorizontally(int paramInt);
  
  public abstract boolean canTargetScrollVertically(int paramInt);
  
  public boolean isEnabled()
  {
    return p;
  }
  
  public boolean isExclusive()
  {
    return q;
  }
  
  public boolean onTouch(View paramView, MotionEvent paramMotionEvent)
  {
    boolean bool1 = p;
    boolean bool2 = false;
    if (!bool1) {
      return false;
    }
    switch (paramMotionEvent.getActionMasked())
    {
    default: 
      break;
    case 1: 
    case 3: 
      d();
      break;
    case 0: 
      d = true;
      o = false;
    case 2: 
      float f1 = a(0, paramMotionEvent.getX(), paramView.getWidth(), b.getWidth());
      float f2 = a(1, paramMotionEvent.getY(), paramView.getHeight(), b.getHeight());
      a.a(f1, f2);
      if ((!e) && (a())) {
        c();
      }
      break;
    }
    bool1 = bool2;
    if (q)
    {
      bool1 = bool2;
      if (e) {
        bool1 = true;
      }
    }
    return bool1;
  }
  
  public abstract void scrollTargetBy(int paramInt1, int paramInt2);
  
  @NonNull
  public AutoScrollHelper setActivationDelay(int paramInt)
  {
    k = paramInt;
    return this;
  }
  
  @NonNull
  public AutoScrollHelper setEdgeType(int paramInt)
  {
    j = paramInt;
    return this;
  }
  
  public AutoScrollHelper setEnabled(boolean paramBoolean)
  {
    if ((p) && (!paramBoolean)) {
      d();
    }
    p = paramBoolean;
    return this;
  }
  
  public AutoScrollHelper setExclusive(boolean paramBoolean)
  {
    q = paramBoolean;
    return this;
  }
  
  @NonNull
  public AutoScrollHelper setMaximumEdges(float paramFloat1, float paramFloat2)
  {
    i[0] = paramFloat1;
    i[1] = paramFloat2;
    return this;
  }
  
  @NonNull
  public AutoScrollHelper setMaximumVelocity(float paramFloat1, float paramFloat2)
  {
    n[0] = (paramFloat1 / 1000.0F);
    n[1] = (paramFloat2 / 1000.0F);
    return this;
  }
  
  @NonNull
  public AutoScrollHelper setMinimumVelocity(float paramFloat1, float paramFloat2)
  {
    m[0] = (paramFloat1 / 1000.0F);
    m[1] = (paramFloat2 / 1000.0F);
    return this;
  }
  
  @NonNull
  public AutoScrollHelper setRampDownDuration(int paramInt)
  {
    a.b(paramInt);
    return this;
  }
  
  @NonNull
  public AutoScrollHelper setRampUpDuration(int paramInt)
  {
    a.a(paramInt);
    return this;
  }
  
  @NonNull
  public AutoScrollHelper setRelativeEdges(float paramFloat1, float paramFloat2)
  {
    h[0] = paramFloat1;
    h[1] = paramFloat2;
    return this;
  }
  
  @NonNull
  public AutoScrollHelper setRelativeVelocity(float paramFloat1, float paramFloat2)
  {
    l[0] = (paramFloat1 / 1000.0F);
    l[1] = (paramFloat2 / 1000.0F);
    return this;
  }
  
  private static class a
  {
    private int a;
    private int b;
    private float c;
    private float d;
    private long e = Long.MIN_VALUE;
    private long f = 0L;
    private int g = 0;
    private int h = 0;
    private long i = -1L;
    private float j;
    private int k;
    
    a() {}
    
    private float a(float paramFloat)
    {
      return -4.0F * paramFloat * paramFloat + paramFloat * 4.0F;
    }
    
    private float a(long paramLong)
    {
      if (paramLong < e) {
        return 0.0F;
      }
      if ((i >= 0L) && (paramLong >= i))
      {
        long l = i;
        return 1.0F - j + j * AutoScrollHelper.a((float)(paramLong - l) / k, 0.0F, 1.0F);
      }
      return AutoScrollHelper.a((float)(paramLong - e) / a, 0.0F, 1.0F) * 0.5F;
    }
    
    public void a()
    {
      e = AnimationUtils.currentAnimationTimeMillis();
      i = -1L;
      f = e;
      j = 0.5F;
      g = 0;
      h = 0;
    }
    
    public void a(float paramFloat1, float paramFloat2)
    {
      c = paramFloat1;
      d = paramFloat2;
    }
    
    public void a(int paramInt)
    {
      a = paramInt;
    }
    
    public void b()
    {
      long l = AnimationUtils.currentAnimationTimeMillis();
      k = AutoScrollHelper.a((int)(l - e), 0, b);
      j = a(l);
      i = l;
    }
    
    public void b(int paramInt)
    {
      b = paramInt;
    }
    
    public boolean c()
    {
      return (i > 0L) && (AnimationUtils.currentAnimationTimeMillis() > i + k);
    }
    
    public void d()
    {
      if (f != 0L)
      {
        long l1 = AnimationUtils.currentAnimationTimeMillis();
        float f1 = a(a(l1));
        long l2 = f;
        f = l1;
        f1 = (float)(l1 - l2) * f1;
        g = ((int)(c * f1));
        h = ((int)(f1 * d));
        return;
      }
      throw new RuntimeException("Cannot compute scroll delta before calling start()");
    }
    
    public int e()
    {
      return (int)(c / Math.abs(c));
    }
    
    public int f()
    {
      return (int)(d / Math.abs(d));
    }
    
    public int g()
    {
      return g;
    }
    
    public int h()
    {
      return h;
    }
  }
  
  private class b
    implements Runnable
  {
    b() {}
    
    public void run()
    {
      if (!e) {
        return;
      }
      if (c)
      {
        c = false;
        a.a();
      }
      AutoScrollHelper.a localA = a;
      if ((!localA.c()) && (a()))
      {
        if (d)
        {
          d = false;
          b();
        }
        localA.d();
        int i = localA.g();
        int j = localA.h();
        scrollTargetBy(i, j);
        ViewCompat.postOnAnimation(b, this);
        return;
      }
      e = false;
    }
  }
}
