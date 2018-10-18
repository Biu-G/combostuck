package android.support.v4.widget;

import android.content.Context;
import android.content.res.Resources;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.Px;
import android.support.v4.view.ViewCompat;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.animation.Interpolator;
import android.widget.OverScroller;
import java.util.Arrays;

public class ViewDragHelper
{
  public static final int DIRECTION_ALL = 3;
  public static final int DIRECTION_HORIZONTAL = 1;
  public static final int DIRECTION_VERTICAL = 2;
  public static final int EDGE_ALL = 15;
  public static final int EDGE_BOTTOM = 8;
  public static final int EDGE_LEFT = 1;
  public static final int EDGE_RIGHT = 2;
  public static final int EDGE_TOP = 4;
  public static final int INVALID_POINTER = -1;
  public static final int STATE_DRAGGING = 1;
  public static final int STATE_IDLE = 0;
  public static final int STATE_SETTLING = 2;
  private static final Interpolator v = new Interpolator()
  {
    public float getInterpolation(float paramAnonymousFloat)
    {
      paramAnonymousFloat -= 1.0F;
      return paramAnonymousFloat * paramAnonymousFloat * paramAnonymousFloat * paramAnonymousFloat * paramAnonymousFloat + 1.0F;
    }
  };
  private int a;
  private int b;
  private int c = -1;
  private float[] d;
  private float[] e;
  private float[] f;
  private float[] g;
  private int[] h;
  private int[] i;
  private int[] j;
  private int k;
  private VelocityTracker l;
  private float m;
  private float n;
  private int o;
  private int p;
  private OverScroller q;
  private final Callback r;
  private View s;
  private boolean t;
  private final ViewGroup u;
  private final Runnable w = new Runnable()
  {
    public void run()
    {
      a(0);
    }
  };
  
  private ViewDragHelper(@NonNull Context paramContext, @NonNull ViewGroup paramViewGroup, @NonNull Callback paramCallback)
  {
    if (paramViewGroup != null)
    {
      if (paramCallback != null)
      {
        u = paramViewGroup;
        r = paramCallback;
        paramViewGroup = ViewConfiguration.get(paramContext);
        o = ((int)(getResourcesgetDisplayMetricsdensity * 20.0F + 0.5F));
        b = paramViewGroup.getScaledTouchSlop();
        m = paramViewGroup.getScaledMaximumFlingVelocity();
        n = paramViewGroup.getScaledMinimumFlingVelocity();
        q = new OverScroller(paramContext, v);
        return;
      }
      throw new IllegalArgumentException("Callback may not be null");
    }
    throw new IllegalArgumentException("Parent view may not be null");
  }
  
  private float a(float paramFloat)
  {
    return (float)Math.sin((paramFloat - 0.5F) * 0.47123894F);
  }
  
  private float a(float paramFloat1, float paramFloat2, float paramFloat3)
  {
    float f1 = Math.abs(paramFloat1);
    if (f1 < paramFloat2) {
      return 0.0F;
    }
    if (f1 > paramFloat3)
    {
      if (paramFloat1 > 0.0F) {
        return paramFloat3;
      }
      return -paramFloat3;
    }
    return paramFloat1;
  }
  
  private int a(int paramInt1, int paramInt2)
  {
    if (paramInt1 < u.getLeft() + o) {
      i2 = 1;
    } else {
      i2 = 0;
    }
    int i1 = i2;
    if (paramInt2 < u.getTop() + o) {
      i1 = i2 | 0x4;
    }
    int i2 = i1;
    if (paramInt1 > u.getRight() - o) {
      i2 = i1 | 0x2;
    }
    paramInt1 = i2;
    if (paramInt2 > u.getBottom() - o) {
      paramInt1 = i2 | 0x8;
    }
    return paramInt1;
  }
  
