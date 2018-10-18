package android.support.v7.widget;

import android.graphics.PointF;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.view.View;

public class LinearSnapHelper
  extends SnapHelper
{
  @Nullable
  private OrientationHelper b;
  @Nullable
  private OrientationHelper c;
  
  public LinearSnapHelper() {}
  
  private int a(RecyclerView.LayoutManager paramLayoutManager, OrientationHelper paramOrientationHelper, int paramInt1, int paramInt2)
  {
    int[] arrayOfInt = calculateScrollDistance(paramInt1, paramInt2);
    float f = b(paramLayoutManager, paramOrientationHelper);
    if (f <= 0.0F) {
      return 0;
    }
    if (Math.abs(arrayOfInt[0]) > Math.abs(arrayOfInt[1])) {
      paramInt1 = arrayOfInt[0];
    } else {
      paramInt1 = arrayOfInt[1];
    }
    return Math.round(paramInt1 / f);
  }
  
  private int a(@NonNull RecyclerView.LayoutManager paramLayoutManager, @NonNull View paramView, OrientationHelper paramOrientationHelper)
  {
    int j = paramOrientationHelper.getDecoratedStart(paramView);
    int k = paramOrientationHelper.getDecoratedMeasurement(paramView) / 2;
    int i;
    if (paramLayoutManager.getClipToPadding()) {
      i = paramOrientationHelper.getStartAfterPadding() + paramOrientationHelper.getTotalSpace() / 2;
    } else {
      i = paramOrientationHelper.getEnd() / 2;
    }
    return j + k - i;
  }
  
  @NonNull
  private OrientationHelper a(@NonNull RecyclerView.LayoutManager paramLayoutManager)
  {
    if ((b == null) || (b.mLayoutManager != paramLayoutManager)) {
      b = OrientationHelper.createVerticalHelper(paramLayoutManager);
    }
    return b;
  }
  
  @Nullable
  private View a(RecyclerView.LayoutManager paramLayoutManager, OrientationHelper paramOrientationHelper)
  {
    int i1 = paramLayoutManager.getChildCount();
    Object localObject = null;
    if (i1 == 0) {
      return null;
    }
    int i;
    if (paramLayoutManager.getClipToPadding()) {
      i = paramOrientationHelper.getStartAfterPadding() + paramOrientationHelper.getTotalSpace() / 2;
    } else {
      i = paramOrientationHelper.getEnd() / 2;
    }
    int k = Integer.MAX_VALUE;
    int j = 0;
    while (j < i1)
    {
      View localView = paramLayoutManager.getChildAt(j);
      int n = Math.abs(paramOrientationHelper.getDecoratedStart(localView) + paramOrientationHelper.getDecoratedMeasurement(localView) / 2 - i);
      int m = k;
      if (n < k)
      {
        localObject = localView;
        m = n;
      }
      j += 1;
      k = m;
    }
    return localObject;
  }
  
  private float b(RecyclerView.LayoutManager paramLayoutManager, OrientationHelper paramOrientationHelper)
  {
    int i2 = paramLayoutManager.getChildCount();
    if (i2 == 0) {
      return 1.0F;
    }
    int m = 0;
    Object localObject1 = null;
    int i = Integer.MAX_VALUE;
    Object localObject2 = null;
    int i1;
    int j;
    for (int k = Integer.MIN_VALUE; m < i2; k = i1)
    {
      View localView = paramLayoutManager.getChildAt(m);
      int n = paramLayoutManager.getPosition(localView);
      Object localObject3;
      if (n == -1)
      {
        localObject3 = localObject1;
        i1 = k;
      }
      else
      {
        j = i;
        if (n < i)
        {
          localObject1 = localView;
          j = n;
        }
        localObject3 = localObject1;
        i = j;
        i1 = k;
        if (n > k)
        {
          localObject2 = localView;
          i1 = n;
          i = j;
          localObject3 = localObject1;
        }
      }
      m += 1;
      localObject1 = localObject3;
    }
    if (localObject1 != null)
    {
      if (localObject2 == null) {
        return 1.0F;
      }
      j = Math.min(paramOrientationHelper.getDecoratedStart(localObject1), paramOrientationHelper.getDecoratedStart(localObject2));
      j = Math.max(paramOrientationHelper.getDecoratedEnd(localObject1), paramOrientationHelper.getDecoratedEnd(localObject2)) - j;
      if (j == 0) {
        return 1.0F;
      }
      return j * 1.0F / (k - i + 1);
    }
    return 1.0F;
  }
  
  @NonNull
  private OrientationHelper b(@NonNull RecyclerView.LayoutManager paramLayoutManager)
  {
    if ((c == null) || (c.mLayoutManager != paramLayoutManager)) {
      c = OrientationHelper.createHorizontalHelper(paramLayoutManager);
    }
    return c;
  }
  
  public int[] calculateDistanceToFinalSnap(@NonNull RecyclerView.LayoutManager paramLayoutManager, @NonNull View paramView)
  {
    int[] arrayOfInt = new int[2];
    if (paramLayoutManager.canScrollHorizontally()) {
      arrayOfInt[0] = a(paramLayoutManager, paramView, b(paramLayoutManager));
    } else {
      arrayOfInt[0] = 0;
    }
    if (paramLayoutManager.canScrollVertically())
    {
      arrayOfInt[1] = a(paramLayoutManager, paramView, a(paramLayoutManager));
      return arrayOfInt;
    }
    arrayOfInt[1] = 0;
    return arrayOfInt;
  }
  
  public View findSnapView(RecyclerView.LayoutManager paramLayoutManager)
  {
    if (paramLayoutManager.canScrollVertically()) {
      return a(paramLayoutManager, a(paramLayoutManager));
    }
    if (paramLayoutManager.canScrollHorizontally()) {
      return a(paramLayoutManager, b(paramLayoutManager));
    }
    return null;
  }
  
  public int findTargetSnapPosition(RecyclerView.LayoutManager paramLayoutManager, int paramInt1, int paramInt2)
  {
    if (!(paramLayoutManager instanceof RecyclerView.SmoothScroller.ScrollVectorProvider)) {
      return -1;
    }
    int k = paramLayoutManager.getItemCount();
    if (k == 0) {
      return -1;
    }
    Object localObject = findSnapView(paramLayoutManager);
    if (localObject == null) {
      return -1;
    }
    int m = paramLayoutManager.getPosition((View)localObject);
    if (m == -1) {
      return -1;
    }
    localObject = (RecyclerView.SmoothScroller.ScrollVectorProvider)paramLayoutManager;
    int i = k - 1;
    localObject = ((RecyclerView.SmoothScroller.ScrollVectorProvider)localObject).computeScrollVectorForPosition(i);
    if (localObject == null) {
      return -1;
    }
    int j;
    if (paramLayoutManager.canScrollHorizontally())
    {
      j = a(paramLayoutManager, b(paramLayoutManager), paramInt1, 0);
      paramInt1 = j;
      if (x < 0.0F) {
        paramInt1 = -j;
      }
    }
    else
    {
      paramInt1 = 0;
    }
    if (paramLayoutManager.canScrollVertically())
    {
      j = a(paramLayoutManager, a(paramLayoutManager), 0, paramInt2);
      paramInt2 = j;
      if (y < 0.0F) {
        paramInt2 = -j;
      }
    }
    else
    {
      paramInt2 = 0;
    }
    if (paramLayoutManager.canScrollVertically()) {
      paramInt1 = paramInt2;
    }
    if (paramInt1 == 0) {
      return -1;
    }
    paramInt2 = m + paramInt1;
    paramInt1 = paramInt2;
    if (paramInt2 < 0) {
      paramInt1 = 0;
    }
    paramInt2 = paramInt1;
    if (paramInt1 >= k) {
      paramInt2 = i;
    }
    return paramInt2;
  }
}
