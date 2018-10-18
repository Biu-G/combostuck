package android.support.v7.view;

import android.support.annotation.RestrictTo;
import android.support.v4.view.ViewPropertyAnimatorCompat;
import android.support.v4.view.ViewPropertyAnimatorListener;
import android.support.v4.view.ViewPropertyAnimatorListenerAdapter;
import android.view.View;
import android.view.animation.Interpolator;
import java.util.ArrayList;
import java.util.Iterator;

@RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
public class ViewPropertyAnimatorCompatSet
{
  final ArrayList<ViewPropertyAnimatorCompat> a = new ArrayList();
  ViewPropertyAnimatorListener b;
  private long c = -1L;
  private Interpolator d;
  private boolean e;
  private final ViewPropertyAnimatorListenerAdapter f = new ViewPropertyAnimatorListenerAdapter()
  {
    private boolean b = false;
    private int c = 0;
    
    void a()
    {
      c = 0;
      b = false;
      ViewPropertyAnimatorCompatSet.this.a();
    }
    
    public void onAnimationEnd(View paramAnonymousView)
    {
      int i = c + 1;
      c = i;
      if (i == a.size())
      {
        if (b != null) {
          b.onAnimationEnd(null);
        }
        a();
      }
    }
    
    public void onAnimationStart(View paramAnonymousView)
    {
      if (b) {
        return;
      }
      b = true;
      if (b != null) {
        b.onAnimationStart(null);
      }
    }
  };
  
  public ViewPropertyAnimatorCompatSet() {}
  
  void a()
  {
    e = false;
  }
  
  public void cancel()
  {
    if (!e) {
      return;
    }
    Iterator localIterator = a.iterator();
    while (localIterator.hasNext()) {
      ((ViewPropertyAnimatorCompat)localIterator.next()).cancel();
    }
    e = false;
  }
  
  public ViewPropertyAnimatorCompatSet play(ViewPropertyAnimatorCompat paramViewPropertyAnimatorCompat)
  {
    if (!e) {
      a.add(paramViewPropertyAnimatorCompat);
    }
    return this;
  }
  
  public ViewPropertyAnimatorCompatSet playSequentially(ViewPropertyAnimatorCompat paramViewPropertyAnimatorCompat1, ViewPropertyAnimatorCompat paramViewPropertyAnimatorCompat2)
  {
    a.add(paramViewPropertyAnimatorCompat1);
    paramViewPropertyAnimatorCompat2.setStartDelay(paramViewPropertyAnimatorCompat1.getDuration());
    a.add(paramViewPropertyAnimatorCompat2);
    return this;
  }
  
  public ViewPropertyAnimatorCompatSet setDuration(long paramLong)
  {
    if (!e) {
      c = paramLong;
    }
    return this;
  }
  
  public ViewPropertyAnimatorCompatSet setInterpolator(Interpolator paramInterpolator)
  {
    if (!e) {
      d = paramInterpolator;
    }
    return this;
  }
  
  public ViewPropertyAnimatorCompatSet setListener(ViewPropertyAnimatorListener paramViewPropertyAnimatorListener)
  {
    if (!e) {
      b = paramViewPropertyAnimatorListener;
    }
    return this;
  }
  
  public void start()
  {
    if (e) {
      return;
    }
    Iterator localIterator = a.iterator();
    while (localIterator.hasNext())
    {
      ViewPropertyAnimatorCompat localViewPropertyAnimatorCompat = (ViewPropertyAnimatorCompat)localIterator.next();
      if (c >= 0L) {
        localViewPropertyAnimatorCompat.setDuration(c);
      }
      if (d != null) {
        localViewPropertyAnimatorCompat.setInterpolator(d);
      }
      if (b != null) {
        localViewPropertyAnimatorCompat.setListener(f);
      }
      localViewPropertyAnimatorCompat.start();
    }
    e = true;
  }
}