  private int a(int paramInt1, int paramInt2, int paramInt3)
  {
    if (paramInt1 == 0) {
      return 0;
    }
    int i1 = u.getWidth();
    int i2 = i1 / 2;
    float f2 = Math.min(1.0F, Math.abs(paramInt1) / i1);
    float f1 = i2;
    f2 = a(f2);
    paramInt2 = Math.abs(paramInt2);
    if (paramInt2 > 0) {
      paramInt1 = Math.round(Math.abs((f1 + f2 * f1) / paramInt2) * 1000.0F) * 4;
    } else {
      paramInt1 = (int)((Math.abs(paramInt1) / paramInt3 + 1.0F) * 256.0F);
    }
    return Math.min(paramInt1, 600);
  }
  
  private int a(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    paramInt3 = b(paramInt3, (int)n, (int)m);
    paramInt4 = b(paramInt4, (int)n, (int)m);
    int i1 = Math.abs(paramInt1);
    int i2 = Math.abs(paramInt2);
    int i3 = Math.abs(paramInt3);
    int i4 = Math.abs(paramInt4);
    int i5 = i3 + i4;
    int i6 = i1 + i2;
    float f1;
    if (paramInt3 != 0) {
      f1 = i3;
    }
    float f3;
    for (float f2 = i5;; f2 = i6)
    {
      f3 = f1 / f2;
      break;
      f1 = i1;
    }
    if (paramInt4 != 0) {
      f1 = i4;
    }
    for (f2 = i5;; f2 = i6)
    {
      f1 /= f2;
      break;
      f1 = i2;
    }
    paramInt1 = a(paramInt1, paramInt3, r.getViewHorizontalDragRange(paramView));
    paramInt2 = a(paramInt2, paramInt4, r.getViewVerticalDragRange(paramView));
    return (int)(paramInt1 * f3 + paramInt2 * f1);
  }
  
  private void a()
  {
    if (d == null) {
      return;
    }
    Arrays.fill(d, 0.0F);
    Arrays.fill(e, 0.0F);
    Arrays.fill(f, 0.0F);
    Arrays.fill(g, 0.0F);
    Arrays.fill(h, 0);
    Arrays.fill(i, 0);
    Arrays.fill(j, 0);
    k = 0;
  }
  
  private void a(float paramFloat1, float paramFloat2)
  {
    t = true;
    r.onViewReleased(s, paramFloat1, paramFloat2);
    t = false;
    if (a == 1) {
      a(0);
    }
  }
  
  private void a(float paramFloat1, float paramFloat2, int paramInt)
  {
    c(paramInt);
    float[] arrayOfFloat = d;
    f[paramInt] = paramFloat1;
    arrayOfFloat[paramInt] = paramFloat1;
    arrayOfFloat = e;
    g[paramInt] = paramFloat2;
    arrayOfFloat[paramInt] = paramFloat2;
    h[paramInt] = a((int)paramFloat1, (int)paramFloat2);
    k |= 1 << paramInt;
  }
  
  private void a(MotionEvent paramMotionEvent)
  {
    int i2 = paramMotionEvent.getPointerCount();
    int i1 = 0;
    while (i1 < i2)
    {
      int i3 = paramMotionEvent.getPointerId(i1);
      if (d(i3))
      {
        float f1 = paramMotionEvent.getX(i1);
        float f2 = paramMotionEvent.getY(i1);
        f[i3] = f1;
        g[i3] = f2;
      }
      i1 += 1;
    }
  }
  
  private boolean a(float paramFloat1, float paramFloat2, int paramInt1, int paramInt2)
  {
    paramFloat1 = Math.abs(paramFloat1);
    paramFloat2 = Math.abs(paramFloat2);
    int i1 = h[paramInt1];
    boolean bool2 = false;
    if (((i1 & paramInt2) == paramInt2) && ((p & paramInt2) != 0) && ((j[paramInt1] & paramInt2) != paramInt2) && ((i[paramInt1] & paramInt2) != paramInt2))
    {
      if ((paramFloat1 <= b) && (paramFloat2 <= b)) {
        return false;
      }
      if ((paramFloat1 < paramFloat2 * 0.5F) && (r.onEdgeLock(paramInt2)))
      {
        int[] arrayOfInt = j;
        arrayOfInt[paramInt1] |= paramInt2;
        return false;
      }
      boolean bool1 = bool2;
      if ((i[paramInt1] & paramInt2) == 0)
      {
        bool1 = bool2;
        if (paramFloat1 > b) {
          bool1 = true;
        }
      }
      return bool1;
    }
    return false;
  }
  
