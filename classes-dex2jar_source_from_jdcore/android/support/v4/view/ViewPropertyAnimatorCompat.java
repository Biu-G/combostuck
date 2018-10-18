package android.support.v4.view;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.animation.ValueAnimator.AnimatorUpdateListener;
import android.os.Build.VERSION;
import android.view.View;
import android.view.ViewPropertyAnimator;
import android.view.animation.Interpolator;
import java.lang.ref.WeakReference;

public final class ViewPropertyAnimatorCompat
{
  Runnable a = null;
  Runnable b = null;
  int c = -1;
  private WeakReference<View> d;
  
  ViewPropertyAnimatorCompat(View paramView)
  {
    d = new WeakReference(paramView);
  }
  
  private void a(final View paramView, final ViewPropertyAnimatorListener paramViewPropertyAnimatorListener)
  {
    if (paramViewPropertyAnimatorListener != null)
    {
      paramView.animate().setListener(new AnimatorListenerAdapter()
      {
        public void onAnimationCancel(Animator paramAnonymousAnimator)
        {
          paramViewPropertyAnimatorListener.onAnimationCancel(paramView);
        }
        
        public void onAnimationEnd(Animator paramAnonymousAnimator)
        {
          paramViewPropertyAnimatorListener.onAnimationEnd(paramView);
        }
        
        public void onAnimationStart(Animator paramAnonymousAnimator)
        {
          paramViewPropertyAnimatorListener.onAnimationStart(paramView);
        }
      });
      return;
    }
    paramView.animate().setListener(null);
  }
  
  public ViewPropertyAnimatorCompat alpha(float paramFloat)
  {
    View localView = (View)d.get();
    if (localView != null) {
      localView.animate().alpha(paramFloat);
    }
    return this;
  }
  
  public ViewPropertyAnimatorCompat alphaBy(float paramFloat)
  {
    View localView = (View)d.get();
    if (localView != null) {
      localView.animate().alphaBy(paramFloat);
    }
    return this;
  }
  
  public void cancel()
  {
    View localView = (View)d.get();
    if (localView != null) {
      localView.animate().cancel();
    }
  }
  
  public long getDuration()
  {
    View localView = (View)d.get();
    if (localView != null) {
      return localView.animate().getDuration();
    }
    return 0L;
  }
  
  public Interpolator getInterpolator()
  {
    View localView = (View)d.get();
    if ((localView != null) && (Build.VERSION.SDK_INT >= 18)) {
      return (Interpolator)localView.animate().getInterpolator();
    }
    return null;
  }
  
  public long getStartDelay()
  {
    View localView = (View)d.get();
    if (localView != null) {
      return localView.animate().getStartDelay();
    }
    return 0L;
  }
  
  public ViewPropertyAnimatorCompat rotation(float paramFloat)
  {
    View localView = (View)d.get();
    if (localView != null) {
      localView.animate().rotation(paramFloat);
    }
    return this;
  }
  
  public ViewPropertyAnimatorCompat rotationBy(float paramFloat)
  {
    View localView = (View)d.get();
    if (localView != null) {
      localView.animate().rotationBy(paramFloat);
    }
    return this;
  }
  
  public ViewPropertyAnimatorCompat rotationX(float paramFloat)
  {
    View localView = (View)d.get();
    if (localView != null) {
      localView.animate().rotationX(paramFloat);
    }
    return this;
  }
  
  public ViewPropertyAnimatorCompat rotationXBy(float paramFloat)
  {
    View localView = (View)d.get();
    if (localView != null) {
      localView.animate().rotationXBy(paramFloat);
    }
    return this;
  }
  
  public ViewPropertyAnimatorCompat rotationY(float paramFloat)
  {
    View localView = (View)d.get();
    if (localView != null) {
      localView.animate().rotationY(paramFloat);
    }
    return this;
  }
  
  public ViewPropertyAnimatorCompat rotationYBy(float paramFloat)
  {
    View localView = (View)d.get();
    if (localView != null) {
      localView.animate().rotationYBy(paramFloat);
    }
    return this;
  }
  
  public ViewPropertyAnimatorCompat scaleX(float paramFloat)
  {
    View localView = (View)d.get();
    if (localView != null) {
      localView.animate().scaleX(paramFloat);
    }
    return this;
  }
  
  public ViewPropertyAnimatorCompat scaleXBy(float paramFloat)
  {
    View localView = (View)d.get();
    if (localView != null) {
      localView.animate().scaleXBy(paramFloat);
    }
    return this;
  }
  
