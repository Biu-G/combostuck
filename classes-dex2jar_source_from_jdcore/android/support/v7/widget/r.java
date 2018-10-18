package android.support.v7.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.support.annotation.NonNull;
import android.support.v4.graphics.drawable.DrawableCompat;
import android.support.v4.view.ViewPropertyAnimatorCompat;
import android.support.v4.widget.ListViewAutoScrollHelper;
import android.support.v7.appcompat.R.attr;
import android.support.v7.graphics.drawable.DrawableWrapper;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup.LayoutParams;
import android.widget.AbsListView;
import android.widget.ListAdapter;
import android.widget.ListView;
import java.lang.reflect.Field;

class r
  extends ListView
{
  public static final int INVALID_POSITION = -1;
  public static final int NO_POSITION = -1;
  b a;
  private final Rect b = new Rect();
  private int c = 0;
  private int d = 0;
  private int e = 0;
  private int f = 0;
  private int g;
  private Field h;
  private a i;
  private boolean j;
  private boolean k;
  private boolean l;
  private ViewPropertyAnimatorCompat m;
  private ListViewAutoScrollHelper n;
  
  r(Context paramContext, boolean paramBoolean)
  {
    super(paramContext, null, R.attr.dropDownListViewStyle);
    k = paramBoolean;
    setCacheColorHint(0);
    try
    {
      h = AbsListView.class.getDeclaredField("mIsChildViewEnabled");
      h.setAccessible(true);
      return;
    }
    catch (NoSuchFieldException paramContext)
    {
      paramContext.printStackTrace();
    }
  }
  
  private void a()
  {
    Drawable localDrawable = getSelector();
    if ((localDrawable != null) && (c()) && (isPressed())) {
      localDrawable.setState(getDrawableState());
    }
  }
  
  private void a(int paramInt, View paramView)
  {
    Drawable localDrawable = getSelector();
    boolean bool = true;
    int i1;
    if ((localDrawable != null) && (paramInt != -1)) {
      i1 = 1;
    } else {
      i1 = 0;
    }
    if (i1 != 0) {
      localDrawable.setVisible(false, false);
    }
    b(paramInt, paramView);
    if (i1 != 0)
    {
      paramView = b;
      float f1 = paramView.exactCenterX();
      float f2 = paramView.exactCenterY();
      if (getVisibility() != 0) {
        bool = false;
      }
      localDrawable.setVisible(bool, false);
      DrawableCompat.setHotspot(localDrawable, f1, f2);
    }
  }
  
  private void a(int paramInt, View paramView, float paramFloat1, float paramFloat2)
  {
    a(paramInt, paramView);
    paramView = getSelector();
    if ((paramView != null) && (paramInt != -1)) {
      DrawableCompat.setHotspot(paramView, paramFloat1, paramFloat2);
    }
  }
  
  private void a(Canvas paramCanvas)
  {
    if (!b.isEmpty())
    {
      Drawable localDrawable = getSelector();
      if (localDrawable != null)
      {
        localDrawable.setBounds(b);
        localDrawable.draw(paramCanvas);
      }
    }
  }
  
  private void a(View paramView, int paramInt)
  {
    performItemClick(paramView, paramInt, getItemIdAtPosition(paramInt));
  }
  
  private void a(View paramView, int paramInt, float paramFloat1, float paramFloat2)
  {
    l = true;
    if (Build.VERSION.SDK_INT >= 21) {
      drawableHotspotChanged(paramFloat1, paramFloat2);
    }
    if (!isPressed()) {
      setPressed(true);
    }
    layoutChildren();
    if (g != -1)
    {
      View localView = getChildAt(g - getFirstVisiblePosition());
      if ((localView != null) && (localView != paramView) && (localView.isPressed())) {
        localView.setPressed(false);
      }
    }
    g = paramInt;
    float f1 = paramView.getLeft();
    float f2 = paramView.getTop();
    if (Build.VERSION.SDK_INT >= 21) {
      paramView.drawableHotspotChanged(paramFloat1 - f1, paramFloat2 - f2);
    }
    if (!paramView.isPressed()) {
      paramView.setPressed(true);
    }
    a(paramInt, paramView, paramFloat1, paramFloat2);
    setSelectorEnabled(false);
    refreshDrawableState();
  }
  
  private void b()
  {
    l = false;
    setPressed(false);
    drawableStateChanged();
    View localView = getChildAt(g - getFirstVisiblePosition());
    if (localView != null) {
      localView.setPressed(false);
    }
    if (m != null)
    {
      m.cancel();
      m = null;
    }
  }
  
  private void b(int paramInt, View paramView)
  {
    Rect localRect = b;
    localRect.set(paramView.getLeft(), paramView.getTop(), paramView.getRight(), paramView.getBottom());
    left -= c;
    top -= d;
    right += e;
    bottom += f;
    try
    {
      boolean bool = h.getBoolean(this);
      if (paramView.isEnabled() != bool)
      {
        h.set(this, Boolean.valueOf(bool ^ true));
        if (paramInt != -1)
        {
          refreshDrawableState();
          return;
        }
      }
    }
    catch (IllegalAccessException paramView)
    {
      paramView.printStackTrace();
    }
  }
  
  private boolean c()
  {
    return l;
  }
  
  private void setSelectorEnabled(boolean paramBoolean)
  {
    if (i != null) {
      i.a(paramBoolean);
    }
  }
  
  protected void dispatchDraw(Canvas paramCanvas)
  {
    a(paramCanvas);
    super.dispatchDraw(paramCanvas);
  }
  
  protected void drawableStateChanged()
  {
    if (a != null) {
      return;
    }
    super.drawableStateChanged();
    setSelectorEnabled(true);
    a();
  }
  
  public boolean hasFocus()
  {
    return (k) || (super.hasFocus());
  }
  
  public boolean hasWindowFocus()
  {
    return (k) || (super.hasWindowFocus());
  }
  
  public boolean isFocused()
  {
    return (k) || (super.isFocused());
  }
  
  public boolean isInTouchMode()
  {
    return ((k) && (j)) || (super.isInTouchMode());
  }
  
  public int lookForSelectablePosition(int paramInt, boolean paramBoolean)
  {
    ListAdapter localListAdapter = getAdapter();
    if (localListAdapter != null)
    {
      if (isInTouchMode()) {
        return -1;
      }
      int i2 = localListAdapter.getCount();
      if (!getAdapter().areAllItemsEnabled())
      {
        int i1;
        if (paramBoolean)
        {
          paramInt = Math.max(0, paramInt);
          for (;;)
          {
            i1 = paramInt;
            if (paramInt >= i2) {
              break;
            }
            i1 = paramInt;
            if (localListAdapter.isEnabled(paramInt)) {
              break;
            }
            paramInt += 1;
          }
        }
        paramInt = Math.min(paramInt, i2 - 1);
        for (;;)
        {
          i1 = paramInt;
          if (paramInt < 0) {
            break;
          }
          i1 = paramInt;
          if (localListAdapter.isEnabled(paramInt)) {
            break;
          }
          paramInt -= 1;
        }
        if (i1 >= 0)
        {
          if (i1 >= i2) {
            return -1;
          }
          return i1;
        }
        return -1;
      }
      if (paramInt >= 0)
      {
        if (paramInt >= i2) {
          return -1;
        }
        return paramInt;
      }
      return -1;
    }
    return -1;
  }
  
  public int measureHeightOfChildrenCompat(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5)
  {
    paramInt2 = getListPaddingTop();
    paramInt3 = getListPaddingBottom();
    getListPaddingLeft();
    getListPaddingRight();
    int i1 = getDividerHeight();
    Object localObject = getDivider();
    ListAdapter localListAdapter = getAdapter();
    if (localListAdapter == null) {
      return paramInt2 + paramInt3;
    }
    if ((i1 <= 0) || (localObject == null)) {
      i1 = 0;
    }
    int i6 = localListAdapter.getCount();
    paramInt3 = paramInt2 + paramInt3;
    localObject = null;
    int i2 = 0;
    int i4 = 0;
    int i5;
    for (paramInt2 = 0; i2 < i6; paramInt2 = i5)
    {
      i5 = localListAdapter.getItemViewType(i2);
      int i3 = i4;
      if (i5 != i4)
      {
        localObject = null;
        i3 = i5;
      }
      View localView = localListAdapter.getView(i2, (View)localObject, this);
      ViewGroup.LayoutParams localLayoutParams = localView.getLayoutParams();
      localObject = localLayoutParams;
      if (localLayoutParams == null)
      {
        localObject = generateDefaultLayoutParams();
        localView.setLayoutParams((ViewGroup.LayoutParams)localObject);
      }
      if (height > 0) {
        i4 = View.MeasureSpec.makeMeasureSpec(height, 1073741824);
      } else {
        i4 = View.MeasureSpec.makeMeasureSpec(0, 0);
      }
      localView.measure(paramInt1, i4);
      localView.forceLayout();
      i4 = paramInt3;
      if (i2 > 0) {
        i4 = paramInt3 + i1;
      }
      paramInt3 = i4 + localView.getMeasuredHeight();
      if (paramInt3 >= paramInt4)
      {
        paramInt1 = paramInt4;
        if (paramInt5 >= 0)
        {
          paramInt1 = paramInt4;
          if (i2 > paramInt5)
          {
            paramInt1 = paramInt4;
            if (paramInt2 > 0)
            {
              paramInt1 = paramInt4;
              if (paramInt3 != paramInt4) {
                paramInt1 = paramInt2;
              }
            }
          }
        }
        return paramInt1;
      }
      i5 = paramInt2;
      if (paramInt5 >= 0)
      {
        i5 = paramInt2;
        if (i2 >= paramInt5) {
          i5 = paramInt3;
        }
      }
      i2 += 1;
      i4 = i3;
      localObject = localView;
    }
    return paramInt3;
  }
  
  protected void onDetachedFromWindow()
  {
    a = null;
    super.onDetachedFromWindow();
  }
  
  public boolean onForwardedEvent(MotionEvent paramMotionEvent, int paramInt)
  {
    int i1 = paramMotionEvent.getActionMasked();
    switch (i1)
    {
    }
    boolean bool;
    for (;;)
    {
      paramInt = 0;
      bool = true;
      break;
      label57:
      do
      {
        paramInt = 0;
        bool = false;
        break;
        bool = true;
        break label57;
        bool = false;
        i2 = paramMotionEvent.findPointerIndex(paramInt);
      } while (i2 < 0);
      paramInt = (int)paramMotionEvent.getX(i2);
      int i2 = (int)paramMotionEvent.getY(i2);
      int i3 = pointToPosition(paramInt, i2);
      if (i3 == -1)
      {
        paramInt = 1;
        break;
      }
      View localView = getChildAt(i3 - getFirstVisiblePosition());
      a(localView, i3, paramInt, i2);
      if (i1 == 1) {
        a(localView, i3);
      }
    }
    if ((!bool) || (paramInt != 0)) {
      b();
    }
    if (bool)
    {
      if (n == null) {
        n = new ListViewAutoScrollHelper(this);
      }
      n.setEnabled(true);
      n.onTouch(this, paramMotionEvent);
      return bool;
    }
    if (n != null) {
      n.setEnabled(false);
    }
    return bool;
  }
  
  public boolean onHoverEvent(@NonNull MotionEvent paramMotionEvent)
  {
    if (Build.VERSION.SDK_INT < 26) {
      return super.onHoverEvent(paramMotionEvent);
    }
    int i1 = paramMotionEvent.getActionMasked();
    if ((i1 == 10) && (a == null))
    {
      a = new b();
      a.b();
    }
    boolean bool = super.onHoverEvent(paramMotionEvent);
    if ((i1 != 9) && (i1 != 7))
    {
      setSelection(-1);
      return bool;
    }
    i1 = pointToPosition((int)paramMotionEvent.getX(), (int)paramMotionEvent.getY());
    if ((i1 != -1) && (i1 != getSelectedItemPosition()))
    {
      paramMotionEvent = getChildAt(i1 - getFirstVisiblePosition());
      if (paramMotionEvent.isEnabled()) {
        setSelectionFromTop(i1, paramMotionEvent.getTop() - getTop());
      }
      a();
    }
    return bool;
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    if (paramMotionEvent.getAction() == 0) {
      g = pointToPosition((int)paramMotionEvent.getX(), (int)paramMotionEvent.getY());
    }
    if (a != null) {
      a.a();
    }
    return super.onTouchEvent(paramMotionEvent);
  }
  
  void setListSelectionHidden(boolean paramBoolean)
  {
    j = paramBoolean;
  }
  
  public void setSelector(Drawable paramDrawable)
  {
    if (paramDrawable != null) {
      localObject = new a(paramDrawable);
    } else {
      localObject = null;
    }
    i = ((a)localObject);
    super.setSelector(i);
    Object localObject = new Rect();
    if (paramDrawable != null) {
      paramDrawable.getPadding((Rect)localObject);
    }
    c = left;
    d = top;
    e = right;
    f = bottom;
  }
  
  private static class a
    extends DrawableWrapper
  {
    private boolean a = true;
    
    a(Drawable paramDrawable)
    {
      super();
    }
    
    void a(boolean paramBoolean)
    {
      a = paramBoolean;
    }
    
    public void draw(Canvas paramCanvas)
    {
      if (a) {
        super.draw(paramCanvas);
      }
    }
    
    public void setHotspot(float paramFloat1, float paramFloat2)
    {
      if (a) {
        super.setHotspot(paramFloat1, paramFloat2);
      }
    }
    
    public void setHotspotBounds(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
    {
      if (a) {
        super.setHotspotBounds(paramInt1, paramInt2, paramInt3, paramInt4);
      }
    }
    
    public boolean setState(int[] paramArrayOfInt)
    {
      if (a) {
        return super.setState(paramArrayOfInt);
      }
      return false;
    }
    
    public boolean setVisible(boolean paramBoolean1, boolean paramBoolean2)
    {
      if (a) {
        return super.setVisible(paramBoolean1, paramBoolean2);
      }
      return false;
    }
  }
  
  private class b
    implements Runnable
  {
    b() {}
    
    public void a()
    {
      a = null;
      removeCallbacks(this);
    }
    
    public void b()
    {
      post(this);
    }
    
    public void run()
    {
      a = null;
      drawableStateChanged();
    }
  }
}
