package android.support.v7.widget;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.database.DataSetObserver;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.support.annotation.AttrRes;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.RestrictTo;
import android.support.annotation.StyleRes;
import android.support.v4.view.ViewCompat;
import android.support.v4.widget.PopupWindowCompat;
import android.support.v7.appcompat.R.attr;
import android.support.v7.appcompat.R.styleable;
import android.support.v7.view.menu.ShowableListMenu;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.KeyEvent;
import android.view.KeyEvent.DispatcherState;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.View.OnTouchListener;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.AbsListView;
import android.widget.AbsListView.OnScrollListener;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.AdapterView.OnItemSelectedListener;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.PopupWindow;
import android.widget.PopupWindow.OnDismissListener;
import java.lang.reflect.Method;

public class ListPopupWindow
  implements ShowableListMenu
{
  public static final int INPUT_METHOD_FROM_FOCUSABLE = 0;
  public static final int INPUT_METHOD_NEEDED = 1;
  public static final int INPUT_METHOD_NOT_NEEDED = 2;
  public static final int MATCH_PARENT = -1;
  public static final int POSITION_PROMPT_ABOVE = 0;
  public static final int POSITION_PROMPT_BELOW = 1;
  public static final int WRAP_CONTENT = -2;
  private static Method a;
  private static Method b;
  private static Method h;
  private Drawable A;
  private AdapterView.OnItemClickListener B;
  private AdapterView.OnItemSelectedListener C;
  private final d D = new d();
  private final c E = new c();
  private final a F = new a();
  private Runnable G;
  private final Rect H = new Rect();
  private Rect I;
  private boolean J;
  r c;
  int d = Integer.MAX_VALUE;
  final e e = new e();
  final Handler f;
  PopupWindow g;
  private Context i;
  private ListAdapter j;
  private int k = -2;
  private int l = -2;
  private int m;
  private int n;
  private int o = 1002;
  private boolean p;
  private boolean q = true;
  private boolean r;
  private boolean s;
  private int t = 0;
  private boolean u = false;
  private boolean v = false;
  private View w;
  private int x = 0;
  private DataSetObserver y;
  private View z;
  
  static
  {
    try
    {
      a = PopupWindow.class.getDeclaredMethod("setClipToScreenEnabled", new Class[] { Boolean.TYPE });
    }
    catch (NoSuchMethodException localNoSuchMethodException1)
    {
      for (;;) {}
    }
    Log.i("ListPopupWindow", "Could not find method setClipToScreenEnabled() on PopupWindow. Oh well.");
    try
    {
      b = PopupWindow.class.getDeclaredMethod("getMaxAvailableHeight", new Class[] { View.class, Integer.TYPE, Boolean.TYPE });
    }
    catch (NoSuchMethodException localNoSuchMethodException2)
    {
      for (;;) {}
    }
    Log.i("ListPopupWindow", "Could not find method getMaxAvailableHeight(View, int, boolean) on PopupWindow. Oh well.");
    try
    {
      h = PopupWindow.class.getDeclaredMethod("setEpicenterBounds", new Class[] { Rect.class });
      return;
    }
    catch (NoSuchMethodException localNoSuchMethodException3)
    {
      for (;;) {}
    }
    Log.i("ListPopupWindow", "Could not find method setEpicenterBounds(Rect) on PopupWindow. Oh well.");
  }
  
  public ListPopupWindow(@NonNull Context paramContext)
  {
    this(paramContext, null, R.attr.listPopupWindowStyle);
  }
  
  public ListPopupWindow(@NonNull Context paramContext, @Nullable AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, R.attr.listPopupWindowStyle);
  }
  
  public ListPopupWindow(@NonNull Context paramContext, @Nullable AttributeSet paramAttributeSet, @AttrRes int paramInt)
  {
    this(paramContext, paramAttributeSet, paramInt, 0);
  }
  
  public ListPopupWindow(@NonNull Context paramContext, @Nullable AttributeSet paramAttributeSet, @AttrRes int paramInt1, @StyleRes int paramInt2)
  {
    i = paramContext;
    f = new Handler(paramContext.getMainLooper());
    TypedArray localTypedArray = paramContext.obtainStyledAttributes(paramAttributeSet, R.styleable.ListPopupWindow, paramInt1, paramInt2);
    m = localTypedArray.getDimensionPixelOffset(R.styleable.ListPopupWindow_android_dropDownHorizontalOffset, 0);
    n = localTypedArray.getDimensionPixelOffset(R.styleable.ListPopupWindow_android_dropDownVerticalOffset, 0);
    if (n != 0) {
      p = true;
    }
    localTypedArray.recycle();
    g = new g(paramContext, paramAttributeSet, paramInt1, paramInt2);
    g.setInputMethodMode(1);
  }
  
  private int a(View paramView, int paramInt, boolean paramBoolean)
  {
    if (b != null) {}
    try
    {
      int i1 = ((Integer)b.invoke(g, new Object[] { paramView, Integer.valueOf(paramInt), Boolean.valueOf(paramBoolean) })).intValue();
      return i1;
    }
    catch (Exception localException)
    {
      for (;;) {}
    }
    Log.i("ListPopupWindow", "Could not call getMaxAvailableHeightMethod(View, int, boolean) on PopupWindow. Using the public version.");
    return g.getMaxAvailableHeight(paramView, paramInt);
  }
  
  private void a()
  {
    if (w != null)
    {
      ViewParent localViewParent = w.getParent();
      if ((localViewParent instanceof ViewGroup)) {
        ((ViewGroup)localViewParent).removeView(w);
      }
    }
  }
  
  private void a(boolean paramBoolean)
  {
    if (a != null) {}
    try
    {
      a.invoke(g, new Object[] { Boolean.valueOf(paramBoolean) });
      return;
    }
    catch (Exception localException)
    {
      for (;;) {}
    }
    Log.i("ListPopupWindow", "Could not call setClipToScreenEnabled() on PopupWindow. Oh well.");
  }
  
  private static boolean a(int paramInt)
  {
    return (paramInt == 66) || (paramInt == 23);
  }
  
  private int b()
  {
    Object localObject1 = c;
    boolean bool = true;
    Object localObject2;
    int i1;
    int i2;
    if (localObject1 == null)
    {
      localObject1 = i;
      G = new Runnable()
      {
        public void run()
        {
          View localView = getAnchorView();
          if ((localView != null) && (localView.getWindowToken() != null)) {
            show();
          }
        }
      };
      c = a((Context)localObject1, J ^ true);
      if (A != null) {
        c.setSelector(A);
      }
      c.setAdapter(j);
      c.setOnItemClickListener(B);
      c.setFocusable(true);
      c.setFocusableInTouchMode(true);
      c.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener()
      {
        public void onItemSelected(AdapterView<?> paramAnonymousAdapterView, View paramAnonymousView, int paramAnonymousInt, long paramAnonymousLong)
        {
          if (paramAnonymousInt != -1)
          {
            paramAnonymousAdapterView = c;
            if (paramAnonymousAdapterView != null) {
              paramAnonymousAdapterView.setListSelectionHidden(false);
            }
          }
        }
        
        public void onNothingSelected(AdapterView<?> paramAnonymousAdapterView) {}
      });
      c.setOnScrollListener(E);
      if (C != null) {
        c.setOnItemSelectedListener(C);
      }
      localObject2 = c;
      View localView = w;
      if (localView != null)
      {
        localObject1 = new LinearLayout((Context)localObject1);
        ((LinearLayout)localObject1).setOrientation(1);
        LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams(-1, 0, 1.0F);
        switch (x)
        {
        default: 
          localObject2 = new StringBuilder();
          ((StringBuilder)localObject2).append("Invalid hint position ");
          ((StringBuilder)localObject2).append(x);
          Log.e("ListPopupWindow", ((StringBuilder)localObject2).toString());
          break;
        case 1: 
          ((LinearLayout)localObject1).addView((View)localObject2, localLayoutParams);
          ((LinearLayout)localObject1).addView(localView);
          break;
        case 0: 
          ((LinearLayout)localObject1).addView(localView);
          ((LinearLayout)localObject1).addView((View)localObject2, localLayoutParams);
        }
        if (l >= 0)
        {
          i1 = l;
          i2 = Integer.MIN_VALUE;
        }
        else
        {
          i1 = 0;
          i2 = 0;
        }
        localView.measure(View.MeasureSpec.makeMeasureSpec(i1, i2), 0);
        localObject2 = (LinearLayout.LayoutParams)localView.getLayoutParams();
        i1 = localView.getMeasuredHeight() + topMargin + bottomMargin;
      }
      else
      {
        i1 = 0;
        localObject1 = localObject2;
      }
      g.setContentView((View)localObject1);
    }
    else
    {
      localObject1 = (ViewGroup)g.getContentView();
      localObject1 = w;
      if (localObject1 != null)
      {
        localObject2 = (LinearLayout.LayoutParams)((View)localObject1).getLayoutParams();
        i1 = ((View)localObject1).getMeasuredHeight() + topMargin + bottomMargin;
      }
      else
      {
        i1 = 0;
      }
    }
    localObject1 = g.getBackground();
    int i3;
    if (localObject1 != null)
    {
      ((Drawable)localObject1).getPadding(H);
      i2 = H.top + H.bottom;
      i3 = i2;
      if (!p)
      {
        n = (-H.top);
        i3 = i2;
      }
    }
    else
    {
      H.setEmpty();
      i3 = 0;
    }
    if (g.getInputMethodMode() != 2) {
      bool = false;
    }
    int i4 = a(getAnchorView(), n, bool);
    if ((!u) && (k != -1))
    {
      switch (l)
      {
      default: 
        i2 = View.MeasureSpec.makeMeasureSpec(l, 1073741824);
      }
      for (;;)
      {
        break;
        i2 = View.MeasureSpec.makeMeasureSpec(i.getResources().getDisplayMetrics().widthPixels - (H.left + H.right), 1073741824);
        continue;
        i2 = View.MeasureSpec.makeMeasureSpec(i.getResources().getDisplayMetrics().widthPixels - (H.left + H.right), Integer.MIN_VALUE);
      }
      i4 = c.measureHeightOfChildrenCompat(i2, 0, -1, i4 - i1, -1);
      i2 = i1;
      if (i4 > 0) {
        i2 = i1 + (i3 + (c.getPaddingTop() + c.getPaddingBottom()));
      }
      return i4 + i2;
    }
    return i4 + i3;
  }
  
  @NonNull
  r a(Context paramContext, boolean paramBoolean)
  {
    return new r(paramContext, paramBoolean);
  }
  
  public void clearListSelection()
  {
    r localR = c;
    if (localR != null)
    {
      localR.setListSelectionHidden(true);
      localR.requestLayout();
    }
  }
  
  public View.OnTouchListener createDragToOpenListener(View paramView)
  {
    new ForwardingListener(paramView)
    {
      public ListPopupWindow b()
      {
        return ListPopupWindow.this;
      }
    };
  }
  
  public void dismiss()
  {
    g.dismiss();
    a();
    g.setContentView(null);
    c = null;
    f.removeCallbacks(e);
  }
  
  @Nullable
  public View getAnchorView()
  {
    return z;
  }
  
  @StyleRes
  public int getAnimationStyle()
  {
    return g.getAnimationStyle();
  }
  
  @Nullable
  public Drawable getBackground()
  {
    return g.getBackground();
  }
  
  public int getHeight()
  {
    return k;
  }
  
  public int getHorizontalOffset()
  {
    return m;
  }
  
  public int getInputMethodMode()
  {
    return g.getInputMethodMode();
  }
  
  @Nullable
  public ListView getListView()
  {
    return c;
  }
  
  public int getPromptPosition()
  {
    return x;
  }
  
  @Nullable
  public Object getSelectedItem()
  {
    if (!isShowing()) {
      return null;
    }
    return c.getSelectedItem();
  }
  
  public long getSelectedItemId()
  {
    if (!isShowing()) {
      return Long.MIN_VALUE;
    }
    return c.getSelectedItemId();
  }
  
  public int getSelectedItemPosition()
  {
    if (!isShowing()) {
      return -1;
    }
    return c.getSelectedItemPosition();
  }
  
  @Nullable
  public View getSelectedView()
  {
    if (!isShowing()) {
      return null;
    }
    return c.getSelectedView();
  }
  
  public int getSoftInputMode()
  {
    return g.getSoftInputMode();
  }
  
  public int getVerticalOffset()
  {
    if (!p) {
      return 0;
    }
    return n;
  }
  
  public int getWidth()
  {
    return l;
  }
  
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
  public boolean isDropDownAlwaysVisible()
  {
    return u;
  }
  
  public boolean isInputMethodNotNeeded()
  {
    return g.getInputMethodMode() == 2;
  }
  
  public boolean isModal()
  {
    return J;
  }
  
  public boolean isShowing()
  {
    return g.isShowing();
  }
  
  public boolean onKeyDown(int paramInt, @NonNull KeyEvent paramKeyEvent)
  {
    if ((isShowing()) && (paramInt != 62) && ((c.getSelectedItemPosition() >= 0) || (!a(paramInt))))
    {
      int i3 = c.getSelectedItemPosition();
      boolean bool1 = g.isAboveAnchor() ^ true;
      ListAdapter localListAdapter = j;
      int i1 = Integer.MAX_VALUE;
      int i2;
      if (localListAdapter != null)
      {
        boolean bool2 = localListAdapter.areAllItemsEnabled();
        if (bool2) {
          i1 = 0;
        } else {
          i1 = c.lookForSelectablePosition(0, true);
        }
        if (bool2) {
          i2 = localListAdapter.getCount() - 1;
        } else {
          i2 = c.lookForSelectablePosition(localListAdapter.getCount() - 1, false);
        }
      }
      else
      {
        i2 = Integer.MIN_VALUE;
      }
      if (((bool1) && (paramInt == 19) && (i3 <= i1)) || ((!bool1) && (paramInt == 20) && (i3 >= i2)))
      {
        clearListSelection();
        g.setInputMethodMode(1);
        show();
        return true;
      }
      c.setListSelectionHidden(false);
      if (c.onKeyDown(paramInt, paramKeyEvent))
      {
        g.setInputMethodMode(2);
        c.requestFocusFromTouch();
        show();
        if ((paramInt != 23) && (paramInt != 66)) {
          switch (paramInt)
          {
          default: 
            return false;
          }
        }
        return true;
      }
      if ((bool1) && (paramInt == 20))
      {
        if (i3 == i2) {
          return true;
        }
      }
      else if ((!bool1) && (paramInt == 19) && (i3 == i1)) {
        return true;
      }
    }
    return false;
  }
  
  public boolean onKeyPreIme(int paramInt, @NonNull KeyEvent paramKeyEvent)
  {
    if ((paramInt == 4) && (isShowing()))
    {
      Object localObject = z;
      if ((paramKeyEvent.getAction() == 0) && (paramKeyEvent.getRepeatCount() == 0))
      {
        localObject = ((View)localObject).getKeyDispatcherState();
        if (localObject != null) {
          ((KeyEvent.DispatcherState)localObject).startTracking(paramKeyEvent, this);
        }
        return true;
      }
      if (paramKeyEvent.getAction() == 1)
      {
        localObject = ((View)localObject).getKeyDispatcherState();
        if (localObject != null) {
          ((KeyEvent.DispatcherState)localObject).handleUpEvent(paramKeyEvent);
        }
        if ((paramKeyEvent.isTracking()) && (!paramKeyEvent.isCanceled()))
        {
          dismiss();
          return true;
        }
      }
    }
    return false;
  }
  
  public boolean onKeyUp(int paramInt, @NonNull KeyEvent paramKeyEvent)
  {
    if ((isShowing()) && (c.getSelectedItemPosition() >= 0))
    {
      boolean bool = c.onKeyUp(paramInt, paramKeyEvent);
      if ((bool) && (a(paramInt))) {
        dismiss();
      }
      return bool;
    }
    return false;
  }
  
  public boolean performItemClick(int paramInt)
  {
    if (isShowing())
    {
      if (B != null)
      {
        r localR = c;
        View localView = localR.getChildAt(paramInt - localR.getFirstVisiblePosition());
        ListAdapter localListAdapter = localR.getAdapter();
        B.onItemClick(localR, localView, paramInt, localListAdapter.getItemId(paramInt));
      }
      return true;
    }
    return false;
  }
  
  public void postShow()
  {
    f.post(G);
  }
  
  public void setAdapter(@Nullable ListAdapter paramListAdapter)
  {
    if (y == null) {
      y = new b();
    } else if (j != null) {
      j.unregisterDataSetObserver(y);
    }
    j = paramListAdapter;
    if (paramListAdapter != null) {
      paramListAdapter.registerDataSetObserver(y);
    }
    if (c != null) {
      c.setAdapter(j);
    }
  }
  
  public void setAnchorView(@Nullable View paramView)
  {
    z = paramView;
  }
  
  public void setAnimationStyle(@StyleRes int paramInt)
  {
    g.setAnimationStyle(paramInt);
  }
  
  public void setBackgroundDrawable(@Nullable Drawable paramDrawable)
  {
    g.setBackgroundDrawable(paramDrawable);
  }
  
  public void setContentWidth(int paramInt)
  {
    Drawable localDrawable = g.getBackground();
    if (localDrawable != null)
    {
      localDrawable.getPadding(H);
      l = (H.left + H.right + paramInt);
      return;
    }
    setWidth(paramInt);
  }
  
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
  public void setDropDownAlwaysVisible(boolean paramBoolean)
  {
    u = paramBoolean;
  }
  
  public void setDropDownGravity(int paramInt)
  {
    t = paramInt;
  }
  
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
  public void setEpicenterBounds(Rect paramRect)
  {
    I = paramRect;
  }
  
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
  public void setForceIgnoreOutsideTouch(boolean paramBoolean)
  {
    v = paramBoolean;
  }
  
  public void setHeight(int paramInt)
  {
    if ((paramInt < 0) && (-2 != paramInt) && (-1 != paramInt)) {
      throw new IllegalArgumentException("Invalid height. Must be a positive value, MATCH_PARENT, or WRAP_CONTENT.");
    }
    k = paramInt;
  }
  
  public void setHorizontalOffset(int paramInt)
  {
    m = paramInt;
  }
  
  public void setInputMethodMode(int paramInt)
  {
    g.setInputMethodMode(paramInt);
  }
  
  public void setListSelector(Drawable paramDrawable)
  {
    A = paramDrawable;
  }
  
  public void setModal(boolean paramBoolean)
  {
    J = paramBoolean;
    g.setFocusable(paramBoolean);
  }
  
  public void setOnDismissListener(@Nullable PopupWindow.OnDismissListener paramOnDismissListener)
  {
    g.setOnDismissListener(paramOnDismissListener);
  }
  
  public void setOnItemClickListener(@Nullable AdapterView.OnItemClickListener paramOnItemClickListener)
  {
    B = paramOnItemClickListener;
  }
  
  public void setOnItemSelectedListener(@Nullable AdapterView.OnItemSelectedListener paramOnItemSelectedListener)
  {
    C = paramOnItemSelectedListener;
  }
  
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
  public void setOverlapAnchor(boolean paramBoolean)
  {
    s = true;
    r = paramBoolean;
  }
  
  public void setPromptPosition(int paramInt)
  {
    x = paramInt;
  }
  
  public void setPromptView(@Nullable View paramView)
  {
    boolean bool = isShowing();
    if (bool) {
      a();
    }
    w = paramView;
    if (bool) {
      show();
    }
  }
  
  public void setSelection(int paramInt)
  {
    r localR = c;
    if ((isShowing()) && (localR != null))
    {
      localR.setListSelectionHidden(false);
      localR.setSelection(paramInt);
      if (localR.getChoiceMode() != 0) {
        localR.setItemChecked(paramInt, true);
      }
    }
  }
  
  public void setSoftInputMode(int paramInt)
  {
    g.setSoftInputMode(paramInt);
  }
  
  public void setVerticalOffset(int paramInt)
  {
    n = paramInt;
    p = true;
  }
  
  public void setWidth(int paramInt)
  {
    l = paramInt;
  }
  
  public void setWindowLayoutType(int paramInt)
  {
    o = paramInt;
  }
  
  public void show()
  {
    int i2 = b();
    boolean bool2 = isInputMethodNotNeeded();
    PopupWindowCompat.setWindowLayoutType(g, o);
    boolean bool3 = g.isShowing();
    boolean bool1 = true;
    int i1;
    if (bool3)
    {
      if (!ViewCompat.isAttachedToWindow(getAnchorView())) {
        return;
      }
      if (l == -1) {
        i1 = -1;
      } else if (l == -2) {
        i1 = getAnchorView().getWidth();
      } else {
        i1 = l;
      }
      if (k == -1)
      {
        if (!bool2) {
          i2 = -1;
        }
        if (bool2)
        {
          localPopupWindow = g;
          if (l == -1) {
            i3 = -1;
          } else {
            i3 = 0;
          }
          localPopupWindow.setWidth(i3);
          g.setHeight(0);
        }
        else
        {
          localPopupWindow = g;
          if (l == -1) {
            i3 = -1;
          } else {
            i3 = 0;
          }
          localPopupWindow.setWidth(i3);
          g.setHeight(-1);
        }
      }
      else if (k != -2)
      {
        i2 = k;
      }
      localPopupWindow = g;
      if ((v) || (u)) {
        bool1 = false;
      }
      localPopupWindow.setOutsideTouchable(bool1);
      localPopupWindow = g;
      View localView = getAnchorView();
      int i3 = m;
      int i4 = n;
      if (i1 < 0) {
        i1 = -1;
      }
      if (i2 < 0) {
        i2 = -1;
      }
      localPopupWindow.update(localView, i3, i4, i1, i2);
      return;
    }
    if (l == -1) {
      i1 = -1;
    } else if (l == -2) {
      i1 = getAnchorView().getWidth();
    } else {
      i1 = l;
    }
    if (k == -1) {
      i2 = -1;
    } else if (k != -2) {
      i2 = k;
    }
    g.setWidth(i1);
    g.setHeight(i2);
    a(true);
    PopupWindow localPopupWindow = g;
    if ((!v) && (!u)) {
      bool1 = true;
    } else {
      bool1 = false;
    }
    localPopupWindow.setOutsideTouchable(bool1);
    g.setTouchInterceptor(D);
    if (s) {
      PopupWindowCompat.setOverlapAnchor(g, r);
    }
    if (h != null) {
      try
      {
        h.invoke(g, new Object[] { I });
      }
      catch (Exception localException)
      {
        Log.e("ListPopupWindow", "Could not invoke setEpicenterBounds on PopupWindow", localException);
      }
    }
    PopupWindowCompat.showAsDropDown(g, getAnchorView(), m, n, t);
    c.setSelection(-1);
    if ((!J) || (c.isInTouchMode())) {
      clearListSelection();
    }
    if (!J) {
      f.post(F);
    }
  }
  
  private class a
    implements Runnable
  {
    a() {}
    
    public void run()
    {
      clearListSelection();
    }
  }
  
  private class b
    extends DataSetObserver
  {
    b() {}
    
    public void onChanged()
    {
      if (isShowing()) {
        show();
      }
    }
    
    public void onInvalidated()
    {
      dismiss();
    }
  }
  
  private class c
    implements AbsListView.OnScrollListener
  {
    c() {}
    
    public void onScroll(AbsListView paramAbsListView, int paramInt1, int paramInt2, int paramInt3) {}
    
    public void onScrollStateChanged(AbsListView paramAbsListView, int paramInt)
    {
      if ((paramInt == 1) && (!isInputMethodNotNeeded()) && (g.getContentView() != null))
      {
        f.removeCallbacks(e);
        e.run();
      }
    }
  }
  
  private class d
    implements View.OnTouchListener
  {
    d() {}
    
    public boolean onTouch(View paramView, MotionEvent paramMotionEvent)
    {
      int i = paramMotionEvent.getAction();
      int j = (int)paramMotionEvent.getX();
      int k = (int)paramMotionEvent.getY();
      if ((i == 0) && (g != null) && (g.isShowing()) && (j >= 0) && (j < g.getWidth()) && (k >= 0) && (k < g.getHeight())) {
        f.postDelayed(e, 250L);
      } else if (i == 1) {
        f.removeCallbacks(e);
      }
      return false;
    }
  }
  
  private class e
    implements Runnable
  {
    e() {}
    
    public void run()
    {
      if ((c != null) && (ViewCompat.isAttachedToWindow(c)) && (c.getCount() > c.getChildCount()) && (c.getChildCount() <= d))
      {
        g.setInputMethodMode(2);
        show();
      }
    }
  }
}
