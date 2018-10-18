package android.support.v7.widget;

import android.content.Context;
import android.graphics.PointF;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.support.annotation.NonNull;
import android.support.annotation.RestrictTo;
import android.support.v7.widget.helper.ItemTouchHelper.ViewDropHandler;
import android.util.AttributeSet;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import java.util.List;

public class LinearLayoutManager
  extends RecyclerView.LayoutManager
  implements RecyclerView.SmoothScroller.ScrollVectorProvider, ItemTouchHelper.ViewDropHandler
{
  public static final int HORIZONTAL = 0;
  public static final int INVALID_OFFSET = Integer.MIN_VALUE;
  public static final int VERTICAL = 1;
  private b a;
  private boolean b;
  private boolean c = false;
  private boolean d = false;
  private boolean e = true;
  private boolean f;
  private final LayoutChunkResult g = new LayoutChunkResult();
  private int h = 2;
  int i = 1;
  OrientationHelper j;
  boolean k = false;
  int l = -1;
  int m = Integer.MIN_VALUE;
  SavedState n = null;
  final a o = new a();
  
  public LinearLayoutManager(Context paramContext)
  {
    this(paramContext, 1, false);
  }
  
  public LinearLayoutManager(Context paramContext, int paramInt, boolean paramBoolean)
  {
    setOrientation(paramInt);
    setReverseLayout(paramBoolean);
  }
  
  public LinearLayoutManager(Context paramContext, AttributeSet paramAttributeSet, int paramInt1, int paramInt2)
  {
    paramContext = getProperties(paramContext, paramAttributeSet, paramInt1, paramInt2);
    setOrientation(orientation);
    setReverseLayout(reverseLayout);
    setStackFromEnd(stackFromEnd);
  }
  
  private int a(int paramInt, RecyclerView.Recycler paramRecycler, RecyclerView.State paramState, boolean paramBoolean)
  {
    int i1 = j.getEndAfterPadding() - paramInt;
    if (i1 > 0)
    {
      i1 = -a(-i1, paramRecycler, paramState);
      if (paramBoolean)
      {
        paramInt = j.getEndAfterPadding() - (paramInt + i1);
        if (paramInt > 0)
        {
          j.offsetChildren(paramInt);
          return paramInt + i1;
        }
      }
      return i1;
    }
    return 0;
  }
  
  private int a(RecyclerView.State paramState)
  {
    if (getChildCount() == 0) {
      return 0;
    }
    a();
    return aa.a(paramState, j, a(e ^ true, true), b(e ^ true, true), this, e, k);
  }
  
  private View a(RecyclerView.Recycler paramRecycler, RecyclerView.State paramState)
  {
    if (k) {
      return c(paramRecycler, paramState);
    }
    return d(paramRecycler, paramState);
  }
  
  private View a(boolean paramBoolean1, boolean paramBoolean2)
  {
    if (k) {
      return a(getChildCount() - 1, -1, paramBoolean1, paramBoolean2);
    }
    return a(0, getChildCount(), paramBoolean1, paramBoolean2);
  }
  
  private void a(int paramInt1, int paramInt2)
  {
    a.c = (j.getEndAfterPadding() - paramInt2);
    b localB = a;
    int i1;
    if (k) {
      i1 = -1;
    } else {
      i1 = 1;
    }
    e = i1;
    a.d = paramInt1;
    a.f = 1;
    a.b = paramInt2;
    a.g = Integer.MIN_VALUE;
  }
  
  private void a(int paramInt1, int paramInt2, boolean paramBoolean, RecyclerView.State paramState)
  {
    a.l = c();
    a.h = getExtraLayoutSpace(paramState);
    a.f = paramInt1;
    int i1 = -1;
    b localB;
    if (paramInt1 == 1)
    {
      paramState = a;
      h += j.getEndPadding();
      paramState = i();
      localB = a;
      if (!k) {
        i1 = 1;
      }
      e = i1;
      a.d = (getPosition(paramState) + a.e);
      a.b = j.getDecoratedEnd(paramState);
      paramInt1 = j.getDecoratedEnd(paramState) - j.getEndAfterPadding();
    }
    else
    {
      paramState = h();
      localB = a;
      h += j.getStartAfterPadding();
      localB = a;
      if (k) {
        i1 = 1;
      }
      e = i1;
      a.d = (getPosition(paramState) + a.e);
      a.b = j.getDecoratedStart(paramState);
      paramInt1 = -j.getDecoratedStart(paramState) + j.getStartAfterPadding();
    }
    a.c = paramInt2;
    if (paramBoolean)
    {
      paramState = a;
      c -= paramInt1;
    }
    a.g = paramInt1;
  }
  
  private void a(a paramA)
  {
    a(b, c);
  }
  
  private void a(RecyclerView.Recycler paramRecycler, int paramInt)
  {
    if (paramInt < 0) {
      return;
    }
    int i2 = getChildCount();
    View localView;
    if (k)
    {
      i2 -= 1;
      i1 = i2;
      for (;;)
      {
        if (i1 < 0) {
          return;
        }
        localView = getChildAt(i1);
        if ((j.getDecoratedEnd(localView) > paramInt) || (j.getTransformedEndWithDecoration(localView) > paramInt)) {
          break;
        }
        i1 -= 1;
      }
      a(paramRecycler, i2, i1);
      return;
    }
    int i1 = 0;
    while (i1 < i2)
    {
      localView = getChildAt(i1);
      if ((j.getDecoratedEnd(localView) <= paramInt) && (j.getTransformedEndWithDecoration(localView) <= paramInt))
      {
        i1 += 1;
      }
      else
      {
        a(paramRecycler, 0, i1);
        return;
      }
    }
  }
  
  private void a(RecyclerView.Recycler paramRecycler, int paramInt1, int paramInt2)
  {
    if (paramInt1 == paramInt2) {
      return;
    }
    int i1 = paramInt1;
    if (paramInt2 > paramInt1)
    {
      paramInt2 -= 1;
      while (paramInt2 >= paramInt1)
      {
        removeAndRecycleViewAt(paramInt2, paramRecycler);
        paramInt2 -= 1;
      }
    }
    while (i1 > paramInt2)
    {
      removeAndRecycleViewAt(i1, paramRecycler);
      i1 -= 1;
    }
  }
  
  private void a(RecyclerView.Recycler paramRecycler, b paramB)
  {
    if (a)
    {
      if (l) {
        return;
      }
      if (f == -1)
      {
        b(paramRecycler, g);
        return;
      }
      a(paramRecycler, g);
      return;
    }
  }
  
  private void a(RecyclerView.Recycler paramRecycler, RecyclerView.State paramState, int paramInt1, int paramInt2)
  {
    if ((paramState.willRunPredictiveAnimations()) && (getChildCount() != 0) && (!paramState.isPreLayout()))
    {
      if (!supportsPredictiveItemAnimations()) {
        return;
      }
      List localList = paramRecycler.getScrapList();
      int i5 = localList.size();
      int i6 = getPosition(getChildAt(0));
      int i1 = 0;
      int i3 = 0;
      int i2 = 0;
      while (i1 < i5)
      {
        RecyclerView.ViewHolder localViewHolder = (RecyclerView.ViewHolder)localList.get(i1);
        if (!localViewHolder.m())
        {
          int i7 = localViewHolder.getLayoutPosition();
          int i4 = 1;
          int i8;
          if (i7 < i6) {
            i8 = 1;
          } else {
            i8 = 0;
          }
          if (i8 != k) {
            i4 = -1;
          }
          if (i4 == -1) {
            i3 += j.getDecoratedMeasurement(itemView);
          } else {
            i2 += j.getDecoratedMeasurement(itemView);
          }
        }
        i1 += 1;
      }
      a.k = localList;
      if (i3 > 0)
      {
        e(getPosition(h()), paramInt1);
        a.h = i3;
        a.c = 0;
        a.a();
        a(paramRecycler, a, paramState, false);
      }
      if (i2 > 0)
      {
        a(getPosition(i()), paramInt2);
        a.h = i2;
        a.c = 0;
        a.a();
        a(paramRecycler, a, paramState, false);
      }
      a.k = null;
      return;
    }
  }
  
  private void a(RecyclerView.Recycler paramRecycler, RecyclerView.State paramState, a paramA)
  {
    if (a(paramState, paramA)) {
      return;
    }
    if (b(paramRecycler, paramState, paramA)) {
      return;
    }
    paramA.b();
    int i1;
    if (d) {
      i1 = paramState.getItemCount() - 1;
    } else {
      i1 = 0;
    }
    b = i1;
  }
  
  private boolean a(RecyclerView.State paramState, a paramA)
  {
    boolean bool1 = paramState.isPreLayout();
    boolean bool2 = false;
    if (!bool1)
    {
      if (l == -1) {
        return false;
      }
      if ((l >= 0) && (l < paramState.getItemCount()))
      {
        b = l;
        if ((n != null) && (n.a()))
        {
          d = n.c;
          if (d)
          {
            c = (j.getEndAfterPadding() - n.b);
            return true;
          }
          c = (j.getStartAfterPadding() + n.b);
          return true;
        }
        if (m == Integer.MIN_VALUE)
        {
          paramState = findViewByPosition(l);
          int i1;
          if (paramState != null)
          {
            if (j.getDecoratedMeasurement(paramState) > j.getTotalSpace())
            {
              paramA.b();
              return true;
            }
            if (j.getDecoratedStart(paramState) - j.getStartAfterPadding() < 0)
            {
              c = j.getStartAfterPadding();
              d = false;
              return true;
            }
            if (j.getEndAfterPadding() - j.getDecoratedEnd(paramState) < 0)
            {
              c = j.getEndAfterPadding();
              d = true;
              return true;
            }
            if (d) {
              i1 = j.getDecoratedEnd(paramState) + j.getTotalSpaceChange();
            } else {
              i1 = j.getDecoratedStart(paramState);
            }
            c = i1;
            return true;
          }
          if (getChildCount() > 0)
          {
            i1 = getPosition(getChildAt(0));
            if (l < i1) {
              bool1 = true;
            } else {
              bool1 = false;
            }
            if (bool1 == k) {
              bool2 = true;
            }
            d = bool2;
          }
          paramA.b();
          return true;
        }
        d = k;
        if (k)
        {
          c = (j.getEndAfterPadding() - m);
          return true;
        }
        c = (j.getStartAfterPadding() + m);
        return true;
      }
      l = -1;
      m = Integer.MIN_VALUE;
      return false;
    }
    return false;
  }
  
  private int b(int paramInt, RecyclerView.Recycler paramRecycler, RecyclerView.State paramState, boolean paramBoolean)
  {
    int i1 = paramInt - j.getStartAfterPadding();
    if (i1 > 0)
    {
      i1 = -a(i1, paramRecycler, paramState);
      if (paramBoolean)
      {
        paramInt = paramInt + i1 - j.getStartAfterPadding();
        if (paramInt > 0)
        {
          j.offsetChildren(-paramInt);
          return i1 - paramInt;
        }
      }
      return i1;
    }
    return 0;
  }
  
  private int b(RecyclerView.State paramState)
  {
    if (getChildCount() == 0) {
      return 0;
    }
    a();
    return aa.a(paramState, j, a(e ^ true, true), b(e ^ true, true), this, e);
  }
  
  private View b(RecyclerView.Recycler paramRecycler, RecyclerView.State paramState)
  {
    if (k) {
      return d(paramRecycler, paramState);
    }
    return c(paramRecycler, paramState);
  }
  
  private View b(boolean paramBoolean1, boolean paramBoolean2)
  {
    if (k) {
      return a(0, getChildCount(), paramBoolean1, paramBoolean2);
    }
    return a(getChildCount() - 1, -1, paramBoolean1, paramBoolean2);
  }
  
  private void b(a paramA)
  {
    e(b, c);
  }
  
  private void b(RecyclerView.Recycler paramRecycler, int paramInt)
  {
    int i1 = getChildCount();
    if (paramInt < 0) {
      return;
    }
    int i2 = j.getEnd() - paramInt;
    View localView;
    if (k)
    {
      paramInt = 0;
      for (;;)
      {
        if (paramInt >= i1) {
          return;
        }
        localView = getChildAt(paramInt);
        if ((j.getDecoratedStart(localView) < i2) || (j.getTransformedStartWithDecoration(localView) < i2)) {
          break;
        }
        paramInt += 1;
      }
      a(paramRecycler, 0, paramInt);
      return;
    }
    i1 -= 1;
    paramInt = i1;
    while (paramInt >= 0)
    {
      localView = getChildAt(paramInt);
      if ((j.getDecoratedStart(localView) >= i2) && (j.getTransformedStartWithDecoration(localView) >= i2))
      {
        paramInt -= 1;
      }
      else
      {
        a(paramRecycler, i1, paramInt);
        return;
      }
    }
  }
  
  private boolean b(RecyclerView.Recycler paramRecycler, RecyclerView.State paramState, a paramA)
  {
    int i2 = getChildCount();
    int i1 = 0;
    if (i2 == 0) {
      return false;
    }
    View localView = getFocusedChild();
    if ((localView != null) && (paramA.a(localView, paramState)))
    {
      paramA.a(localView, getPosition(localView));
      return true;
    }
    if (b != d) {
      return false;
    }
    if (d) {
      paramRecycler = a(paramRecycler, paramState);
    } else {
      paramRecycler = b(paramRecycler, paramState);
    }
    if (paramRecycler != null)
    {
      paramA.b(paramRecycler, getPosition(paramRecycler));
      if ((!paramState.isPreLayout()) && (supportsPredictiveItemAnimations()))
      {
        if ((j.getDecoratedStart(paramRecycler) >= j.getEndAfterPadding()) || (j.getDecoratedEnd(paramRecycler) < j.getStartAfterPadding())) {
          i1 = 1;
        }
        if (i1 != 0)
        {
          if (d) {
            i1 = j.getEndAfterPadding();
          } else {
            i1 = j.getStartAfterPadding();
          }
          c = i1;
        }
      }
      return true;
    }
    return false;
  }
  
  private int c(RecyclerView.State paramState)
  {
    if (getChildCount() == 0) {
      return 0;
    }
    a();
    return aa.b(paramState, j, a(e ^ true, true), b(e ^ true, true), this, e);
  }
  
  private View c(RecyclerView.Recycler paramRecycler, RecyclerView.State paramState)
  {
    return a(paramRecycler, paramState, 0, getChildCount(), paramState.getItemCount());
  }
  
  private View d(RecyclerView.Recycler paramRecycler, RecyclerView.State paramState)
  {
    return a(paramRecycler, paramState, getChildCount() - 1, -1, paramState.getItemCount());
  }
  
  private View e(RecyclerView.Recycler paramRecycler, RecyclerView.State paramState)
  {
    if (k) {
      return g(paramRecycler, paramState);
    }
    return h(paramRecycler, paramState);
  }
  
  private void e(int paramInt1, int paramInt2)
  {
    a.c = (paramInt2 - j.getStartAfterPadding());
    a.d = paramInt1;
    b localB = a;
    if (k) {
      paramInt1 = 1;
    } else {
      paramInt1 = -1;
    }
    e = paramInt1;
    a.f = -1;
    a.b = paramInt2;
    a.g = Integer.MIN_VALUE;
  }
  
  private View f(RecyclerView.Recycler paramRecycler, RecyclerView.State paramState)
  {
    if (k) {
      return h(paramRecycler, paramState);
    }
    return g(paramRecycler, paramState);
  }
  
  private View g(RecyclerView.Recycler paramRecycler, RecyclerView.State paramState)
  {
    return b(0, getChildCount());
  }
  
  private void g()
  {
    if ((i != 1) && (isLayoutRTL()))
    {
      k = (c ^ true);
      return;
    }
    k = c;
  }
  
  private View h()
  {
    int i1;
    if (k) {
      i1 = getChildCount() - 1;
    } else {
      i1 = 0;
    }
    return getChildAt(i1);
  }
  
  private View h(RecyclerView.Recycler paramRecycler, RecyclerView.State paramState)
  {
    return b(getChildCount() - 1, -1);
  }
  
  private View i()
  {
    int i1;
    if (k) {
      i1 = 0;
    } else {
      i1 = getChildCount() - 1;
    }
    return getChildAt(i1);
  }
  
  int a(int paramInt)
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
              if (i == 1) {
                return 1;
              }
              if (isLayoutRTL()) {
                return -1;
              }
              return 1;
            }
            if (i == 1) {
              return -1;
            }
            if (isLayoutRTL()) {
              return 1;
            }
            return -1;
          }
          if (i == 1) {
            i1 = 1;
          }
          return i1;
        }
        if (i == 0) {
          i1 = 1;
        }
        return i1;
      }
      if (i == 1) {
        return -1;
      }
      return Integer.MIN_VALUE;
    }
    if (i == 0) {
      return -1;
    }
    return Integer.MIN_VALUE;
  }
  
  int a(int paramInt, RecyclerView.Recycler paramRecycler, RecyclerView.State paramState)
  {
    if (getChildCount() != 0)
    {
      if (paramInt == 0) {
        return 0;
      }
      a.a = true;
      a();
      int i1;
      if (paramInt > 0) {
        i1 = 1;
      } else {
        i1 = -1;
      }
      int i2 = Math.abs(paramInt);
      a(i1, i2, true, paramState);
      int i3 = a.g + a(paramRecycler, a, paramState, false);
      if (i3 < 0) {
        return 0;
      }
      if (i2 > i3) {
        paramInt = i1 * i3;
      }
      j.offsetChildren(-paramInt);
      a.j = paramInt;
      return paramInt;
    }
    return 0;
  }
  
  int a(RecyclerView.Recycler paramRecycler, b paramB, RecyclerView.State paramState, boolean paramBoolean)
  {
    int i3 = c;
    if (g != Integer.MIN_VALUE)
    {
      if (c < 0) {
        g += c;
      }
      a(paramRecycler, paramB);
    }
    int i1 = c + h;
    LayoutChunkResult localLayoutChunkResult = g;
    do
    {
      int i2;
      do
      {
        if (((!l) && (i1 <= 0)) || (!paramB.a(paramState))) {
          break;
        }
        localLayoutChunkResult.a();
        a(paramRecycler, paramState, paramB, localLayoutChunkResult);
        if (mFinished) {
          break;
        }
        b += mConsumed * f;
        if ((mIgnoreConsumed) && (a.k == null))
        {
          i2 = i1;
          if (paramState.isPreLayout()) {}
        }
        else
        {
          c -= mConsumed;
          i2 = i1 - mConsumed;
        }
        if (g != Integer.MIN_VALUE)
        {
          g += mConsumed;
          if (c < 0) {
            g += c;
          }
          a(paramRecycler, paramB);
        }
        i1 = i2;
      } while (!paramBoolean);
      i1 = i2;
    } while (!mFocusable);
    return i3 - c;
  }
  
  View a(int paramInt1, int paramInt2, boolean paramBoolean1, boolean paramBoolean2)
  {
    a();
    int i2 = 320;
    int i1;
    if (paramBoolean1) {
      i1 = 24579;
    } else {
      i1 = 320;
    }
    if (!paramBoolean2) {
      i2 = 0;
    }
    if (i == 0) {
      return r.a(paramInt1, paramInt2, i1, i2);
    }
    return s.a(paramInt1, paramInt2, i1, i2);
  }
  
  View a(RecyclerView.Recycler paramRecycler, RecyclerView.State paramState, int paramInt1, int paramInt2, int paramInt3)
  {
    a();
    int i2 = j.getStartAfterPadding();
    int i3 = j.getEndAfterPadding();
    int i1;
    if (paramInt2 > paramInt1) {
      i1 = 1;
    } else {
      i1 = -1;
    }
    paramState = null;
    Object localObject2;
    for (paramRecycler = null; paramInt1 != paramInt2; paramRecycler = (RecyclerView.Recycler)localObject2)
    {
      View localView = getChildAt(paramInt1);
      int i4 = getPosition(localView);
      Object localObject1 = paramState;
      localObject2 = paramRecycler;
      if (i4 >= 0)
      {
        localObject1 = paramState;
        localObject2 = paramRecycler;
        if (i4 < paramInt3) {
          if (((RecyclerView.LayoutParams)localView.getLayoutParams()).isItemRemoved())
          {
            localObject1 = paramState;
            localObject2 = paramRecycler;
            if (paramRecycler == null)
            {
              localObject2 = localView;
              localObject1 = paramState;
            }
          }
          else
          {
            if ((j.getDecoratedStart(localView) < i3) && (j.getDecoratedEnd(localView) >= i2)) {
              return localView;
            }
            localObject1 = paramState;
            localObject2 = paramRecycler;
            if (paramState == null)
            {
              localObject1 = localView;
              localObject2 = paramRecycler;
            }
          }
        }
      }
      paramInt1 += i1;
      paramState = (RecyclerView.State)localObject1;
    }
    if (paramState != null) {
      return paramState;
    }
    return paramRecycler;
  }
  
  void a()
  {
    if (a == null) {
      a = b();
    }
  }
  
  void a(RecyclerView.Recycler paramRecycler, RecyclerView.State paramState, a paramA, int paramInt) {}
  
  void a(RecyclerView.Recycler paramRecycler, RecyclerView.State paramState, b paramB, LayoutChunkResult paramLayoutChunkResult)
  {
    paramRecycler = paramB.a(paramRecycler);
    if (paramRecycler == null)
    {
      mFinished = true;
      return;
    }
    paramState = (RecyclerView.LayoutParams)paramRecycler.getLayoutParams();
    boolean bool2;
    boolean bool1;
    if (k == null)
    {
      bool2 = k;
      if (f == -1) {
        bool1 = true;
      } else {
        bool1 = false;
      }
      if (bool2 == bool1) {
        addView(paramRecycler);
      } else {
        addView(paramRecycler, 0);
      }
    }
    else
    {
      bool2 = k;
      if (f == -1) {
        bool1 = true;
      } else {
        bool1 = false;
      }
      if (bool2 == bool1) {
        addDisappearingView(paramRecycler);
      } else {
        addDisappearingView(paramRecycler, 0);
      }
    }
    measureChildWithMargins(paramRecycler, 0, 0);
    mConsumed = j.getDecoratedMeasurement(paramRecycler);
    int i1;
    int i4;
    int i3;
    int i5;
    int i2;
    if (i == 1)
    {
      if (isLayoutRTL())
      {
        i1 = getWidth() - getPaddingRight();
        i4 = i1 - j.getDecoratedMeasurementInOther(paramRecycler);
      }
      else
      {
        i4 = getPaddingLeft();
        i1 = j.getDecoratedMeasurementInOther(paramRecycler) + i4;
      }
      if (f == -1)
      {
        i3 = b;
        i5 = b - mConsumed;
        i2 = i1;
        i1 = i5;
      }
      else
      {
        i5 = b;
        i3 = b + mConsumed;
        i2 = i1;
        i1 = i5;
      }
    }
    else
    {
      i2 = getPaddingTop();
      i1 = j.getDecoratedMeasurementInOther(paramRecycler) + i2;
      int i6;
      if (f == -1)
      {
        i3 = b;
        i4 = b;
        i6 = mConsumed;
        i5 = i1;
        i4 -= i6;
        i1 = i2;
        i2 = i3;
        i3 = i5;
      }
      else
      {
        i5 = b;
        i6 = b + mConsumed;
        i4 = i2;
        i3 = i1;
        i2 = i6;
        i1 = i4;
        i4 = i5;
      }
    }
    layoutDecoratedWithMargins(paramRecycler, i4, i1, i2, i3);
    if ((paramState.isItemRemoved()) || (paramState.isItemChanged())) {
      mIgnoreConsumed = true;
    }
    mFocusable = paramRecycler.hasFocusable();
  }
  
  void a(RecyclerView.State paramState, b paramB, RecyclerView.LayoutManager.LayoutPrefetchRegistry paramLayoutPrefetchRegistry)
  {
    int i1 = d;
    if ((i1 >= 0) && (i1 < paramState.getItemCount())) {
      paramLayoutPrefetchRegistry.addPosition(i1, Math.max(0, g));
    }
  }
  
  public void assertNotInLayoutOrScroll(String paramString)
  {
    if (n == null) {
      super.assertNotInLayoutOrScroll(paramString);
    }
  }
  
  b b()
  {
    return new b();
  }
  
  View b(int paramInt1, int paramInt2)
  {
    a();
    int i1;
    if (paramInt2 > paramInt1) {
      i1 = 1;
    } else if (paramInt2 < paramInt1) {
      i1 = -1;
    } else {
      i1 = 0;
    }
    if (i1 == 0) {
      return getChildAt(paramInt1);
    }
    int i2;
    if (j.getDecoratedStart(getChildAt(paramInt1)) < j.getStartAfterPadding())
    {
      i1 = 16644;
      i2 = 16388;
    }
    else
    {
      i1 = 4161;
      i2 = 4097;
    }
    if (i == 0) {
      return r.a(paramInt1, paramInt2, i1, i2);
    }
    return s.a(paramInt1, paramInt2, i1, i2);
  }
  
  boolean c()
  {
    return (j.getMode() == 0) && (j.getEnd() == 0);
  }
  
  public boolean canScrollHorizontally()
  {
    return i == 0;
  }
  
  public boolean canScrollVertically()
  {
    return i == 1;
  }
  
  public void collectAdjacentPrefetchPositions(int paramInt1, int paramInt2, RecyclerView.State paramState, RecyclerView.LayoutManager.LayoutPrefetchRegistry paramLayoutPrefetchRegistry)
  {
    if (i != 0) {
      paramInt1 = paramInt2;
    }
    if (getChildCount() != 0)
    {
      if (paramInt1 == 0) {
        return;
      }
      a();
      if (paramInt1 > 0) {
        paramInt2 = 1;
      } else {
        paramInt2 = -1;
      }
      a(paramInt2, Math.abs(paramInt1), true, paramState);
      a(paramState, a, paramLayoutPrefetchRegistry);
      return;
    }
  }
  
  public void collectInitialPrefetchPositions(int paramInt, RecyclerView.LayoutManager.LayoutPrefetchRegistry paramLayoutPrefetchRegistry)
  {
    SavedState localSavedState = n;
    int i2 = -1;
    boolean bool;
    if ((localSavedState != null) && (n.a()))
    {
      bool = n.c;
      i1 = n.a;
    }
    else
    {
      g();
      bool = k;
      if (l == -1)
      {
        if (bool) {
          i1 = paramInt - 1;
        } else {
          i1 = 0;
        }
      }
      else {
        i1 = l;
      }
    }
    if (!bool) {
      i2 = 1;
    }
    int i4 = 0;
    int i3 = i1;
    int i1 = i4;
    while ((i1 < h) && (i3 >= 0) && (i3 < paramInt))
    {
      paramLayoutPrefetchRegistry.addPosition(i3, 0);
      i3 += i2;
      i1 += 1;
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
    if (getChildCount() == 0) {
      return null;
    }
    int i3 = 0;
    int i2 = getPosition(getChildAt(0));
    int i1 = 1;
    if (paramInt < i2) {
      i3 = 1;
    }
    paramInt = i1;
    if (i3 != k) {
      paramInt = -1;
    }
    if (i == 0) {
      return new PointF(paramInt, 0.0F);
    }
    return new PointF(0.0F, paramInt);
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
  
  boolean d()
  {
    return (getHeightMode() != 1073741824) && (getWidthMode() != 1073741824) && (f());
  }
  
  public int findFirstCompletelyVisibleItemPosition()
  {
    View localView = a(0, getChildCount(), true, false);
    if (localView == null) {
      return -1;
    }
    return getPosition(localView);
  }
  
  public int findFirstVisibleItemPosition()
  {
    View localView = a(0, getChildCount(), false, true);
    if (localView == null) {
      return -1;
    }
    return getPosition(localView);
  }
  
  public int findLastCompletelyVisibleItemPosition()
  {
    View localView = a(getChildCount() - 1, -1, true, false);
    if (localView == null) {
      return -1;
    }
    return getPosition(localView);
  }
  
  public int findLastVisibleItemPosition()
  {
    View localView = a(getChildCount() - 1, -1, false, true);
    if (localView == null) {
      return -1;
    }
    return getPosition(localView);
  }
  
  public View findViewByPosition(int paramInt)
  {
    int i1 = getChildCount();
    if (i1 == 0) {
      return null;
    }
    int i2 = paramInt - getPosition(getChildAt(0));
    if ((i2 >= 0) && (i2 < i1))
    {
      View localView = getChildAt(i2);
      if (getPosition(localView) == paramInt) {
        return localView;
      }
    }
    return super.findViewByPosition(paramInt);
  }
  
  public RecyclerView.LayoutParams generateDefaultLayoutParams()
  {
    return new RecyclerView.LayoutParams(-2, -2);
  }
  
  protected int getExtraLayoutSpace(RecyclerView.State paramState)
  {
    if (paramState.hasTargetScrollPosition()) {
      return j.getTotalSpace();
    }
    return 0;
  }
  
  public int getInitialPrefetchItemCount()
  {
    return h;
  }
  
  public int getOrientation()
  {
    return i;
  }
  
  public boolean getRecycleChildrenOnDetach()
  {
    return f;
  }
  
  public boolean getReverseLayout()
  {
    return c;
  }
  
  public boolean getStackFromEnd()
  {
    return d;
  }
  
  public boolean isAutoMeasureEnabled()
  {
    return true;
  }
  
  protected boolean isLayoutRTL()
  {
    return getLayoutDirection() == 1;
  }
  
  public boolean isSmoothScrollbarEnabled()
  {
    return e;
  }
  
  public void onDetachedFromWindow(RecyclerView paramRecyclerView, RecyclerView.Recycler paramRecycler)
  {
    super.onDetachedFromWindow(paramRecyclerView, paramRecycler);
    if (f)
    {
      removeAndRecycleAllViews(paramRecycler);
      paramRecycler.clear();
    }
  }
  
  public View onFocusSearchFailed(View paramView, int paramInt, RecyclerView.Recycler paramRecycler, RecyclerView.State paramState)
  {
    g();
    if (getChildCount() == 0) {
      return null;
    }
    paramInt = a(paramInt);
    if (paramInt == Integer.MIN_VALUE) {
      return null;
    }
    a();
    a();
    a(paramInt, (int)(j.getTotalSpace() * 0.33333334F), false, paramState);
    a.g = Integer.MIN_VALUE;
    a.a = false;
    a(paramRecycler, a, paramState, true);
    if (paramInt == -1) {
      paramView = f(paramRecycler, paramState);
    } else {
      paramView = e(paramRecycler, paramState);
    }
    if (paramInt == -1) {
      paramRecycler = h();
    } else {
      paramRecycler = i();
    }
    if (paramRecycler.hasFocusable())
    {
      if (paramView == null) {
        return null;
      }
      return paramRecycler;
    }
    return paramView;
  }
  
  public void onInitializeAccessibilityEvent(AccessibilityEvent paramAccessibilityEvent)
  {
    super.onInitializeAccessibilityEvent(paramAccessibilityEvent);
    if (getChildCount() > 0)
    {
      paramAccessibilityEvent.setFromIndex(findFirstVisibleItemPosition());
      paramAccessibilityEvent.setToIndex(findLastVisibleItemPosition());
    }
  }
  
  public void onLayoutChildren(RecyclerView.Recycler paramRecycler, RecyclerView.State paramState)
  {
    Object localObject = n;
    int i3 = -1;
    if (((localObject != null) || (l != -1)) && (paramState.getItemCount() == 0))
    {
      removeAndRecycleAllViews(paramRecycler);
      return;
    }
    if ((n != null) && (n.a())) {
      l = n.a;
    }
    a();
    a.a = false;
    g();
    localObject = getFocusedChild();
    if ((o.e) && (l == -1) && (n == null))
    {
      if ((localObject != null) && ((j.getDecoratedStart((View)localObject) >= j.getEndAfterPadding()) || (j.getDecoratedEnd((View)localObject) <= j.getStartAfterPadding()))) {
        o.a((View)localObject, getPosition((View)localObject));
      }
    }
    else
    {
      o.a();
      o.d = (k ^ d);
      a(paramRecycler, paramState, o);
      o.e = true;
    }
    int i2 = getExtraLayoutSpace(paramState);
    if (a.j >= 0)
    {
      i1 = i2;
      i2 = 0;
    }
    else
    {
      i1 = 0;
    }
    int i4 = i2 + j.getStartAfterPadding();
    int i5 = i1 + j.getEndPadding();
    int i1 = i4;
    i2 = i5;
    if (paramState.isPreLayout())
    {
      i1 = i4;
      i2 = i5;
      if (l != -1)
      {
        i1 = i4;
        i2 = i5;
        if (m != Integer.MIN_VALUE)
        {
          localObject = findViewByPosition(l);
          i1 = i4;
          i2 = i5;
          if (localObject != null)
          {
            if (k)
            {
              i1 = j.getEndAfterPadding() - j.getDecoratedEnd((View)localObject) - m;
            }
            else
            {
              i1 = j.getDecoratedStart((View)localObject);
              i2 = j.getStartAfterPadding();
              i1 = m - (i1 - i2);
            }
            if (i1 > 0)
            {
              i1 = i4 + i1;
              i2 = i5;
            }
            else
            {
              i2 = i5 - i1;
              i1 = i4;
            }
          }
        }
      }
    }
    if (o.d)
    {
      if (!k) {}
    }
    else {
      while (!k)
      {
        i3 = 1;
        break;
      }
    }
    a(paramRecycler, paramState, o, i3);
    detachAndScrapAttachedViews(paramRecycler);
    a.l = c();
    a.i = paramState.isPreLayout();
    if (o.d)
    {
      b(o);
      a.h = i1;
      a(paramRecycler, a, paramState, false);
      i3 = a.b;
      i5 = a.d;
      i1 = i2;
      if (a.c > 0) {
        i1 = i2 + a.c;
      }
      a(o);
      a.h = i1;
      localObject = a;
      d += a.e;
      a(paramRecycler, a, paramState, false);
      i4 = a.b;
      i2 = i3;
      i1 = i4;
      if (a.c > 0)
      {
        i1 = a.c;
        e(i5, i3);
        a.h = i1;
        a(paramRecycler, a, paramState, false);
        i2 = a.b;
        i1 = i4;
      }
    }
    else
    {
      a(o);
      a.h = i2;
      a(paramRecycler, a, paramState, false);
      i3 = a.b;
      i5 = a.d;
      i2 = i1;
      if (a.c > 0) {
        i2 = i1 + a.c;
      }
      b(o);
      a.h = i2;
      localObject = a;
      d += a.e;
      a(paramRecycler, a, paramState, false);
      i4 = a.b;
      i2 = i4;
      i1 = i3;
      if (a.c > 0)
      {
        i1 = a.c;
        a(i5, i3);
        a.h = i1;
        a(paramRecycler, a, paramState, false);
        i1 = a.b;
        i2 = i4;
      }
    }
    i3 = i2;
    i4 = i1;
    if (getChildCount() > 0) {
      if ((k ^ d))
      {
        i4 = a(i1, paramRecycler, paramState, true);
        i3 = i2 + i4;
        i2 = b(i3, paramRecycler, paramState, false);
        i3 += i2;
        i4 = i1 + i4 + i2;
      }
      else
      {
        i3 = b(i2, paramRecycler, paramState, true);
        i1 += i3;
        i4 = a(i1, paramRecycler, paramState, false);
        i3 = i2 + i3 + i4;
        i4 = i1 + i4;
      }
    }
    a(paramRecycler, paramState, i3, i4);
    if (!paramState.isPreLayout()) {
      j.onLayoutComplete();
    } else {
      o.a();
    }
    b = d;
  }
  
  public void onLayoutCompleted(RecyclerView.State paramState)
  {
    super.onLayoutCompleted(paramState);
    n = null;
    l = -1;
    m = Integer.MIN_VALUE;
    o.a();
  }
  
  public void onRestoreInstanceState(Parcelable paramParcelable)
  {
    if ((paramParcelable instanceof SavedState))
    {
      n = ((SavedState)paramParcelable);
      requestLayout();
    }
  }
  
  public Parcelable onSaveInstanceState()
  {
    if (n != null) {
      return new SavedState(n);
    }
    SavedState localSavedState = new SavedState();
    if (getChildCount() > 0)
    {
      a();
      boolean bool = b ^ k;
      c = bool;
      if (bool)
      {
        localView = i();
        b = (j.getEndAfterPadding() - j.getDecoratedEnd(localView));
        a = getPosition(localView);
        return localSavedState;
      }
      View localView = h();
      a = getPosition(localView);
      b = (j.getDecoratedStart(localView) - j.getStartAfterPadding());
      return localSavedState;
    }
    localSavedState.b();
    return localSavedState;
  }
  
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
  public void prepareForDrop(@NonNull View paramView1, @NonNull View paramView2, int paramInt1, int paramInt2)
  {
    assertNotInLayoutOrScroll("Cannot drop a view during a scroll or layout calculation");
    a();
    g();
    paramInt1 = getPosition(paramView1);
    paramInt2 = getPosition(paramView2);
    if (paramInt1 < paramInt2) {
      paramInt1 = 1;
    } else {
      paramInt1 = -1;
    }
    if (k)
    {
      if (paramInt1 == 1)
      {
        scrollToPositionWithOffset(paramInt2, j.getEndAfterPadding() - (j.getDecoratedStart(paramView2) + j.getDecoratedMeasurement(paramView1)));
        return;
      }
      scrollToPositionWithOffset(paramInt2, j.getEndAfterPadding() - j.getDecoratedEnd(paramView2));
      return;
    }
    if (paramInt1 == -1)
    {
      scrollToPositionWithOffset(paramInt2, j.getDecoratedStart(paramView2));
      return;
    }
    scrollToPositionWithOffset(paramInt2, j.getDecoratedEnd(paramView2) - j.getDecoratedMeasurement(paramView1));
  }
  
  public int scrollHorizontallyBy(int paramInt, RecyclerView.Recycler paramRecycler, RecyclerView.State paramState)
  {
    if (i == 1) {
      return 0;
    }
    return a(paramInt, paramRecycler, paramState);
  }
  
  public void scrollToPosition(int paramInt)
  {
    l = paramInt;
    m = Integer.MIN_VALUE;
    if (n != null) {
      n.b();
    }
    requestLayout();
  }
  
  public void scrollToPositionWithOffset(int paramInt1, int paramInt2)
  {
    l = paramInt1;
    m = paramInt2;
    if (n != null) {
      n.b();
    }
    requestLayout();
  }
  
  public int scrollVerticallyBy(int paramInt, RecyclerView.Recycler paramRecycler, RecyclerView.State paramState)
  {
    if (i == 0) {
      return 0;
    }
    return a(paramInt, paramRecycler, paramState);
  }
  
  public void setInitialPrefetchItemCount(int paramInt)
  {
    h = paramInt;
  }
  
  public void setOrientation(int paramInt)
  {
    if ((paramInt != 0) && (paramInt != 1))
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("invalid orientation:");
      localStringBuilder.append(paramInt);
      throw new IllegalArgumentException(localStringBuilder.toString());
    }
    assertNotInLayoutOrScroll(null);
    if ((paramInt != i) || (j == null))
    {
      j = OrientationHelper.createOrientationHelper(this, paramInt);
      o.a = j;
      i = paramInt;
      requestLayout();
    }
  }
  
  public void setRecycleChildrenOnDetach(boolean paramBoolean)
  {
    f = paramBoolean;
  }
  
  public void setReverseLayout(boolean paramBoolean)
  {
    assertNotInLayoutOrScroll(null);
    if (paramBoolean == c) {
      return;
    }
    c = paramBoolean;
    requestLayout();
  }
  
  public void setSmoothScrollbarEnabled(boolean paramBoolean)
  {
    e = paramBoolean;
  }
  
  public void setStackFromEnd(boolean paramBoolean)
  {
    assertNotInLayoutOrScroll(null);
    if (d == paramBoolean) {
      return;
    }
    d = paramBoolean;
    requestLayout();
  }
  
  public void smoothScrollToPosition(RecyclerView paramRecyclerView, RecyclerView.State paramState, int paramInt)
  {
    paramRecyclerView = new LinearSmoothScroller(paramRecyclerView.getContext());
    paramRecyclerView.setTargetPosition(paramInt);
    startSmoothScroll(paramRecyclerView);
  }
  
  public boolean supportsPredictiveItemAnimations()
  {
    return (n == null) && (b == d);
  }
  
  protected static class LayoutChunkResult
  {
    public int mConsumed;
    public boolean mFinished;
    public boolean mFocusable;
    public boolean mIgnoreConsumed;
    
    protected LayoutChunkResult() {}
    
    void a()
    {
      mConsumed = 0;
      mFinished = false;
      mIgnoreConsumed = false;
      mFocusable = false;
    }
  }
  
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
  public static class SavedState
    implements Parcelable
  {
    public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator()
    {
      public LinearLayoutManager.SavedState a(Parcel paramAnonymousParcel)
      {
        return new LinearLayoutManager.SavedState(paramAnonymousParcel);
      }
      
      public LinearLayoutManager.SavedState[] a(int paramAnonymousInt)
      {
        return new LinearLayoutManager.SavedState[paramAnonymousInt];
      }
    };
    int a;
    int b;
    boolean c;
    
    public SavedState() {}
    
    SavedState(Parcel paramParcel)
    {
      a = paramParcel.readInt();
      b = paramParcel.readInt();
      int i = paramParcel.readInt();
      boolean bool = true;
      if (i != 1) {
        bool = false;
      }
      c = bool;
    }
    
    public SavedState(SavedState paramSavedState)
    {
      a = a;
      b = b;
      c = c;
    }
    
    boolean a()
    {
      return a >= 0;
    }
    
    void b()
    {
      a = -1;
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
  
  static class a
  {
    OrientationHelper a;
    int b;
    int c;
    boolean d;
    boolean e;
    
    a()
    {
      a();
    }
    
    void a()
    {
      b = -1;
      c = Integer.MIN_VALUE;
      d = false;
      e = false;
    }
    
    public void a(View paramView, int paramInt)
    {
      int i = a.getTotalSpaceChange();
      if (i >= 0)
      {
        b(paramView, paramInt);
        return;
      }
      b = paramInt;
      int j;
      int k;
      if (d)
      {
        paramInt = a.getEndAfterPadding() - i - a.getDecoratedEnd(paramView);
        c = (a.getEndAfterPadding() - paramInt);
        if (paramInt > 0)
        {
          i = a.getDecoratedMeasurement(paramView);
          j = c;
          k = a.getStartAfterPadding();
          i = j - i - (k + Math.min(a.getDecoratedStart(paramView) - k, 0));
          if (i < 0) {
            c += Math.min(paramInt, -i);
          }
        }
      }
      else
      {
        j = a.getDecoratedStart(paramView);
        paramInt = j - a.getStartAfterPadding();
        c = j;
        if (paramInt > 0)
        {
          k = a.getDecoratedMeasurement(paramView);
          int m = a.getEndAfterPadding();
          int n = a.getDecoratedEnd(paramView);
          i = a.getEndAfterPadding() - Math.min(0, m - i - n) - (j + k);
          if (i < 0) {
            c -= Math.min(paramInt, -i);
          }
        }
      }
    }
    
    boolean a(View paramView, RecyclerView.State paramState)
    {
      paramView = (RecyclerView.LayoutParams)paramView.getLayoutParams();
      return (!paramView.isItemRemoved()) && (paramView.getViewLayoutPosition() >= 0) && (paramView.getViewLayoutPosition() < paramState.getItemCount());
    }
    
    void b()
    {
      int i;
      if (d) {
        i = a.getEndAfterPadding();
      } else {
        i = a.getStartAfterPadding();
      }
      c = i;
    }
    
    public void b(View paramView, int paramInt)
    {
      if (d) {
        c = (a.getDecoratedEnd(paramView) + a.getTotalSpaceChange());
      } else {
        c = a.getDecoratedStart(paramView);
      }
      b = paramInt;
    }
    
    public String toString()
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("AnchorInfo{mPosition=");
      localStringBuilder.append(b);
      localStringBuilder.append(", mCoordinate=");
      localStringBuilder.append(c);
      localStringBuilder.append(", mLayoutFromEnd=");
      localStringBuilder.append(d);
      localStringBuilder.append(", mValid=");
      localStringBuilder.append(e);
      localStringBuilder.append('}');
      return localStringBuilder.toString();
    }
  }
  
  static class b
  {
    boolean a = true;
    int b;
    int c;
    int d;
    int e;
    int f;
    int g;
    int h = 0;
    boolean i = false;
    int j;
    List<RecyclerView.ViewHolder> k = null;
    boolean l;
    
    b() {}
    
    private View b()
    {
      int n = k.size();
      int m = 0;
      while (m < n)
      {
        View localView = k.get(m)).itemView;
        RecyclerView.LayoutParams localLayoutParams = (RecyclerView.LayoutParams)localView.getLayoutParams();
        if ((!localLayoutParams.isItemRemoved()) && (d == localLayoutParams.getViewLayoutPosition()))
        {
          a(localView);
          return localView;
        }
        m += 1;
      }
      return null;
    }
    
    View a(RecyclerView.Recycler paramRecycler)
    {
      if (k != null) {
        return b();
      }
      paramRecycler = paramRecycler.getViewForPosition(d);
      d += e;
      return paramRecycler;
    }
    
    public void a()
    {
      a(null);
    }
    
    public void a(View paramView)
    {
      paramView = b(paramView);
      if (paramView == null)
      {
        d = -1;
        return;
      }
      d = ((RecyclerView.LayoutParams)paramView.getLayoutParams()).getViewLayoutPosition();
    }
    
    boolean a(RecyclerView.State paramState)
    {
      return (d >= 0) && (d < paramState.getItemCount());
    }
    
    public View b(View paramView)
    {
      int i3 = k.size();
      Object localObject1 = null;
      int n = Integer.MAX_VALUE;
      int m = 0;
      while (m < i3)
      {
        View localView = k.get(m)).itemView;
        RecyclerView.LayoutParams localLayoutParams = (RecyclerView.LayoutParams)localView.getLayoutParams();
        Object localObject2 = localObject1;
        int i1 = n;
        if (localView != paramView) {
          if (localLayoutParams.isItemRemoved())
          {
            localObject2 = localObject1;
            i1 = n;
          }
          else
          {
            int i2 = (localLayoutParams.getViewLayoutPosition() - d) * e;
            if (i2 < 0)
            {
              localObject2 = localObject1;
              i1 = n;
            }
            else
            {
              localObject2 = localObject1;
              i1 = n;
              if (i2 < n)
              {
                if (i2 == 0) {
                  return localView;
                }
                localObject2 = localView;
                i1 = i2;
              }
            }
          }
        }
        m += 1;
        localObject1 = localObject2;
        n = i1;
      }
      return localObject1;
    }
  }
}
