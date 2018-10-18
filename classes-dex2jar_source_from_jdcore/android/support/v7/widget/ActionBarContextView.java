package android.support.v7.widget;

import android.content.Context;
import android.support.annotation.RestrictTo;
import android.support.v4.view.ViewCompat;
import android.support.v7.appcompat.R.attr;
import android.support.v7.appcompat.R.id;
import android.support.v7.appcompat.R.layout;
import android.support.v7.appcompat.R.styleable;
import android.support.v7.view.ActionMode;
import android.support.v7.view.menu.MenuBuilder;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.View.OnClickListener;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewGroup.MarginLayoutParams;
import android.view.accessibility.AccessibilityEvent;
import android.widget.LinearLayout;
import android.widget.TextView;

@RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
public class ActionBarContextView
  extends AbsActionBarView
{
  private CharSequence a;
  private CharSequence b;
  private View c;
  private View d;
  private LinearLayout e;
  private TextView f;
  private TextView g;
  private int h;
  private int i;
  private boolean j;
  private int k;
  
  public ActionBarContextView(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public ActionBarContextView(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, R.attr.actionModeStyle);
  }
  
  public ActionBarContextView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    paramContext = TintTypedArray.obtainStyledAttributes(paramContext, paramAttributeSet, R.styleable.ActionMode, paramInt, 0);
    ViewCompat.setBackground(this, paramContext.getDrawable(R.styleable.ActionMode_background));
    h = paramContext.getResourceId(R.styleable.ActionMode_titleTextStyle, 0);
    i = paramContext.getResourceId(R.styleable.ActionMode_subtitleTextStyle, 0);
    mContentHeight = paramContext.getLayoutDimension(R.styleable.ActionMode_height, 0);
    k = paramContext.getResourceId(R.styleable.ActionMode_closeItemLayout, R.layout.abc_action_mode_close_item_material);
    paramContext.recycle();
  }
  
  private void a()
  {
    if (e == null)
    {
      LayoutInflater.from(getContext()).inflate(R.layout.abc_action_bar_title_item, this);
      e = ((LinearLayout)getChildAt(getChildCount() - 1));
      f = ((TextView)e.findViewById(R.id.action_bar_title));
      g = ((TextView)e.findViewById(R.id.action_bar_subtitle));
      if (h != 0) {
        f.setTextAppearance(getContext(), h);
      }
      if (i != 0) {
        g.setTextAppearance(getContext(), i);
      }
    }
    f.setText(a);
    g.setText(b);
    boolean bool2 = TextUtils.isEmpty(a);
    boolean bool1 = TextUtils.isEmpty(b) ^ true;
    Object localObject = g;
    int n = 8;
    int m;
    if (bool1) {
      m = 0;
    } else {
      m = 8;
    }
    ((TextView)localObject).setVisibility(m);
    localObject = e;
    if (!(bool2 ^ true))
    {
      m = n;
      if (!bool1) {}
    }
    else
    {
      m = 0;
    }
    ((LinearLayout)localObject).setVisibility(m);
    if (e.getParent() == null) {
      addView(e);
    }
  }
  
  public void closeMode()
  {
    if (c == null)
    {
      killMode();
      return;
    }
  }
  
  protected ViewGroup.LayoutParams generateDefaultLayoutParams()
  {
    return new ViewGroup.MarginLayoutParams(-1, -2);
  }
  
  public ViewGroup.LayoutParams generateLayoutParams(AttributeSet paramAttributeSet)
  {
    return new ViewGroup.MarginLayoutParams(getContext(), paramAttributeSet);
  }
  
  public CharSequence getSubtitle()
  {
    return b;
  }
  
  public CharSequence getTitle()
  {
    return a;
  }
  
  public boolean hideOverflowMenu()
  {
    if (mActionMenuPresenter != null) {
      return mActionMenuPresenter.c();
    }
    return false;
  }
  
  public void initForMode(final ActionMode paramActionMode)
  {
    if (c == null)
    {
      c = LayoutInflater.from(getContext()).inflate(k, this, false);
      addView(c);
    }
    else if (c.getParent() == null)
    {
      addView(c);
    }
    c.findViewById(R.id.action_mode_close_button).setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        paramActionMode.finish();
      }
    });
    paramActionMode = (MenuBuilder)paramActionMode.getMenu();
    if (mActionMenuPresenter != null) {
      mActionMenuPresenter.d();
    }
    mActionMenuPresenter = new b(getContext());
    mActionMenuPresenter.a(true);
    ViewGroup.LayoutParams localLayoutParams = new ViewGroup.LayoutParams(-2, -1);
    paramActionMode.addMenuPresenter(mActionMenuPresenter, mPopupContext);
    mMenuView = ((ActionMenuView)mActionMenuPresenter.getMenuView(this));
    ViewCompat.setBackground(mMenuView, null);
    addView(mMenuView, localLayoutParams);
  }
  
  public boolean isOverflowMenuShowing()
  {
    if (mActionMenuPresenter != null) {
      return mActionMenuPresenter.f();
    }
    return false;
  }
  
  public boolean isTitleOptional()
  {
    return j;
  }
  
  public void killMode()
  {
    removeAllViews();
    d = null;
    mMenuView = null;
  }
  
  public void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
    if (mActionMenuPresenter != null)
    {
      mActionMenuPresenter.c();
      mActionMenuPresenter.e();
    }
  }
  
  public void onInitializeAccessibilityEvent(AccessibilityEvent paramAccessibilityEvent)
  {
    if (paramAccessibilityEvent.getEventType() == 32)
    {
      paramAccessibilityEvent.setSource(this);
      paramAccessibilityEvent.setClassName(getClass().getName());
      paramAccessibilityEvent.setPackageName(getContext().getPackageName());
      paramAccessibilityEvent.setContentDescription(a);
      return;
    }
    super.onInitializeAccessibilityEvent(paramAccessibilityEvent);
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    paramBoolean = ViewUtils.isLayoutRtl(this);
    int m;
    if (paramBoolean) {
      m = paramInt3 - paramInt1 - getPaddingRight();
    } else {
      m = getPaddingLeft();
    }
    int n = getPaddingTop();
    int i1 = paramInt4 - paramInt2 - getPaddingTop() - getPaddingBottom();
    if ((c != null) && (c.getVisibility() != 8))
    {
      ViewGroup.MarginLayoutParams localMarginLayoutParams = (ViewGroup.MarginLayoutParams)c.getLayoutParams();
      if (paramBoolean) {
        paramInt2 = rightMargin;
      } else {
        paramInt2 = leftMargin;
      }
      if (paramBoolean) {
        paramInt4 = leftMargin;
      } else {
        paramInt4 = rightMargin;
      }
      paramInt2 = next(m, paramInt2, paramBoolean);
      paramInt2 = next(paramInt2 + positionChild(c, paramInt2, n, i1, paramBoolean), paramInt4, paramBoolean);
    }
    else
    {
      paramInt2 = m;
    }
    paramInt4 = paramInt2;
    if (e != null)
    {
      paramInt4 = paramInt2;
      if (d == null)
      {
        paramInt4 = paramInt2;
        if (e.getVisibility() != 8) {
          paramInt4 = paramInt2 + positionChild(e, paramInt2, n, i1, paramBoolean);
        }
      }
    }
    if (d != null) {
      positionChild(d, paramInt4, n, i1, paramBoolean);
    }
    if (paramBoolean) {
      paramInt1 = getPaddingLeft();
    } else {
      paramInt1 = paramInt3 - paramInt1 - getPaddingRight();
    }
    if (mMenuView != null) {
      positionChild(mMenuView, paramInt1, n, i1, paramBoolean ^ true);
    }
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    int m = View.MeasureSpec.getMode(paramInt1);
    int i1 = 1073741824;
    if (m == 1073741824)
    {
      if (View.MeasureSpec.getMode(paramInt2) != 0)
      {
        int i4 = View.MeasureSpec.getSize(paramInt1);
        if (mContentHeight > 0) {
          m = mContentHeight;
        } else {
          m = View.MeasureSpec.getSize(paramInt2);
        }
        int i5 = getPaddingTop() + getPaddingBottom();
        paramInt1 = i4 - getPaddingLeft() - getPaddingRight();
        int i3 = m - i5;
        int n = View.MeasureSpec.makeMeasureSpec(i3, Integer.MIN_VALUE);
        localObject = c;
        int i2 = 0;
        paramInt2 = paramInt1;
        if (localObject != null)
        {
          paramInt1 = measureChildView(c, paramInt1, n, 0);
          localObject = (ViewGroup.MarginLayoutParams)c.getLayoutParams();
          paramInt2 = paramInt1 - (leftMargin + rightMargin);
        }
        paramInt1 = paramInt2;
        if (mMenuView != null)
        {
          paramInt1 = paramInt2;
          if (mMenuView.getParent() == this) {
            paramInt1 = measureChildView(mMenuView, paramInt2, n, 0);
          }
        }
        paramInt2 = paramInt1;
        if (e != null)
        {
          paramInt2 = paramInt1;
          if (d == null) {
            if (j)
            {
              paramInt2 = View.MeasureSpec.makeMeasureSpec(0, 0);
              e.measure(paramInt2, n);
              int i6 = e.getMeasuredWidth();
              if (i6 <= paramInt1) {
                n = 1;
              } else {
                n = 0;
              }
              paramInt2 = paramInt1;
              if (n != 0) {
                paramInt2 = paramInt1 - i6;
              }
              localObject = e;
              if (n != 0) {
                paramInt1 = 0;
              } else {
                paramInt1 = 8;
              }
              ((LinearLayout)localObject).setVisibility(paramInt1);
            }
            else
            {
              paramInt2 = measureChildView(e, paramInt1, n, 0);
            }
          }
        }
        if (d != null)
        {
          localObject = d.getLayoutParams();
          if (width != -2) {
            paramInt1 = 1073741824;
          } else {
            paramInt1 = Integer.MIN_VALUE;
          }
          n = paramInt2;
          if (width >= 0) {
            n = Math.min(width, paramInt2);
          }
          if (height != -2) {
            paramInt2 = i1;
          } else {
            paramInt2 = Integer.MIN_VALUE;
          }
          i1 = i3;
          if (height >= 0) {
            i1 = Math.min(height, i3);
          }
          d.measure(View.MeasureSpec.makeMeasureSpec(n, paramInt1), View.MeasureSpec.makeMeasureSpec(i1, paramInt2));
        }
        if (mContentHeight <= 0)
        {
          i1 = getChildCount();
          paramInt2 = 0;
          paramInt1 = i2;
          while (paramInt1 < i1)
          {
            n = getChildAt(paramInt1).getMeasuredHeight() + i5;
            m = paramInt2;
            if (n > paramInt2) {
              m = n;
            }
            paramInt1 += 1;
            paramInt2 = m;
          }
          setMeasuredDimension(i4, paramInt2);
          return;
        }
        setMeasuredDimension(i4, m);
        return;
      }
      localObject = new StringBuilder();
      ((StringBuilder)localObject).append(getClass().getSimpleName());
      ((StringBuilder)localObject).append(" can only be used ");
      ((StringBuilder)localObject).append("with android:layout_height=\"wrap_content\"");
      throw new IllegalStateException(((StringBuilder)localObject).toString());
    }
    Object localObject = new StringBuilder();
    ((StringBuilder)localObject).append(getClass().getSimpleName());
    ((StringBuilder)localObject).append(" can only be used ");
    ((StringBuilder)localObject).append("with android:layout_width=\"match_parent\" (or fill_parent)");
    throw new IllegalStateException(((StringBuilder)localObject).toString());
  }
  
  public void setContentHeight(int paramInt)
  {
    mContentHeight = paramInt;
  }
  
  public void setCustomView(View paramView)
  {
    if (d != null) {
      removeView(d);
    }
    d = paramView;
    if ((paramView != null) && (e != null))
    {
      removeView(e);
      e = null;
    }
    if (paramView != null) {
      addView(paramView);
    }
    requestLayout();
  }
  
  public void setSubtitle(CharSequence paramCharSequence)
  {
    b = paramCharSequence;
    a();
  }
  
  public void setTitle(CharSequence paramCharSequence)
  {
    a = paramCharSequence;
    a();
  }
  
  public void setTitleOptional(boolean paramBoolean)
  {
    if (paramBoolean != j) {
      requestLayout();
    }
    j = paramBoolean;
  }
  
  public boolean shouldDelayChildPressedState()
  {
    return false;
  }
  
  public boolean showOverflowMenu()
  {
    if (mActionMenuPresenter != null) {
      return mActionMenuPresenter.b();
    }
    return false;
  }
}