  private boolean a(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    int i1 = s.getLeft();
    int i2 = s.getTop();
    paramInt1 -= i1;
    paramInt2 -= i2;
    if ((paramInt1 == 0) && (paramInt2 == 0))
    {
      q.abortAnimation();
      a(0);
      return false;
    }
    paramInt3 = a(s, paramInt1, paramInt2, paramInt3, paramInt4);
    q.startScroll(i1, i2, paramInt1, paramInt2, paramInt3);
    a(2);
    return true;
  }
  
  private boolean a(View paramView, float paramFloat1, float paramFloat2)
  {
    boolean bool2 = false;
    boolean bool3 = false;
    boolean bool1 = false;
    if (paramView == null) {
      return false;
    }
    int i1;
    if (r.getViewHorizontalDragRange(paramView) > 0) {
      i1 = 1;
    } else {
      i1 = 0;
    }
    int i2;
    if (r.getViewVerticalDragRange(paramView) > 0) {
      i2 = 1;
    } else {
      i2 = 0;
    }
    if ((i1 != 0) && (i2 != 0))
    {
      if (paramFloat1 * paramFloat1 + paramFloat2 * paramFloat2 > b * b) {
        bool1 = true;
      }
      return bool1;
    }
    if (i1 != 0)
    {
      bool1 = bool2;
      if (Math.abs(paramFloat1) > b) {
        bool1 = true;
      }
      return bool1;
    }
    if (i2 != 0)
    {
      bool1 = bool3;
      if (Math.abs(paramFloat2) > b) {
        bool1 = true;
      }
      return bool1;
    }
    return false;
  }
  
  private int b(int paramInt1, int paramInt2, int paramInt3)
  {
    int i1 = Math.abs(paramInt1);
    if (i1 < paramInt2) {
      return 0;
    }
    if (i1 > paramInt3)
    {
      if (paramInt1 > 0) {
        return paramInt3;
      }
      return -paramInt3;
    }
    return paramInt1;
  }
  
  private void b()
  {
    l.computeCurrentVelocity(1000, m);
    a(a(l.getXVelocity(c), n, m), a(l.getYVelocity(c), n, m));
  }
  
  private void b(float paramFloat1, float paramFloat2, int paramInt)
  {
    int i2 = 1;
    if (!a(paramFloat1, paramFloat2, paramInt, 1)) {
      i2 = 0;
    }
    int i1 = i2;
    if (a(paramFloat2, paramFloat1, paramInt, 4)) {
      i1 = i2 | 0x4;
    }
    i2 = i1;
    if (a(paramFloat1, paramFloat2, paramInt, 2)) {
      i2 = i1 | 0x2;
    }
    i1 = i2;
    if (a(paramFloat2, paramFloat1, paramInt, 8)) {
      i1 = i2 | 0x8;
    }
    if (i1 != 0)
    {
      int[] arrayOfInt = i;
      arrayOfInt[paramInt] |= i1;
      r.onEdgeDragStarted(i1, paramInt);
    }
  }
  
  private void b(int paramInt)
  {
    if (d != null)
    {
      if (!isPointerDown(paramInt)) {
        return;
      }
      d[paramInt] = 0.0F;
      e[paramInt] = 0.0F;
      f[paramInt] = 0.0F;
      g[paramInt] = 0.0F;
      h[paramInt] = 0;
      i[paramInt] = 0;
      j[paramInt] = 0;
      k = (1 << paramInt & k);
      return;
    }
  }
  
  private void b(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    int i2 = s.getLeft();
    int i3 = s.getTop();
    int i1 = paramInt1;
    if (paramInt3 != 0)
    {
      i1 = r.clampViewPositionHorizontal(s, paramInt1, paramInt3);
      ViewCompat.offsetLeftAndRight(s, i1 - i2);
    }
    paramInt1 = paramInt2;
    if (paramInt4 != 0)
    {
      paramInt1 = r.clampViewPositionVertical(s, paramInt2, paramInt4);
      ViewCompat.offsetTopAndBottom(s, paramInt1 - i3);
    }
    if ((paramInt3 != 0) || (paramInt4 != 0)) {
      r.onViewPositionChanged(s, i1, paramInt1, i1 - i2, paramInt1 - i3);
    }
  }
  
