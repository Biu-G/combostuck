package android.support.v7.view.menu;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Parcelable;
import android.support.annotation.RestrictTo;
import android.support.v7.appcompat.R.styleable;
import android.support.v7.widget.ActionMenuView.ActionMenuChildView;
import android.support.v7.widget.AppCompatTextView;
import android.support.v7.widget.ForwardingListener;
import android.support.v7.widget.TooltipCompat;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.View.OnClickListener;

@RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
public class ActionMenuItemView
  extends AppCompatTextView
  implements MenuView.ItemView, ActionMenuView.ActionMenuChildView, View.OnClickListener
{
  MenuItemImpl a;
  MenuBuilder.ItemInvoker b;
  PopupCallback c;
  private CharSequence d;
  private Drawable e;
  private ForwardingListener f;
  private boolean g;
  private boolean h;
  private int i;
  private int j;
  private int k;
  
  public ActionMenuItemView(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public ActionMenuItemView(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }
  
  public ActionMenuItemView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    Resources localResources = paramContext.getResources();
    g = a();
    paramContext = paramContext.obtainStyledAttributes(paramAttributeSet, R.styleable.ActionMenuItemView, paramInt, 0);
    i = paramContext.getDimensionPixelSize(R.styleable.ActionMenuItemView_android_minWidth, 0);
    paramContext.recycle();
    k = ((int)(getDisplayMetricsdensity * 32.0F + 0.5F));
    setOnClickListener(this);
    j = -1;
    setSaveEnabled(false);
  }
  
  private boolean a()
  {
    Configuration localConfiguration = getContext().getResources().getConfiguration();
    int m = screenWidthDp;
    int n = screenHeightDp;
    return (m >= 480) || ((m >= 640) && (n >= 480)) || (orientation == 2);
  }
  
  private void b()
  {
    boolean bool = TextUtils.isEmpty(d);
    int n = 1;
    int m = n;
    if (e != null)
    {
      if (a.showsTextAsAction())
      {
        m = n;
        if (g) {
          break label52;
        }
        if (h)
        {
          m = n;
          break label52;
        }
      }
      m = 0;
    }
    label52:
    m = (bool ^ true) & m;
    Object localObject2 = null;
    if (m != 0) {
      localObject1 = d;
    } else {
      localObject1 = null;
    }
    setText((CharSequence)localObject1);
    Object localObject1 = a.getContentDescription();
    if (TextUtils.isEmpty((CharSequence)localObject1))
    {
      if (m != 0) {
        localObject1 = null;
      } else {
        localObject1 = a.getTitle();
      }
      setContentDescription((CharSequence)localObject1);
    }
    else
    {
      setContentDescription((CharSequence)localObject1);
    }
    localObject1 = a.getTooltipText();
    if (TextUtils.isEmpty((CharSequence)localObject1))
    {
      if (m != 0) {
        localObject1 = localObject2;
      } else {
        localObject1 = a.getTitle();
      }
      TooltipCompat.setTooltipText(this, (CharSequence)localObject1);
      return;
    }
    TooltipCompat.setTooltipText(this, (CharSequence)localObject1);
  }
  
  public MenuItemImpl getItemData()
  {
    return a;
  }
  
  public boolean hasText()
  {
    return TextUtils.isEmpty(getText()) ^ true;
  }
  
  public void initialize(MenuItemImpl paramMenuItemImpl, int paramInt)
  {
    a = paramMenuItemImpl;
    setIcon(paramMenuItemImpl.getIcon());
    setTitle(paramMenuItemImpl.a(this));
    setId(paramMenuItemImpl.getItemId());
    if (paramMenuItemImpl.isVisible()) {
      paramInt = 0;
    } else {
      paramInt = 8;
    }
    setVisibility(paramInt);
    setEnabled(paramMenuItemImpl.isEnabled());
    if ((paramMenuItemImpl.hasSubMenu()) && (f == null)) {
      f = new a();
    }
  }
  
  public boolean needsDividerAfter()
  {
    return hasText();
  }
  
  public boolean needsDividerBefore()
  {
    return (hasText()) && (a.getIcon() == null);
  }
  
  public void onClick(View paramView)
  {
    if (b != null) {
      b.invokeItem(a);
    }
  }
  
  public void onConfigurationChanged(Configuration paramConfiguration)
  {
    super.onConfigurationChanged(paramConfiguration);
    g = a();
    b();
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    boolean bool = hasText();
    if ((bool) && (j >= 0)) {
      super.setPadding(j, getPaddingTop(), getPaddingRight(), getPaddingBottom());
    }
    super.onMeasure(paramInt1, paramInt2);
    int m = View.MeasureSpec.getMode(paramInt1);
    paramInt1 = View.MeasureSpec.getSize(paramInt1);
    int n = getMeasuredWidth();
    if (m == Integer.MIN_VALUE) {
      paramInt1 = Math.min(paramInt1, i);
    } else {
      paramInt1 = i;
    }
    if ((m != 1073741824) && (i > 0) && (n < paramInt1)) {
      super.onMeasure(View.MeasureSpec.makeMeasureSpec(paramInt1, 1073741824), paramInt2);
    }
    if ((!bool) && (e != null)) {
      super.setPadding((getMeasuredWidth() - e.getBounds().width()) / 2, getPaddingTop(), getPaddingRight(), getPaddingBottom());
    }
  }
  
  public void onRestoreInstanceState(Parcelable paramParcelable)
  {
    super.onRestoreInstanceState(null);
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    if ((a.hasSubMenu()) && (f != null) && (f.onTouch(this, paramMotionEvent))) {
      return true;
    }
    return super.onTouchEvent(paramMotionEvent);
  }
  
  public boolean prefersCondensedTitle()
  {
    return true;
  }
  
  public void setCheckable(boolean paramBoolean) {}
  
  public void setChecked(boolean paramBoolean) {}
  
  public void setExpandedFormat(boolean paramBoolean)
  {
    if (h != paramBoolean)
    {
      h = paramBoolean;
      if (a != null) {
        a.actionFormatChanged();
      }
    }
  }
  
  public void setIcon(Drawable paramDrawable)
  {
    e = paramDrawable;
    if (paramDrawable != null)
    {
      int i2 = paramDrawable.getIntrinsicWidth();
      int i1 = paramDrawable.getIntrinsicHeight();
      int m = i2;
      int n = i1;
      float f1;
      if (i2 > k)
      {
        f1 = k / i2;
        m = k;
        n = (int)(i1 * f1);
      }
      i2 = m;
      i1 = n;
      if (n > k)
      {
        f1 = k / n;
        i1 = k;
        i2 = (int)(m * f1);
      }
      paramDrawable.setBounds(0, 0, i2, i1);
    }
    setCompoundDrawables(paramDrawable, null, null, null);
    b();
  }
  
  public void setItemInvoker(MenuBuilder.ItemInvoker paramItemInvoker)
  {
    b = paramItemInvoker;
  }
  
  public void setPadding(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    j = paramInt1;
    super.setPadding(paramInt1, paramInt2, paramInt3, paramInt4);
  }
  
  public void setPopupCallback(PopupCallback paramPopupCallback)
  {
    c = paramPopupCallback;
  }
  
  public void setShortcut(boolean paramBoolean, char paramChar) {}
  
  public void setTitle(CharSequence paramCharSequence)
  {
    d = paramCharSequence;
    b();
  }
  
  public boolean showsIcon()
  {
    return true;
  }
  
  public static abstract class PopupCallback
  {
    public PopupCallback() {}
    
    public abstract ShowableListMenu getPopup();
  }
  
  private class a
    extends ForwardingListener
  {
    public a()
    {
      super();
    }
    
    public ShowableListMenu getPopup()
    {
      if (c != null) {
        return c.getPopup();
      }
      return null;
    }
    
    protected boolean onForwardingStarted()
    {
      Object localObject = b;
      boolean bool2 = false;
      if ((localObject != null) && (b.invokeItem(a)))
      {
        localObject = getPopup();
        boolean bool1 = bool2;
        if (localObject != null)
        {
          bool1 = bool2;
          if (((ShowableListMenu)localObject).isShowing()) {
            bool1 = true;
          }
        }
        return bool1;
      }
      return false;
    }
  }
}
