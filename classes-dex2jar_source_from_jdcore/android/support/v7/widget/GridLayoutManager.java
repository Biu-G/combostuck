package android.support.v7.widget;

import android.content.Context;
import android.graphics.Rect;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.CollectionItemInfoCompat;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseIntArray;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewGroup.MarginLayoutParams;
import java.util.Arrays;

public class GridLayoutManager
  extends LinearLayoutManager
{
  public static final int DEFAULT_SPAN_COUNT = -1;
  boolean a = false;
  int b = -1;
  int[] c;
  View[] d;
  final SparseIntArray e = new SparseIntArray();
  final SparseIntArray f = new SparseIntArray();
  SpanSizeLookup g = new DefaultSpanSizeLookup();
  final Rect h = new Rect();
  
  public GridLayoutManager(Context paramContext, int paramInt)
  {
    super(paramContext);
    setSpanCount(paramInt);
  }
  
  public GridLayoutManager(Context paramContext, int paramInt1, int paramInt2, boolean paramBoolean)
  {
    super(paramContext, paramInt2, paramBoolean);
    setSpanCount(paramInt1);
  }
  
  public GridLayoutManager(Context paramContext, AttributeSet paramAttributeSet, int paramInt1, int paramInt2)
  {
    super(paramContext, paramAttributeSet, paramInt1, paramInt2);
    setSpanCount(getPropertiesspanCount);
  }
  
  private int a(RecyclerView.Recycler paramRecycler, RecyclerView.State paramState, int paramInt)
  {
    if (!paramState.isPreLayout()) {
      return g.getSpanGroupIndex(paramInt, b);
    }
    int i = paramRecycler.convertPreLayoutPositionToPostLayout(paramInt);
    if (i == -1)
    {
      paramRecycler = new StringBuilder();
      paramRecycler.append("Cannot find span size for pre layout position. ");
      paramRecycler.append(paramInt);
      Log.w("GridLayoutManager", paramRecycler.toString());
      return 0;
    }
    return g.getSpanGroupIndex(i, b);
  }
  
  private void a(float paramFloat, int paramInt)
  {
    b(Math.max(Math.round(paramFloat * b), paramInt));
  }
  
  private void a(RecyclerView.Recycler paramRecycler, RecyclerView.State paramState, int paramInt1, int paramInt2, boolean paramBoolean)
  {
    paramInt2 = -1;
    int j = 0;
    int i;
    if (paramBoolean)
    {
      paramInt2 = paramInt1;
      paramInt1 = 0;
      i = 1;
    }
    else
    {
      paramInt1 -= 1;
      i = -1;
    }
    while (paramInt1 != paramInt2)
    {
      View localView = d[paramInt1];
      LayoutParams localLayoutParams = (LayoutParams)localView.getLayoutParams();
      b = c(paramRecycler, paramState, getPosition(localView));
      a = j;
      j += b;
      paramInt1 += i;
    }
  }
  
  private void a(View paramView, int paramInt1, int paramInt2, boolean paramBoolean)
  {
    RecyclerView.LayoutParams localLayoutParams = (RecyclerView.LayoutParams)paramView.getLayoutParams();
    if (paramBoolean) {
      paramBoolean = a(paramView, paramInt1, paramInt2, localLayoutParams);
    } else {
      paramBoolean = b(paramView, paramInt1, paramInt2, localLayoutParams);
    }
    if (paramBoolean) {
      paramView.measure(paramInt1, paramInt2);
    }
  }
  
  private void a(View paramView, int paramInt, boolean paramBoolean)
  {
    LayoutParams localLayoutParams = (LayoutParams)paramView.getLayoutParams();
    Rect localRect = d;
    int j = top + bottom + topMargin + bottomMargin;
    int i = left + right + leftMargin + rightMargin;
    int k = a(a, b);
    if (this.i == 1)
    {
      i = getChildMeasureSpec(k, paramInt, i, width, false);
      paramInt = getChildMeasureSpec(this.j.getTotalSpace(), getHeightMode(), j, height, true);
    }
    else
    {
      paramInt = getChildMeasureSpec(k, paramInt, j, height, false);
      i = getChildMeasureSpec(this.j.getTotalSpace(), getWidthMode(), i, width, true);
    }
    a(paramView, i, paramInt, paramBoolean);
  }
  
  static int[] a(int[] paramArrayOfInt, int paramInt1, int paramInt2)
  {
    int j = 1;
    int[] arrayOfInt;
    if ((paramArrayOfInt != null) && (paramArrayOfInt.length == paramInt1 + 1))
    {
      arrayOfInt = paramArrayOfInt;
      if (paramArrayOfInt[(paramArrayOfInt.length - 1)] == paramInt2) {}
    }
    else
    {
      arrayOfInt = new int[paramInt1 + 1];
    }
    int k = 0;
    arrayOfInt[0] = 0;
    int m = paramInt2 / paramInt1;
    int n = paramInt2 % paramInt1;
    int i = 0;
    paramInt2 = k;
    while (j <= paramInt1)
    {
      paramInt2 += n;
      if ((paramInt2 > 0) && (paramInt1 - paramInt2 < n))
      {
        k = m + 1;
        paramInt2 -= paramInt1;
      }
      else
      {
        k = m;
      }
      i += k;
      arrayOfInt[j] = i;
      j += 1;
    }
    return arrayOfInt;
  }
  
  private int b(RecyclerView.Recycler paramRecycler, RecyclerView.State paramState, int paramInt)
  {
    if (!paramState.isPreLayout()) {
      return g.a(paramInt, b);
    }
    int i = f.get(paramInt, -1);
    if (i != -1) {
      return i;
    }
    i = paramRecycler.convertPreLayoutPositionToPostLayout(paramInt);
    if (i == -1)
    {
      paramRecycler = new StringBuilder();
      paramRecycler.append("Cannot find span size for pre layout position. It is not cached, not in the adapter. Pos:");
      paramRecycler.append(paramInt);
      Log.w("GridLayoutManager", paramRecycler.toString());
      return 0;
    }
    return g.a(i, b);
  }
  
  private void b(int paramInt)
  {
    c = a(c, b, paramInt);
  }
  
  private void b(RecyclerView.Recycler paramRecycler, RecyclerView.State paramState, LinearLayoutManager.a paramA, int paramInt)
  {
    if (paramInt == 1) {
      paramInt = 1;
    } else {
      paramInt = 0;
    }
    int i = b(paramRecycler, paramState, b);
    if (paramInt != 0) {
      while ((i > 0) && (b > 0))
      {
        b -= 1;
        i = b(paramRecycler, paramState, b);
      }
    }
    int m = paramState.getItemCount();
    paramInt = b;
    while (paramInt < m - 1)
    {
      int k = paramInt + 1;
      int j = b(paramRecycler, paramState, k);
      if (j <= i) {
        break;
      }
      paramInt = k;
      i = j;
    }
    b = paramInt;
  }
  
  private int c(RecyclerView.Recycler paramRecycler, RecyclerView.State paramState, int paramInt)
  {
    if (!paramState.isPreLayout()) {
      return g.getSpanSize(paramInt);
    }
    int i = e.get(paramInt, -1);
    if (i != -1) {
      return i;
    }
    i = paramRecycler.convertPreLayoutPositionToPostLayout(paramInt);
    if (i == -1)
    {
      paramRecycler = new StringBuilder();
      paramRecycler.append("Cannot find span size for pre layout position. It is not cached, not in the adapter. Pos:");
      paramRecycler.append(paramInt);
      Log.w("GridLayoutManager", paramRecycler.toString());
      return 1;
    }
    return g.getSpanSize(i);
  }
  
  private void g()
  {
    e.clear();
    f.clear();
  }
  
  private void h()
  {
    int j = getChildCount();
    int i = 0;
    while (i < j)
    {
      LayoutParams localLayoutParams = (LayoutParams)getChildAt(i).getLayoutParams();
      int k = localLayoutParams.getViewLayoutPosition();
      e.put(k, localLayoutParams.getSpanSize());
      f.put(k, localLayoutParams.getSpanIndex());
      i += 1;
    }
  }
  
  private void i()
  {
    int i;
    if (getOrientation() == 1) {
      i = getWidth() - getPaddingRight() - getPaddingLeft();
    } else {
      i = getHeight() - getPaddingBottom() - getPaddingTop();
    }
    b(i);
  }
  
  private void j()
  {
    if ((d == null) || (d.length != b)) {
      d = new View[b];
    }
  }
  
  int a(int paramInt1, int paramInt2)
  {
    if ((i == 1) && (isLayoutRTL())) {
      return c[(b - paramInt1)] - c[(b - paramInt1 - paramInt2)];
    }
    return c[(paramInt2 + paramInt1)] - c[paramInt1];
  }
  
  View a(RecyclerView.Recycler paramRecycler, RecyclerView.State paramState, int paramInt1, int paramInt2, int paramInt3)
  {
    a();
    int j = this.j.getStartAfterPadding();
    int k = this.j.getEndAfterPadding();
    int i;
    if (paramInt2 > paramInt1) {
      i = 1;
    } else {
      i = -1;
    }
    Object localObject2 = null;
    Object localObject4;
    for (Object localObject1 = null; paramInt1 != paramInt2; localObject1 = localObject4)
    {
      View localView = getChildAt(paramInt1);
      int m = getPosition(localView);
      Object localObject3 = localObject2;
      localObject4 = localObject1;
      if (m >= 0)
      {
        localObject3 = localObject2;
        localObject4 = localObject1;
        if (m < paramInt3) {
          if (b(paramRecycler, paramState, m) != 0)
          {
            localObject3 = localObject2;
            localObject4 = localObject1;
          }
          else if (((RecyclerView.LayoutParams)localView.getLayoutParams()).isItemRemoved())
          {
            localObject3 = localObject2;
            localObject4 = localObject1;
            if (localObject1 == null)
            {
              localObject4 = localView;
              localObject3 = localObject2;
            }
          }
          else
          {
            if ((this.j.getDecoratedStart(localView) < k) && (this.j.getDecoratedEnd(localView) >= j)) {
              return localView;
            }
            localObject3 = localObject2;
            localObject4 = localObject1;
            if (localObject2 == null)
            {
              localObject3 = localView;
              localObject4 = localObject1;
            }
          }
        }
      }
      paramInt1 += i;
      localObject2 = localObject3;
    }
    if (localObject2 != null) {
      return localObject2;
    }
    return localObject1;
  }
  
  void a(RecyclerView.Recycler paramRecycler, RecyclerView.State paramState, LinearLayoutManager.a paramA, int paramInt)
  {
    super.a(paramRecycler, paramState, paramA, paramInt);
    i();
    if ((paramState.getItemCount() > 0) && (!paramState.isPreLayout())) {
      b(paramRecycler, paramState, paramA, paramInt);
    }
    j();
  }
  
  void a(RecyclerView.Recycler paramRecycler, RecyclerView.State paramState, LinearLayoutManager.b paramB, LinearLayoutManager.LayoutChunkResult paramLayoutChunkResult)
  {
    int i3 = this.j.getModeInOther();
    int k;
    if (i3 != 1073741824) {
      k = 1;
    } else {
      k = 0;
    }
    int m;
    if (getChildCount() > 0) {
      m = c[b];
    } else {
      m = 0;
    }
    if (k != 0) {
      i();
    }
    boolean bool;
    if (e == 1) {
      bool = true;
    } else {
      bool = false;
    }
    int i = b;
    if (!bool) {
      i = b(paramRecycler, paramState, d) + c(paramRecycler, paramState, d);
    }
    int j = 0;
    int n = 0;
    int i2;
    Object localObject;
    while ((n < b) && (paramB.a(paramState)) && (i > 0))
    {
      i2 = d;
      i1 = c(paramRecycler, paramState, i2);
      if (i1 <= b)
      {
        i -= i1;
        if (i >= 0)
        {
          localObject = paramB.a(paramRecycler);
          if (localObject != null)
          {
            j += i1;
            d[n] = localObject;
            n += 1;
          }
        }
      }
      else
      {
        paramRecycler = new StringBuilder();
        paramRecycler.append("Item at position ");
        paramRecycler.append(i2);
        paramRecycler.append(" requires ");
        paramRecycler.append(i1);
        paramRecycler.append(" spans but GridLayoutManager has only ");
        paramRecycler.append(b);
        paramRecycler.append(" spans.");
        throw new IllegalArgumentException(paramRecycler.toString());
      }
    }
    if (n == 0)
    {
      mFinished = true;
      return;
    }
    float f1 = 0.0F;
    a(paramRecycler, paramState, n, j, bool);
    j = 0;
    i = 0;
    while (j < n)
    {
      paramRecycler = d[j];
      if (k == null)
      {
        if (bool) {
          addView(paramRecycler);
        } else {
          addView(paramRecycler, 0);
        }
      }
      else if (bool) {
        addDisappearingView(paramRecycler);
      } else {
        addDisappearingView(paramRecycler, 0);
      }
      calculateItemDecorationsForChild(paramRecycler, h);
      a(paramRecycler, i3, false);
      i2 = this.j.getDecoratedMeasurement(paramRecycler);
      i1 = i;
      if (i2 > i) {
        i1 = i2;
      }
      paramState = (LayoutParams)paramRecycler.getLayoutParams();
      float f3 = this.j.getDecoratedMeasurementInOther(paramRecycler) * 1.0F / b;
      float f2 = f1;
      if (f3 > f1) {
        f2 = f3;
      }
      j += 1;
      i = i1;
      f1 = f2;
    }
    j = i;
    if (k != 0)
    {
      a(f1, m);
      k = 0;
      for (i = 0;; i = j)
      {
        j = i;
        if (k >= n) {
          break;
        }
        paramRecycler = d[k];
        a(paramRecycler, 1073741824, true);
        m = this.j.getDecoratedMeasurement(paramRecycler);
        j = i;
        if (m > i) {
          j = m;
        }
        k += 1;
      }
    }
    i = 0;
    while (i < n)
    {
      paramRecycler = d[i];
      if (this.j.getDecoratedMeasurement(paramRecycler) != j)
      {
        paramState = (LayoutParams)paramRecycler.getLayoutParams();
        localObject = d;
        m = top + bottom + topMargin + bottomMargin;
        k = left + right + leftMargin + rightMargin;
        i1 = a(a, b);
        if (this.i == 1)
        {
          k = getChildMeasureSpec(i1, 1073741824, k, width, false);
          m = View.MeasureSpec.makeMeasureSpec(j - m, 1073741824);
        }
        else
        {
          k = View.MeasureSpec.makeMeasureSpec(j - k, 1073741824);
          m = getChildMeasureSpec(i1, 1073741824, m, height, false);
        }
        a(paramRecycler, k, m, true);
      }
      i += 1;
    }
    int i1 = 0;
    mConsumed = j;
    if (this.i == 1)
    {
      if (f == -1)
      {
        k = b;
        i = k;
        k -= j;
        j = i;
        i = k;
      }
      for (;;)
      {
        k = 0;
        m = 0;
        break;
        k = b;
        i = k;
        j += k;
      }
    }
    if (f == -1)
    {
      k = b;
      i = 0;
      i2 = 0;
      m = k;
      k -= j;
      j = i2;
    }
    else
    {
      k = b;
      m = j + k;
      i = 0;
      j = 0;
    }
    while (i1 < n)
    {
      paramRecycler = d[i1];
      paramState = (LayoutParams)paramRecycler.getLayoutParams();
      if (this.i == 1)
      {
        if (isLayoutRTL())
        {
          m = getPaddingLeft() + c[(b - a)];
          i2 = this.j.getDecoratedMeasurementInOther(paramRecycler);
          k = m;
          m -= i2;
          break label1071;
        }
        k = getPaddingLeft() + c[a];
        m = this.j.getDecoratedMeasurementInOther(paramRecycler) + k;
      }
      else
      {
        i = getPaddingTop() + c[a];
        j = this.j.getDecoratedMeasurementInOther(paramRecycler) + i;
      }
      i2 = k;
      k = m;
      m = i2;
      label1071:
      layoutDecoratedWithMargins(paramRecycler, m, i, k, j);
      if ((paramState.isItemRemoved()) || (paramState.isItemChanged())) {
        mIgnoreConsumed = true;
      }
      mFocusable |= paramRecycler.hasFocusable();
      i2 = i1 + 1;
      i1 = k;
      k = m;
      m = i1;
      i1 = i2;
    }
    Arrays.fill(d, null);
  }
  
  void a(RecyclerView.State paramState, LinearLayoutManager.b paramB, RecyclerView.LayoutManager.LayoutPrefetchRegistry paramLayoutPrefetchRegistry)
  {
    int j = b;
    int i = 0;
    while ((i < b) && (paramB.a(paramState)) && (j > 0))
    {
      int k = d;
      paramLayoutPrefetchRegistry.addPosition(k, Math.max(0, g));
      j -= g.getSpanSize(k);
      d += e;
      i += 1;
    }
  }
  
  public boolean checkLayoutParams(RecyclerView.LayoutParams paramLayoutParams)
  {
    return paramLayoutParams instanceof LayoutParams;
  }
  
  public RecyclerView.LayoutParams generateDefaultLayoutParams()
  {
    if (i == 0) {
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
    if (i == 1) {
      return b;
    }
    if (paramState.getItemCount() < 1) {
      return 0;
    }
    return a(paramRecycler, paramState, paramState.getItemCount() - 1) + 1;
  }
  
  public int getRowCountForAccessibility(RecyclerView.Recycler paramRecycler, RecyclerView.State paramState)
  {
    if (i == 0) {
      return b;
    }
    if (paramState.getItemCount() < 1) {
      return 0;
    }
    return a(paramRecycler, paramState, paramState.getItemCount() - 1) + 1;
  }
  
  public int getSpanCount()
  {
    return b;
  }
  
  public SpanSizeLookup getSpanSizeLookup()
  {
    return g;
  }
  
  public View onFocusSearchFailed(View paramView, int paramInt, RecyclerView.Recycler paramRecycler, RecyclerView.State paramState)
  {
    View localView = findContainingItemView(paramView);
    Object localObject1 = null;
    if (localView == null) {
      return null;
    }
    Object localObject2 = (LayoutParams)localView.getLayoutParams();
    int i5 = a;
    int i6 = a + b;
    if (super.onFocusSearchFailed(paramView, paramInt, paramRecycler, paramState) == null) {
      return null;
    }
    int i11;
    if (a(paramInt) == 1) {
      i11 = 1;
    } else {
      i11 = 0;
    }
    if (i11 != this.k) {
      paramInt = 1;
    } else {
      paramInt = 0;
    }
    int k;
    int m;
    if (paramInt != 0)
    {
      k = getChildCount() - 1;
      i = -1;
      m = -1;
    }
    else
    {
      i = getChildCount();
      k = 0;
      m = 1;
    }
    int n;
    if ((this.i == 1) && (isLayoutRTL())) {
      n = 1;
    } else {
      n = 0;
    }
    int i7 = a(paramRecycler, paramState, k);
    paramView = null;
    int i3 = -1;
    int i2 = 0;
    paramInt = 0;
    int j = -1;
    int i1 = i;
    int i = i3;
    while (k != i1)
    {
      i3 = a(paramRecycler, paramState, k);
      localObject2 = getChildAt(k);
      if (localObject2 == localView) {
        break;
      }
      if ((((View)localObject2).hasFocusable()) && (i3 != i7))
      {
        if (localObject1 != null) {
          break;
        }
      }
      else
      {
        LayoutParams localLayoutParams = (LayoutParams)((View)localObject2).getLayoutParams();
        int i8 = a;
        int i9 = a + b;
        if ((((View)localObject2).hasFocusable()) && (i8 == i5) && (i9 == i6)) {
          return localObject2;
        }
        if (((((View)localObject2).hasFocusable()) && (localObject1 == null)) || ((!((View)localObject2).hasFocusable()) && (paramView == null))) {}
        do
        {
          int i10;
          int i4;
          do
          {
            for (;;)
            {
              i3 = 1;
              break label466;
              i3 = Math.max(i8, i5);
              i10 = Math.min(i9, i6) - i3;
              if (!((View)localObject2).hasFocusable()) {
                break;
              }
              if (i10 <= i2)
              {
                if (i10 != i2) {
                  break label463;
                }
                if (i8 > i) {
                  i3 = 1;
                } else {
                  i3 = 0;
                }
                if (n != i3) {
                  break label463;
                }
              }
            }
            if (localObject1 != null) {
              break;
            }
            i3 = 0;
            if (!isViewPartiallyVisible((View)localObject2, false, true)) {
              break;
            }
            i4 = paramInt;
          } while (i10 > i4);
          if (i10 != i4) {
            break;
          }
          if (i8 > j) {
            i3 = 1;
          }
        } while (n == i3);
        label463:
        i3 = 0;
        label466:
        if (i3 != 0) {
          if (((View)localObject2).hasFocusable())
          {
            i = a;
            i2 = Math.min(i9, i6) - Math.max(i8, i5);
            localObject1 = localObject2;
          }
          else
          {
            j = a;
            paramInt = Math.min(i9, i6);
            i3 = Math.max(i8, i5);
            paramView = (View)localObject2;
            paramInt -= i3;
          }
        }
      }
      k += m;
    }
    if (localObject1 != null) {
      return localObject1;
    }
    return paramView;
  }
  
  public void onInitializeAccessibilityNodeInfoForItem(RecyclerView.Recycler paramRecycler, RecyclerView.State paramState, View paramView, AccessibilityNodeInfoCompat paramAccessibilityNodeInfoCompat)
  {
    ViewGroup.LayoutParams localLayoutParams = paramView.getLayoutParams();
    if (!(localLayoutParams instanceof LayoutParams))
    {
      super.a(paramView, paramAccessibilityNodeInfoCompat);
      return;
    }
    paramView = (LayoutParams)localLayoutParams;
    int i = a(paramRecycler, paramState, paramView.getViewLayoutPosition());
    boolean bool;
    if (this.i == 0)
    {
      j = paramView.getSpanIndex();
      k = paramView.getSpanSize();
      if ((b > 1) && (paramView.getSpanSize() == b)) {
        bool = true;
      } else {
        bool = false;
      }
      paramAccessibilityNodeInfoCompat.setCollectionItemInfo(AccessibilityNodeInfoCompat.CollectionItemInfoCompat.obtain(j, k, i, 1, bool, false));
      return;
    }
    int j = paramView.getSpanIndex();
    int k = paramView.getSpanSize();
    if ((b > 1) && (paramView.getSpanSize() == b)) {
      bool = true;
    } else {
      bool = false;
    }
    paramAccessibilityNodeInfoCompat.setCollectionItemInfo(AccessibilityNodeInfoCompat.CollectionItemInfoCompat.obtain(i, 1, j, k, bool, false));
  }
  
  public void onItemsAdded(RecyclerView paramRecyclerView, int paramInt1, int paramInt2)
  {
    g.invalidateSpanIndexCache();
  }
  
  public void onItemsChanged(RecyclerView paramRecyclerView)
  {
    g.invalidateSpanIndexCache();
  }
  
  public void onItemsMoved(RecyclerView paramRecyclerView, int paramInt1, int paramInt2, int paramInt3)
  {
    g.invalidateSpanIndexCache();
  }
  
  public void onItemsRemoved(RecyclerView paramRecyclerView, int paramInt1, int paramInt2)
  {
    g.invalidateSpanIndexCache();
  }
  
  public void onItemsUpdated(RecyclerView paramRecyclerView, int paramInt1, int paramInt2, Object paramObject)
  {
    g.invalidateSpanIndexCache();
  }
  
  public void onLayoutChildren(RecyclerView.Recycler paramRecycler, RecyclerView.State paramState)
  {
    if (paramState.isPreLayout()) {
      h();
    }
    super.onLayoutChildren(paramRecycler, paramState);
    g();
  }
  
  public void onLayoutCompleted(RecyclerView.State paramState)
  {
    super.onLayoutCompleted(paramState);
    a = false;
  }
  
  public int scrollHorizontallyBy(int paramInt, RecyclerView.Recycler paramRecycler, RecyclerView.State paramState)
  {
    i();
    j();
    return super.scrollHorizontallyBy(paramInt, paramRecycler, paramState);
  }
  
  public int scrollVerticallyBy(int paramInt, RecyclerView.Recycler paramRecycler, RecyclerView.State paramState)
  {
    i();
    j();
    return super.scrollVerticallyBy(paramInt, paramRecycler, paramState);
  }
  
  public void setMeasuredDimension(Rect paramRect, int paramInt1, int paramInt2)
  {
    if (c == null) {
      super.setMeasuredDimension(paramRect, paramInt1, paramInt2);
    }
    int i = getPaddingLeft() + getPaddingRight();
    int j = getPaddingTop() + getPaddingBottom();
    if (this.i == 1)
    {
      paramInt2 = chooseSize(paramInt2, paramRect.height() + j, getMinimumHeight());
      i = chooseSize(paramInt1, c[(c.length - 1)] + i, getMinimumWidth());
      paramInt1 = paramInt2;
      paramInt2 = i;
    }
    else
    {
      paramInt1 = chooseSize(paramInt1, paramRect.width() + i, getMinimumWidth());
      i = chooseSize(paramInt2, c[(c.length - 1)] + j, getMinimumHeight());
      paramInt2 = paramInt1;
      paramInt1 = i;
    }
    setMeasuredDimension(paramInt2, paramInt1);
  }
  
  public void setSpanCount(int paramInt)
  {
    if (paramInt == b) {
      return;
    }
    a = true;
    if (paramInt >= 1)
    {
      b = paramInt;
      g.invalidateSpanIndexCache();
      requestLayout();
      return;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Span count should be at least 1. Provided ");
    localStringBuilder.append(paramInt);
    throw new IllegalArgumentException(localStringBuilder.toString());
  }
  
  public void setSpanSizeLookup(SpanSizeLookup paramSpanSizeLookup)
  {
    g = paramSpanSizeLookup;
  }
  
  public void setStackFromEnd(boolean paramBoolean)
  {
    if (!paramBoolean)
    {
      super.setStackFromEnd(false);
      return;
    }
    throw new UnsupportedOperationException("GridLayoutManager does not support stack from end. Consider using reverse layout");
  }
  
  public boolean supportsPredictiveItemAnimations()
  {
    return (n == null) && (!a);
  }
  
  public static final class DefaultSpanSizeLookup
    extends GridLayoutManager.SpanSizeLookup
  {
    public DefaultSpanSizeLookup() {}
    
    public int getSpanIndex(int paramInt1, int paramInt2)
    {
      return paramInt1 % paramInt2;
    }
    
    public int getSpanSize(int paramInt)
    {
      return 1;
    }
  }
  
  public static class LayoutParams
    extends RecyclerView.LayoutParams
  {
    public static final int INVALID_SPAN_ID = -1;
    int a = -1;
    int b = 0;
    
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
    
    public int getSpanIndex()
    {
      return a;
    }
    
    public int getSpanSize()
    {
      return b;
    }
  }
  
  public static abstract class SpanSizeLookup
  {
    final SparseIntArray a = new SparseIntArray();
    private boolean b = false;
    
    public SpanSizeLookup() {}
    
    int a(int paramInt)
    {
      int j = a.size() - 1;
      int i = 0;
      while (i <= j)
      {
        int k = i + j >>> 1;
        if (a.keyAt(k) < paramInt) {
          i = k + 1;
        } else {
          j = k - 1;
        }
      }
      paramInt = i - 1;
      if ((paramInt >= 0) && (paramInt < a.size())) {
        return a.keyAt(paramInt);
      }
      return -1;
    }
    
    int a(int paramInt1, int paramInt2)
    {
      if (!b) {
        return getSpanIndex(paramInt1, paramInt2);
      }
      int i = a.get(paramInt1, -1);
      if (i != -1) {
        return i;
      }
      paramInt2 = getSpanIndex(paramInt1, paramInt2);
      a.put(paramInt1, paramInt2);
      return paramInt2;
    }
    
    public int getSpanGroupIndex(int paramInt1, int paramInt2)
    {
      int i2 = getSpanSize(paramInt1);
      int m = 0;
      int i = 0;
      int k;
      for (int j = 0; m < paramInt1; j = k)
      {
        int n = getSpanSize(m);
        int i1 = i + n;
        if (i1 == paramInt2)
        {
          k = j + 1;
          i = 0;
        }
        else
        {
          i = i1;
          k = j;
          if (i1 > paramInt2)
          {
            k = j + 1;
            i = n;
          }
        }
        m += 1;
      }
      paramInt1 = j;
      if (i + i2 > paramInt2) {
        paramInt1 = j + 1;
      }
      return paramInt1;
    }
    
    public int getSpanIndex(int paramInt1, int paramInt2)
    {
      int n = getSpanSize(paramInt1);
      if (n == paramInt2) {
        return 0;
      }
      if ((b) && (a.size() > 0))
      {
        j = a(paramInt1);
        if (j >= 0)
        {
          i = a.get(j) + getSpanSize(j);
          j += 1;
          break label75;
        }
      }
      int j = 0;
      int i = 0;
      label75:
      while (j < paramInt1)
      {
        int k = getSpanSize(j);
        int m = i + k;
        if (m == paramInt2)
        {
          i = 0;
        }
        else
        {
          i = m;
          if (m > paramInt2) {
            i = k;
          }
        }
        j += 1;
      }
      if (n + i <= paramInt2) {
        return i;
      }
      return 0;
    }
    
    public abstract int getSpanSize(int paramInt);
    
    public void invalidateSpanIndexCache()
    {
      a.clear();
    }
    
    public boolean isSpanIndexCacheEnabled()
    {
      return b;
    }
    
    public void setSpanIndexCacheEnabled(boolean paramBoolean)
    {
      b = paramBoolean;
    }
  }
}
