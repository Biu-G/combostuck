package android.support.v4.widget;

import android.content.Context;
import android.view.animation.Interpolator;
import android.widget.OverScroller;

@Deprecated
public final class ScrollerCompat
{
  OverScroller a;
  
  ScrollerCompat(Context paramContext, Interpolator paramInterpolator)
  {
    if (paramInterpolator != null) {
      paramContext = new OverScroller(paramContext, paramInterpolator);
    } else {
      paramContext = new OverScroller(paramContext);
    }
    a = paramContext;
  }
  
  @Deprecated
  public static ScrollerCompat create(Context paramContext)
  {
    return create(paramContext, null);
  }
  
  @Deprecated
  public static ScrollerCompat create(Context paramContext, Interpolator paramInterpolator)
  {
    return new ScrollerCompat(paramContext, paramInterpolator);
  }
  
  @Deprecated
  public void abortAnimation()
  {
    a.abortAnimation();
  }
  
  @Deprecated
  public boolean computeScrollOffset()
  {
    return a.computeScrollOffset();
  }
  
  @Deprecated
  public void fling(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6, int paramInt7, int paramInt8)
  {
    a.fling(paramInt1, paramInt2, paramInt3, paramInt4, paramInt5, paramInt6, paramInt7, paramInt8);
  }
  
  @Deprecated
  public void fling(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6, int paramInt7, int paramInt8, int paramInt9, int paramInt10)
  {
    a.fling(paramInt1, paramInt2, paramInt3, paramInt4, paramInt5, paramInt6, paramInt7, paramInt8, paramInt9, paramInt10);
  }
  
  @Deprecated
  public float getCurrVelocity()
  {
    return a.getCurrVelocity();
  }
  
  @Deprecated
  public int getCurrX()
  {
    return a.getCurrX();
  }
  
  @Deprecated
  public int getCurrY()
  {
    return a.getCurrY();
  }
  
  @Deprecated
  public int getFinalX()
  {
    return a.getFinalX();
  }
  
  @Deprecated
  public int getFinalY()
  {
    return a.getFinalY();
  }
  
  @Deprecated
  public boolean isFinished()
  {
    return a.isFinished();
  }
  
  @Deprecated
  public boolean isOverScrolled()
  {
    return a.isOverScrolled();
  }
  
  @Deprecated
  public void notifyHorizontalEdgeReached(int paramInt1, int paramInt2, int paramInt3)
  {
    a.notifyHorizontalEdgeReached(paramInt1, paramInt2, paramInt3);
  }
  
  @Deprecated
  public void notifyVerticalEdgeReached(int paramInt1, int paramInt2, int paramInt3)
  {
    a.notifyVerticalEdgeReached(paramInt1, paramInt2, paramInt3);
  }
  
  @Deprecated
  public boolean springBack(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6)
  {
    return a.springBack(paramInt1, paramInt2, paramInt3, paramInt4, paramInt5, paramInt6);
  }
  
  @Deprecated
  public void startScroll(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    a.startScroll(paramInt1, paramInt2, paramInt3, paramInt4);
  }
  
  @Deprecated
  public void startScroll(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5)
  {
    a.startScroll(paramInt1, paramInt2, paramInt3, paramInt4, paramInt5);
  }
}
