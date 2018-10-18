package android.support.v7.widget;

import android.content.Context;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.animation.DecelerateInterpolator;
import android.widget.Scroller;

public abstract class SnapHelper
  extends RecyclerView.OnFlingListener
{
  RecyclerView a;
  private Scroller b;
  private final RecyclerView.OnScrollListener c = new RecyclerView.OnScrollListener()
  {
    boolean a = false;
    
    public void onScrollStateChanged(RecyclerView paramAnonymousRecyclerView, int paramAnonymousInt)
    {
      super.onScrollStateChanged(paramAnonymousRecyclerView, paramAnonymousInt);
      if ((paramAnonymousInt == 0) && (a))
      {
        a = false;
        a();
      }
    }
    
    public void onScrolled(RecyclerView paramAnonymousRecyclerView, int paramAnonymousInt1, int paramAnonymousInt2)
    {
      if ((paramAnonymousInt1 != 0) || (paramAnonymousInt2 != 0)) {
        a = true;
      }
    }
  };
  
  public SnapHelper() {}
  
  private boolean a(@NonNull RecyclerView.LayoutManager paramLayoutManager, int paramInt1, int paramInt2)
  {
    if (!(paramLayoutManager instanceof RecyclerView.SmoothScroller.ScrollVectorProvider)) {
      return false;
    }
    RecyclerView.SmoothScroller localSmoothScroller = createScroller(paramLayoutManager);
    if (localSmoothScroller == null) {
      return false;
    }
    paramInt1 = findTargetSnapPosition(paramLayoutManager, paramInt1, paramInt2);
    if (paramInt1 == -1) {
      return false;
    }
    localSmoothScroller.setTargetPosition(paramInt1);
    paramLayoutManager.startSmoothScroll(localSmoothScroller);
    return true;
  }
  
  private void b()
    throws IllegalStateException
  {
    if (a.getOnFlingListener() == null)
    {
      a.addOnScrollListener(c);
      a.setOnFlingListener(this);
      return;
    }
    throw new IllegalStateException("An instance of OnFlingListener already set.");
  }
  
  private void c()
  {
    a.removeOnScrollListener(c);
    a.setOnFlingListener(null);
  }
  
  void a()
  {
    if (a == null) {
      return;
    }
    Object localObject = a.getLayoutManager();
    if (localObject == null) {
      return;
    }
    View localView = findSnapView((RecyclerView.LayoutManager)localObject);
    if (localView == null) {
      return;
    }
    localObject = calculateDistanceToFinalSnap((RecyclerView.LayoutManager)localObject, localView);
    if ((localObject[0] != 0) || (localObject[1] != 0)) {
      a.smoothScrollBy(localObject[0], localObject[1]);
    }
  }
  
  public void attachToRecyclerView(@Nullable RecyclerView paramRecyclerView)
    throws IllegalStateException
  {
    if (a == paramRecyclerView) {
      return;
    }
    if (a != null) {
      c();
    }
    a = paramRecyclerView;
    if (a != null)
    {
      b();
      b = new Scroller(a.getContext(), new DecelerateInterpolator());
      a();
    }
  }
  
  @Nullable
  public abstract int[] calculateDistanceToFinalSnap(@NonNull RecyclerView.LayoutManager paramLayoutManager, @NonNull View paramView);
  
  public int[] calculateScrollDistance(int paramInt1, int paramInt2)
  {
    b.fling(0, 0, paramInt1, paramInt2, Integer.MIN_VALUE, Integer.MAX_VALUE, Integer.MIN_VALUE, Integer.MAX_VALUE);
    return new int[] { b.getFinalX(), b.getFinalY() };
  }
  
  @Nullable
  protected RecyclerView.SmoothScroller createScroller(RecyclerView.LayoutManager paramLayoutManager)
  {
    return createSnapScroller(paramLayoutManager);
  }
  
  @Deprecated
  @Nullable
  protected LinearSmoothScroller createSnapScroller(RecyclerView.LayoutManager paramLayoutManager)
  {
    if (!(paramLayoutManager instanceof RecyclerView.SmoothScroller.ScrollVectorProvider)) {
      return null;
    }
    new LinearSmoothScroller(a.getContext())
    {
      protected float calculateSpeedPerPixel(DisplayMetrics paramAnonymousDisplayMetrics)
      {
        return 100.0F / densityDpi;
      }
      
      protected void onTargetFound(View paramAnonymousView, RecyclerView.State paramAnonymousState, RecyclerView.SmoothScroller.Action paramAnonymousAction)
      {
        if (a == null) {
          return;
        }
        paramAnonymousView = calculateDistanceToFinalSnap(a.getLayoutManager(), paramAnonymousView);
        int i = paramAnonymousView[0];
        int j = paramAnonymousView[1];
        int k = calculateTimeForDeceleration(Math.max(Math.abs(i), Math.abs(j)));
        if (k > 0) {
          paramAnonymousAction.update(i, j, k, mDecelerateInterpolator);
        }
      }
    };
  }
  
  @Nullable
  public abstract View findSnapView(RecyclerView.LayoutManager paramLayoutManager);
  
  public abstract int findTargetSnapPosition(RecyclerView.LayoutManager paramLayoutManager, int paramInt1, int paramInt2);
  
  public boolean onFling(int paramInt1, int paramInt2)
  {
    RecyclerView.LayoutManager localLayoutManager = a.getLayoutManager();
    boolean bool2 = false;
    if (localLayoutManager == null) {
      return false;
    }
    if (a.getAdapter() == null) {
      return false;
    }
    int i = a.getMinFlingVelocity();
    boolean bool1;
    if (Math.abs(paramInt2) <= i)
    {
      bool1 = bool2;
      if (Math.abs(paramInt1) <= i) {}
    }
    else
    {
      bool1 = bool2;
      if (a(localLayoutManager, paramInt1, paramInt2)) {
        bool1 = true;
      }
    }
    return bool1;
  }
}