  private void c(int paramInt)
  {
    if ((d == null) || (d.length <= paramInt))
    {
      paramInt += 1;
      float[] arrayOfFloat1 = new float[paramInt];
      float[] arrayOfFloat2 = new float[paramInt];
      float[] arrayOfFloat3 = new float[paramInt];
      float[] arrayOfFloat4 = new float[paramInt];
      int[] arrayOfInt1 = new int[paramInt];
      int[] arrayOfInt2 = new int[paramInt];
      int[] arrayOfInt3 = new int[paramInt];
      if (d != null)
      {
        System.arraycopy(d, 0, arrayOfFloat1, 0, d.length);
        System.arraycopy(e, 0, arrayOfFloat2, 0, e.length);
        System.arraycopy(f, 0, arrayOfFloat3, 0, f.length);
        System.arraycopy(g, 0, arrayOfFloat4, 0, g.length);
        System.arraycopy(h, 0, arrayOfInt1, 0, h.length);
        System.arraycopy(i, 0, arrayOfInt2, 0, i.length);
        System.arraycopy(j, 0, arrayOfInt3, 0, j.length);
      }
      d = arrayOfFloat1;
      e = arrayOfFloat2;
      f = arrayOfFloat3;
      g = arrayOfFloat4;
      h = arrayOfInt1;
      i = arrayOfInt2;
      j = arrayOfInt3;
    }
  }
  
  public static ViewDragHelper create(@NonNull ViewGroup paramViewGroup, float paramFloat, @NonNull Callback paramCallback)
  {
    paramViewGroup = create(paramViewGroup, paramCallback);
    b = ((int)(b * (1.0F / paramFloat)));
    return paramViewGroup;
  }
  
  public static ViewDragHelper create(@NonNull ViewGroup paramViewGroup, @NonNull Callback paramCallback)
  {
    return new ViewDragHelper(paramViewGroup.getContext(), paramViewGroup, paramCallback);
  }
  
