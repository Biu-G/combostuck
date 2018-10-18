package android.support.v7.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.support.annotation.RestrictTo;
import android.support.v4.view.ViewCompat;
import android.support.v7.appcompat.R.id;
import android.support.v7.appcompat.R.styleable;
import android.util.AttributeSet;
import android.view.ActionMode;
import android.view.ActionMode.Callback;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup.LayoutParams;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;

@RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
public class ActionBarContainer
  extends FrameLayout
{
  Drawable a;
  Drawable b;
  Drawable c;
  boolean d;
  boolean e;
  private boolean f;
  private View g;
  private View h;
  private View i;
  private int j;
  
  public ActionBarContainer(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public ActionBarContainer(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    ViewCompat.setBackground(this, new a(this));
    paramContext = paramContext.obtainStyledAttributes(paramAttributeSet, R.styleable.ActionBar);
    a = paramContext.getDrawable(R.styleable.ActionBar_background);
    b = paramContext.getDrawable(R.styleable.ActionBar_backgroundStacked);
    j = paramContext.getDimensionPixelSize(R.styleable.ActionBar_height, -1);
    if (getId() == R.id.split_action_bar)
    {
      d = true;
      c = paramContext.getDrawable(R.styleable.ActionBar_backgroundSplit);
    }
    paramContext.recycle();
    boolean bool1 = d;
    boolean bool2 = false;
    if (bool1)
    {
      bool1 = bool2;
      if (c != null) {}
    }
    else
    {
      do
      {
        bool1 = true;
        break;
        bool1 = bool2;
        if (a != null) {
          break;
        }
        bool1 = bool2;
      } while (b == null);
    }
    setWillNotDraw(bool1);
  }
  
  private boolean a(View paramView)
  {
    return (paramView == null) || (paramView.getVisibility() == 8) || (paramView.getMeasuredHeight() == 0);
  }
  
  private int b(View paramView)
  {
    FrameLayout.LayoutParams localLayoutParams = (FrameLayout.LayoutParams)paramView.getLayoutParams();
    return paramView.getMeasuredHeight() + topMargin + bottomMargin;
  }
  
  protected void drawableStateChanged()
  {
    super.drawableStateChanged();
    if ((a != null) && (a.isStateful())) {
      a.setState(getDrawableState());
    }
    if ((b != null) && (b.isStateful())) {
      b.setState(getDrawableState());
    }
    if ((c != null) && (c.isStateful())) {
      c.setState(getDrawableState());
    }
  }
  
  public View getTabContainer()
  {
    return g;
  }
  
  public void jumpDrawablesToCurrentState()
  {
    super.jumpDrawablesToCurrentState();
    if (a != null) {
      a.jumpToCurrentState();
    }
    if (b != null) {
      b.jumpToCurrentState();
    }
    if (c != null) {
      c.jumpToCurrentState();
    }
  }
  
  public void onFinishInflate()
  {
    super.onFinishInflate();
    h = findViewById(R.id.action_bar);
    i = findViewById(R.id.action_context_bar);
  }
  
  public boolean onHoverEvent(MotionEvent paramMotionEvent)
  {
    super.onHoverEvent(paramMotionEvent);
    return true;
  }
  
  public boolean onInterceptTouchEvent(MotionEvent paramMotionEvent)
  {
    return (f) || (super.onInterceptTouchEvent(paramMotionEvent));
  }
  
  public void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onLayout(paramBoolean, paramInt1, paramInt2, paramInt3, paramInt4);
    View localView = g;
    paramInt2 = 1;
    paramInt4 = 0;
    if ((localView != null) && (localView.getVisibility() != 8)) {
      paramBoolean = true;
    } else {
      paramBoolean = false;
    }
    if ((localView != null) && (localView.getVisibility() != 8))
    {
      int k = getMeasuredHeight();
      FrameLayout.LayoutParams localLayoutParams = (FrameLayout.LayoutParams)localView.getLayoutParams();
      localView.layout(paramInt1, k - localView.getMeasuredHeight() - bottomMargin, paramInt3, k - bottomMargin);
    }
    if (d)
    {
      if (c != null)
      {
        c.setBounds(0, 0, getMeasuredWidth(), getMeasuredHeight());
        paramInt1 = paramInt2;
      }
      else
      {
        paramInt1 = 0;
      }
    }
    else
    {
      paramInt1 = paramInt4;
      if (a != null)
      {
        if (h.getVisibility() == 0) {
          a.setBounds(h.getLeft(), h.getTop(), h.getRight(), h.getBottom());
        } else if ((i != null) && (i.getVisibility() == 0)) {
          a.setBounds(i.getLeft(), i.getTop(), i.getRight(), i.getBottom());
        } else {
          a.setBounds(0, 0, 0, 0);
        }
        paramInt1 = 1;
      }
      e = paramBoolean;
      if ((paramBoolean) && (b != null))
      {
        b.setBounds(localView.getLeft(), localView.getTop(), localView.getRight(), localView.getBottom());
        paramInt1 = paramInt2;
      }
    }
    if (paramInt1 != 0) {
      invalidate();
    }
  }
  
  public void onMeasure(int paramInt1, int paramInt2)
  {
    int k = paramInt2;
    if (h == null)
    {
      k = paramInt2;
      if (View.MeasureSpec.getMode(paramInt2) == Integer.MIN_VALUE)
      {
        k = paramInt2;
        if (j >= 0) {
          k = View.MeasureSpec.makeMeasureSpec(Math.min(j, View.MeasureSpec.getSize(paramInt2)), Integer.MIN_VALUE);
        }
      }
    }
    super.onMeasure(paramInt1, k);
    if (h == null) {
      return;
    }
    paramInt2 = View.MeasureSpec.getMode(k);
    if ((g != null) && (g.getVisibility() != 8) && (paramInt2 != 1073741824))
    {
      if (!a(h)) {
        paramInt1 = b(h);
      } else if (!a(i)) {
        paramInt1 = b(i);
      } else {
        paramInt1 = 0;
      }
      if (paramInt2 == Integer.MIN_VALUE) {
        paramInt2 = View.MeasureSpec.getSize(k);
      } else {
        paramInt2 = Integer.MAX_VALUE;
      }
      setMeasuredDimension(getMeasuredWidth(), Math.min(paramInt1 + b(g), paramInt2));
    }
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    super.onTouchEvent(paramMotionEvent);
    return true;
  }
  
  public void setPrimaryBackground(Drawable paramDrawable)
  {
    if (a != null)
    {
      a.setCallback(null);
      unscheduleDrawable(a);
    }
    a = paramDrawable;
    if (paramDrawable != null)
    {
      paramDrawable.setCallback(this);
      if (h != null) {
        a.setBounds(h.getLeft(), h.getTop(), h.getRight(), h.getBottom());
      }
    }
    boolean bool1 = d;
    boolean bool2 = false;
    if (bool1)
    {
      bool1 = bool2;
      if (c != null) {}
    }
    else
    {
      do
      {
        bool1 = true;
        break;
        bool1 = bool2;
        if (a != null) {
          break;
        }
        bool1 = bool2;
      } while (b == null);
    }
    setWillNotDraw(bool1);
    invalidate();
  }
  
  public void setSplitBackground(Drawable paramDrawable)
  {
    if (c != null)
    {
      c.setCallback(null);
      unscheduleDrawable(c);
    }
    c = paramDrawable;
    boolean bool2 = false;
    if (paramDrawable != null)
    {
      paramDrawable.setCallback(this);
      if ((d) && (c != null)) {
        c.setBounds(0, 0, getMeasuredWidth(), getMeasuredHeight());
      }
    }
    boolean bool1;
    if (d)
    {
      bool1 = bool2;
      if (c != null) {}
    }
    else
    {
      do
      {
        bool1 = true;
        break;
        bool1 = bool2;
        if (a != null) {
          break;
        }
        bool1 = bool2;
      } while (b == null);
    }
    setWillNotDraw(bool1);
    invalidate();
  }
  
  public void setStackedBackground(Drawable paramDrawable)
  {
    if (b != null)
    {
      b.setCallback(null);
      unscheduleDrawable(b);
    }
    b = paramDrawable;
    if (paramDrawable != null)
    {
      paramDrawable.setCallback(this);
      if ((e) && (b != null)) {
        b.setBounds(g.getLeft(), g.getTop(), g.getRight(), g.getBottom());
      }
    }
    boolean bool1 = d;
    boolean bool2 = false;
    if (bool1)
    {
      bool1 = bool2;
      if (c != null) {}
    }
    else
    {
      do
      {
        bool1 = true;
        break;
        bool1 = bool2;
        if (a != null) {
          break;
        }
        bool1 = bool2;
      } while (b == null);
    }
    setWillNotDraw(bool1);
    invalidate();
  }
  
  public void setTabContainer(ScrollingTabContainerView paramScrollingTabContainerView)
  {
    if (g != null) {
      removeView(g);
    }
    g = paramScrollingTabContainerView;
    if (paramScrollingTabContainerView != null)
    {
      addView(paramScrollingTabContainerView);
      ViewGroup.LayoutParams localLayoutParams = paramScrollingTabContainerView.getLayoutParams();
      width = -1;
      height = -2;
      paramScrollingTabContainerView.setAllowCollapse(false);
    }
  }
  
  public void setTransitioning(boolean paramBoolean)
  {
    f = paramBoolean;
    int k;
    if (paramBoolean) {
      k = 393216;
    } else {
      k = 262144;
    }
    setDescendantFocusability(k);
  }
  
  public void setVisibility(int paramInt)
  {
    super.setVisibility(paramInt);
    boolean bool;
    if (paramInt == 0) {
      bool = true;
    } else {
      bool = false;
    }
    if (a != null) {
      a.setVisible(bool, false);
    }
    if (b != null) {
      b.setVisible(bool, false);
    }
    if (c != null) {
      c.setVisible(bool, false);
    }
  }
  
  public ActionMode startActionModeForChild(View paramView, ActionMode.Callback paramCallback)
  {
    return null;
  }
  
  public ActionMode startActionModeForChild(View paramView, ActionMode.Callback paramCallback, int paramInt)
  {
    if (paramInt != 0) {
      return super.startActionModeForChild(paramView, paramCallback, paramInt);
    }
    return null;
  }
  
  protected boolean verifyDrawable(Drawable paramDrawable)
  {
    return ((paramDrawable == a) && (!d)) || ((paramDrawable == b) && (e)) || ((paramDrawable == c) && (d)) || (super.verifyDrawable(paramDrawable));
  }
}