  public ViewPropertyAnimatorCompat scaleY(float paramFloat)
  {
    View localView = (View)d.get();
    if (localView != null) {
      localView.animate().scaleY(paramFloat);
    }
    return this;
  }
  
  public ViewPropertyAnimatorCompat scaleYBy(float paramFloat)
  {
    View localView = (View)d.get();
    if (localView != null) {
      localView.animate().scaleYBy(paramFloat);
    }
    return this;
  }
  
  public ViewPropertyAnimatorCompat setDuration(long paramLong)
  {
    View localView = (View)d.get();
    if (localView != null) {
      localView.animate().setDuration(paramLong);
    }
    return this;
  }
  
  public ViewPropertyAnimatorCompat setInterpolator(Interpolator paramInterpolator)
  {
    View localView = (View)d.get();
    if (localView != null) {
      localView.animate().setInterpolator(paramInterpolator);
    }
    return this;
  }
  
  public ViewPropertyAnimatorCompat setListener(ViewPropertyAnimatorListener paramViewPropertyAnimatorListener)
  {
    View localView = (View)d.get();
    if (localView != null)
    {
      if (Build.VERSION.SDK_INT >= 16)
      {
        a(localView, paramViewPropertyAnimatorListener);
        return this;
      }
      localView.setTag(2113929216, paramViewPropertyAnimatorListener);
      a(localView, new a(this));
    }
    return this;
  }
  
  public ViewPropertyAnimatorCompat setStartDelay(long paramLong)
  {
    View localView = (View)d.get();
    if (localView != null) {
      localView.animate().setStartDelay(paramLong);
    }
    return this;
  }
  
  public ViewPropertyAnimatorCompat setUpdateListener(final ViewPropertyAnimatorUpdateListener paramViewPropertyAnimatorUpdateListener)
  {
    final View localView = (View)d.get();
    if ((localView != null) && (Build.VERSION.SDK_INT >= 19))
    {
      ValueAnimator.AnimatorUpdateListener local2 = null;
      if (paramViewPropertyAnimatorUpdateListener != null) {
        local2 = new ValueAnimator.AnimatorUpdateListener()
        {
          public void onAnimationUpdate(ValueAnimator paramAnonymousValueAnimator)
          {
            paramViewPropertyAnimatorUpdateListener.onAnimationUpdate(localView);
          }
        };
      }
      localView.animate().setUpdateListener(local2);
    }
    return this;
  }
  
  public void start()
  {
    View localView = (View)d.get();
    if (localView != null) {
      localView.animate().start();
    }
  }
  
  public ViewPropertyAnimatorCompat translationX(float paramFloat)
  {
    View localView = (View)d.get();
    if (localView != null) {
      localView.animate().translationX(paramFloat);
    }
    return this;
  }
  
  public ViewPropertyAnimatorCompat translationXBy(float paramFloat)
  {
    View localView = (View)d.get();
    if (localView != null) {
      localView.animate().translationXBy(paramFloat);
    }
    return this;
  }
  
  public ViewPropertyAnimatorCompat translationY(float paramFloat)
  {
    View localView = (View)d.get();
    if (localView != null) {
      localView.animate().translationY(paramFloat);
    }
    return this;
  }
  
  public ViewPropertyAnimatorCompat translationYBy(float paramFloat)
  {
    View localView = (View)d.get();
    if (localView != null) {
      localView.animate().translationYBy(paramFloat);
    }
    return this;
  }
  
  public ViewPropertyAnimatorCompat translationZ(float paramFloat)
  {
    View localView = (View)d.get();
    if ((localView != null) && (Build.VERSION.SDK_INT >= 21)) {
      localView.animate().translationZ(paramFloat);
    }
    return this;
  }
  
  public ViewPropertyAnimatorCompat translationZBy(float paramFloat)
  {
    View localView = (View)d.get();
    if ((localView != null) && (Build.VERSION.SDK_INT >= 21)) {
      localView.animate().translationZBy(paramFloat);
    }
    return this;
  }
  
  public ViewPropertyAnimatorCompat withEndAction(Runnable paramRunnable)
  {
    View localView = (View)d.get();
    if (localView != null)
    {
      if (Build.VERSION.SDK_INT >= 16)
      {
        localView.animate().withEndAction(paramRunnable);
        return this;
      }
      a(localView, new a(this));
      b = paramRunnable;
    }
    return this;
  }
  
