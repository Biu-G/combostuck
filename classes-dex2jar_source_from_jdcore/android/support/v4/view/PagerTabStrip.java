package android.support.v4.view;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.support.annotation.ColorInt;
import android.support.annotation.ColorRes;
import android.support.annotation.DrawableRes;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v4.content.ContextCompat;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewConfiguration;
import android.widget.TextView;

public class PagerTabStrip
  extends PagerTitleStrip
{
  private int g = this.f;
  private int h;
  private int i;
  private int j;
  private int k;
  private int l;
  private final Paint m = new Paint();
  private final Rect n = new Rect();
  private int o = 255;
  private boolean p = false;
  private boolean q = false;
  private int r;
  private boolean s;
  private float t;
  private float u;
  private int v;
  
  public PagerTabStrip(@NonNull Context paramContext)
  {
    this(paramContext, null);
  }
  
  public PagerTabStrip(@NonNull Context paramContext, @Nullable AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    m.setColor(g);
    float f = getResourcesgetDisplayMetricsdensity;
    h = ((int)(3.0F * f + 0.5F));
    i = ((int)(6.0F * f + 0.5F));
    j = ((int)(64.0F * f));
    l = ((int)(16.0F * f + 0.5F));
    r = ((int)(1.0F * f + 0.5F));
    k = ((int)(f * 32.0F + 0.5F));
    v = ViewConfiguration.get(paramContext).getScaledTouchSlop();
    setPadding(getPaddingLeft(), getPaddingTop(), getPaddingRight(), getPaddingBottom());
    setTextSpacing(getTextSpacing());
    setWillNotDraw(false);
    b.setFocusable(true);
    b.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        a.setCurrentItem(a.getCurrentItem() - 1);
      }
    });
    d.setFocusable(true);
    d.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        a.setCurrentItem(a.getCurrentItem() + 1);
      }
    });
    if (getBackground() == null) {
      p = true;
    }
  }
  
  void a(int paramInt, float paramFloat, boolean paramBoolean)
  {
    Rect localRect = n;
    int i1 = getHeight();
    int i2 = c.getLeft();
    int i3 = l;
    int i4 = c.getRight();
    int i5 = l;
    int i6 = i1 - h;
    localRect.set(i2 - i3, i6, i4 + i5, i1);
    super.a(paramInt, paramFloat, paramBoolean);
    o = ((int)(Math.abs(paramFloat - 0.5F) * 2.0F * 255.0F));
    localRect.union(c.getLeft() - l, i6, c.getRight() + l, i1);
    invalidate(localRect);
  }
  
  public boolean getDrawFullUnderline()
  {
    return p;
  }
  
  int getMinHeight()
  {
    return Math.max(super.getMinHeight(), k);
  }
  
  @ColorInt
  public int getTabIndicatorColor()
  {
    return g;
  }
  
  protected void onDraw(Canvas paramCanvas)
  {
    super.onDraw(paramCanvas);
    int i1 = getHeight();
    int i2 = c.getLeft();
    int i3 = l;
    int i4 = c.getRight();
    int i5 = l;
    int i6 = h;
    m.setColor(o << 24 | g & 0xFFFFFF);
    float f1 = i2 - i3;
    float f2 = i1 - i6;
    float f3 = i4 + i5;
    float f4 = i1;
    paramCanvas.drawRect(f1, f2, f3, f4, m);
    if (p)
    {
      m.setColor(0xFF000000 | g & 0xFFFFFF);
      paramCanvas.drawRect(getPaddingLeft(), i1 - r, getWidth() - getPaddingRight(), f4, m);
    }
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    int i1 = paramMotionEvent.getAction();
    if ((i1 != 0) && (s)) {
      return false;
    }
    float f1 = paramMotionEvent.getX();
    float f2 = paramMotionEvent.getY();
    switch (i1)
    {
    default: 
      return true;
    case 2: 
      if ((Math.abs(f1 - t) > v) || (Math.abs(f2 - u) > v))
      {
        s = true;
        return true;
      }
      break;
    case 1: 
      if (f1 < c.getLeft() - l)
      {
        a.setCurrentItem(a.getCurrentItem() - 1);
        return true;
      }
      if (f1 > c.getRight() + l)
      {
        a.setCurrentItem(a.getCurrentItem() + 1);
        return true;
      }
      break;
    case 0: 
      t = f1;
      u = f2;
      s = false;
    }
    return true;
  }
  
  public void setBackgroundColor(@ColorInt int paramInt)
  {
    super.setBackgroundColor(paramInt);
    if (!q)
    {
      boolean bool;
      if ((paramInt & 0xFF000000) == 0) {
        bool = true;
      } else {
        bool = false;
      }
      p = bool;
    }
  }
  
  public void setBackgroundDrawable(Drawable paramDrawable)
  {
    super.setBackgroundDrawable(paramDrawable);
    if (!q)
    {
      boolean bool;
      if (paramDrawable == null) {
        bool = true;
      } else {
        bool = false;
      }
      p = bool;
    }
  }
  
  public void setBackgroundResource(@DrawableRes int paramInt)
  {
    super.setBackgroundResource(paramInt);
    if (!q)
    {
      boolean bool;
      if (paramInt == 0) {
        bool = true;
      } else {
        bool = false;
      }
      p = bool;
    }
  }
  
  public void setDrawFullUnderline(boolean paramBoolean)
  {
    p = paramBoolean;
    q = true;
    invalidate();
  }
  
  public void setPadding(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    int i1 = paramInt4;
    if (paramInt4 < i) {
      i1 = i;
    }
    super.setPadding(paramInt1, paramInt2, paramInt3, i1);
  }
  
  public void setTabIndicatorColor(@ColorInt int paramInt)
  {
    g = paramInt;
    m.setColor(g);
    invalidate();
  }
  
  public void setTabIndicatorColorResource(@ColorRes int paramInt)
  {
    setTabIndicatorColor(ContextCompat.getColor(getContext(), paramInt));
  }
  
  public void setTextSpacing(int paramInt)
  {
    int i1 = paramInt;
    if (paramInt < j) {
      i1 = j;
    }
    super.setTextSpacing(i1);
  }
}
