package android.support.v4.widget;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.support.annotation.ColorInt;
import android.support.annotation.ColorRes;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.Px;
import android.support.v4.content.ContextCompat;
import android.support.v4.view.NestedScrollingChild;
import android.support.v4.view.NestedScrollingChildHelper;
import android.support.v4.view.NestedScrollingParent;
import android.support.v4.view.NestedScrollingParentHelper;
import android.support.v4.view.ViewCompat;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Transformation;
import android.widget.AbsListView;
import android.widget.ListView;

public class SwipeRefreshLayout
  extends ViewGroup
  implements NestedScrollingChild, NestedScrollingParent
{
  private static final int[] C = { 16842766 };
  public static final int DEFAULT = 1;
  public static final int DEFAULT_SLINGSHOT_DISTANCE = -1;
  public static final int LARGE = 0;
  private static final String l = "SwipeRefreshLayout";
  private boolean A;
  private final DecelerateInterpolator B;
  private int D = -1;
  private Animation E;
  private Animation F;
  private Animation G;
  private Animation H;
  private Animation I;
  private int J;
  private OnChildScrollUpCallback K;
  private Animation.AnimationListener L = new Animation.AnimationListener()
  {
    public void onAnimationEnd(Animation paramAnonymousAnimation)
    {
      if (b)
      {
        i.setAlpha(255);
        i.start();
        if ((j) && (a != null)) {
          a.onRefresh();
        }
        c = e.getTop();
        return;
      }
      a();
    }
    
    public void onAnimationRepeat(Animation paramAnonymousAnimation) {}
    
    public void onAnimationStart(Animation paramAnonymousAnimation) {}
  };
  private final Animation M = new Animation()
  {
    public void applyTransformation(float paramAnonymousFloat, Transformation paramAnonymousTransformation)
    {
      if (!SwipeRefreshLayout.this.k) {
        i = g - Math.abs(mOriginalOffsetTop);
      } else {
        i = g;
      }
      int j = mFrom;
      int i = (int)((i - mFrom) * paramAnonymousFloat);
      int k = e.getTop();
      setTargetOffsetTopAndBottom(j + i - k);
      SwipeRefreshLayout.this.i.setArrowScale(1.0F - paramAnonymousFloat);
    }
  };
  private final Animation N = new Animation()
  {
    public void applyTransformation(float paramAnonymousFloat, Transformation paramAnonymousTransformation)
    {
      a(paramAnonymousFloat);
    }
  };
  OnRefreshListener a;
  boolean b = false;
  int c;
  boolean d;
  a e;
  float f;
  int g;
  int h;
  CircularProgressDrawable i;
  boolean j;
  boolean k;
  private View m;
  protected int mFrom;
  protected int mOriginalOffsetTop;
  private int n;
  private float o = -1.0F;
  private float p;
  private final NestedScrollingParentHelper q;
  private final NestedScrollingChildHelper r;
  private final int[] s = new int[2];
  private final int[] t = new int[2];
  private boolean u;
  private int v;
  private float w;
  private float x;
  private boolean y;
  private int z = -1;
  
  public SwipeRefreshLayout(@NonNull Context paramContext)
  {
    this(paramContext, null);
  }
  
  public SwipeRefreshLayout(@NonNull Context paramContext, @Nullable AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    n = ViewConfiguration.get(paramContext).getScaledTouchSlop();
    v = getResources().getInteger(17694721);
    setWillNotDraw(false);
    B = new DecelerateInterpolator(2.0F);
    DisplayMetrics localDisplayMetrics = getResources().getDisplayMetrics();
    J = ((int)(density * 40.0F));
    b();
    setChildrenDrawingOrderEnabled(true);
    g = ((int)(density * 64.0F));
    o = g;
    q = new NestedScrollingParentHelper(this);
    r = new NestedScrollingChildHelper(this);
    setNestedScrollingEnabled(true);
    int i1 = -J;
    c = i1;
    mOriginalOffsetTop = i1;
    a(1.0F);
    paramContext = paramContext.obtainStyledAttributes(paramAttributeSet, C);
    setEnabled(paramContext.getBoolean(0, true));
    paramContext.recycle();
  }
  
  private Animation a(final int paramInt1, final int paramInt2)
  {
    Animation local4 = new Animation()
    {
      public void applyTransformation(float paramAnonymousFloat, Transformation paramAnonymousTransformation)
      {
        i.setAlpha((int)(paramInt1 + (paramInt2 - paramInt1) * paramAnonymousFloat));
      }
    };
    local4.setDuration(300L);
    e.a(null);
    e.clearAnimation();
    e.startAnimation(local4);
    return local4;
  }
  
  private void a(int paramInt, Animation.AnimationListener paramAnimationListener)
  {
    mFrom = paramInt;
    M.reset();
    M.setDuration(200L);
    M.setInterpolator(B);
    if (paramAnimationListener != null) {
      e.a(paramAnimationListener);
    }
    e.clearAnimation();
    e.startAnimation(M);
  }
  
  private void a(MotionEvent paramMotionEvent)
  {
    int i1 = paramMotionEvent.getActionIndex();
    if (paramMotionEvent.getPointerId(i1) == z)
    {
      if (i1 == 0) {
        i1 = 1;
      } else {
        i1 = 0;
      }
      z = paramMotionEvent.getPointerId(i1);
    }
  }
  
  private void a(boolean paramBoolean1, boolean paramBoolean2)
  {
    if (b != paramBoolean1)
    {
      j = paramBoolean2;
      e();
      b = paramBoolean1;
      if (b)
      {
        a(c, L);
        return;
      }
      a(L);
    }
  }
  
  private boolean a(Animation paramAnimation)
  {
    return (paramAnimation != null) && (paramAnimation.hasStarted()) && (!paramAnimation.hasEnded());
  }
  
  private void b()
  {
    e = new a(getContext(), -328966);
    i = new CircularProgressDrawable(getContext());
    i.setStyle(1);
    e.setImageDrawable(i);
    e.setVisibility(8);
    addView(e);
  }
  
  private void b(float paramFloat)
  {
    i.setArrowEnabled(true);
    float f1 = Math.min(1.0F, Math.abs(paramFloat / o));
    float f2 = (float)Math.max(f1 - 0.4D, 0.0D) * 5.0F / 3.0F;
    float f4 = Math.abs(paramFloat);
    float f5 = o;
    if (h > 0) {
      i1 = h;
    }
    float f3;
    for (;;)
    {
      f3 = i1;
      break;
      if (k) {
        i1 = g - mOriginalOffsetTop;
      } else {
        i1 = g;
      }
    }
    double d1 = Math.max(0.0F, Math.min(f4 - f5, f3 * 2.0F) / f3) / 4.0F;
    f4 = (float)(d1 - Math.pow(d1, 2.0D)) * 2.0F;
    int i1 = mOriginalOffsetTop;
    int i2 = (int)(f3 * f1 + f3 * f4 * 2.0F);
    if (e.getVisibility() != 0) {
      e.setVisibility(0);
    }
    if (!d)
    {
      e.setScaleX(1.0F);
      e.setScaleY(1.0F);
    }
    if (d) {
      setAnimationProgress(Math.min(1.0F, paramFloat / o));
    }
    if (paramFloat < o)
    {
      if ((i.getAlpha() > 76) && (!a(G))) {
        c();
      }
    }
    else if ((i.getAlpha() < 255) && (!a(H))) {
      d();
    }
    i.setStartEndTrim(0.0F, Math.min(0.8F, f2 * 0.8F));
    i.setArrowScale(Math.min(1.0F, f2));
    i.setProgressRotation((f2 * 0.4F - 0.25F + f4 * 2.0F) * 0.5F);
    setTargetOffsetTopAndBottom(i1 + i2 - c);
  }
  
  private void b(int paramInt, Animation.AnimationListener paramAnimationListener)
  {
    if (d)
    {
      c(paramInt, paramAnimationListener);
      return;
    }
    mFrom = paramInt;
    N.reset();
    N.setDuration(200L);
    N.setInterpolator(B);
    if (paramAnimationListener != null) {
      e.a(paramAnimationListener);
    }
    e.clearAnimation();
    e.startAnimation(N);
  }
  
  private void b(Animation.AnimationListener paramAnimationListener)
  {
    e.setVisibility(0);
    i.setAlpha(255);
    E = new Animation()
    {
      public void applyTransformation(float paramAnonymousFloat, Transformation paramAnonymousTransformation)
      {
        setAnimationProgress(paramAnonymousFloat);
      }
    };
    E.setDuration(v);
    if (paramAnimationListener != null) {
      e.a(paramAnimationListener);
    }
    e.clearAnimation();
    e.startAnimation(E);
  }
  
  private void c()
  {
    G = a(i.getAlpha(), 76);
  }
  
  private void c(float paramFloat)
  {
    if (paramFloat > o)
    {
      a(true, true);
      return;
    }
    b = false;
    i.setStartEndTrim(0.0F, 0.0F);
    Animation.AnimationListener local5 = null;
    if (!d) {
      local5 = new Animation.AnimationListener()
      {
        public void onAnimationEnd(Animation paramAnonymousAnimation)
        {
          if (!d) {
            a(null);
          }
        }
        
        public void onAnimationRepeat(Animation paramAnonymousAnimation) {}
        
        public void onAnimationStart(Animation paramAnonymousAnimation) {}
      };
    }
    b(c, local5);
    i.setArrowEnabled(false);
  }
  
  private void c(int paramInt, Animation.AnimationListener paramAnimationListener)
  {
    mFrom = paramInt;
    f = e.getScaleX();
    I = new Animation()
    {
      public void applyTransformation(float paramAnonymousFloat, Transformation paramAnonymousTransformation)
      {
        float f1 = f;
        float f2 = -f;
        setAnimationProgress(f1 + f2 * paramAnonymousFloat);
        a(paramAnonymousFloat);
      }
    };
    I.setDuration(150L);
    if (paramAnimationListener != null) {
      e.a(paramAnimationListener);
    }
    e.clearAnimation();
    e.startAnimation(I);
  }
  
  private void d()
  {
    H = a(i.getAlpha(), 255);
  }
  
  private void d(float paramFloat)
  {
    if ((paramFloat - x > n) && (!y))
    {
      w = (x + n);
      y = true;
      i.setAlpha(76);
    }
  }
  
  private void e()
  {
    if (m == null)
    {
      int i1 = 0;
      while (i1 < getChildCount())
      {
        View localView = getChildAt(i1);
        if (!localView.equals(e))
        {
          m = localView;
          return;
        }
        i1 += 1;
      }
    }
  }
  
  private void setColorViewAlpha(int paramInt)
  {
    e.getBackground().setAlpha(paramInt);
    i.setAlpha(paramInt);
  }
  
  void a()
  {
    e.clearAnimation();
    i.stop();
    e.setVisibility(8);
    setColorViewAlpha(255);
    if (d) {
      setAnimationProgress(0.0F);
    } else {
      setTargetOffsetTopAndBottom(mOriginalOffsetTop - c);
    }
    c = e.getTop();
  }
  
  void a(float paramFloat)
  {
    setTargetOffsetTopAndBottom(mFrom + (int)((mOriginalOffsetTop - mFrom) * paramFloat) - e.getTop());
  }
  
  void a(Animation.AnimationListener paramAnimationListener)
  {
    F = new Animation()
    {
      public void applyTransformation(float paramAnonymousFloat, Transformation paramAnonymousTransformation)
      {
        setAnimationProgress(1.0F - paramAnonymousFloat);
      }
    };
    F.setDuration(150L);
    e.a(paramAnimationListener);
    e.clearAnimation();
    e.startAnimation(F);
  }
  
  public boolean canChildScrollUp()
  {
    if (K != null) {
      return K.canChildScrollUp(this, m);
    }
    if ((m instanceof ListView)) {
      return ListViewCompat.canScrollList((ListView)m, -1);
    }
    return m.canScrollVertically(-1);
  }
  
  public boolean dispatchNestedFling(float paramFloat1, float paramFloat2, boolean paramBoolean)
  {
    return r.dispatchNestedFling(paramFloat1, paramFloat2, paramBoolean);
  }
  
  public boolean dispatchNestedPreFling(float paramFloat1, float paramFloat2)
  {
    return r.dispatchNestedPreFling(paramFloat1, paramFloat2);
  }
  
  public boolean dispatchNestedPreScroll(int paramInt1, int paramInt2, int[] paramArrayOfInt1, int[] paramArrayOfInt2)
  {
    return r.dispatchNestedPreScroll(paramInt1, paramInt2, paramArrayOfInt1, paramArrayOfInt2);
  }
  
  public boolean dispatchNestedScroll(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int[] paramArrayOfInt)
  {
    return r.dispatchNestedScroll(paramInt1, paramInt2, paramInt3, paramInt4, paramArrayOfInt);
  }
  
  protected int getChildDrawingOrder(int paramInt1, int paramInt2)
  {
    if (D < 0) {
      return paramInt2;
    }
    if (paramInt2 == paramInt1 - 1) {
      return D;
    }
    if (paramInt2 >= D) {
      return paramInt2 + 1;
    }
    return paramInt2;
  }
  
  public int getNestedScrollAxes()
  {
    return q.getNestedScrollAxes();
  }
  
  public int getProgressCircleDiameter()
  {
    return J;
  }
  
  public int getProgressViewEndOffset()
  {
    return g;
  }
  
  public int getProgressViewStartOffset()
  {
    return mOriginalOffsetTop;
  }
  
  public boolean hasNestedScrollingParent()
  {
    return r.hasNestedScrollingParent();
  }
  
  public boolean isNestedScrollingEnabled()
  {
    return r.isNestedScrollingEnabled();
  }
  
  public boolean isRefreshing()
  {
    return b;
  }
  
  protected void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
    a();
  }
  
  public boolean onInterceptTouchEvent(MotionEvent paramMotionEvent)
  {
    e();
    int i1 = paramMotionEvent.getActionMasked();
    if ((A) && (i1 == 0)) {
      A = false;
    }
    if ((isEnabled()) && (!A) && (!canChildScrollUp()) && (!b))
    {
      if (u) {
        return false;
      }
      if (i1 != 6) {
        switch (i1)
        {
        default: 
          break;
        case 2: 
          if (z == -1)
          {
            Log.e(l, "Got ACTION_MOVE event but don't have an active pointer id.");
            return false;
          }
          i1 = paramMotionEvent.findPointerIndex(z);
          if (i1 < 0) {
            return false;
          }
          d(paramMotionEvent.getY(i1));
          break;
        case 1: 
        case 3: 
          y = false;
          z = -1;
          break;
        case 0: 
          setTargetOffsetTopAndBottom(mOriginalOffsetTop - e.getTop());
          z = paramMotionEvent.getPointerId(0);
          y = false;
          i1 = paramMotionEvent.findPointerIndex(z);
          if (i1 < 0) {
            return false;
          }
          x = paramMotionEvent.getY(i1);
          break;
        }
      } else {
        a(paramMotionEvent);
      }
      return y;
    }
    return false;
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    paramInt1 = getMeasuredWidth();
    paramInt2 = getMeasuredHeight();
    if (getChildCount() == 0) {
      return;
    }
    if (m == null) {
      e();
    }
    if (m == null) {
      return;
    }
    Object localObject = m;
    paramInt3 = getPaddingLeft();
    paramInt4 = getPaddingTop();
    ((View)localObject).layout(paramInt3, paramInt4, paramInt1 - getPaddingLeft() - getPaddingRight() + paramInt3, paramInt2 - getPaddingTop() - getPaddingBottom() + paramInt4);
    paramInt3 = e.getMeasuredWidth();
    paramInt2 = e.getMeasuredHeight();
    localObject = e;
    paramInt1 /= 2;
    paramInt3 /= 2;
    ((a)localObject).layout(paramInt1 - paramInt3, c, paramInt1 + paramInt3, c + paramInt2);
  }
  
  public void onMeasure(int paramInt1, int paramInt2)
  {
    super.onMeasure(paramInt1, paramInt2);
    if (m == null) {
      e();
    }
    if (m == null) {
      return;
    }
    m.measure(View.MeasureSpec.makeMeasureSpec(getMeasuredWidth() - getPaddingLeft() - getPaddingRight(), 1073741824), View.MeasureSpec.makeMeasureSpec(getMeasuredHeight() - getPaddingTop() - getPaddingBottom(), 1073741824));
    e.measure(View.MeasureSpec.makeMeasureSpec(J, 1073741824), View.MeasureSpec.makeMeasureSpec(J, 1073741824));
    D = -1;
    paramInt1 = 0;
    while (paramInt1 < getChildCount())
    {
      if (getChildAt(paramInt1) == e)
      {
        D = paramInt1;
        return;
      }
      paramInt1 += 1;
    }
  }
  
  public boolean onNestedFling(View paramView, float paramFloat1, float paramFloat2, boolean paramBoolean)
  {
    return dispatchNestedFling(paramFloat1, paramFloat2, paramBoolean);
  }
  
  public boolean onNestedPreFling(View paramView, float paramFloat1, float paramFloat2)
  {
    return dispatchNestedPreFling(paramFloat1, paramFloat2);
  }
  
  public void onNestedPreScroll(View paramView, int paramInt1, int paramInt2, int[] paramArrayOfInt)
  {
    if ((paramInt2 > 0) && (p > 0.0F))
    {
      float f1 = paramInt2;
      if (f1 > p)
      {
        paramArrayOfInt[1] = (paramInt2 - (int)p);
        p = 0.0F;
      }
      else
      {
        p -= f1;
        paramArrayOfInt[1] = paramInt2;
      }
      b(p);
    }
    if ((k) && (paramInt2 > 0) && (p == 0.0F) && (Math.abs(paramInt2 - paramArrayOfInt[1]) > 0)) {
      e.setVisibility(8);
    }
    paramView = s;
    if (dispatchNestedPreScroll(paramInt1 - paramArrayOfInt[0], paramInt2 - paramArrayOfInt[1], paramView, null))
    {
      paramArrayOfInt[0] += paramView[0];
      paramArrayOfInt[1] += paramView[1];
    }
  }
  
  public void onNestedScroll(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    dispatchNestedScroll(paramInt1, paramInt2, paramInt3, paramInt4, t);
    paramInt1 = paramInt4 + t[1];
    if ((paramInt1 < 0) && (!canChildScrollUp()))
    {
      p += Math.abs(paramInt1);
      b(p);
    }
  }
  
  public void onNestedScrollAccepted(View paramView1, View paramView2, int paramInt)
  {
    q.onNestedScrollAccepted(paramView1, paramView2, paramInt);
    startNestedScroll(paramInt & 0x2);
    p = 0.0F;
    u = true;
  }
  
  public boolean onStartNestedScroll(View paramView1, View paramView2, int paramInt)
  {
    return (isEnabled()) && (!A) && (!b) && ((paramInt & 0x2) != 0);
  }
  
  public void onStopNestedScroll(View paramView)
  {
    q.onStopNestedScroll(paramView);
    u = false;
    if (p > 0.0F)
    {
      c(p);
      p = 0.0F;
    }
    stopNestedScroll();
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    int i1 = paramMotionEvent.getActionMasked();
    if ((A) && (i1 == 0)) {
      A = false;
    }
    if ((isEnabled()) && (!A) && (!canChildScrollUp()) && (!b))
    {
      if (u) {
        return false;
      }
      float f1;
      switch (i1)
      {
      case 4: 
      default: 
        break;
      case 6: 
        a(paramMotionEvent);
        break;
      case 5: 
        i1 = paramMotionEvent.getActionIndex();
        if (i1 < 0)
        {
          Log.e(l, "Got ACTION_POINTER_DOWN event but have an invalid action index.");
          return false;
        }
        z = paramMotionEvent.getPointerId(i1);
        break;
      case 3: 
        return false;
      case 2: 
        i1 = paramMotionEvent.findPointerIndex(z);
        if (i1 < 0)
        {
          Log.e(l, "Got ACTION_MOVE event but have an invalid active pointer id.");
          return false;
        }
        f1 = paramMotionEvent.getY(i1);
        d(f1);
        if (y)
        {
          f1 = (f1 - w) * 0.5F;
          if (f1 > 0.0F) {
            b(f1);
          } else {
            return false;
          }
        }
        break;
      case 1: 
        i1 = paramMotionEvent.findPointerIndex(z);
        if (i1 < 0)
        {
          Log.e(l, "Got ACTION_UP event but don't have an active pointer id.");
          return false;
        }
        if (y)
        {
          f1 = paramMotionEvent.getY(i1);
          float f2 = w;
          y = false;
          c((f1 - f2) * 0.5F);
        }
        z = -1;
        return false;
      case 0: 
        z = paramMotionEvent.getPointerId(0);
        y = false;
      }
      return true;
    }
    return false;
  }
  
  public void requestDisallowInterceptTouchEvent(boolean paramBoolean)
  {
    if ((Build.VERSION.SDK_INT >= 21) || (!(m instanceof AbsListView)))
    {
      if ((m != null) && (!ViewCompat.isNestedScrollingEnabled(m))) {
        return;
      }
      super.requestDisallowInterceptTouchEvent(paramBoolean);
    }
  }
  
  void setAnimationProgress(float paramFloat)
  {
    e.setScaleX(paramFloat);
    e.setScaleY(paramFloat);
  }
  
  @Deprecated
  public void setColorScheme(@ColorRes int... paramVarArgs)
  {
    setColorSchemeResources(paramVarArgs);
  }
  
  public void setColorSchemeColors(@ColorInt int... paramVarArgs)
  {
    e();
    i.setColorSchemeColors(paramVarArgs);
  }
  
  public void setColorSchemeResources(@ColorRes int... paramVarArgs)
  {
    Context localContext = getContext();
    int[] arrayOfInt = new int[paramVarArgs.length];
    int i1 = 0;
    while (i1 < paramVarArgs.length)
    {
      arrayOfInt[i1] = ContextCompat.getColor(localContext, paramVarArgs[i1]);
      i1 += 1;
    }
    setColorSchemeColors(arrayOfInt);
  }
  
  public void setDistanceToTriggerSync(int paramInt)
  {
    o = paramInt;
  }
  
  public void setEnabled(boolean paramBoolean)
  {
    super.setEnabled(paramBoolean);
    if (!paramBoolean) {
      a();
    }
  }
  
  public void setNestedScrollingEnabled(boolean paramBoolean)
  {
    r.setNestedScrollingEnabled(paramBoolean);
  }
  
  public void setOnChildScrollUpCallback(@Nullable OnChildScrollUpCallback paramOnChildScrollUpCallback)
  {
    K = paramOnChildScrollUpCallback;
  }
  
  public void setOnRefreshListener(@Nullable OnRefreshListener paramOnRefreshListener)
  {
    a = paramOnRefreshListener;
  }
  
  @Deprecated
  public void setProgressBackgroundColor(int paramInt)
  {
    setProgressBackgroundColorSchemeResource(paramInt);
  }
  
  public void setProgressBackgroundColorSchemeColor(@ColorInt int paramInt)
  {
    e.setBackgroundColor(paramInt);
  }
  
  public void setProgressBackgroundColorSchemeResource(@ColorRes int paramInt)
  {
    setProgressBackgroundColorSchemeColor(ContextCompat.getColor(getContext(), paramInt));
  }
  
  public void setProgressViewEndTarget(boolean paramBoolean, int paramInt)
  {
    g = paramInt;
    d = paramBoolean;
    e.invalidate();
  }
  
  public void setProgressViewOffset(boolean paramBoolean, int paramInt1, int paramInt2)
  {
    d = paramBoolean;
    mOriginalOffsetTop = paramInt1;
    g = paramInt2;
    k = true;
    a();
    b = false;
  }
  
  public void setRefreshing(boolean paramBoolean)
  {
    if ((paramBoolean) && (b != paramBoolean))
    {
      b = paramBoolean;
      int i1;
      if (!k) {
        i1 = g + mOriginalOffsetTop;
      } else {
        i1 = g;
      }
      setTargetOffsetTopAndBottom(i1 - c);
      j = false;
      b(L);
      return;
    }
    a(paramBoolean, false);
  }
  
  public void setSize(int paramInt)
  {
    if ((paramInt != 0) && (paramInt != 1)) {
      return;
    }
    DisplayMetrics localDisplayMetrics = getResources().getDisplayMetrics();
    if (paramInt == 0) {
      J = ((int)(density * 56.0F));
    } else {
      J = ((int)(density * 40.0F));
    }
    e.setImageDrawable(null);
    i.setStyle(paramInt);
    e.setImageDrawable(i);
  }
  
  public void setSlingshotDistance(@Px int paramInt)
  {
    h = paramInt;
  }
  
  void setTargetOffsetTopAndBottom(int paramInt)
  {
    e.bringToFront();
    ViewCompat.offsetTopAndBottom(e, paramInt);
    c = e.getTop();
  }
  
  public boolean startNestedScroll(int paramInt)
  {
    return r.startNestedScroll(paramInt);
  }
  
  public void stopNestedScroll()
  {
    r.stopNestedScroll();
  }
  
  public static abstract interface OnChildScrollUpCallback
  {
    public abstract boolean canChildScrollUp(@NonNull SwipeRefreshLayout paramSwipeRefreshLayout, @Nullable View paramView);
  }
  
  public static abstract interface OnRefreshListener
  {
    public abstract void onRefresh();
  }
}