  private boolean d(int paramInt)
  {
    if (!isPointerDown(paramInt))
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("Ignoring pointerId=");
      localStringBuilder.append(paramInt);
      localStringBuilder.append(" because ACTION_DOWN was not received ");
      localStringBuilder.append("for this pointer before ACTION_MOVE. It likely happened because ");
      localStringBuilder.append(" ViewDragHelper did not receive all the events in the event stream.");
      Log.e("ViewDragHelper", localStringBuilder.toString());
      return false;
    }
    return true;
  }
  
  void a(int paramInt)
  {
    u.removeCallbacks(w);
    if (a != paramInt)
    {
      a = paramInt;
      r.onViewDragStateChanged(paramInt);
      if (a == 0) {
        s = null;
      }
    }
  }
  
  boolean a(View paramView, int paramInt)
  {
    if ((paramView == s) && (c == paramInt)) {
      return true;
    }
    if ((paramView != null) && (r.tryCaptureView(paramView, paramInt)))
    {
      c = paramInt;
      captureChildView(paramView, paramInt);
      return true;
    }
    return false;
  }
  
  public void abort()
  {
    cancel();
    if (a == 2)
    {
      int i1 = q.getCurrX();
      int i2 = q.getCurrY();
      q.abortAnimation();
      int i3 = q.getCurrX();
      int i4 = q.getCurrY();
      r.onViewPositionChanged(s, i3, i4, i3 - i1, i4 - i2);
    }
    a(0);
  }
  
  protected boolean canScroll(@NonNull View paramView, boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    boolean bool2 = paramView instanceof ViewGroup;
    boolean bool1 = true;
    if (bool2)
    {
      ViewGroup localViewGroup = (ViewGroup)paramView;
      int i2 = paramView.getScrollX();
      int i3 = paramView.getScrollY();
      int i1 = localViewGroup.getChildCount() - 1;
      while (i1 >= 0)
      {
        View localView = localViewGroup.getChildAt(i1);
        int i4 = paramInt3 + i2;
        if ((i4 >= localView.getLeft()) && (i4 < localView.getRight()))
        {
          int i5 = paramInt4 + i3;
          if ((i5 >= localView.getTop()) && (i5 < localView.getBottom()) && (canScroll(localView, true, paramInt1, paramInt2, i4 - localView.getLeft(), i5 - localView.getTop()))) {
            return true;
          }
        }
        i1 -= 1;
      }
    }
    if (paramBoolean)
    {
      paramBoolean = bool1;
      if (paramView.canScrollHorizontally(-paramInt1)) {
        return paramBoolean;
      }
      if (paramView.canScrollVertically(-paramInt2)) {
        return true;
      }
    }
    paramBoolean = false;
    return paramBoolean;
  }
  
  public void cancel()
  {
    c = -1;
    a();
    if (l != null)
    {
      l.recycle();
      l = null;
    }
  }
  
  public void captureChildView(@NonNull View paramView, int paramInt)
  {
    if (paramView.getParent() == u)
    {
      s = paramView;
      c = paramInt;
      r.onViewCaptured(paramView, paramInt);
      a(1);
      return;
    }
    paramView = new StringBuilder();
    paramView.append("captureChildView: parameter must be a descendant of the ViewDragHelper's tracked parent view (");
    paramView.append(u);
    paramView.append(")");
    throw new IllegalArgumentException(paramView.toString());
  }
  
  public boolean checkTouchSlop(int paramInt)
  {
    int i2 = d.length;
    int i1 = 0;
    while (i1 < i2)
    {
      if (checkTouchSlop(paramInt, i1)) {
        return true;
      }
      i1 += 1;
    }
    return false;
  }
  
  public boolean checkTouchSlop(int paramInt1, int paramInt2)
  {
    boolean bool4 = isPointerDown(paramInt2);
    boolean bool2 = false;
    boolean bool3 = false;
    boolean bool1 = false;
    if (!bool4) {
      return false;
    }
    int i1;
    if ((paramInt1 & 0x1) == 1) {
      i1 = 1;
    } else {
      i1 = 0;
    }
    if ((paramInt1 & 0x2) == 2) {
      paramInt1 = 1;
    } else {
      paramInt1 = 0;
    }
    float f1 = f[paramInt2] - d[paramInt2];
    float f2 = g[paramInt2] - e[paramInt2];
    if ((i1 != 0) && (paramInt1 != 0))
    {
      if (f1 * f1 + f2 * f2 > b * b) {
        bool1 = true;
      }
      return bool1;
    }
    if (i1 != 0)
    {
      bool1 = bool2;
      if (Math.abs(f1) > b) {
        bool1 = true;
      }
      return bool1;
    }
    if (paramInt1 != 0)
    {
      bool1 = bool3;
      if (Math.abs(f2) > b) {
        bool1 = true;
      }
      return bool1;
    }
    return false;
  }
  
  public boolean continueSettling(boolean paramBoolean)
  {
    int i1 = a;
    boolean bool2 = false;
    if (i1 == 2)
    {
      boolean bool3 = q.computeScrollOffset();
      i1 = q.getCurrX();
      int i2 = q.getCurrY();
      int i3 = i1 - s.getLeft();
      int i4 = i2 - s.getTop();
      if (i3 != 0) {
        ViewCompat.offsetLeftAndRight(s, i3);
      }
      if (i4 != 0) {
        ViewCompat.offsetTopAndBottom(s, i4);
      }
      if ((i3 != 0) || (i4 != 0)) {
        r.onViewPositionChanged(s, i1, i2, i3, i4);
      }
      boolean bool1 = bool3;
      if (bool3)
      {
        bool1 = bool3;
        if (i1 == q.getFinalX())
        {
          bool1 = bool3;
          if (i2 == q.getFinalY())
          {
            q.abortAnimation();
            bool1 = false;
          }
        }
      }
      if (!bool1) {
        if (paramBoolean) {
          u.post(w);
        } else {
          a(0);
        }
      }
    }
    paramBoolean = bool2;
    if (a == 2) {
      paramBoolean = true;
    }
    return paramBoolean;
  }
  
  @Nullable
  public View findTopChildUnder(int paramInt1, int paramInt2)
  {
    int i1 = u.getChildCount() - 1;
    while (i1 >= 0)
    {
      View localView = u.getChildAt(r.getOrderedChildIndex(i1));
      if ((paramInt1 >= localView.getLeft()) && (paramInt1 < localView.getRight()) && (paramInt2 >= localView.getTop()) && (paramInt2 < localView.getBottom())) {
        return localView;
      }
      i1 -= 1;
    }
    return null;
  }
  
  public void flingCapturedView(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    if (t)
    {
      q.fling(s.getLeft(), s.getTop(), (int)l.getXVelocity(c), (int)l.getYVelocity(c), paramInt1, paramInt3, paramInt2, paramInt4);
      a(2);
      return;
    }
    throw new IllegalStateException("Cannot flingCapturedView outside of a call to Callback#onViewReleased");
  }
  
  public int getActivePointerId()
  {
    return c;
  }
  
  @Nullable
  public View getCapturedView()
  {
    return s;
  }
  
  @Px
  public int getEdgeSize()
  {
    return o;
  }
  
  public float getMinVelocity()
  {
    return n;
  }
  
  @Px
  public int getTouchSlop()
  {
    return b;
  }
  
  public int getViewDragState()
  {
    return a;
  }
  
  public boolean isCapturedViewUnder(int paramInt1, int paramInt2)
  {
    return isViewUnder(s, paramInt1, paramInt2);
  }
  
  public boolean isEdgeTouched(int paramInt)
  {
    int i2 = h.length;
    int i1 = 0;
    while (i1 < i2)
    {
      if (isEdgeTouched(paramInt, i1)) {
        return true;
      }
      i1 += 1;
    }
    return false;
  }
  
  public boolean isEdgeTouched(int paramInt1, int paramInt2)
  {
    return (isPointerDown(paramInt2)) && ((paramInt1 & h[paramInt2]) != 0);
  }
  
  public boolean isPointerDown(int paramInt)
  {
    return (1 << paramInt & k) != 0;
  }
  
  public boolean isViewUnder(@Nullable View paramView, int paramInt1, int paramInt2)
  {
    boolean bool2 = false;
    if (paramView == null) {
      return false;
    }
    boolean bool1 = bool2;
    if (paramInt1 >= paramView.getLeft())
    {
      bool1 = bool2;
      if (paramInt1 < paramView.getRight())
      {
        bool1 = bool2;
        if (paramInt2 >= paramView.getTop())
        {
          bool1 = bool2;
          if (paramInt2 < paramView.getBottom()) {
            bool1 = true;
          }
        }
      }
    }
    return bool1;
  }
  
  public void processTouchEvent(@NonNull MotionEvent paramMotionEvent)
  {
    int i4 = paramMotionEvent.getActionMasked();
    int i3 = paramMotionEvent.getActionIndex();
    if (i4 == 0) {
      cancel();
    }
    if (l == null) {
      l = VelocityTracker.obtain();
    }
    l.addMovement(paramMotionEvent);
    int i2 = 0;
    int i1 = 0;
    float f1;
    float f2;
    switch (i4)
    {
    case 4: 
    default: 
      
    case 6: 
      i2 = paramMotionEvent.getPointerId(i3);
      if ((a == 1) && (i2 == c))
      {
        i3 = paramMotionEvent.getPointerCount();
        while (i1 < i3)
        {
          i4 = paramMotionEvent.getPointerId(i1);
          if (i4 != c)
          {
            f1 = paramMotionEvent.getX(i1);
            f2 = paramMotionEvent.getY(i1);
            if ((findTopChildUnder((int)f1, (int)f2) == s) && (a(s, i4)))
            {
              i1 = c;
              break label214;
            }
          }
          i1 += 1;
        }
        i1 = -1;
        if (i1 == -1) {
          b();
        }
      }
      b(i2);
      return;
    case 5: 
      i1 = paramMotionEvent.getPointerId(i3);
      f1 = paramMotionEvent.getX(i3);
      f2 = paramMotionEvent.getY(i3);
      a(f1, f2, i1);
      if (a == 0)
      {
        a(findTopChildUnder((int)f1, (int)f2), i1);
        i2 = h[i1];
        if ((p & i2) != 0) {
          r.onEdgeTouched(i2 & p, i1);
        }
      }
      else if (isCapturedViewUnder((int)f1, (int)f2))
      {
        a(s, i1);
        return;
      }
      break;
    case 3: 
      if (a == 1) {
        a(0.0F, 0.0F);
      }
      cancel();
      return;
    case 2: 
      if (a == 1)
      {
        if (!d(c)) {
          return;
        }
        i1 = paramMotionEvent.findPointerIndex(c);
        f1 = paramMotionEvent.getX(i1);
        f2 = paramMotionEvent.getY(i1);
        i1 = (int)(f1 - f[c]);
        i2 = (int)(f2 - g[c]);
        b(s.getLeft() + i1, s.getTop() + i2, i1, i2);
        a(paramMotionEvent);
        return;
      }
      i3 = paramMotionEvent.getPointerCount();
      i1 = i2;
      while (i1 < i3)
      {
        i2 = paramMotionEvent.getPointerId(i1);
        if (d(i2))
        {
          f1 = paramMotionEvent.getX(i1);
          f2 = paramMotionEvent.getY(i1);
          float f3 = f1 - d[i2];
          float f4 = f2 - e[i2];
          b(f3, f4, i2);
          if (a == 1) {
            break;
          }
          View localView = findTopChildUnder((int)f1, (int)f2);
          if ((a(localView, f3, f4)) && (a(localView, i2))) {
            break;
          }
        }
        i1 += 1;
      }
      a(paramMotionEvent);
      return;
    case 1: 
      if (a == 1) {
        b();
      }
      cancel();
      return;
    case 0: 
      label214:
      f1 = paramMotionEvent.getX();
      f2 = paramMotionEvent.getY();
      i1 = paramMotionEvent.getPointerId(0);
      paramMotionEvent = findTopChildUnder((int)f1, (int)f2);
      a(f1, f2, i1);
      a(paramMotionEvent, i1);
      i2 = h[i1];
      if ((p & i2) != 0) {
        r.onEdgeTouched(i2 & p, i1);
      }
      break;
    }
  }
  
  public void setEdgeTrackingEnabled(int paramInt)
  {
    p = paramInt;
  }
  
  public void setMinVelocity(float paramFloat)
  {
    n = paramFloat;
  }
  
  public boolean settleCapturedViewAt(int paramInt1, int paramInt2)
  {
    if (t) {
      return a(paramInt1, paramInt2, (int)l.getXVelocity(c), (int)l.getYVelocity(c));
    }
    throw new IllegalStateException("Cannot settleCapturedViewAt outside of a call to Callback#onViewReleased");
  }
  
  public boolean shouldInterceptTouchEvent(@NonNull MotionEvent paramMotionEvent)
  {
    int i2 = paramMotionEvent.getActionMasked();
    int i1 = paramMotionEvent.getActionIndex();
    if (i2 == 0) {
      cancel();
    }
    if (l == null) {
      l = VelocityTracker.obtain();
    }
    l.addMovement(paramMotionEvent);
    switch (i2)
    {
    }
    for (;;)
    {
      break;
      b(paramMotionEvent.getPointerId(i1));
      continue;
      i2 = paramMotionEvent.getPointerId(i1);
      float f1 = paramMotionEvent.getX(i1);
      float f2 = paramMotionEvent.getY(i1);
      a(f1, f2, i2);
      if (a == 0)
      {
        i1 = h[i2];
        if ((p & i1) != 0) {
          r.onEdgeTouched(i1 & p, i2);
        }
      }
      else if (a == 2)
      {
        paramMotionEvent = findTopChildUnder((int)f1, (int)f2);
        if (paramMotionEvent == s)
        {
          a(paramMotionEvent, i2);
          continue;
          if ((d != null) && (e != null))
          {
            int i3 = paramMotionEvent.getPointerCount();
            i1 = 0;
            while (i1 < i3)
            {
              int i4 = paramMotionEvent.getPointerId(i1);
              if (d(i4))
              {
                f1 = paramMotionEvent.getX(i1);
                f2 = paramMotionEvent.getY(i1);
                float f3 = f1 - d[i4];
                float f4 = f2 - e[i4];
                View localView = findTopChildUnder((int)f1, (int)f2);
                if ((localView != null) && (a(localView, f3, f4))) {
                  i2 = 1;
                } else {
                  i2 = 0;
                }
                if (i2 != 0)
                {
                  int i5 = localView.getLeft();
                  int i6 = (int)f3;
                  i6 = r.clampViewPositionHorizontal(localView, i5 + i6, i6);
                  int i7 = localView.getTop();
                  int i8 = (int)f4;
                  i8 = r.clampViewPositionVertical(localView, i7 + i8, i8);
                  int i9 = r.getViewHorizontalDragRange(localView);
                  int i10 = r.getViewVerticalDragRange(localView);
                  if (((i9 == 0) || ((i9 > 0) && (i6 == i5))) && ((i10 == 0) || ((i10 > 0) && (i8 == i7)))) {
                    break;
                  }
                }
                else
                {
                  b(f3, f4, i4);
                  if ((a == 1) || ((i2 != 0) && (a(localView, i4)))) {
                    break;
                  }
                }
              }
              i1 += 1;
            }
            a(paramMotionEvent);
            continue;
            cancel();
            continue;
            f1 = paramMotionEvent.getX();
            f2 = paramMotionEvent.getY();
            i1 = paramMotionEvent.getPointerId(0);
            a(f1, f2, i1);
            paramMotionEvent = findTopChildUnder((int)f1, (int)f2);
            if ((paramMotionEvent == s) && (a == 2)) {
              a(paramMotionEvent, i1);
            }
            i2 = h[i1];
            if ((p & i2) != 0) {
              r.onEdgeTouched(i2 & p, i1);
            }
          }
        }
      }
    }
    boolean bool = false;
    if (a == 1) {
      bool = true;
    }
    return bool;
  }
  
  public boolean smoothSlideViewTo(@NonNull View paramView, int paramInt1, int paramInt2)
  {
    s = paramView;
    c = -1;
    boolean bool = a(paramInt1, paramInt2, 0, 0);
    if ((!bool) && (a == 0) && (s != null)) {
      s = null;
    }
    return bool;
  }
  
  public static abstract class Callback
  {
    public Callback() {}
    
    public int clampViewPositionHorizontal(@NonNull View paramView, int paramInt1, int paramInt2)
    {
      return 0;
    }
    
    public int clampViewPositionVertical(@NonNull View paramView, int paramInt1, int paramInt2)
    {
      return 0;
    }
    
    public int getOrderedChildIndex(int paramInt)
    {
      return paramInt;
    }
    
    public int getViewHorizontalDragRange(@NonNull View paramView)
    {
      return 0;
    }
    
    public int getViewVerticalDragRange(@NonNull View paramView)
    {
      return 0;
    }
    
    public void onEdgeDragStarted(int paramInt1, int paramInt2) {}
    
    public boolean onEdgeLock(int paramInt)
    {
      return false;
    }
    
    public void onEdgeTouched(int paramInt1, int paramInt2) {}
    
    public void onViewCaptured(@NonNull View paramView, int paramInt) {}
    
    public void onViewDragStateChanged(int paramInt) {}
    
    public void onViewPositionChanged(@NonNull View paramView, int paramInt1, int paramInt2, @Px int paramInt3, @Px int paramInt4) {}
    
    public void onViewReleased(@NonNull View paramView, float paramFloat1, float paramFloat2) {}
    
    public abstract boolean tryCaptureView(@NonNull View paramView, int paramInt);
  }
}
