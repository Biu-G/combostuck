package android.support.v7.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.animation.ValueAnimator.AnimatorUpdateListener;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.VisibleForTesting;
import android.support.v4.view.ViewCompat;
import android.view.MotionEvent;

@VisibleForTesting
class s
  extends RecyclerView.ItemDecoration
  implements RecyclerView.OnItemTouchListener
{
  private static final int[] k = { 16842919 };
  private static final int[] l = new int[0];
  private int A = 0;
  private final int[] B = new int[2];
  private final int[] C = new int[2];
  private final Runnable D = new Runnable()
  {
    public void run()
    {
      b(500);
    }
  };
  private final RecyclerView.OnScrollListener E = new RecyclerView.OnScrollListener()
  {
    public void onScrolled(RecyclerView paramAnonymousRecyclerView, int paramAnonymousInt1, int paramAnonymousInt2)
    {
      a(paramAnonymousRecyclerView.computeHorizontalScrollOffset(), paramAnonymousRecyclerView.computeVerticalScrollOffset());
    }
  };
  final StateListDrawable a;
  final Drawable b;
  @VisibleForTesting
  int c;
  @VisibleForTesting
  int d;
  @VisibleForTesting
  float e;
  @VisibleForTesting
  int f;
  @VisibleForTesting
  int g;
  @VisibleForTesting
  float h;
  final ValueAnimator i = ValueAnimator.ofFloat(new float[] { 0.0F, 1.0F });
  int j = 0;
  private final int m;
  private final int n;
  private final int o;
  private final int p;
  private final StateListDrawable q;
  private final Drawable r;
  private final int s;
  private final int t;
  private int u = 0;
  private int v = 0;
  private RecyclerView w;
  private boolean x = false;
  private boolean y = false;
  private int z = 0;
  
  s(RecyclerView paramRecyclerView, StateListDrawable paramStateListDrawable1, Drawable paramDrawable1, StateListDrawable paramStateListDrawable2, Drawable paramDrawable2, int paramInt1, int paramInt2, int paramInt3)
  {
    a = paramStateListDrawable1;
    b = paramDrawable1;
    q = paramStateListDrawable2;
    r = paramDrawable2;
    o = Math.max(paramInt1, paramStateListDrawable1.getIntrinsicWidth());
    p = Math.max(paramInt1, paramDrawable1.getIntrinsicWidth());
    s = Math.max(paramInt1, paramStateListDrawable2.getIntrinsicWidth());
    t = Math.max(paramInt1, paramDrawable2.getIntrinsicWidth());
    m = paramInt2;
    n = paramInt3;
    a.setAlpha(255);
    b.setAlpha(255);
    i.addListener(new a());
    i.addUpdateListener(new b());
    a(paramRecyclerView);
  }
  
  private int a(float paramFloat1, float paramFloat2, int[] paramArrayOfInt, int paramInt1, int paramInt2, int paramInt3)
  {
    int i1 = paramArrayOfInt[1] - paramArrayOfInt[0];
    if (i1 == 0) {
      return 0;
    }
    paramFloat1 = (paramFloat2 - paramFloat1) / i1;
    paramInt1 -= paramInt3;
    paramInt3 = (int)(paramFloat1 * paramInt1);
    paramInt2 += paramInt3;
    if ((paramInt2 < paramInt1) && (paramInt2 >= 0)) {
      return paramInt3;
    }
    return 0;
  }
  
  private void a(float paramFloat)
  {
    int[] arrayOfInt = g();
    paramFloat = Math.max(arrayOfInt[0], Math.min(arrayOfInt[1], paramFloat));
    if (Math.abs(d - paramFloat) < 2.0F) {
      return;
    }
    int i1 = a(e, paramFloat, arrayOfInt, w.computeVerticalScrollRange(), w.computeVerticalScrollOffset(), v);
    if (i1 != 0) {
      w.scrollBy(0, i1);
    }
    e = paramFloat;
  }
  
  private void a(Canvas paramCanvas)
  {
    int i1 = u - o;
    int i2 = d - c / 2;
    a.setBounds(0, 0, o, c);
    b.setBounds(0, 0, p, v);
    if (e())
    {
      b.draw(paramCanvas);
      paramCanvas.translate(o, i2);
      paramCanvas.scale(-1.0F, 1.0F);
      a.draw(paramCanvas);
      paramCanvas.scale(1.0F, 1.0F);
      paramCanvas.translate(-o, -i2);
      return;
    }
    paramCanvas.translate(i1, 0.0F);
    b.draw(paramCanvas);
    paramCanvas.translate(0.0F, i2);
    a.draw(paramCanvas);
    paramCanvas.translate(-i1, -i2);
  }
  
  private void b(float paramFloat)
  {
    int[] arrayOfInt = h();
    paramFloat = Math.max(arrayOfInt[0], Math.min(arrayOfInt[1], paramFloat));
    if (Math.abs(g - paramFloat) < 2.0F) {
      return;
    }
    int i1 = a(h, paramFloat, arrayOfInt, w.computeHorizontalScrollRange(), w.computeHorizontalScrollOffset(), u);
    if (i1 != 0) {
      w.scrollBy(i1, 0);
    }
    h = paramFloat;
  }
  
  private void b(Canvas paramCanvas)
  {
    int i1 = v - s;
    int i2 = g - f / 2;
    q.setBounds(0, 0, f, s);
    r.setBounds(0, 0, u, t);
    paramCanvas.translate(0.0F, i1);
    r.draw(paramCanvas);
    paramCanvas.translate(i2, 0.0F);
    q.draw(paramCanvas);
    paramCanvas.translate(-i2, -i1);
  }
  
  private void c()
  {
    w.addItemDecoration(this);
    w.addOnItemTouchListener(this);
    w.addOnScrollListener(E);
  }
  
  private void c(int paramInt)
  {
    f();
    w.postDelayed(D, paramInt);
  }
  
  private void d()
  {
    w.removeItemDecoration(this);
    w.removeOnItemTouchListener(this);
    w.removeOnScrollListener(E);
    f();
  }
  
  private boolean e()
  {
    return ViewCompat.getLayoutDirection(w) == 1;
  }
  
  private void f()
  {
    w.removeCallbacks(D);
  }
  
  private int[] g()
  {
    B[0] = n;
    B[1] = (v - n);
    return B;
  }
  
  private int[] h()
  {
    C[0] = n;
    C[1] = (u - n);
    return C;
  }
  
  void a()
  {
    w.invalidate();
  }
  
  void a(int paramInt)
  {
    if ((paramInt == 2) && (z != 2))
    {
      a.setState(k);
      f();
    }
    if (paramInt == 0) {
      a();
    } else {
      b();
    }
    if ((z == 2) && (paramInt != 2))
    {
      a.setState(l);
      c(1200);
    }
    else if (paramInt == 1)
    {
      c(1500);
    }
    z = paramInt;
  }
  
  void a(int paramInt1, int paramInt2)
  {
    int i1 = w.computeVerticalScrollRange();
    int i2 = v;
    boolean bool;
    if ((i1 - i2 > 0) && (v >= m)) {
      bool = true;
    } else {
      bool = false;
    }
    x = bool;
    int i3 = w.computeHorizontalScrollRange();
    int i4 = u;
    if ((i3 - i4 > 0) && (u >= m)) {
      bool = true;
    } else {
      bool = false;
    }
    y = bool;
    if ((!x) && (!y))
    {
      if (z != 0) {
        a(0);
      }
      return;
    }
    float f1;
    float f2;
    if (x)
    {
      f1 = paramInt2;
      f2 = i2;
      d = ((int)(f2 * (f1 + f2 / 2.0F) / i1));
      c = Math.min(i2, i2 * i2 / i1);
    }
    if (y)
    {
      f1 = paramInt1;
      f2 = i4;
      g = ((int)(f2 * (f1 + f2 / 2.0F) / i3));
      f = Math.min(i4, i4 * i4 / i3);
    }
    if ((z == 0) || (z == 1)) {
      a(1);
    }
  }
  
  public void a(@Nullable RecyclerView paramRecyclerView)
  {
    if (w == paramRecyclerView) {
      return;
    }
    if (w != null) {
      d();
    }
    w = paramRecyclerView;
    if (w != null) {
      c();
    }
  }
  
  @VisibleForTesting
  boolean a(float paramFloat1, float paramFloat2)
  {
    return (e() ? paramFloat1 <= o / 2 : paramFloat1 >= u - o) && (paramFloat2 >= d - c / 2) && (paramFloat2 <= d + c / 2);
  }
  
  public void b()
  {
    int i1 = j;
    if (i1 != 0)
    {
      if (i1 != 3) {
        return;
      }
      i.cancel();
    }
    j = 1;
    i.setFloatValues(new float[] { ((Float)i.getAnimatedValue()).floatValue(), 1.0F });
    i.setDuration(500L);
    i.setStartDelay(0L);
    i.start();
  }
  
  @VisibleForTesting
  void b(int paramInt)
  {
    switch (j)
    {
    default: 
      return;
    case 1: 
      i.cancel();
    }
    j = 3;
    i.setFloatValues(new float[] { ((Float)i.getAnimatedValue()).floatValue(), 0.0F });
    i.setDuration(paramInt);
    i.start();
  }
  
  @VisibleForTesting
  boolean b(float paramFloat1, float paramFloat2)
  {
    return (paramFloat2 >= v - s) && (paramFloat1 >= g - f / 2) && (paramFloat1 <= g + f / 2);
  }
  
  public void onDrawOver(Canvas paramCanvas, RecyclerView paramRecyclerView, RecyclerView.State paramState)
  {
    if ((u == w.getWidth()) && (v == w.getHeight()))
    {
      if (j != 0)
      {
        if (x) {
          a(paramCanvas);
        }
        if (y) {
          b(paramCanvas);
        }
      }
      return;
    }
    u = w.getWidth();
    v = w.getHeight();
    a(0);
  }
  
  public boolean onInterceptTouchEvent(@NonNull RecyclerView paramRecyclerView, @NonNull MotionEvent paramMotionEvent)
  {
    int i1 = z;
    boolean bool2 = false;
    if (i1 == 1)
    {
      boolean bool3 = a(paramMotionEvent.getX(), paramMotionEvent.getY());
      boolean bool4 = b(paramMotionEvent.getX(), paramMotionEvent.getY());
      bool1 = bool2;
      if (paramMotionEvent.getAction() != 0) {
        break label132;
      }
      if (!bool3)
      {
        bool1 = bool2;
        if (!bool4) {
          break label132;
        }
      }
      if (bool4)
      {
        A = 1;
        h = ((int)paramMotionEvent.getX());
      }
      else if (bool3)
      {
        A = 2;
        e = ((int)paramMotionEvent.getY());
      }
      a(2);
    }
    else
    {
      bool1 = bool2;
      if (z != 2) {
        break label132;
      }
    }
    boolean bool1 = true;
    label132:
    return bool1;
  }
  
  public void onRequestDisallowInterceptTouchEvent(boolean paramBoolean) {}
  
  public void onTouchEvent(@NonNull RecyclerView paramRecyclerView, @NonNull MotionEvent paramMotionEvent)
  {
    if (z == 0) {
      return;
    }
    if (paramMotionEvent.getAction() == 0)
    {
      boolean bool1 = a(paramMotionEvent.getX(), paramMotionEvent.getY());
      boolean bool2 = b(paramMotionEvent.getX(), paramMotionEvent.getY());
      if ((bool1) || (bool2))
      {
        if (bool2)
        {
          A = 1;
          h = ((int)paramMotionEvent.getX());
        }
        else if (bool1)
        {
          A = 2;
          e = ((int)paramMotionEvent.getY());
        }
        a(2);
      }
    }
    else
    {
      if ((paramMotionEvent.getAction() == 1) && (z == 2))
      {
        e = 0.0F;
        h = 0.0F;
        a(1);
        A = 0;
        return;
      }
      if ((paramMotionEvent.getAction() == 2) && (z == 2))
      {
        b();
        if (A == 1) {
          b(paramMotionEvent.getX());
        }
        if (A == 2) {
          a(paramMotionEvent.getY());
        }
      }
    }
  }
  
  private class a
    extends AnimatorListenerAdapter
  {
    private boolean b = false;
    
    a() {}
    
    public void onAnimationCancel(Animator paramAnimator)
    {
      b = true;
    }
    
    public void onAnimationEnd(Animator paramAnimator)
    {
      if (b)
      {
        b = false;
        return;
      }
      if (((Float)i.getAnimatedValue()).floatValue() == 0.0F)
      {
        j = 0;
        a(0);
        return;
      }
      j = 2;
      a();
    }
  }
  
  private class b
    implements ValueAnimator.AnimatorUpdateListener
  {
    b() {}
    
    public void onAnimationUpdate(ValueAnimator paramValueAnimator)
    {
      int i = (int)(((Float)paramValueAnimator.getAnimatedValue()).floatValue() * 255.0F);
      a.setAlpha(i);
      b.setAlpha(i);
      a();
    }
  }
}
