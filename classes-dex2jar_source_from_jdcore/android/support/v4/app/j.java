package android.support.v4.app;

import android.view.View;
import android.view.View.OnAttachStateChangeListener;
import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnPreDrawListener;

class j
  implements View.OnAttachStateChangeListener, ViewTreeObserver.OnPreDrawListener
{
  private final View a;
  private ViewTreeObserver b;
  private final Runnable c;
  
  private j(View paramView, Runnable paramRunnable)
  {
    a = paramView;
    b = paramView.getViewTreeObserver();
    c = paramRunnable;
  }
  
  public static j a(View paramView, Runnable paramRunnable)
  {
    paramRunnable = new j(paramView, paramRunnable);
    paramView.getViewTreeObserver().addOnPreDrawListener(paramRunnable);
    paramView.addOnAttachStateChangeListener(paramRunnable);
    return paramRunnable;
  }
  
  public void a()
  {
    if (b.isAlive()) {
      b.removeOnPreDrawListener(this);
    } else {
      a.getViewTreeObserver().removeOnPreDrawListener(this);
    }
    a.removeOnAttachStateChangeListener(this);
  }
  
  public boolean onPreDraw()
  {
    a();
    c.run();
    return true;
  }
  
  public void onViewAttachedToWindow(View paramView)
  {
    b = paramView.getViewTreeObserver();
  }
  
  public void onViewDetachedFromWindow(View paramView)
  {
    a();
  }
}
