package android.support.v7.widget;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.Resources;
import android.graphics.Rect;
import android.support.annotation.RestrictTo;
import android.support.v7.appcompat.R.dimen;
import android.support.v7.appcompat.R.id;
import android.support.v7.appcompat.R.layout;
import android.support.v7.appcompat.R.style;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup.LayoutParams;
import android.view.Window;
import android.view.WindowManager;
import android.view.WindowManager.LayoutParams;
import android.widget.TextView;

@RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
class ag
{
  private final Context a;
  private final View b;
  private final TextView c;
  private final WindowManager.LayoutParams d = new WindowManager.LayoutParams();
  private final Rect e = new Rect();
  private final int[] f = new int[2];
  private final int[] g = new int[2];
  
  ag(Context paramContext)
  {
    a = paramContext;
    b = LayoutInflater.from(a).inflate(R.layout.abc_tooltip, null);
    c = ((TextView)b.findViewById(R.id.message));
    d.setTitle(getClass().getSimpleName());
    d.packageName = a.getPackageName();
    d.type = 1002;
    d.width = -2;
    d.height = -2;
    d.format = -3;
    d.windowAnimations = R.style.Animation_AppCompat_Tooltip;
    d.flags = 24;
  }
  
  private static View a(View paramView)
  {
    View localView = paramView.getRootView();
    ViewGroup.LayoutParams localLayoutParams = localView.getLayoutParams();
    if (((localLayoutParams instanceof WindowManager.LayoutParams)) && (type == 2)) {
      return localView;
    }
    for (paramView = paramView.getContext(); (paramView instanceof ContextWrapper); paramView = ((ContextWrapper)paramView).getBaseContext()) {
      if ((paramView instanceof Activity)) {
        return ((Activity)paramView).getWindow().getDecorView();
      }
    }
    return localView;
  }
  
  private void a(View paramView, int paramInt1, int paramInt2, boolean paramBoolean, WindowManager.LayoutParams paramLayoutParams)
  {
    token = paramView.getApplicationWindowToken();
    int i = a.getResources().getDimensionPixelOffset(R.dimen.tooltip_precise_anchor_threshold);
    if (paramView.getWidth() < i) {
      paramInt1 = paramView.getWidth() / 2;
    }
    int j;
    if (paramView.getHeight() >= i)
    {
      j = a.getResources().getDimensionPixelOffset(R.dimen.tooltip_precise_anchor_extra_offset);
      i = paramInt2 + j;
      j = paramInt2 - j;
      paramInt2 = i;
      i = j;
    }
    else
    {
      paramInt2 = paramView.getHeight();
      i = 0;
    }
    gravity = 49;
    Object localObject1 = a.getResources();
    if (paramBoolean) {
      j = R.dimen.tooltip_y_offset_touch;
    } else {
      j = R.dimen.tooltip_y_offset_non_touch;
    }
    int k = ((Resources)localObject1).getDimensionPixelOffset(j);
    localObject1 = a(paramView);
    if (localObject1 == null)
    {
      Log.e("TooltipPopup", "Cannot find app view");
      return;
    }
    ((View)localObject1).getWindowVisibleDisplayFrame(e);
    if ((e.left < 0) && (e.top < 0))
    {
      Object localObject2 = a.getResources();
      j = ((Resources)localObject2).getIdentifier("status_bar_height", "dimen", "android");
      if (j != 0) {
        j = ((Resources)localObject2).getDimensionPixelSize(j);
      } else {
        j = 0;
      }
      localObject2 = ((Resources)localObject2).getDisplayMetrics();
      e.set(0, j, widthPixels, heightPixels);
    }
    ((View)localObject1).getLocationOnScreen(g);
    paramView.getLocationOnScreen(f);
    paramView = f;
    paramView[0] -= g[0];
    paramView = f;
    paramView[1] -= g[1];
    x = (f[0] + paramInt1 - ((View)localObject1).getWidth() / 2);
    paramInt1 = View.MeasureSpec.makeMeasureSpec(0, 0);
    b.measure(paramInt1, paramInt1);
    paramInt1 = b.getMeasuredHeight();
    i = f[1] + i - k - paramInt1;
    paramInt2 = f[1] + paramInt2 + k;
    if (paramBoolean)
    {
      if (i >= 0)
      {
        y = i;
        return;
      }
      y = paramInt2;
      return;
    }
    if (paramInt1 + paramInt2 <= e.height())
    {
      y = paramInt2;
      return;
    }
    y = i;
  }
  
  void a()
  {
    if (!b()) {
      return;
    }
    ((WindowManager)a.getSystemService("window")).removeView(b);
  }
  
  void a(View paramView, int paramInt1, int paramInt2, boolean paramBoolean, CharSequence paramCharSequence)
  {
    if (b()) {
      a();
    }
    c.setText(paramCharSequence);
    a(paramView, paramInt1, paramInt2, paramBoolean, d);
    ((WindowManager)a.getSystemService("window")).addView(b, d);
  }
  
  boolean b()
  {
    return b.getParent() != null;
  }
}
