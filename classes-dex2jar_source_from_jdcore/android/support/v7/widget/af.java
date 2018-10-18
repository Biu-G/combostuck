package android.support.v7.widget;

import android.content.Context;
import android.support.annotation.RestrictTo;
import android.support.v4.view.ViewCompat;
import android.support.v4.view.ViewConfigurationCompat;
import android.text.TextUtils;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnAttachStateChangeListener;
import android.view.View.OnHoverListener;
import android.view.View.OnLongClickListener;
import android.view.ViewConfiguration;
import android.view.accessibility.AccessibilityManager;

@RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
class af
  implements View.OnAttachStateChangeListener, View.OnHoverListener, View.OnLongClickListener
{
  private static af j;
  private static af k;
  private final View a;
  private final CharSequence b;
  private final int c;
  private final Runnable d = new Runnable()
  {
    public void run()
    {
      a(false);
    }
  };
  private final Runnable e = new Runnable()
  {
    public void run()
    {
      a();
    }
  };
  private int f;
  private int g;
  private ag h;
  private boolean i;
  
  private af(View paramView, CharSequence paramCharSequence)
  {
    a = paramView;
    b = paramCharSequence;
    c = ViewConfigurationCompat.getScaledHoverSlop(ViewConfiguration.get(a.getContext()));
    d();
    a.setOnLongClickListener(this);
    a.setOnHoverListener(this);
  }
  
  private static void a(af paramAf)
  {
    if (j != null) {
      j.c();
    }
    j = paramAf;
    if (j != null) {
      j.b();
    }
  }
  
  public static void a(View paramView, CharSequence paramCharSequence)
  {
    if ((j != null) && (ja == paramView)) {
      a(null);
    }
    if (TextUtils.isEmpty(paramCharSequence))
    {
      if ((k != null) && (ka == paramView)) {
        k.a();
      }
      paramView.setOnLongClickListener(null);
      paramView.setLongClickable(false);
      paramView.setOnHoverListener(null);
      return;
    }
    new af(paramView, paramCharSequence);
  }
  
  private boolean a(MotionEvent paramMotionEvent)
  {
    int m = (int)paramMotionEvent.getX();
    int n = (int)paramMotionEvent.getY();
    if ((Math.abs(m - f) <= c) && (Math.abs(n - g) <= c)) {
      return false;
    }
    f = m;
    g = n;
    return true;
  }
  
  private void b()
  {
    a.postDelayed(d, ViewConfiguration.getLongPressTimeout());
  }
  
  private void c()
  {
    a.removeCallbacks(d);
  }
  
  private void d()
  {
    f = Integer.MAX_VALUE;
    g = Integer.MAX_VALUE;
  }
  
  void a()
  {
    if (k == this)
    {
      k = null;
      if (h != null)
      {
        h.a();
        h = null;
        d();
        a.removeOnAttachStateChangeListener(this);
      }
      else
      {
        Log.e("TooltipCompatHandler", "sActiveHandler.mPopup == null");
      }
    }
    if (j == this) {
      a(null);
    }
    a.removeCallbacks(e);
  }
  
  void a(boolean paramBoolean)
  {
    if (!ViewCompat.isAttachedToWindow(a)) {
      return;
    }
    a(null);
    if (k != null) {
      k.a();
    }
    k = this;
    i = paramBoolean;
    h = new ag(a.getContext());
    h.a(a, f, g, i, b);
    a.addOnAttachStateChangeListener(this);
    long l;
    if (i) {
      l = 2500L;
    } else if ((ViewCompat.getWindowSystemUiVisibility(a) & 0x1) == 1) {
      l = 3000L - ViewConfiguration.getLongPressTimeout();
    } else {
      l = 15000L - ViewConfiguration.getLongPressTimeout();
    }
    a.removeCallbacks(e);
    a.postDelayed(e, l);
  }
  
  public boolean onHover(View paramView, MotionEvent paramMotionEvent)
  {
    if ((h != null) && (i)) {
      return false;
    }
    paramView = (AccessibilityManager)a.getContext().getSystemService("accessibility");
    if ((paramView.isEnabled()) && (paramView.isTouchExplorationEnabled())) {
      return false;
    }
    int m = paramMotionEvent.getAction();
    if (m != 7)
    {
      if (m != 10) {
        return false;
      }
      d();
      a();
      return false;
    }
    if ((a.isEnabled()) && (h == null) && (a(paramMotionEvent))) {
      a(this);
    }
    return false;
  }
  
  public boolean onLongClick(View paramView)
  {
    f = (paramView.getWidth() / 2);
    g = (paramView.getHeight() / 2);
    a(true);
    return true;
  }
  
  public void onViewAttachedToWindow(View paramView) {}
  
  public void onViewDetachedFromWindow(View paramView)
  {
    a();
  }
}