  public ViewPropertyAnimatorCompat withLayer()
  {
    View localView = (View)d.get();
    if (localView != null)
    {
      if (Build.VERSION.SDK_INT >= 16)
      {
        localView.animate().withLayer();
        return this;
      }
      c = localView.getLayerType();
      a(localView, new a(this));
    }
    return this;
  }
  
  public ViewPropertyAnimatorCompat withStartAction(Runnable paramRunnable)
  {
    View localView = (View)d.get();
    if (localView != null)
    {
      if (Build.VERSION.SDK_INT >= 16)
      {
        localView.animate().withStartAction(paramRunnable);
        return this;
      }
      a(localView, new a(this));
      a = paramRunnable;
    }
    return this;
  }
  
  public ViewPropertyAnimatorCompat x(float paramFloat)
  {
    View localView = (View)d.get();
    if (localView != null) {
      localView.animate().x(paramFloat);
    }
    return this;
  }
  
  public ViewPropertyAnimatorCompat xBy(float paramFloat)
  {
    View localView = (View)d.get();
    if (localView != null) {
      localView.animate().xBy(paramFloat);
    }
    return this;
  }
  
  public ViewPropertyAnimatorCompat y(float paramFloat)
  {
    View localView = (View)d.get();
    if (localView != null) {
      localView.animate().y(paramFloat);
    }
    return this;
  }
  
  public ViewPropertyAnimatorCompat yBy(float paramFloat)
  {
    View localView = (View)d.get();
    if (localView != null) {
      localView.animate().yBy(paramFloat);
    }
    return this;
  }
  
  public ViewPropertyAnimatorCompat z(float paramFloat)
  {
    View localView = (View)d.get();
    if ((localView != null) && (Build.VERSION.SDK_INT >= 21)) {
      localView.animate().z(paramFloat);
    }
    return this;
  }
  
  public ViewPropertyAnimatorCompat zBy(float paramFloat)
  {
    View localView = (View)d.get();
    if ((localView != null) && (Build.VERSION.SDK_INT >= 21)) {
      localView.animate().zBy(paramFloat);
    }
    return this;
  }
  
  static class a
    implements ViewPropertyAnimatorListener
  {
    ViewPropertyAnimatorCompat a;
    boolean b;
    
    a(ViewPropertyAnimatorCompat paramViewPropertyAnimatorCompat)
    {
      a = paramViewPropertyAnimatorCompat;
    }
    
    public void onAnimationCancel(View paramView)
    {
      Object localObject = paramView.getTag(2113929216);
      if ((localObject instanceof ViewPropertyAnimatorListener)) {
        localObject = (ViewPropertyAnimatorListener)localObject;
      } else {
        localObject = null;
      }
      if (localObject != null) {
        ((ViewPropertyAnimatorListener)localObject).onAnimationCancel(paramView);
      }
    }
    
    public void onAnimationEnd(View paramView)
    {
      int i = a.c;
      ViewPropertyAnimatorListener localViewPropertyAnimatorListener = null;
      if (i > -1)
      {
        paramView.setLayerType(a.c, null);
        a.c = -1;
      }
      if ((Build.VERSION.SDK_INT >= 16) || (!b))
      {
        if (a.b != null)
        {
          localObject = a.b;
          a.b = null;
          ((Runnable)localObject).run();
        }
        Object localObject = paramView.getTag(2113929216);
        if ((localObject instanceof ViewPropertyAnimatorListener)) {
          localViewPropertyAnimatorListener = (ViewPropertyAnimatorListener)localObject;
        }
        if (localViewPropertyAnimatorListener != null) {
          localViewPropertyAnimatorListener.onAnimationEnd(paramView);
        }
        b = true;
      }
    }
    
    public void onAnimationStart(View paramView)
    {
      b = false;
      int i = a.c;
      ViewPropertyAnimatorListener localViewPropertyAnimatorListener = null;
      if (i > -1) {
        paramView.setLayerType(2, null);
      }
      if (a.a != null)
      {
        localObject = a.a;
        a.a = null;
        ((Runnable)localObject).run();
      }
      Object localObject = paramView.getTag(2113929216);
      if ((localObject instanceof ViewPropertyAnimatorListener)) {
        localViewPropertyAnimatorListener = (ViewPropertyAnimatorListener)localObject;
      }
      if (localViewPropertyAnimatorListener != null) {
        localViewPropertyAnimatorListener.onAnimationStart(paramView);
      }
    }
  }
}
