package android.support.v7.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.content.Context;
import android.content.res.Configuration;
import android.graphics.drawable.Drawable;
import android.support.annotation.RestrictTo;
import android.support.v7.app.ActionBar.Tab;
import android.support.v7.appcompat.R.attr;
import android.support.v7.view.ActionBarPolicy;
import android.text.TextUtils;
import android.text.TextUtils.TruncateAt;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewPropertyAnimator;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import android.widget.AbsListView.LayoutParams;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemSelectedListener;
import android.widget.BaseAdapter;
import android.widget.HorizontalScrollView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.Spinner;
import android.widget.TextView;

@RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
public class ScrollingTabContainerView
  extends HorizontalScrollView
  implements AdapterView.OnItemSelectedListener
{
  private static final Interpolator j = new DecelerateInterpolator();
  Runnable a;
  LinearLayoutCompat b;
  int c;
  int d;
  private b e;
  private Spinner f;
  private boolean g;
  private int h;
  private int i;
  protected final VisibilityAnimListener mVisAnimListener = new VisibilityAnimListener();
  protected ViewPropertyAnimator mVisibilityAnim;
  
  public ScrollingTabContainerView(Context paramContext)
  {
    super(paramContext);
    setHorizontalScrollBarEnabled(false);
    paramContext = ActionBarPolicy.get(paramContext);
    setContentHeight(paramContext.getTabContainerHeight());
    d = paramContext.getStackedTabMaxWidth();
    b = d();
    addView(b, new ViewGroup.LayoutParams(-2, -1));
  }
  
  private boolean a()
  {
    return (f != null) && (f.getParent() == this);
  }
  
  private void b()
  {
    if (a()) {
      return;
    }
    if (f == null) {
      f = e();
    }
    removeView(b);
    addView(f, new ViewGroup.LayoutParams(-2, -1));
    if (f.getAdapter() == null) {
      f.setAdapter(new a());
    }
    if (a != null)
    {
      removeCallbacks(a);
      a = null;
    }
    f.setSelection(i);
  }
  
  private boolean c()
  {
    if (!a()) {
      return false;
    }
    removeView(f);
    addView(b, new ViewGroup.LayoutParams(-2, -1));
    setTabSelected(f.getSelectedItemPosition());
    return false;
  }
  
  private LinearLayoutCompat d()
  {
    LinearLayoutCompat localLinearLayoutCompat = new LinearLayoutCompat(getContext(), null, R.attr.actionBarTabBarStyle);
    localLinearLayoutCompat.setMeasureWithLargestChildEnabled(true);
    localLinearLayoutCompat.setGravity(17);
    localLinearLayoutCompat.setLayoutParams(new LinearLayoutCompat.LayoutParams(-2, -1));
    return localLinearLayoutCompat;
  }
  
  private Spinner e()
  {
    AppCompatSpinner localAppCompatSpinner = new AppCompatSpinner(getContext(), null, R.attr.actionDropDownStyle);
    localAppCompatSpinner.setLayoutParams(new LinearLayoutCompat.LayoutParams(-2, -1));
    localAppCompatSpinner.setOnItemSelectedListener(this);
    return localAppCompatSpinner;
  }
  
  c a(ActionBar.Tab paramTab, boolean paramBoolean)
  {
    paramTab = new c(getContext(), paramTab, paramBoolean);
    if (paramBoolean)
    {
      paramTab.setBackgroundDrawable(null);
      paramTab.setLayoutParams(new AbsListView.LayoutParams(-1, h));
      return paramTab;
    }
    paramTab.setFocusable(true);
    if (e == null) {
      e = new b();
    }
    paramTab.setOnClickListener(e);
    return paramTab;
  }
  
  public void addTab(ActionBar.Tab paramTab, int paramInt, boolean paramBoolean)
  {
    paramTab = a(paramTab, false);
    b.addView(paramTab, paramInt, new LinearLayoutCompat.LayoutParams(0, -1, 1.0F));
    if (f != null) {
      ((a)f.getAdapter()).notifyDataSetChanged();
    }
    if (paramBoolean) {
      paramTab.setSelected(true);
    }
    if (g) {
      requestLayout();
    }
  }
  
  public void addTab(ActionBar.Tab paramTab, boolean paramBoolean)
  {
    paramTab = a(paramTab, false);
    b.addView(paramTab, new LinearLayoutCompat.LayoutParams(0, -1, 1.0F));
    if (f != null) {
      ((a)f.getAdapter()).notifyDataSetChanged();
    }
    if (paramBoolean) {
      paramTab.setSelected(true);
    }
    if (g) {
      requestLayout();
    }
  }
  
  public void animateToTab(int paramInt)
  {
    final View localView = b.getChildAt(paramInt);
    if (a != null) {
      removeCallbacks(a);
    }
    a = new Runnable()
    {
      public void run()
      {
        int i = localView.getLeft();
        int j = (getWidth() - localView.getWidth()) / 2;
        smoothScrollTo(i - j, 0);
        a = null;
      }
    };
    post(a);
  }
  
  public void animateToVisibility(int paramInt)
  {
    if (mVisibilityAnim != null) {
      mVisibilityAnim.cancel();
    }
    if (paramInt == 0)
    {
      if (getVisibility() != 0) {
        setAlpha(0.0F);
      }
      localViewPropertyAnimator = animate().alpha(1.0F);
      localViewPropertyAnimator.setDuration(200L);
      localViewPropertyAnimator.setInterpolator(j);
      localViewPropertyAnimator.setListener(mVisAnimListener.withFinalVisibility(localViewPropertyAnimator, paramInt));
      localViewPropertyAnimator.start();
      return;
    }
    ViewPropertyAnimator localViewPropertyAnimator = animate().alpha(0.0F);
    localViewPropertyAnimator.setDuration(200L);
    localViewPropertyAnimator.setInterpolator(j);
    localViewPropertyAnimator.setListener(mVisAnimListener.withFinalVisibility(localViewPropertyAnimator, paramInt));
    localViewPropertyAnimator.start();
  }
  
  public void onAttachedToWindow()
  {
    super.onAttachedToWindow();
    if (a != null) {
      post(a);
    }
  }
  
  protected void onConfigurationChanged(Configuration paramConfiguration)
  {
    super.onConfigurationChanged(paramConfiguration);
    paramConfiguration = ActionBarPolicy.get(getContext());
    setContentHeight(paramConfiguration.getTabContainerHeight());
    d = paramConfiguration.getStackedTabMaxWidth();
  }
  
  public void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
    if (a != null) {
      removeCallbacks(a);
    }
  }
  
  public void onItemSelected(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    ((c)paramView).b().select();
  }
  
  public void onMeasure(int paramInt1, int paramInt2)
  {
    int k = View.MeasureSpec.getMode(paramInt1);
    paramInt2 = 1;
    boolean bool;
    if (k == 1073741824) {
      bool = true;
    } else {
      bool = false;
    }
    setFillViewport(bool);
    int m = b.getChildCount();
    if ((m > 1) && ((k == 1073741824) || (k == Integer.MIN_VALUE)))
    {
      if (m > 2) {
        c = ((int)(View.MeasureSpec.getSize(paramInt1) * 0.4F));
      } else {
        c = (View.MeasureSpec.getSize(paramInt1) / 2);
      }
      c = Math.min(c, d);
    }
    else
    {
      c = -1;
    }
    k = View.MeasureSpec.makeMeasureSpec(h, 1073741824);
    if ((bool) || (!g)) {
      paramInt2 = 0;
    }
    if (paramInt2 != 0)
    {
      b.measure(0, k);
      if (b.getMeasuredWidth() > View.MeasureSpec.getSize(paramInt1)) {
        b();
      } else {
        c();
      }
    }
    else
    {
      c();
    }
    paramInt2 = getMeasuredWidth();
    super.onMeasure(paramInt1, k);
    paramInt1 = getMeasuredWidth();
    if ((bool) && (paramInt2 != paramInt1)) {
      setTabSelected(i);
    }
  }
  
  public void onNothingSelected(AdapterView<?> paramAdapterView) {}
  
  public void removeAllTabs()
  {
    b.removeAllViews();
    if (f != null) {
      ((a)f.getAdapter()).notifyDataSetChanged();
    }
    if (g) {
      requestLayout();
    }
  }
  
  public void removeTabAt(int paramInt)
  {
    b.removeViewAt(paramInt);
    if (f != null) {
      ((a)f.getAdapter()).notifyDataSetChanged();
    }
    if (g) {
      requestLayout();
    }
  }
  
  public void setAllowCollapse(boolean paramBoolean)
  {
    g = paramBoolean;
  }
  
  public void setContentHeight(int paramInt)
  {
    h = paramInt;
    requestLayout();
  }
  
  public void setTabSelected(int paramInt)
  {
    i = paramInt;
    int m = b.getChildCount();
    int k = 0;
    while (k < m)
    {
      View localView = b.getChildAt(k);
      boolean bool;
      if (k == paramInt) {
        bool = true;
      } else {
        bool = false;
      }
      localView.setSelected(bool);
      if (bool) {
        animateToTab(paramInt);
      }
      k += 1;
    }
    if ((f != null) && (paramInt >= 0)) {
      f.setSelection(paramInt);
    }
  }
  
  public void updateTab(int paramInt)
  {
    ((c)b.getChildAt(paramInt)).a();
    if (f != null) {
      ((a)f.getAdapter()).notifyDataSetChanged();
    }
    if (g) {
      requestLayout();
    }
  }
  
  protected class VisibilityAnimListener
    extends AnimatorListenerAdapter
  {
    private boolean b = false;
    private int c;
    
    protected VisibilityAnimListener() {}
    
    public void onAnimationCancel(Animator paramAnimator)
    {
      b = true;
    }
    
    public void onAnimationEnd(Animator paramAnimator)
    {
      if (b) {
        return;
      }
      mVisibilityAnim = null;
      setVisibility(c);
    }
    
    public void onAnimationStart(Animator paramAnimator)
    {
      setVisibility(0);
      b = false;
    }
    
    public VisibilityAnimListener withFinalVisibility(ViewPropertyAnimator paramViewPropertyAnimator, int paramInt)
    {
      c = paramInt;
      mVisibilityAnim = paramViewPropertyAnimator;
      return this;
    }
  }
  
  private class a
    extends BaseAdapter
  {
    a() {}
    
    public int getCount()
    {
      return b.getChildCount();
    }
    
    public Object getItem(int paramInt)
    {
      return ((ScrollingTabContainerView.c)b.getChildAt(paramInt)).b();
    }
    
    public long getItemId(int paramInt)
    {
      return paramInt;
    }
    
    public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
    {
      if (paramView == null) {
        return a((ActionBar.Tab)getItem(paramInt), true);
      }
      ((ScrollingTabContainerView.c)paramView).a((ActionBar.Tab)getItem(paramInt));
      return paramView;
    }
  }
  
  private class b
    implements View.OnClickListener
  {
    b() {}
    
    public void onClick(View paramView)
    {
      ((ScrollingTabContainerView.c)paramView).b().select();
      int j = b.getChildCount();
      int i = 0;
      while (i < j)
      {
        View localView = b.getChildAt(i);
        boolean bool;
        if (localView == paramView) {
          bool = true;
        } else {
          bool = false;
        }
        localView.setSelected(bool);
        i += 1;
      }
    }
  }
  
  private class c
    extends LinearLayout
  {
    private final int[] b = { 16842964 };
    private ActionBar.Tab c;
    private TextView d;
    private ImageView e;
    private View f;
    
    public c(Context paramContext, ActionBar.Tab paramTab, boolean paramBoolean)
    {
      super(null, R.attr.actionBarTabStyle);
      c = paramTab;
      this$1 = TintTypedArray.obtainStyledAttributes(paramContext, null, b, R.attr.actionBarTabStyle, 0);
      if (hasValue(0)) {
        setBackgroundDrawable(getDrawable(0));
      }
      recycle();
      if (paramBoolean) {
        setGravity(8388627);
      }
      a();
    }
    
    public void a()
    {
      ActionBar.Tab localTab = c;
      Object localObject2 = localTab.getCustomView();
      Object localObject1 = null;
      if (localObject2 != null)
      {
        localObject1 = ((View)localObject2).getParent();
        if (localObject1 != this)
        {
          if (localObject1 != null) {
            ((ViewGroup)localObject1).removeView((View)localObject2);
          }
          addView((View)localObject2);
        }
        f = ((View)localObject2);
        if (d != null) {
          d.setVisibility(8);
        }
        if (e != null)
        {
          e.setVisibility(8);
          e.setImageDrawable(null);
        }
      }
      else
      {
        if (f != null)
        {
          removeView(f);
          f = null;
        }
        Object localObject3 = localTab.getIcon();
        localObject2 = localTab.getText();
        Object localObject4;
        if (localObject3 != null)
        {
          if (e == null)
          {
            localObject4 = new AppCompatImageView(getContext());
            LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams(-2, -2);
            gravity = 16;
            ((ImageView)localObject4).setLayoutParams(localLayoutParams);
            addView((View)localObject4, 0);
            e = ((ImageView)localObject4);
          }
          e.setImageDrawable((Drawable)localObject3);
          e.setVisibility(0);
        }
        else if (e != null)
        {
          e.setVisibility(8);
          e.setImageDrawable(null);
        }
        boolean bool = TextUtils.isEmpty((CharSequence)localObject2) ^ true;
        if (bool)
        {
          if (d == null)
          {
            localObject3 = new AppCompatTextView(getContext(), null, R.attr.actionBarTabTextStyle);
            ((TextView)localObject3).setEllipsize(TextUtils.TruncateAt.END);
            localObject4 = new LinearLayout.LayoutParams(-2, -2);
            gravity = 16;
            ((TextView)localObject3).setLayoutParams((ViewGroup.LayoutParams)localObject4);
            addView((View)localObject3);
            d = ((TextView)localObject3);
          }
          d.setText((CharSequence)localObject2);
          d.setVisibility(0);
        }
        else if (d != null)
        {
          d.setVisibility(8);
          d.setText(null);
        }
        if (e != null) {
          e.setContentDescription(localTab.getContentDescription());
        }
        if (!bool) {
          localObject1 = localTab.getContentDescription();
        }
        TooltipCompat.setTooltipText(this, (CharSequence)localObject1);
      }
    }
    
    public void a(ActionBar.Tab paramTab)
    {
      c = paramTab;
      a();
    }
    
    public ActionBar.Tab b()
    {
      return c;
    }
    
    public void onInitializeAccessibilityEvent(AccessibilityEvent paramAccessibilityEvent)
    {
      super.onInitializeAccessibilityEvent(paramAccessibilityEvent);
      paramAccessibilityEvent.setClassName(ActionBar.Tab.class.getName());
    }
    
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo paramAccessibilityNodeInfo)
    {
      super.onInitializeAccessibilityNodeInfo(paramAccessibilityNodeInfo);
      paramAccessibilityNodeInfo.setClassName(ActionBar.Tab.class.getName());
    }
    
    public void onMeasure(int paramInt1, int paramInt2)
    {
      super.onMeasure(paramInt1, paramInt2);
      if ((c > 0) && (getMeasuredWidth() > c)) {
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(c, 1073741824), paramInt2);
      }
    }
    
    public void setSelected(boolean paramBoolean)
    {
      int i;
      if (isSelected() != paramBoolean) {
        i = 1;
      } else {
        i = 0;
      }
      super.setSelected(paramBoolean);
      if ((i != 0) && (paramBoolean)) {
        sendAccessibilityEvent(4);
      }
    }
  }
}
