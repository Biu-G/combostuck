package android.support.v7.widget;

import android.content.Context;
import android.graphics.PointF;
import android.graphics.Rect;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.RestrictTo;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.CollectionItemInfoCompat;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewGroup.MarginLayoutParams;
import android.view.accessibility.AccessibilityEvent;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.BitSet;
import java.util.List;

public class StaggeredGridLayoutManager
  extends RecyclerView.LayoutManager
  implements RecyclerView.SmoothScroller.ScrollVectorProvider
{
  @Deprecated
  public static final int GAP_HANDLING_LAZY = 1;
  public static final int GAP_HANDLING_MOVE_ITEMS_BETWEEN_SPANS = 2;
  public static final int GAP_HANDLING_NONE = 0;
  public static final int HORIZONTAL = 0;
  public static final int VERTICAL = 1;
  private SavedState A;
  private int B;
  private final Rect C = new Rect();
  private final a D = new a();
  private boolean E = false;
  private boolean F = true;
  private int[] G;
  private final Runnable H = new Runnable()
  {
    public void run()
    {
      a();
    }
  };
  c[] a;
  @NonNull
  OrientationHelper b;
  @NonNull
  OrientationHelper c;
  boolean d = false;
  boolean e = false;
  int f = -1;
  int g = Integer.MIN_VALUE;
  b h = new b();
  private int i = -1;
  private int j;
  private int k;
  @NonNull
  private final u l;
  private BitSet m;
  private int n = 2;
  private boolean o;
  private boolean z;
  
  public StaggeredGridLayoutManager(int paramInt1, int paramInt2)
  {
    j = paramInt2;
    setSpanCount(paramInt1);
    l = new u();
    l();
  }
  
  public StaggeredGridLayoutManager(Context paramContext, AttributeSet paramAttributeSet, int paramInt1, int paramInt2)
  {
    paramContext = getProperties(paramContext, paramAttributeSet, paramInt1, paramInt2);
    setOrientation(orientation);
    setSpanCount(spanCount);
    setReverseLayout(reverseLayout);
    l = new u();
    l();
  }
  
  private int a(int paramInt1, int paramInt2, int paramInt3)
  {
    if ((paramInt2 == 0) && (paramInt3 == 0)) {
      return paramInt1;
    }
    int i1 = View.MeasureSpec.getMode(paramInt1);
    if ((i1 != Integer.MIN_VALUE) && (i1 != 1073741824)) {
      return paramInt1;
    }
    return View.MeasureSpec.makeMeasureSpec(Math.max(0, View.MeasureSpec.getSize(paramInt1) - paramInt2 - paramInt3), i1);
  }
  
  private int a(RecyclerView.Recycler paramRecycler, u paramU, RecyclerView.State paramState)
  {
    m.set(0, i, true);
    int i1;
    if (l.i)
    {
      if (e == 1) {
        i1 = Integer.MAX_VALUE;
      } else {
        i1 = Integer.MIN_VALUE;
      }
    }
    else
    {
      if (e == 1) {}
      for (i1 = g + b;; i1 = f - b) {
        break;
      }
    }
    a(e, i1);
    if (e) {}
    for (int i3 = b.getEndAfterPadding();; i3 = b.getStartAfterPadding()) {
      break;
    }
    for (int i2 = 0; (paramU.a(paramState)) && ((l.i) || (!m.isEmpty())); i2 = 1)
    {
      View localView = paramU.a(paramRecycler);
      LayoutParams localLayoutParams = (LayoutParams)localView.getLayoutParams();
      int i7 = localLayoutParams.getViewLayoutPosition();
      i2 = h.c(i7);
      int i6;
      if (i2 == -1) {
        i6 = 1;
      } else {
        i6 = 0;
      }
      c localC;
      if (i6 != 0)
      {
        if (b) {
          localC = a[0];
        } else {
          localC = a(paramU);
        }
        h.a(i7, localC);
      }
      else
      {
        localC = a[i2];
      }
      a = localC;
      if (e == 1) {
        addView(localView);
      } else {
        addView(localView, 0);
      }
      a(localView, localLayoutParams, false);
      int i4;
      StaggeredGridLayoutManager.b.a localA;
      int i5;
      if (e == 1)
      {
        if (b) {
          i2 = g(i3);
        } else {
          i2 = localC.b(i3);
        }
        i4 = b.getDecoratedMeasurement(localView);
        if ((i6 != 0) && (b))
        {
          localA = c(i2);
          b = -1;
          a = i7;
          h.a(localA);
        }
        i5 = i4 + i2;
        i4 = i2;
      }
      else
      {
        if (b) {
          i2 = f(i3);
        } else {
          i2 = localC.a(i3);
        }
        i4 = i2 - b.getDecoratedMeasurement(localView);
        if ((i6 != 0) && (b))
        {
          localA = d(i2);
          b = 1;
          a = i7;
          h.a(localA);
        }
        i5 = i2;
      }
      if ((b) && (d == -1)) {
        if (i6 != 0)
        {
          E = true;
        }
        else
        {
          if (e == 1) {}
          for (boolean bool = h();; bool = i()) {
            break;
          }
          if ((bool ^ true))
          {
            localA = h.f(i7);
            if (localA != null) {
              d = true;
            }
            E = true;
          }
        }
      }
      a(localView, localLayoutParams, paramU);
      if ((c()) && (j == 1))
      {
        if (b) {
          i2 = c.getEndAfterPadding();
        } else {
          i2 = c.getEndAfterPadding() - (i - 1 - e) * k;
        }
        i7 = c.getDecoratedMeasurement(localView);
        i6 = i2;
        i2 -= i7;
        i7 = i6;
      }
      else
      {
        if (b) {
          i2 = c.getStartAfterPadding();
        } else {
          i2 = e * k + c.getStartAfterPadding();
        }
        i7 = c.getDecoratedMeasurement(localView);
        i6 = i2;
        i7 += i2;
        i2 = i6;
      }
      if (j == 1) {
        layoutDecoratedWithMargins(localView, i2, i4, i7, i5);
      } else {
        layoutDecoratedWithMargins(localView, i4, i2, i5, i7);
      }
      if (b) {
        a(l.e, i1);
      } else {
        a(localC, l.e, i1);
      }
      a(paramRecycler, l);
      if ((l.h) && (localView.hasFocusable())) {
        if (b) {
          m.clear();
        } else {
          m.set(e, false);
        }
      }
    }
    i3 = 0;
    if (i2 == 0) {
      a(paramRecycler, l);
    }
    if (l.e == -1)
    {
      i1 = f(b.getStartAfterPadding());
      i1 = b.getStartAfterPadding() - i1;
    }
    else
    {
      i1 = g(b.getEndAfterPadding()) - b.getEndAfterPadding();
    }
    i2 = i3;
    if (i1 > 0) {
      i2 = Math.min(b, i1);
    }
    return i2;
  }
  
  private int a(RecyclerView.State paramState)
  {
    if (getChildCount() == 0) {
      return 0;
    }
    return aa.a(paramState, b, a(F ^ true), b(F ^ true), this, F, e);
  }
  
  private c a(u paramU)
  {
    boolean bool = i(e);
    int i2 = -1;
    int i1;
    int i3;
    if (bool)
    {
      i1 = i - 1;
      i3 = -1;
    }
    else
    {
      i1 = 0;
      i2 = i;
      i3 = 1;
    }
    int i4 = e;
    c localC = null;
    paramU = null;
    int i6;
    int i5;
    if (i4 == 1)
    {
      i4 = Integer.MAX_VALUE;
      i7 = b.getStartAfterPadding();
      while (i1 != i2)
      {
        localC = a[i1];
        i6 = localC.b(i7);
        i5 = i4;
        if (i6 < i4)
        {
          paramU = localC;
          i5 = i6;
        }
        i1 += i3;
        i4 = i5;
      }
      return paramU;
    }
    i4 = Integer.MIN_VALUE;
    int i7 = b.getEndAfterPadding();
    paramU = localC;
    while (i1 != i2)
    {
      localC = a[i1];
      i6 = localC.a(i7);
      i5 = i4;
      if (i6 > i4)
      {
        paramU = localC;
        i5 = i6;
      }
      i1 += i3;
      i4 = i5;
    }
    return paramU;
  }
  
  private void a(int paramInt1, int paramInt2)
  {
    int i1 = 0;
    while (i1 < i)
    {
      if (!a[i1].a.isEmpty()) {
        a(a[i1], paramInt1, paramInt2);
      }
      i1 += 1;
    }
  }
  
  private void a(RecyclerView.Recycler paramRecycler, int paramInt)
  {
    while (getChildCount() > 0)
    {
      int i3 = 0;
      View localView = getChildAt(0);
      if ((b.getDecoratedEnd(localView) <= paramInt) && (b.getTransformedEndWithDecoration(localView) <= paramInt))
      {
        LayoutParams localLayoutParams = (LayoutParams)localView.getLayoutParams();
        if (b)
        {
          int i1 = 0;
          int i2;
          for (;;)
          {
            i2 = i3;
            if (i1 >= i) {
              break;
            }
            if (a[i1].a.size() == 1) {
              return;
            }
            i1 += 1;
          }
          while (i2 < i)
          {
            a[i2].h();
            i2 += 1;
          }
        }
        if (a.a.size() == 1) {
          return;
        }
        a.h();
        removeAndRecycleView(localView, paramRecycler);
      }
      else {}
    }
  }
  
  private void a(RecyclerView.Recycler paramRecycler, RecyclerView.State paramState, boolean paramBoolean)
  {
    a localA = D;
    if (((A != null) || (f != -1)) && (paramState.getItemCount() == 0))
    {
      removeAndRecycleAllViews(paramRecycler);
      localA.a();
      return;
    }
    boolean bool = e;
    int i2 = 1;
    if ((bool) && (f == -1) && (A == null)) {
      i1 = 0;
    } else {
      i1 = 1;
    }
    if (i1 != 0)
    {
      localA.a();
      if (A != null)
      {
        a(localA);
      }
      else
      {
        m();
        c = e;
      }
      a(paramState, localA);
      e = true;
    }
    if ((A == null) && (f == -1) && ((c != o) || (c() != z)))
    {
      h.a();
      d = true;
    }
    if ((getChildCount() > 0) && ((A == null) || (A.c < 1)))
    {
      if (d)
      {
        i1 = 0;
        while (i1 < i)
        {
          a[i1].e();
          if (b != Integer.MIN_VALUE) {
            a[i1].c(b);
          }
          i1 += 1;
        }
      }
      if ((i1 == 0) && (D.f != null)) {
        i1 = 0;
      }
      while (i1 < i)
      {
        c localC = a[i1];
        localC.e();
        localC.c(D.f[i1]);
        i1 += 1;
        continue;
        i1 = 0;
        while (i1 < i)
        {
          a[i1].a(e, b);
          i1 += 1;
        }
        D.a(a);
      }
    }
    detachAndScrapAttachedViews(paramRecycler);
    l.a = false;
    E = false;
    a(c.getTotalSpace());
    b(a, paramState);
    if (c)
    {
      b(-1);
      a(paramRecycler, l, paramState);
      b(1);
      l.c = (a + l.d);
      a(paramRecycler, l, paramState);
    }
    else
    {
      b(1);
      a(paramRecycler, l, paramState);
      b(-1);
      l.c = (a + l.d);
      a(paramRecycler, l, paramState);
    }
    n();
    if (getChildCount() > 0) {
      if (e)
      {
        b(paramRecycler, paramState, true);
        c(paramRecycler, paramState, false);
      }
      else
      {
        c(paramRecycler, paramState, true);
        b(paramRecycler, paramState, false);
      }
    }
    if ((paramBoolean) && (!paramState.isPreLayout()))
    {
      if ((n != 0) && (getChildCount() > 0) && ((E) || (b() != null))) {
        i1 = 1;
      } else {
        i1 = 0;
      }
      if (i1 != 0)
      {
        removeCallbacks(H);
        if (a())
        {
          i1 = i2;
          break label674;
        }
      }
    }
    int i1 = 0;
    label674:
    if (paramState.isPreLayout()) {
      D.a();
    }
    o = c;
    z = c();
    if (i1 != 0)
    {
      D.a();
      a(paramRecycler, paramState, false);
    }
  }
  
  private void a(RecyclerView.Recycler paramRecycler, u paramU)
  {
    if (a)
    {
      if (i) {
        return;
      }
      if (b == 0)
      {
        if (e == -1)
        {
          b(paramRecycler, g);
          return;
        }
        a(paramRecycler, f);
        return;
      }
      if (e == -1)
      {
        i1 = f - e(f);
        if (i1 < 0) {
          i1 = g;
        } else {
          i1 = g - Math.min(i1, b);
        }
        b(paramRecycler, i1);
        return;
      }
      int i1 = h(g) - g;
      if (i1 < 0)
      {
        i1 = f;
      }
      else
      {
        int i2 = f;
        i1 = Math.min(i1, b) + i2;
      }
      a(paramRecycler, i1);
      return;
    }
  }
  
  private void a(a paramA)
  {
    if (A.c > 0)
    {
      if (A.c == i)
      {
        int i2 = 0;
        while (i2 < i)
        {
          a[i2].e();
          int i3 = A.d[i2];
          int i1 = i3;
          if (i3 != Integer.MIN_VALUE) {
            if (A.i) {
              i1 = i3 + b.getEndAfterPadding();
            } else {
              i1 = i3 + b.getStartAfterPadding();
            }
          }
          a[i2].c(i1);
          i2 += 1;
        }
      }
      A.a();
      A.a = A.b;
    }
    z = A.j;
    setReverseLayout(A.h);
    m();
    if (A.a != -1)
    {
      f = A.a;
      c = A.i;
    }
    else
    {
      c = e;
    }
    if (A.e > 1)
    {
      h.a = A.f;
      h.b = A.g;
    }
  }
  
  private void a(c paramC, int paramInt1, int paramInt2)
  {
    int i1 = paramC.i();
    if (paramInt1 == -1)
    {
      if (paramC.b() + i1 <= paramInt2) {
        m.set(e, false);
      }
    }
    else if (paramC.d() - i1 >= paramInt2) {
      m.set(e, false);
    }
  }
  
  private void a(View paramView)
  {
    int i1 = i - 1;
    while (i1 >= 0)
    {
      a[i1].b(paramView);
      i1 -= 1;
    }
  }
  
  private void a(View paramView, int paramInt1, int paramInt2, boolean paramBoolean)
  {
    calculateItemDecorationsForChild(paramView, C);
    LayoutParams localLayoutParams = (LayoutParams)paramView.getLayoutParams();
    paramInt1 = a(paramInt1, leftMargin + C.left, rightMargin + C.right);
    paramInt2 = a(paramInt2, topMargin + C.top, bottomMargin + C.bottom);
    if (paramBoolean) {
      paramBoolean = a(paramView, paramInt1, paramInt2, localLayoutParams);
    } else {
      paramBoolean = b(paramView, paramInt1, paramInt2, localLayoutParams);
    }
    if (paramBoolean) {
      paramView.measure(paramInt1, paramInt2);
    }
  }
  
  private void a(View paramView, LayoutParams paramLayoutParams, u paramU)
  {
    if (e == 1)
    {
      if (b)
      {
        a(paramView);
        return;
      }
      a.b(paramView);
      return;
    }
    if (b)
    {
      b(paramView);
      return;
    }
    a.a(paramView);
  }
  
  private void a(View paramView, LayoutParams paramLayoutParams, boolean paramBoolean)
  {
    if (b)
    {
      if (j == 1)
      {
        a(paramView, B, getChildMeasureSpec(getHeight(), getHeightMode(), getPaddingTop() + getPaddingBottom(), height, true), paramBoolean);
        return;
      }
      a(paramView, getChildMeasureSpec(getWidth(), getWidthMode(), getPaddingLeft() + getPaddingRight(), width, true), B, paramBoolean);
      return;
    }
    if (j == 1)
    {
      a(paramView, getChildMeasureSpec(k, getWidthMode(), 0, width, false), getChildMeasureSpec(getHeight(), getHeightMode(), getPaddingTop() + getPaddingBottom(), height, true), paramBoolean);
      return;
    }
    a(paramView, getChildMeasureSpec(getWidth(), getWidthMode(), getPaddingLeft() + getPaddingRight(), width, true), getChildMeasureSpec(k, getHeightMode(), 0, height, false), paramBoolean);
  }
  
  private boolean a(c paramC)
  {
    if (e)
    {
      if (paramC.d() < b.getEndAfterPadding()) {
        return ca.get(a.size() - 1)).b ^ true;
      }
    }
    else if (paramC.b() > b.getStartAfterPadding()) {
      return ca.get(0)).b ^ true;
    }
    return false;
  }
  
  private int b(RecyclerView.State paramState)
  {
    if (getChildCount() == 0) {
      return 0;
    }
    return aa.a(paramState, b, a(F ^ true), b(F ^ true), this, F);
  }
  
  private void b(int paramInt)
  {
    l.e = paramInt;
    u localU = l;
    boolean bool2 = e;
    int i1 = 1;
    boolean bool1;
    if (paramInt == -1) {
      bool1 = true;
    } else {
      bool1 = false;
    }
    if (bool2 == bool1) {
      paramInt = i1;
    } else {
      paramInt = -1;
    }
    d = paramInt;
  }
  
  private void b(int paramInt1, int paramInt2, int paramInt3)
  {
    int i2;
    if (e) {
      i2 = j();
    } else {
      i2 = k();
    }
    if (paramInt3 == 8)
    {
      if (paramInt1 < paramInt2)
      {
        i1 = paramInt2 + 1;
      }
      else
      {
        i3 = paramInt1 + 1;
        i1 = paramInt2;
        break label64;
      }
    }
    else {
      i1 = paramInt1 + paramInt2;
    }
    int i3 = i1;
    int i1 = paramInt1;
    label64:
    h.b(i1);
    if (paramInt3 != 8)
    {
      switch (paramInt3)
      {
      default: 
        break;
      case 2: 
        h.a(paramInt1, paramInt2);
        break;
      case 1: 
        h.b(paramInt1, paramInt2);
        break;
      }
    }
    else
    {
      h.a(paramInt1, 1);
      h.b(paramInt2, 1);
    }
    if (i3 <= i2) {
      return;
    }
    if (e) {
      paramInt1 = k();
    } else {
      paramInt1 = j();
    }
    if (i1 <= paramInt1) {
      requestLayout();
    }
  }
  
  private void b(int paramInt, RecyclerView.State paramState)
  {
    u localU = l;
    boolean bool2 = false;
    b = 0;
    l.c = paramInt;
    if (isSmoothScrolling())
    {
      i1 = paramState.getTargetScrollPosition();
      if (i1 != -1)
      {
        boolean bool3 = e;
        if (i1 < paramInt) {
          bool1 = true;
        } else {
          bool1 = false;
        }
        if (bool3 == bool1)
        {
          i1 = b.getTotalSpace();
          paramInt = 0;
          break label95;
        }
        paramInt = b.getTotalSpace();
        break label93;
      }
    }
    paramInt = 0;
    label93:
    int i1 = 0;
    label95:
    if (getClipToPadding())
    {
      l.f = (b.getStartAfterPadding() - paramInt);
      l.g = (b.getEndAfterPadding() + i1);
    }
    else
    {
      l.g = (b.getEnd() + i1);
      l.f = (-paramInt);
    }
    l.h = false;
    l.a = true;
    paramState = l;
    boolean bool1 = bool2;
    if (b.getMode() == 0)
    {
      bool1 = bool2;
      if (b.getEnd() == 0) {
        bool1 = true;
      }
    }
    i = bool1;
  }
  
  private void b(RecyclerView.Recycler paramRecycler, int paramInt)
  {
    int i1 = getChildCount() - 1;
    while (i1 >= 0)
    {
      View localView = getChildAt(i1);
      if ((b.getDecoratedStart(localView) >= paramInt) && (b.getTransformedStartWithDecoration(localView) >= paramInt))
      {
        LayoutParams localLayoutParams = (LayoutParams)localView.getLayoutParams();
        if (b)
        {
          int i4 = 0;
          int i2 = 0;
          int i3;
          for (;;)
          {
            i3 = i4;
            if (i2 >= i) {
              break;
            }
            if (a[i2].a.size() == 1) {
              return;
            }
            i2 += 1;
          }
          while (i3 < i)
          {
            a[i3].g();
            i3 += 1;
          }
        }
        if (a.a.size() == 1) {
          return;
        }
        a.g();
        removeAndRecycleView(localView, paramRecycler);
        i1 -= 1;
      }
      else {}
    }
  }
  
  private void b(RecyclerView.Recycler paramRecycler, RecyclerView.State paramState, boolean paramBoolean)
  {
    int i1 = g(Integer.MIN_VALUE);
    if (i1 == Integer.MIN_VALUE) {
      return;
    }
    i1 = b.getEndAfterPadding() - i1;
    if (i1 > 0)
    {
      i1 -= -a(-i1, paramRecycler, paramState);
      if ((paramBoolean) && (i1 > 0)) {
        b.offsetChildren(i1);
      }
      return;
    }
  }
  
  private void b(View paramView)
  {
    int i1 = i - 1;
    while (i1 >= 0)
    {
      a[i1].a(paramView);
      i1 -= 1;
    }
  }
  
  private int c(RecyclerView.State paramState)
  {
    if (getChildCount() == 0) {
      return 0;
    }
    return aa.b(paramState, b, a(F ^ true), b(F ^ true), this, F);
  }
  
  private StaggeredGridLayoutManager.b.a c(int paramInt)
  {
    StaggeredGridLayoutManager.b.a localA = new StaggeredGridLayoutManager.b.a();
    c = new int[i];
    int i1 = 0;
    while (i1 < i)
    {
      c[i1] = (paramInt - a[i1].b(paramInt));
      i1 += 1;
    }
    return localA;
  }
  
  private void c(RecyclerView.Recycler paramRecycler, RecyclerView.State paramState, boolean paramBoolean)
  {
    int i1 = f(Integer.MAX_VALUE);
    if (i1 == Integer.MAX_VALUE) {
      return;
    }
    i1 -= b.getStartAfterPadding();
    if (i1 > 0)
    {
      i1 -= a(i1, paramRecycler, paramState);
      if ((paramBoolean) && (i1 > 0)) {
        b.offsetChildren(-i1);
      }
      return;
    }
  }
  
  private boolean c(RecyclerView.State paramState, a paramA)
  {
    int i1;
    if (o) {
      i1 = l(paramState.getItemCount());
    } else {
      i1 = k(paramState.getItemCount());
    }
    a = i1;
    b = Integer.MIN_VALUE;
    return true;
  }
  
  private StaggeredGridLayoutManager.b.a d(int paramInt)
  {
    StaggeredGridLayoutManager.b.a localA = new StaggeredGridLayoutManager.b.a();
    c = new int[i];
    int i1 = 0;
    while (i1 < i)
    {
      c[i1] = (a[i1].a(paramInt) - paramInt);
      i1 += 1;
    }
    return localA;
  }
  
  private int e(int paramInt)
  {
    int i2 = a[0].a(paramInt);
    int i1 = 1;
    while (i1 < i)
    {
      int i4 = a[i1].a(paramInt);
      int i3 = i2;
      if (i4 > i2) {
        i3 = i4;
      }
      i1 += 1;
      i2 = i3;
    }
    return i2;
  }
  
  private int f(int paramInt)
  {
    int i2 = a[0].a(paramInt);
    int i1 = 1;
    while (i1 < i)
    {
      int i4 = a[i1].a(paramInt);
      int i3 = i2;
      if (i4 < i2) {
        i3 = i4;
      }
      i1 += 1;
      i2 = i3;
    }
    return i2;
  }
  
  private int g(int paramInt)
  {
    int i2 = a[0].b(paramInt);
    int i1 = 1;
    while (i1 < i)
    {
      int i4 = a[i1].b(paramInt);
      int i3 = i2;
      if (i4 > i2) {
        i3 = i4;
      }
      i1 += 1;
      i2 = i3;
    }
    return i2;
  }
  
  private int h(int paramInt)
  {
    int i2 = a[0].b(paramInt);
    int i1 = 1;
    while (i1 < i)
    {
      int i4 = a[i1].b(paramInt);
      int i3 = i2;
      if (i4 < i2) {
        i3 = i4;
      }
      i1 += 1;
      i2 = i3;
    }
    return i2;
  }
  
  private boolean i(int paramInt)
  {
    int i1 = j;
    boolean bool1 = false;
    boolean bool2 = false;
    int i2;
    if (i1 == 0)
    {
      if (paramInt == -1) {
        i2 = 1;
      } else {
        i2 = 0;
      }
      bool1 = bool2;
      if (i2 != e) {
        bool1 = true;
      }
      return bool1;
    }
    if (paramInt == -1) {
      i2 = 1;
    } else {
      i2 = 0;
    }
    if (i2 == e) {
      i2 = 1;
    } else {
      i2 = 0;
    }
    if (i2 == c()) {
      bool1 = true;
    }
    return bool1;
  }
  
  private int j(int paramInt)
  {
    int i2 = getChildCount();
    int i1 = -1;
    if (i2 == 0)
    {
      paramInt = i1;
      if (e) {
        paramInt = 1;
      }
      return paramInt;
    }
    int i3;
    if (paramInt < k()) {
      i3 = 1;
    } else {
      i3 = 0;
    }
    if (i3 != e) {
      return -1;
    }
    return 1;
  }
  
  private int k(int paramInt)
  {
    int i2 = getChildCount();
    int i1 = 0;
    while (i1 < i2)
    {
      int i3 = getPosition(getChildAt(i1));
      if ((i3 >= 0) && (i3 < paramInt)) {
        return i3;
      }
      i1 += 1;
    }
    return 0;
  }
  
  private int l(int paramInt)
  {
    int i1 = getChildCount() - 1;
    while (i1 >= 0)
    {
      int i2 = getPosition(getChildAt(i1));
      if ((i2 >= 0) && (i2 < paramInt)) {
        return i2;
      }
      i1 -= 1;
    }
    return 0;
  }
  
  private void l()
  {
    b = OrientationHelper.createOrientationHelper(this, j);
    c = OrientationHelper.createOrientationHelper(this, 1 - j);
  }
  
  private int m(int paramInt)
  {
    int i1 = Integer.MIN_VALUE;
    if (paramInt != 17)
    {
      if (paramInt != 33)
      {
        if (paramInt != 66)
        {
          if (paramInt != 130)
          {
            switch (paramInt)
            {
            default: 
              return Integer.MIN_VALUE;
            case 2: 
              if (j == 1) {
                return 1;
              }
              if (c()) {
                return -1;
              }
              return 1;
            }
            if (j == 1) {
              return -1;
            }
            if (c()) {
              return 1;
            }
            return -1;
          }
          if (j == 1) {
            i1 = 1;
          }
          return i1;
        }
        if (j == 0) {
          i1 = 1;
        }
        return i1;
      }
      if (j == 1) {
        return -1;
      }
      return Integer.MIN_VALUE;
    }
    if (j == 0) {
      return -1;
    }
    return Integer.MIN_VALUE;
  }
  
  private void m()
  {
    if ((j != 1) && (c()))
    {
      e = (d ^ true);
      return;
    }
    e = d;
  }
  
  private void n()
  {
    if (c.getMode() == 1073741824) {
      return;
    }
    int i4 = getChildCount();
    int i2 = 0;
    int i1 = 0;
    float f1 = 0.0F;
    View localView;
    while (i1 < i4)
    {
      localView = getChildAt(i1);
      float f3 = c.getDecoratedMeasurement(localView);
      if (f3 >= f1)
      {
        float f2 = f3;
        if (((LayoutParams)localView.getLayoutParams()).isFullSpan()) {
          f2 = f3 * 1.0F / i;
        }
        f1 = Math.max(f1, f2);
      }
      i1 += 1;
    }
    int i5 = k;
    int i3 = Math.round(f1 * i);
    i1 = i3;
    if (c.getMode() == Integer.MIN_VALUE) {
      i1 = Math.min(i3, c.getTotalSpace());
    }
    a(i1);
    i1 = i2;
    if (k == i5) {
      return;
    }
    while (i1 < i4)
    {
      localView = getChildAt(i1);
      LayoutParams localLayoutParams = (LayoutParams)localView.getLayoutParams();
      if (!b) {
        if ((c()) && (j == 1))
        {
          localView.offsetLeftAndRight(-(i - 1 - a.e) * k - -(i - 1 - a.e) * i5);
        }
        else
        {
          i2 = a.e * k;
          i3 = a.e * i5;
          if (j == 1) {
            localView.offsetLeftAndRight(i2 - i3);
          } else {
            localView.offsetTopAndBottom(i2 - i3);
          }
        }
      }
      i1 += 1;
    }
  }
  
  int a(int paramInt, RecyclerView.Recycler paramRecycler, RecyclerView.State paramState)
  {
    if (getChildCount() != 0)
    {
      if (paramInt == 0) {
        return 0;
      }
      a(paramInt, paramState);
      int i1 = a(paramRecycler, l, paramState);
      if (l.b >= i1) {
        if (paramInt < 0) {
          paramInt = -i1;
        } else {
          paramInt = i1;
        }
      }
      b.offsetChildren(-paramInt);
      o = e;
      l.b = 0;
      a(paramRecycler, l);
      return paramInt;
    }
    return 0;
  }
  
  View a(boolean paramBoolean)
  {
    int i2 = b.getStartAfterPadding();
    int i3 = b.getEndAfterPadding();
    int i4 = getChildCount();
    Object localObject1 = null;
    int i1 = 0;
    while (i1 < i4)
    {
      View localView = getChildAt(i1);
      int i5 = b.getDecoratedStart(localView);
      Object localObject2 = localObject1;
      if (b.getDecoratedEnd(localView) > i2) {
        if (i5 >= i3)
        {
          localObject2 = localObject1;
        }
        else if (i5 < i2)
        {
          if (!paramBoolean) {
            return localView;
          }
          localObject2 = localObject1;
          if (localObject1 == null) {
            localObject2 = localView;
          }
        }
        else
        {
          return localView;
        }
      }
      i1 += 1;
      localObject1 = localObject2;
    }
    return localObject1;
  }
  
  void a(int paramInt)
  {
    k = (paramInt / i);
    B = View.MeasureSpec.makeMeasureSpec(paramInt, c.getMode());
  }
  
  void a(int paramInt, RecyclerView.State paramState)
  {
    int i1;
    int i2;
    if (paramInt > 0)
    {
      i1 = j();
      i2 = 1;
    }
    else
    {
      i1 = k();
      i2 = -1;
    }
    l.a = true;
    b(i1, paramState);
    b(i2);
    l.c = (i1 + l.d);
    l.b = Math.abs(paramInt);
  }
  
  void a(RecyclerView.State paramState, a paramA)
  {
    if (b(paramState, paramA)) {
      return;
    }
    if (c(paramState, paramA)) {
      return;
    }
    paramA.b();
    a = 0;
  }
  
  boolean a()
  {
    if ((getChildCount() != 0) && (n != 0))
    {
      if (!isAttachedToWindow()) {
        return false;
      }
      int i1;
      int i2;
      if (e)
      {
        i1 = j();
        i2 = k();
      }
      else
      {
        i1 = k();
        i2 = j();
      }
      if ((i1 == 0) && (b() != null))
      {
        h.a();
        requestSimpleAnimationsInNextLayout();
        requestLayout();
        return true;
      }
      if (!E) {
        return false;
      }
      int i3;
      if (e) {
        i3 = -1;
      } else {
        i3 = 1;
      }
      Object localObject = h;
      i2 += 1;
      localObject = ((b)localObject).a(i1, i2, i3, true);
      if (localObject == null)
      {
        E = false;
        h.a(i2);
        return false;
      }
      StaggeredGridLayoutManager.b.a localA = h.a(i1, a, i3 * -1, true);
      if (localA == null) {
        h.a(a);
      } else {
        h.a(a + 1);
      }
      requestSimpleAnimationsInNextLayout();
      requestLayout();
      return true;
    }
    return false;
  }
  
  public void assertNotInLayoutOrScroll(String paramString)
  {
    if (A == null) {
      super.assertNotInLayoutOrScroll(paramString);
    }
  }
  
  View b()
  {
    int i1 = getChildCount() - 1;
    BitSet localBitSet = new BitSet(i);
    localBitSet.set(0, i, true);
    int i2 = j;
    int i5 = -1;
    if ((i2 == 1) && (c())) {
      i2 = 1;
    } else {
      i2 = -1;
    }
    int i3;
    if (e)
    {
      i3 = -1;
    }
    else
    {
      i3 = i1 + 1;
      i1 = 0;
    }
    int i4 = i1;
    if (i1 < i3)
    {
      i5 = 1;
      i4 = i1;
    }
    while (i4 != i3)
    {
      View localView = getChildAt(i4);
      LayoutParams localLayoutParams = (LayoutParams)localView.getLayoutParams();
      if (localBitSet.get(a.e))
      {
        if (a(a)) {
          return localView;
        }
        localBitSet.clear(a.e);
      }
      if (!b)
      {
        i1 = i4 + i5;
        if (i1 != i3)
        {
          Object localObject = getChildAt(i1);
          int i6;
          if (e)
          {
            i1 = b.getDecoratedEnd(localView);
            i6 = b.getDecoratedEnd((View)localObject);
            if (i1 < i6) {
              return localView;
            }
            if (i1 != i6) {
              break label274;
            }
          }
          else
          {
            i1 = b.getDecoratedStart(localView);
            i6 = b.getDecoratedStart((View)localObject);
            if (i1 > i6) {
              return localView;
            }
            if (i1 != i6) {
              break label274;
            }
          }
          i1 = 1;
          break label276;
          label274:
          i1 = 0;
          label276:
          if (i1 != 0)
          {
            localObject = (LayoutParams)((View)localObject).getLayoutParams();
            if (a.e - a.e < 0) {
              i1 = 1;
            } else {
              i1 = 0;
            }
            if (i2 < 0) {
              i6 = 1;
            } else {
              i6 = 0;
            }
            if (i1 != i6) {
              return localView;
            }
          }
        }
      }
      i4 += i5;
    }
    return null;
  }
  
  View b(boolean paramBoolean)
  {
    int i2 = b.getStartAfterPadding();
    int i3 = b.getEndAfterPadding();
    int i1 = getChildCount() - 1;
    Object localObject2;
    for (Object localObject1 = null; i1 >= 0; localObject1 = localObject2)
    {
      View localView = getChildAt(i1);
      int i4 = b.getDecoratedStart(localView);
      int i5 = b.getDecoratedEnd(localView);
      localObject2 = localObject1;
      if (i5 > i2) {
        if (i4 >= i3)
        {
          localObject2 = localObject1;
        }
        else if (i5 > i3)
        {
          if (!paramBoolean) {
            return localView;
          }
          localObject2 = localObject1;
          if (localObject1 == null) {
            localObject2 = localView;
          }
        }
        else
        {
          return localView;
        }
      }
      i1 -= 1;
    }
    return localObject1;
  }
  
  boolean b(RecyclerView.State paramState, a paramA)
  {
    boolean bool2 = paramState.isPreLayout();
    boolean bool1 = false;
    if (!bool2)
    {
      if (f == -1) {
        return false;
      }
      if ((f >= 0) && (f < paramState.getItemCount()))
      {
        if ((A != null) && (A.a != -1) && (A.c >= 1))
        {
          b = Integer.MIN_VALUE;
          a = f;
          return true;
        }
        paramState = findViewByPosition(f);
        if (paramState != null)
        {
          if (e) {
            i1 = j();
          } else {
            i1 = k();
          }
          a = i1;
          if (g != Integer.MIN_VALUE)
          {
            if (c)
            {
              b = (b.getEndAfterPadding() - g - b.getDecoratedEnd(paramState));
              return true;
            }
            b = (b.getStartAfterPadding() + g - b.getDecoratedStart(paramState));
            return true;
          }
          if (b.getDecoratedMeasurement(paramState) > b.getTotalSpace())
          {
            if (c) {
              i1 = b.getEndAfterPadding();
            } else {
              i1 = b.getStartAfterPadding();
            }
            b = i1;
            return true;
          }
          int i1 = b.getDecoratedStart(paramState) - b.getStartAfterPadding();
          if (i1 < 0)
          {
            b = (-i1);
            return true;
          }
          i1 = b.getEndAfterPadding() - b.getDecoratedEnd(paramState);
          if (i1 < 0)
          {
            b = i1;
            return true;
          }
          b = Integer.MIN_VALUE;
          return true;
        }
        a = f;
        if (g == Integer.MIN_VALUE)
        {
          if (j(a) == 1) {
            bool1 = true;
          }
          c = bool1;
          paramA.b();
        }
        else
        {
          paramA.a(g);
        }
        d = true;
        return true;
      }
      f = -1;
      g = Integer.MIN_VALUE;
      return false;
    }
    return false;
  }
  
  boolean c()
  {
    return getLayoutDirection() == 1;
  }
  
  public boolean canScrollHorizontally()
  {
    return j == 0;
  }
  
  public boolean canScrollVertically()
  {
    return j == 1;
  }
  
  public boolean checkLayoutParams(RecyclerView.LayoutParams paramLayoutParams)
  {
    return paramLayoutParams instanceof LayoutParams;
  }
  
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY})
  public void collectAdjacentPrefetchPositions(int paramInt1, int paramInt2, RecyclerView.State paramState, RecyclerView.LayoutManager.LayoutPrefetchRegistry paramLayoutPrefetchRegistry)
  {
    if (j != 0) {
      paramInt1 = paramInt2;
    }
    if (getChildCount() != 0)
    {
      if (paramInt1 == 0) {
        return;
      }
      a(paramInt1, paramState);
      if ((G == null) || (G.length < i)) {
        G = new int[i];
      }
      int i3 = 0;
      paramInt2 = 0;
      int i1;
      for (paramInt1 = 0; paramInt2 < i; paramInt1 = i1)
      {
        int i2;
        if (l.d == -1) {
          i2 = l.f - a[paramInt2].a(l.f);
        } else {
          i2 = a[paramInt2].b(l.g) - l.g;
        }
        i1 = paramInt1;
        if (i2 >= 0)
        {
          G[paramInt1] = i2;
          i1 = paramInt1 + 1;
        }
        paramInt2 += 1;
      }
      Arrays.sort(G, 0, paramInt1);
      paramInt2 = i3;
      while ((paramInt2 < paramInt1) && (l.a(paramState)))
      {
        paramLayoutPrefetchRegistry.addPosition(l.c, G[paramInt2]);
        u localU = l;
        c += l.d;
        paramInt2 += 1;
      }
      return;
    }
  }
  
  public int computeHorizontalScrollExtent(RecyclerView.State paramState)
  {
    return b(paramState);
  }
  
  public int computeHorizontalScrollOffset(RecyclerView.State paramState)
  {
    return a(paramState);
  }
  
  public int computeHorizontalScrollRange(RecyclerView.State paramState)
  {
    return c(paramState);
  }
  
  public PointF computeScrollVectorForPosition(int paramInt)
  {
    paramInt = j(paramInt);
    PointF localPointF = new PointF();
    if (paramInt == 0) {
      return null;
    }
    if (j == 0)
    {
      x = paramInt;
      y = 0.0F;
      return localPointF;
    }
    x = 0.0F;
    y = paramInt;
    return localPointF;
  }
  
  public int computeVerticalScrollExtent(RecyclerView.State paramState)
  {
    return b(paramState);
  }
  
  public int computeVerticalScrollOffset(RecyclerView.State paramState)
  {
    return a(paramState);
  }
  
  public int computeVerticalScrollRange(RecyclerView.State paramState)
  {
    return c(paramState);
  }
  
  public int[] findFirstCompletelyVisibleItemPositions(int[] paramArrayOfInt)
  {
    if (paramArrayOfInt == null) {
      paramArrayOfInt = new int[i];
    } else {
      if (paramArrayOfInt.length < i) {
        break label54;
      }
    }
    int i1 = 0;
    while (i1 < i)
    {
      paramArrayOfInt[i1] = a[i1].l();
      i1 += 1;
    }
    return paramArrayOfInt;
    label54:
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Provided int[]'s size must be more than or equal to span count. Expected:");
    localStringBuilder.append(i);
    localStringBuilder.append(", array size:");
    localStringBuilder.append(paramArrayOfInt.length);
    throw new IllegalArgumentException(localStringBuilder.toString());
  }
  
  public int[] findFirstVisibleItemPositions(int[] paramArrayOfInt)
  {
    if (paramArrayOfInt == null) {
      paramArrayOfInt = new int[i];
    } else {
      if (paramArrayOfInt.length < i) {
        break label54;
      }
    }
    int i1 = 0;
    while (i1 < i)
    {
      paramArrayOfInt[i1] = a[i1].j();
      i1 += 1;
    }
    return paramArrayOfInt;
    label54:
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Provided int[]'s size must be more than or equal to span count. Expected:");
    localStringBuilder.append(i);
    localStringBuilder.append(", array size:");
    localStringBuilder.append(paramArrayOfInt.length);
    throw new IllegalArgumentException(localStringBuilder.toString());
  }
  
  public int[] findLastCompletelyVisibleItemPositions(int[] paramArrayOfInt)
  {
    if (paramArrayOfInt == null) {
      paramArrayOfInt = new int[i];
    } else {
      if (paramArrayOfInt.length < i) {
        break label54;
      }
    }
    int i1 = 0;
    while (i1 < i)
    {
      paramArrayOfInt[i1] = a[i1].o();
      i1 += 1;
    }
    return paramArrayOfInt;
    label54:
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Provided int[]'s size must be more than or equal to span count. Expected:");
    localStringBuilder.append(i);
    localStringBuilder.append(", array size:");
    localStringBuilder.append(paramArrayOfInt.length);
    throw new IllegalArgumentException(localStringBuilder.toString());
  }
  
  public int[] findLastVisibleItemPositions(int[] paramArrayOfInt)
  {
    if (paramArrayOfInt == null) {
      paramArrayOfInt = new int[i];
    } else {
      if (paramArrayOfInt.length < i) {
        break label54;
      }
    }
    int i1 = 0;
    while (i1 < i)
    {
      paramArrayOfInt[i1] = a[i1].m();
      i1 += 1;
    }
    return paramArrayOfInt;
    label54:
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Provided int[]'s size must be more than or equal to span count. Expected:");
    localStringBuilder.append(i);
    localStringBuilder.append(", array size:");
    localStringBuilder.append(paramArrayOfInt.length);
    throw new IllegalArgumentException(localStringBuilder.toString());
  }
  
  int g()
  {
    View localView;
    if (e) {
      localView = b(true);
    } else {
      localView = a(true);
    }
    if (localView == null) {
      return -1;
    }
    return getPosition(localView);
  }
  
  public RecyclerView.LayoutParams generateDefaultLayoutParams()
  {
    if (j == 0) {
      return new LayoutParams(-2, -1);
    }
    return new LayoutParams(-1, -2);
  }
  
  public RecyclerView.LayoutParams generateLayoutParams(Context paramContext, AttributeSet paramAttributeSet)
  {
    return new LayoutParams(paramContext, paramAttributeSet);
  }
  
  public RecyclerView.LayoutParams generateLayoutParams(ViewGroup.LayoutParams paramLayoutParams)
  {
    if ((paramLayoutParams instanceof ViewGroup.MarginLayoutParams)) {
      return new LayoutParams((ViewGroup.MarginLayoutParams)paramLayoutParams);
    }
    return new LayoutParams(paramLayoutParams);
  }
  
  public int getColumnCountForAccessibility(RecyclerView.Recycler paramRecycler, RecyclerView.State paramState)
  {
    if (j == 1) {
      return i;
    }
    return super.getColumnCountForAccessibility(paramRecycler, paramState);
  }
  
  public int getGapStrategy()
  {
    return n;
  }
  
  public int getOrientation()
  {
    return j;
  }
  
  public boolean getReverseLayout()
  {
    return d;
  }
  
  public int getRowCountForAccessibility(RecyclerView.Recycler paramRecycler, RecyclerView.State paramState)
  {
    if (j == 0) {
      return i;
    }
    return super.getRowCountForAccessibility(paramRecycler, paramState);
  }
  
  public int getSpanCount()
  {
    return i;
  }
  
  boolean h()
  {
    int i2 = a[0].b(Integer.MIN_VALUE);
    int i1 = 1;
    while (i1 < i)
    {
      if (a[i1].b(Integer.MIN_VALUE) != i2) {
        return false;
      }
      i1 += 1;
    }
    return true;
  }
  
  boolean i()
  {
    int i2 = a[0].a(Integer.MIN_VALUE);
    int i1 = 1;
    while (i1 < i)
    {
      if (a[i1].a(Integer.MIN_VALUE) != i2) {
        return false;
      }
      i1 += 1;
    }
    return true;
  }
  
  public void invalidateSpanAssignments()
  {
    h.a();
    requestLayout();
  }
  
  public boolean isAutoMeasureEnabled()
  {
    return n != 0;
  }
  
  int j()
  {
    int i1 = getChildCount();
    if (i1 == 0) {
      return 0;
    }
    return getPosition(getChildAt(i1 - 1));
  }
  
  int k()
  {
    if (getChildCount() == 0) {
      return 0;
    }
    return getPosition(getChildAt(0));
  }
  
  public void offsetChildrenHorizontal(int paramInt)
  {
    super.offsetChildrenHorizontal(paramInt);
    int i1 = 0;
    while (i1 < i)
    {
      a[i1].d(paramInt);
      i1 += 1;
    }
  }
  
  public void offsetChildrenVertical(int paramInt)
  {
    super.offsetChildrenVertical(paramInt);
    int i1 = 0;
    while (i1 < i)
    {
      a[i1].d(paramInt);
      i1 += 1;
    }
  }
  
  public void onDetachedFromWindow(RecyclerView paramRecyclerView, RecyclerView.Recycler paramRecycler)
  {
    super.onDetachedFromWindow(paramRecyclerView, paramRecycler);
    removeCallbacks(H);
    int i1 = 0;
    while (i1 < i)
    {
      a[i1].e();
      i1 += 1;
    }
    paramRecyclerView.requestLayout();
  }
  
  @Nullable
  public View onFocusSearchFailed(View paramView, int paramInt, RecyclerView.Recycler paramRecycler, RecyclerView.State paramState)
  {
    if (getChildCount() == 0) {
      return null;
    }
    paramView = findContainingItemView(paramView);
    if (paramView == null) {
      return null;
    }
    m();
    int i3 = m(paramInt);
    if (i3 == Integer.MIN_VALUE) {
      return null;
    }
    Object localObject = (LayoutParams)paramView.getLayoutParams();
    boolean bool1 = b;
    localObject = a;
    if (i3 == 1) {
      paramInt = j();
    } else {
      paramInt = k();
    }
    b(paramInt, paramState);
    b(i3);
    l.c = (l.d + paramInt);
    l.b = ((int)(b.getTotalSpace() * 0.33333334F));
    l.h = true;
    u localU = l;
    int i2 = 0;
    a = false;
    a(paramRecycler, l, paramState);
    o = e;
    if (!bool1)
    {
      paramRecycler = ((c)localObject).a(paramInt, i3);
      if ((paramRecycler != null) && (paramRecycler != paramView)) {
        return paramRecycler;
      }
    }
    if (i(i3))
    {
      i1 = i - 1;
      while (i1 >= 0)
      {
        paramRecycler = a[i1].a(paramInt, i3);
        if ((paramRecycler != null) && (paramRecycler != paramView)) {
          return paramRecycler;
        }
        i1 -= 1;
      }
    }
    int i1 = 0;
    while (i1 < i)
    {
      paramRecycler = a[i1].a(paramInt, i3);
      if ((paramRecycler != null) && (paramRecycler != paramView)) {
        return paramRecycler;
      }
      i1 += 1;
    }
    boolean bool2 = d;
    if (i3 == -1) {
      paramInt = 1;
    } else {
      paramInt = 0;
    }
    if ((bool2 ^ true) == paramInt) {
      paramInt = 1;
    } else {
      paramInt = 0;
    }
    if (!bool1)
    {
      if (paramInt != 0) {
        i1 = ((c)localObject).k();
      } else {
        i1 = ((c)localObject).n();
      }
      paramRecycler = findViewByPosition(i1);
      if ((paramRecycler != null) && (paramRecycler != paramView)) {
        return paramRecycler;
      }
    }
    i1 = i2;
    if (i(i3))
    {
      i1 = i - 1;
      while (i1 >= 0)
      {
        if (i1 != e)
        {
          if (paramInt != 0) {
            i2 = a[i1].k();
          } else {
            i2 = a[i1].n();
          }
          paramRecycler = findViewByPosition(i2);
          if ((paramRecycler != null) && (paramRecycler != paramView)) {
            return paramRecycler;
          }
        }
        i1 -= 1;
      }
    }
    while (i1 < i)
    {
      if (paramInt != 0) {
        i2 = a[i1].k();
      } else {
        i2 = a[i1].n();
      }
      paramRecycler = findViewByPosition(i2);
      if ((paramRecycler != null) && (paramRecycler != paramView)) {
        return paramRecycler;
      }
      i1 += 1;
    }
    return null;
  }
  
  public void onInitializeAccessibilityEvent(AccessibilityEvent paramAccessibilityEvent)
  {
    super.onInitializeAccessibilityEvent(paramAccessibilityEvent);
    if (getChildCount() > 0)
    {
      View localView1 = a(false);
      View localView2 = b(false);
      if (localView1 != null)
      {
        if (localView2 == null) {
          return;
        }
        int i1 = getPosition(localView1);
        int i2 = getPosition(localView2);
        if (i1 < i2)
        {
          paramAccessibilityEvent.setFromIndex(i1);
          paramAccessibilityEvent.setToIndex(i2);
          return;
        }
        paramAccessibilityEvent.setFromIndex(i2);
        paramAccessibilityEvent.setToIndex(i1);
        return;
      }
      return;
    }
  }
  
  public void onInitializeAccessibilityNodeInfoForItem(RecyclerView.Recycler paramRecycler, RecyclerView.State paramState, View paramView, AccessibilityNodeInfoCompat paramAccessibilityNodeInfoCompat)
  {
    paramRecycler = paramView.getLayoutParams();
    if (!(paramRecycler instanceof LayoutParams))
    {
      super.a(paramView, paramAccessibilityNodeInfoCompat);
      return;
    }
    paramRecycler = (LayoutParams)paramRecycler;
    int i1;
    if (j == 0)
    {
      i2 = paramRecycler.getSpanIndex();
      if (b) {
        i1 = i;
      } else {
        i1 = 1;
      }
      paramAccessibilityNodeInfoCompat.setCollectionItemInfo(AccessibilityNodeInfoCompat.CollectionItemInfoCompat.obtain(i2, i1, -1, -1, b, false));
      return;
    }
    int i2 = paramRecycler.getSpanIndex();
    if (b) {
      i1 = i;
    } else {
      i1 = 1;
    }
    paramAccessibilityNodeInfoCompat.setCollectionItemInfo(AccessibilityNodeInfoCompat.CollectionItemInfoCompat.obtain(-1, -1, i2, i1, b, false));
  }
  
  public void onItemsAdded(RecyclerView paramRecyclerView, int paramInt1, int paramInt2)
  {
    b(paramInt1, paramInt2, 1);
  }
  
  public void onItemsChanged(RecyclerView paramRecyclerView)
  {
    h.a();
    requestLayout();
  }
  
  public void onItemsMoved(RecyclerView paramRecyclerView, int paramInt1, int paramInt2, int paramInt3)
  {
    b(paramInt1, paramInt2, 8);
  }
  
  public void onItemsRemoved(RecyclerView paramRecyclerView, int paramInt1, int paramInt2)
  {
    b(paramInt1, paramInt2, 2);
  }
  
  public void onItemsUpdated(RecyclerView paramRecyclerView, int paramInt1, int paramInt2, Object paramObject)
  {
    b(paramInt1, paramInt2, 4);
  }
  
  public void onLayoutChildren(RecyclerView.Recycler paramRecycler, RecyclerView.State paramState)
  {
    a(paramRecycler, paramState, true);
  }
  
  public void onLayoutCompleted(RecyclerView.State paramState)
  {
    super.onLayoutCompleted(paramState);
    f = -1;
    g = Integer.MIN_VALUE;
    A = null;
    D.a();
  }
  
  public void onRestoreInstanceState(Parcelable paramParcelable)
  {
    if ((paramParcelable instanceof SavedState))
    {
      A = ((SavedState)paramParcelable);
      requestLayout();
    }
  }
  
  public Parcelable onSaveInstanceState()
  {
    if (A != null) {
      return new SavedState(A);
    }
    SavedState localSavedState = new SavedState();
    h = d;
    i = o;
    j = z;
    b localB = h;
    int i2 = 0;
    if ((localB != null) && (h.a != null))
    {
      f = h.a;
      e = f.length;
      g = h.b;
    }
    else
    {
      e = 0;
    }
    if (getChildCount() > 0)
    {
      int i1;
      if (o) {
        i1 = j();
      } else {
        i1 = k();
      }
      a = i1;
      b = g();
      c = i;
      d = new int[i];
      while (i2 < i)
      {
        int i3;
        if (o)
        {
          i3 = a[i2].b(Integer.MIN_VALUE);
          i1 = i3;
          if (i3 != Integer.MIN_VALUE) {
            i1 = i3 - b.getEndAfterPadding();
          }
        }
        else
        {
          i3 = a[i2].a(Integer.MIN_VALUE);
          i1 = i3;
          if (i3 != Integer.MIN_VALUE) {
            i1 = i3 - b.getStartAfterPadding();
          }
        }
        d[i2] = i1;
        i2 += 1;
      }
    }
    a = -1;
    b = -1;
    c = 0;
    return localSavedState;
  }
  
  public void onScrollStateChanged(int paramInt)
  {
    if (paramInt == 0) {
      a();
    }
  }
  
  public int scrollHorizontallyBy(int paramInt, RecyclerView.Recycler paramRecycler, RecyclerView.State paramState)
  {
    return a(paramInt, paramRecycler, paramState);
  }
  
  public void scrollToPosition(int paramInt)
  {
    if ((A != null) && (A.a != paramInt)) {
      A.b();
    }
    f = paramInt;
    g = Integer.MIN_VALUE;
    requestLayout();
  }
  
  public void scrollToPositionWithOffset(int paramInt1, int paramInt2)
  {
    if (A != null) {
      A.b();
    }
    f = paramInt1;
    g = paramInt2;
    requestLayout();
  }
  
  public int scrollVerticallyBy(int paramInt, RecyclerView.Recycler paramRecycler, RecyclerView.State paramState)
  {
    return a(paramInt, paramRecycler, paramState);
  }
  
  public void setGapStrategy(int paramInt)
  {
    assertNotInLayoutOrScroll(null);
    if (paramInt == n) {
      return;
    }
    if ((paramInt != 0) && (paramInt != 2)) {
      throw new IllegalArgumentException("invalid gap strategy. Must be GAP_HANDLING_NONE or GAP_HANDLING_MOVE_ITEMS_BETWEEN_SPANS");
    }
    n = paramInt;
    requestLayout();
  }
  
  public void setMeasuredDimension(Rect paramRect, int paramInt1, int paramInt2)
  {
    int i1 = getPaddingLeft() + getPaddingRight();
    int i2 = getPaddingTop() + getPaddingBottom();
    if (j == 1)
    {
      paramInt2 = chooseSize(paramInt2, paramRect.height() + i2, getMinimumHeight());
      i1 = chooseSize(paramInt1, k * i + i1, getMinimumWidth());
      paramInt1 = paramInt2;
      paramInt2 = i1;
    }
    else
    {
      paramInt1 = chooseSize(paramInt1, paramRect.width() + i1, getMinimumWidth());
      i1 = chooseSize(paramInt2, k * i + i2, getMinimumHeight());
      paramInt2 = paramInt1;
      paramInt1 = i1;
    }
    setMeasuredDimension(paramInt2, paramInt1);
  }
  
  public void setOrientation(int paramInt)
  {
    if ((paramInt != 0) && (paramInt != 1)) {
      throw new IllegalArgumentException("invalid orientation.");
    }
    assertNotInLayoutOrScroll(null);
    if (paramInt == j) {
      return;
    }
    j = paramInt;
    OrientationHelper localOrientationHelper = b;
    b = c;
    c = localOrientationHelper;
    requestLayout();
  }
  
  public void setReverseLayout(boolean paramBoolean)
  {
    assertNotInLayoutOrScroll(null);
    if ((A != null) && (A.h != paramBoolean)) {
      A.h = paramBoolean;
    }
    d = paramBoolean;
    requestLayout();
  }
  
  public void setSpanCount(int paramInt)
  {
    assertNotInLayoutOrScroll(null);
    if (paramInt != i)
    {
      invalidateSpanAssignments();
      i = paramInt;
      m = new BitSet(i);
      a = new c[i];
      paramInt = 0;
      while (paramInt < i)
      {
        a[paramInt] = new c(paramInt);
        paramInt += 1;
      }
      requestLayout();
    }
  }
  
  public void smoothScrollToPosition(RecyclerView paramRecyclerView, RecyclerView.State paramState, int paramInt)
  {
    paramRecyclerView = new LinearSmoothScroller(paramRecyclerView.getContext());
    paramRecyclerView.setTargetPosition(paramInt);
    startSmoothScroll(paramRecyclerView);
  }
  
  public boolean supportsPredictiveItemAnimations()
  {
    return A == null;
  }
  
  public static class LayoutParams
    extends RecyclerView.LayoutParams
  {
    public static final int INVALID_SPAN_ID = -1;
    StaggeredGridLayoutManager.c a;
    boolean b;
    
    public LayoutParams(int paramInt1, int paramInt2)
    {
      super(paramInt2);
    }
    
    public LayoutParams(Context paramContext, AttributeSet paramAttributeSet)
    {
      super(paramAttributeSet);
    }
    
    public LayoutParams(RecyclerView.LayoutParams paramLayoutParams)
    {
      super();
    }
    
    public LayoutParams(ViewGroup.LayoutParams paramLayoutParams)
    {
      super();
    }
    
    public LayoutParams(ViewGroup.MarginLayoutParams paramMarginLayoutParams)
    {
      super();
    }
    
    public final int getSpanIndex()
    {
      if (a == null) {
        return -1;
      }
      return a.e;
    }
    
    public boolean isFullSpan()
    {
      return b;
    }
    
    public void setFullSpan(boolean paramBoolean)
    {
      b = paramBoolean;
    }
  }
  
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
  public static class SavedState
    implements Parcelable
  {
    public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator()
    {
      public StaggeredGridLayoutManager.SavedState a(Parcel paramAnonymousParcel)
      {
        return new StaggeredGridLayoutManager.SavedState(paramAnonymousParcel);
      }
      
      public StaggeredGridLayoutManager.SavedState[] a(int paramAnonymousInt)
      {
        return new StaggeredGridLayoutManager.SavedState[paramAnonymousInt];
      }
    };
    int a;
    int b;
    int c;
    int[] d;
    int e;
    int[] f;
    List<StaggeredGridLayoutManager.b.a> g;
    boolean h;
    boolean i;
    boolean j;
    
    public SavedState() {}
    
    SavedState(Parcel paramParcel)
    {
      a = paramParcel.readInt();
      b = paramParcel.readInt();
      c = paramParcel.readInt();
      if (c > 0)
      {
        d = new int[c];
        paramParcel.readIntArray(d);
      }
      e = paramParcel.readInt();
      if (e > 0)
      {
        f = new int[e];
        paramParcel.readIntArray(f);
      }
      int k = paramParcel.readInt();
      boolean bool2 = false;
      if (k == 1) {
        bool1 = true;
      } else {
        bool1 = false;
      }
      h = bool1;
      if (paramParcel.readInt() == 1) {
        bool1 = true;
      } else {
        bool1 = false;
      }
      i = bool1;
      boolean bool1 = bool2;
      if (paramParcel.readInt() == 1) {
        bool1 = true;
      }
      j = bool1;
      g = paramParcel.readArrayList(StaggeredGridLayoutManager.b.a.class.getClassLoader());
    }
    
    public SavedState(SavedState paramSavedState)
    {
      c = c;
      a = a;
      b = b;
      d = d;
      e = e;
      f = f;
      h = h;
      i = i;
      j = j;
      g = g;
    }
    
    void a()
    {
      d = null;
      c = 0;
      e = 0;
      f = null;
      g = null;
    }
    
    void b()
    {
      d = null;
      c = 0;
      a = -1;
      b = -1;
    }
    
    public int describeContents()
    {
      return 0;
    }
    
    public void writeToParcel(Parcel paramParcel, int paramInt)
    {
      throw new Runtime("d2j fail translate: java.lang.RuntimeException: can not merge I and Z\n\tat com.googlecode.dex2jar.ir.TypeClass.merge(TypeClass.java:100)\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer$TypeRef.updateTypeClass(TypeTransformer.java:174)\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer$TypeAnalyze.provideAs(TypeTransformer.java:780)\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer$TypeAnalyze.e1expr(TypeTransformer.java:496)\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer$TypeAnalyze.exExpr(TypeTransformer.java:713)\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer$TypeAnalyze.exExpr(TypeTransformer.java:703)\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer$TypeAnalyze.enexpr(TypeTransformer.java:698)\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer$TypeAnalyze.exExpr(TypeTransformer.java:719)\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer$TypeAnalyze.exExpr(TypeTransformer.java:703)\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer$TypeAnalyze.s1stmt(TypeTransformer.java:810)\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer$TypeAnalyze.sxStmt(TypeTransformer.java:840)\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer$TypeAnalyze.analyze(TypeTransformer.java:206)\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer.transform(TypeTransformer.java:44)\n\tat com.googlecode.d2j.dex.Dex2jar$2.optimize(Dex2jar.java:162)\n\tat com.googlecode.d2j.dex.Dex2Asm.convertCode(Dex2Asm.java:414)\n\tat com.googlecode.d2j.dex.ExDex2Asm.convertCode(ExDex2Asm.java:42)\n\tat com.googlecode.d2j.dex.Dex2jar$2.convertCode(Dex2jar.java:128)\n\tat com.googlecode.d2j.dex.Dex2Asm.convertMethod(Dex2Asm.java:509)\n\tat com.googlecode.d2j.dex.Dex2Asm.convertClass(Dex2Asm.java:406)\n\tat com.googlecode.d2j.dex.Dex2Asm.convertDex(Dex2Asm.java:422)\n\tat com.googlecode.d2j.dex.Dex2jar.doTranslate(Dex2jar.java:172)\n\tat com.googlecode.d2j.dex.Dex2jar.to(Dex2jar.java:272)\n\tat com.googlecode.dex2jar.tools.Dex2jarCmd.doCommandLine(Dex2jarCmd.java:108)\n\tat com.googlecode.dex2jar.tools.BaseCmd.doMain(BaseCmd.java:288)\n\tat com.googlecode.dex2jar.tools.Dex2jarCmd.main(Dex2jarCmd.java:32)\n");
    }
  }
  
  class a
  {
    int a;
    int b;
    boolean c;
    boolean d;
    boolean e;
    int[] f;
    
    a()
    {
      a();
    }
    
    void a()
    {
      a = -1;
      b = Integer.MIN_VALUE;
      c = false;
      d = false;
      e = false;
      if (f != null) {
        Arrays.fill(f, -1);
      }
    }
    
    void a(int paramInt)
    {
      if (c)
      {
        b = (b.getEndAfterPadding() - paramInt);
        return;
      }
      b = (b.getStartAfterPadding() + paramInt);
    }
    
    void a(StaggeredGridLayoutManager.c[] paramArrayOfC)
    {
      int j = paramArrayOfC.length;
      if ((f == null) || (f.length < j)) {
        f = new int[a.length];
      }
      int i = 0;
      while (i < j)
      {
        f[i] = paramArrayOfC[i].a(Integer.MIN_VALUE);
        i += 1;
      }
    }
    
    void b()
    {
      int i;
      if (c) {
        i = b.getEndAfterPadding();
      } else {
        i = b.getStartAfterPadding();
      }
      b = i;
    }
  }
  
  static class b
  {
    int[] a;
    List<a> b;
    
    b() {}
    
    private void c(int paramInt1, int paramInt2)
    {
      if (b == null) {
        return;
      }
      int i = b.size() - 1;
      while (i >= 0)
      {
        a localA = (a)b.get(i);
        if (a >= paramInt1) {
          if (a < paramInt1 + paramInt2) {
            b.remove(i);
          } else {
            a -= paramInt2;
          }
        }
        i -= 1;
      }
    }
    
    private void d(int paramInt1, int paramInt2)
    {
      if (b == null) {
        return;
      }
      int i = b.size() - 1;
      while (i >= 0)
      {
        a localA = (a)b.get(i);
        if (a >= paramInt1) {
          a += paramInt2;
        }
        i -= 1;
      }
    }
    
    private int g(int paramInt)
    {
      if (b == null) {
        return -1;
      }
      a localA = f(paramInt);
      if (localA != null) {
        b.remove(localA);
      }
      int j = b.size();
      int i = 0;
      while (i < j)
      {
        if (b.get(i)).a >= paramInt) {
          break label82;
        }
        i += 1;
      }
      i = -1;
      label82:
      if (i != -1)
      {
        localA = (a)b.get(i);
        b.remove(i);
        return a;
      }
      return -1;
    }
    
    int a(int paramInt)
    {
      if (b != null)
      {
        int i = b.size() - 1;
        while (i >= 0)
        {
          if (b.get(i)).a >= paramInt) {
            b.remove(i);
          }
          i -= 1;
        }
      }
      return b(paramInt);
    }
    
    public a a(int paramInt1, int paramInt2, int paramInt3, boolean paramBoolean)
    {
      if (b == null) {
        return null;
      }
      int j = b.size();
      int i = 0;
      while (i < j)
      {
        a localA = (a)b.get(i);
        if (a >= paramInt2) {
          return null;
        }
        if ((a >= paramInt1) && ((paramInt3 == 0) || (b == paramInt3) || ((paramBoolean) && (d)))) {
          return localA;
        }
        i += 1;
      }
      return null;
    }
    
    void a()
    {
      if (a != null) {
        Arrays.fill(a, -1);
      }
      b = null;
    }
    
    void a(int paramInt1, int paramInt2)
    {
      if (a != null)
      {
        if (paramInt1 >= a.length) {
          return;
        }
        int i = paramInt1 + paramInt2;
        e(i);
        System.arraycopy(a, i, a, paramInt1, a.length - paramInt1 - paramInt2);
        Arrays.fill(a, a.length - paramInt2, a.length, -1);
        c(paramInt1, paramInt2);
        return;
      }
    }
    
    void a(int paramInt, StaggeredGridLayoutManager.c paramC)
    {
      e(paramInt);
      a[paramInt] = e;
    }
    
    public void a(a paramA)
    {
      if (b == null) {
        b = new ArrayList();
      }
      int j = b.size();
      int i = 0;
      while (i < j)
      {
        a localA = (a)b.get(i);
        if (a == a) {
          b.remove(i);
        }
        if (a >= a)
        {
          b.add(i, paramA);
          return;
        }
        i += 1;
      }
      b.add(paramA);
    }
    
    int b(int paramInt)
    {
      if (a == null) {
        return -1;
      }
      if (paramInt >= a.length) {
        return -1;
      }
      int i = g(paramInt);
      if (i == -1)
      {
        Arrays.fill(a, paramInt, a.length, -1);
        return a.length;
      }
      int[] arrayOfInt = a;
      i += 1;
      Arrays.fill(arrayOfInt, paramInt, i, -1);
      return i;
    }
    
    void b(int paramInt1, int paramInt2)
    {
      if (a != null)
      {
        if (paramInt1 >= a.length) {
          return;
        }
        int i = paramInt1 + paramInt2;
        e(i);
        System.arraycopy(a, paramInt1, a, i, a.length - paramInt1 - paramInt2);
        Arrays.fill(a, paramInt1, i, -1);
        d(paramInt1, paramInt2);
        return;
      }
    }
    
    int c(int paramInt)
    {
      if ((a != null) && (paramInt < a.length)) {
        return a[paramInt];
      }
      return -1;
    }
    
    int d(int paramInt)
    {
      int i = a.length;
      while (i <= paramInt) {
        i *= 2;
      }
      return i;
    }
    
    void e(int paramInt)
    {
      if (a == null)
      {
        a = new int[Math.max(paramInt, 10) + 1];
        Arrays.fill(a, -1);
        return;
      }
      if (paramInt >= a.length)
      {
        int[] arrayOfInt = a;
        a = new int[d(paramInt)];
        System.arraycopy(arrayOfInt, 0, a, 0, arrayOfInt.length);
        Arrays.fill(a, arrayOfInt.length, a.length, -1);
      }
    }
    
    public a f(int paramInt)
    {
      if (b == null) {
        return null;
      }
      int i = b.size() - 1;
      while (i >= 0)
      {
        a localA = (a)b.get(i);
        if (a == paramInt) {
          return localA;
        }
        i -= 1;
      }
      return null;
    }
    
    static class a
      implements Parcelable
    {
      public static final Parcelable.Creator<a> CREATOR = new Parcelable.Creator()
      {
        public StaggeredGridLayoutManager.b.a a(Parcel paramAnonymousParcel)
        {
          return new StaggeredGridLayoutManager.b.a(paramAnonymousParcel);
        }
        
        public StaggeredGridLayoutManager.b.a[] a(int paramAnonymousInt)
        {
          return new StaggeredGridLayoutManager.b.a[paramAnonymousInt];
        }
      };
      int a;
      int b;
      int[] c;
      boolean d;
      
      a() {}
      
      a(Parcel paramParcel)
      {
        a = paramParcel.readInt();
        b = paramParcel.readInt();
        int i = paramParcel.readInt();
        boolean bool = true;
        if (i != 1) {
          bool = false;
        }
        d = bool;
        i = paramParcel.readInt();
        if (i > 0)
        {
          c = new int[i];
          paramParcel.readIntArray(c);
        }
      }
      
      int a(int paramInt)
      {
        if (c == null) {
          return 0;
        }
        return c[paramInt];
      }
      
      public int describeContents()
      {
        return 0;
      }
      
      public String toString()
      {
        StringBuilder localStringBuilder = new StringBuilder();
        localStringBuilder.append("FullSpanItem{mPosition=");
        localStringBuilder.append(a);
        localStringBuilder.append(", mGapDir=");
        localStringBuilder.append(b);
        localStringBuilder.append(", mHasUnwantedGapAfter=");
        localStringBuilder.append(d);
        localStringBuilder.append(", mGapPerSpan=");
        localStringBuilder.append(Arrays.toString(c));
        localStringBuilder.append('}');
        return localStringBuilder.toString();
      }
      
      public void writeToParcel(Parcel paramParcel, int paramInt)
      {
        throw new Runtime("d2j fail translate: java.lang.RuntimeException: can not merge I and Z\n\tat com.googlecode.dex2jar.ir.TypeClass.merge(TypeClass.java:100)\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer$TypeRef.updateTypeClass(TypeTransformer.java:174)\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer$TypeAnalyze.provideAs(TypeTransformer.java:780)\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer$TypeAnalyze.e1expr(TypeTransformer.java:496)\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer$TypeAnalyze.exExpr(TypeTransformer.java:713)\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer$TypeAnalyze.exExpr(TypeTransformer.java:703)\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer$TypeAnalyze.enexpr(TypeTransformer.java:698)\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer$TypeAnalyze.exExpr(TypeTransformer.java:719)\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer$TypeAnalyze.exExpr(TypeTransformer.java:703)\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer$TypeAnalyze.s1stmt(TypeTransformer.java:810)\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer$TypeAnalyze.sxStmt(TypeTransformer.java:840)\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer$TypeAnalyze.analyze(TypeTransformer.java:206)\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer.transform(TypeTransformer.java:44)\n\tat com.googlecode.d2j.dex.Dex2jar$2.optimize(Dex2jar.java:162)\n\tat com.googlecode.d2j.dex.Dex2Asm.convertCode(Dex2Asm.java:414)\n\tat com.googlecode.d2j.dex.ExDex2Asm.convertCode(ExDex2Asm.java:42)\n\tat com.googlecode.d2j.dex.Dex2jar$2.convertCode(Dex2jar.java:128)\n\tat com.googlecode.d2j.dex.Dex2Asm.convertMethod(Dex2Asm.java:509)\n\tat com.googlecode.d2j.dex.Dex2Asm.convertClass(Dex2Asm.java:406)\n\tat com.googlecode.d2j.dex.Dex2Asm.convertDex(Dex2Asm.java:422)\n\tat com.googlecode.d2j.dex.Dex2jar.doTranslate(Dex2jar.java:172)\n\tat com.googlecode.d2j.dex.Dex2jar.to(Dex2jar.java:272)\n\tat com.googlecode.dex2jar.tools.Dex2jarCmd.doCommandLine(Dex2jarCmd.java:108)\n\tat com.googlecode.dex2jar.tools.BaseCmd.doMain(BaseCmd.java:288)\n\tat com.googlecode.dex2jar.tools.Dex2jarCmd.main(Dex2jarCmd.java:32)\n");
      }
    }
  }
  
  class c
  {
    ArrayList<View> a = new ArrayList();
    int b = Integer.MIN_VALUE;
    int c = Integer.MIN_VALUE;
    int d = 0;
    final int e;
    
    c(int paramInt)
    {
      e = paramInt;
    }
    
    int a(int paramInt)
    {
      if (b != Integer.MIN_VALUE) {
        return b;
      }
      if (a.size() == 0) {
        return paramInt;
      }
      a();
      return b;
    }
    
    int a(int paramInt1, int paramInt2, boolean paramBoolean)
    {
      return a(paramInt1, paramInt2, paramBoolean, true, false);
    }
    
    int a(int paramInt1, int paramInt2, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3)
    {
      int m = b.getStartAfterPadding();
      int n = b.getEndAfterPadding();
      int i;
      if (paramInt2 > paramInt1) {
        i = 1;
      } else {
        i = -1;
      }
      while (paramInt1 != paramInt2)
      {
        View localView = (View)a.get(paramInt1);
        int i1 = b.getDecoratedStart(localView);
        int i2 = b.getDecoratedEnd(localView);
        int k = 0;
        if (paramBoolean3) {
          if (i1 > n) {}
        }
        int j;
        for (;;)
        {
          j = 1;
          break;
          do
          {
            j = 0;
            break;
          } while (i1 >= n);
        }
        if (paramBoolean3)
        {
          if (i2 < m) {}
        }
        else {
          while (i2 > m)
          {
            k = 1;
            break;
          }
        }
        if ((j != 0) && (k != 0)) {
          if ((paramBoolean1) && (paramBoolean2))
          {
            if ((i1 >= m) && (i2 <= n)) {
              return getPosition(localView);
            }
          }
          else
          {
            if (paramBoolean2) {
              return getPosition(localView);
            }
            if ((i1 < m) || (i2 > n)) {
              return getPosition(localView);
            }
          }
        }
        paramInt1 += i;
      }
      return -1;
    }
    
    public View a(int paramInt1, int paramInt2)
    {
      Object localObject2 = null;
      Object localObject1 = null;
      View localView;
      if (paramInt2 == -1)
      {
        int i = a.size();
        paramInt2 = 0;
        for (;;)
        {
          localObject2 = localObject1;
          if (paramInt2 >= i) {
            break;
          }
          localView = (View)a.get(paramInt2);
          if (d)
          {
            localObject2 = localObject1;
            if (getPosition(localView) <= paramInt1) {
              break;
            }
          }
          if ((!d) && (getPosition(localView) >= paramInt1)) {
            return localObject1;
          }
          localObject2 = localObject1;
          if (!localView.hasFocusable()) {
            break;
          }
          paramInt2 += 1;
          localObject1 = localView;
        }
      }
      paramInt2 = a.size() - 1;
      for (localObject1 = localObject2;; localObject1 = localView)
      {
        localObject2 = localObject1;
        if (paramInt2 < 0) {
          break;
        }
        localView = (View)a.get(paramInt2);
        if (d)
        {
          localObject2 = localObject1;
          if (getPosition(localView) >= paramInt1) {
            break;
          }
        }
        if ((!d) && (getPosition(localView) <= paramInt1)) {
          return localObject1;
        }
        localObject2 = localObject1;
        if (!localView.hasFocusable()) {
          break;
        }
        paramInt2 -= 1;
      }
      return localObject2;
    }
    
    void a()
    {
      Object localObject = (View)a.get(0);
      StaggeredGridLayoutManager.LayoutParams localLayoutParams = c((View)localObject);
      b = b.getDecoratedStart((View)localObject);
      if (b)
      {
        localObject = h.f(localLayoutParams.getViewLayoutPosition());
        if ((localObject != null) && (b == -1)) {
          b -= ((StaggeredGridLayoutManager.b.a)localObject).a(e);
        }
      }
    }
    
    void a(View paramView)
    {
      StaggeredGridLayoutManager.LayoutParams localLayoutParams = c(paramView);
      a = this;
      a.add(0, paramView);
      b = Integer.MIN_VALUE;
      if (a.size() == 1) {
        c = Integer.MIN_VALUE;
      }
      if ((localLayoutParams.isItemRemoved()) || (localLayoutParams.isItemChanged())) {
        d += b.getDecoratedMeasurement(paramView);
      }
    }
    
    void a(boolean paramBoolean, int paramInt)
    {
      int i;
      if (paramBoolean) {
        i = b(Integer.MIN_VALUE);
      } else {
        i = a(Integer.MIN_VALUE);
      }
      e();
      if (i == Integer.MIN_VALUE) {
        return;
      }
      if (((paramBoolean) && (i < b.getEndAfterPadding())) || ((!paramBoolean) && (i > b.getStartAfterPadding()))) {
        return;
      }
      int j = i;
      if (paramInt != Integer.MIN_VALUE) {
        j = i + paramInt;
      }
      c = j;
      b = j;
    }
    
    int b()
    {
      if (b != Integer.MIN_VALUE) {
        return b;
      }
      a();
      return b;
    }
    
    int b(int paramInt)
    {
      if (c != Integer.MIN_VALUE) {
        return c;
      }
      if (a.size() == 0) {
        return paramInt;
      }
      c();
      return c;
    }
    
    int b(int paramInt1, int paramInt2, boolean paramBoolean)
    {
      return a(paramInt1, paramInt2, false, false, paramBoolean);
    }
    
    void b(View paramView)
    {
      StaggeredGridLayoutManager.LayoutParams localLayoutParams = c(paramView);
      a = this;
      a.add(paramView);
      c = Integer.MIN_VALUE;
      if (a.size() == 1) {
        b = Integer.MIN_VALUE;
      }
      if ((localLayoutParams.isItemRemoved()) || (localLayoutParams.isItemChanged())) {
        d += b.getDecoratedMeasurement(paramView);
      }
    }
    
    StaggeredGridLayoutManager.LayoutParams c(View paramView)
    {
      return (StaggeredGridLayoutManager.LayoutParams)paramView.getLayoutParams();
    }
    
    void c()
    {
      Object localObject = (View)a.get(a.size() - 1);
      StaggeredGridLayoutManager.LayoutParams localLayoutParams = c((View)localObject);
      c = b.getDecoratedEnd((View)localObject);
      if (b)
      {
        localObject = h.f(localLayoutParams.getViewLayoutPosition());
        if ((localObject != null) && (b == 1)) {
          c += ((StaggeredGridLayoutManager.b.a)localObject).a(e);
        }
      }
    }
    
    void c(int paramInt)
    {
      b = paramInt;
      c = paramInt;
    }
    
    int d()
    {
      if (c != Integer.MIN_VALUE) {
        return c;
      }
      c();
      return c;
    }
    
    void d(int paramInt)
    {
      if (b != Integer.MIN_VALUE) {
        b += paramInt;
      }
      if (c != Integer.MIN_VALUE) {
        c += paramInt;
      }
    }
    
    void e()
    {
      a.clear();
      f();
      d = 0;
    }
    
    void f()
    {
      b = Integer.MIN_VALUE;
      c = Integer.MIN_VALUE;
    }
    
    void g()
    {
      int i = a.size();
      View localView = (View)a.remove(i - 1);
      StaggeredGridLayoutManager.LayoutParams localLayoutParams = c(localView);
      a = null;
      if ((localLayoutParams.isItemRemoved()) || (localLayoutParams.isItemChanged())) {
        d -= b.getDecoratedMeasurement(localView);
      }
      if (i == 1) {
        b = Integer.MIN_VALUE;
      }
      c = Integer.MIN_VALUE;
    }
    
    void h()
    {
      View localView = (View)a.remove(0);
      StaggeredGridLayoutManager.LayoutParams localLayoutParams = c(localView);
      a = null;
      if (a.size() == 0) {
        c = Integer.MIN_VALUE;
      }
      if ((localLayoutParams.isItemRemoved()) || (localLayoutParams.isItemChanged())) {
        d -= b.getDecoratedMeasurement(localView);
      }
      b = Integer.MIN_VALUE;
    }
    
    public int i()
    {
      return d;
    }
    
    public int j()
    {
      if (d) {
        return a(a.size() - 1, -1, false);
      }
      return a(0, a.size(), false);
    }
    
    public int k()
    {
      if (d) {
        return b(a.size() - 1, -1, true);
      }
      return b(0, a.size(), true);
    }
    
    public int l()
    {
      if (d) {
        return a(a.size() - 1, -1, true);
      }
      return a(0, a.size(), true);
    }
    
    public int m()
    {
      if (d) {
        return a(0, a.size(), false);
      }
      return a(a.size() - 1, -1, false);
    }
    
    public int n()
    {
      if (d) {
        return b(0, a.size(), true);
      }
      return b(a.size() - 1, -1, true);
    }
    
    public int o()
    {
      if (d) {
        return a(0, a.size(), true);
      }
      return a(a.size() - 1, -1, true);
    }
  }
}
