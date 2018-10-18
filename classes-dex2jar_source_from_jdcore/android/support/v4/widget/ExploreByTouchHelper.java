package android.support.v4.widget;

import android.content.Context;
import android.graphics.Rect;
import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v4.util.SparseArrayCompat;
import android.support.v4.view.AccessibilityDelegateCompat;
import android.support.v4.view.ViewCompat;
import android.support.v4.view.ViewParentCompat;
import android.support.v4.view.accessibility.AccessibilityEventCompat;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.support.v4.view.accessibility.AccessibilityNodeProviderCompat;
import android.support.v4.view.accessibility.AccessibilityRecordCompat;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import java.util.ArrayList;
import java.util.List;

public abstract class ExploreByTouchHelper
  extends AccessibilityDelegateCompat
{
  public static final int HOST_ID = -1;
  public static final int INVALID_ID = Integer.MIN_VALUE;
  private static final Rect a = new Rect(Integer.MAX_VALUE, Integer.MAX_VALUE, Integer.MIN_VALUE, Integer.MIN_VALUE);
  private static final FocusStrategy.BoundsAdapter<AccessibilityNodeInfoCompat> l = new FocusStrategy.BoundsAdapter()
  {
    public void a(AccessibilityNodeInfoCompat paramAnonymousAccessibilityNodeInfoCompat, Rect paramAnonymousRect)
    {
      paramAnonymousAccessibilityNodeInfoCompat.getBoundsInParent(paramAnonymousRect);
    }
  };
  private static final FocusStrategy.CollectionAdapter<SparseArrayCompat<AccessibilityNodeInfoCompat>, AccessibilityNodeInfoCompat> m = new FocusStrategy.CollectionAdapter()
  {
    public int a(SparseArrayCompat<AccessibilityNodeInfoCompat> paramAnonymousSparseArrayCompat)
    {
      return paramAnonymousSparseArrayCompat.size();
    }
    
    public AccessibilityNodeInfoCompat a(SparseArrayCompat<AccessibilityNodeInfoCompat> paramAnonymousSparseArrayCompat, int paramAnonymousInt)
    {
      return (AccessibilityNodeInfoCompat)paramAnonymousSparseArrayCompat.valueAt(paramAnonymousInt);
    }
  };
  int b = Integer.MIN_VALUE;
  int c = Integer.MIN_VALUE;
  private final Rect d = new Rect();
  private final Rect e = new Rect();
  private final Rect f = new Rect();
  private final int[] g = new int[2];
  private final AccessibilityManager h;
  private final View i;
  private a j;
  private int k = Integer.MIN_VALUE;
  
  public ExploreByTouchHelper(@NonNull View paramView)
  {
    if (paramView != null)
    {
      i = paramView;
      h = ((AccessibilityManager)paramView.getContext().getSystemService("accessibility"));
      paramView.setFocusable(true);
      if (ViewCompat.getImportantForAccessibility(paramView) == 0) {
        ViewCompat.setImportantForAccessibility(paramView, 1);
      }
      return;
    }
    throw new IllegalArgumentException("View may not be null");
  }
  
  private static Rect a(@NonNull View paramView, int paramInt, @NonNull Rect paramRect)
  {
    int n = paramView.getWidth();
    int i1 = paramView.getHeight();
    if (paramInt != 17)
    {
      if (paramInt != 33)
      {
        if (paramInt != 66)
        {
          if (paramInt == 130)
          {
            paramRect.set(0, -1, n, -1);
            return paramRect;
          }
          throw new IllegalArgumentException("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
        }
        paramRect.set(-1, 0, -1, i1);
        return paramRect;
      }
      paramRect.set(0, i1, n, i1);
      return paramRect;
    }
    paramRect.set(n, 0, n, i1);
    return paramRect;
  }
  
  private AccessibilityEvent a(int paramInt1, int paramInt2)
  {
    if (paramInt1 != -1) {
      return b(paramInt1, paramInt2);
    }
    return d(paramInt2);
  }
  
  private void a(int paramInt, Rect paramRect)
  {
    a(paramInt).getBoundsInParent(paramRect);
  }
  
  private boolean a(int paramInt, Bundle paramBundle)
  {
    return ViewCompat.performAccessibilityAction(i, paramInt, paramBundle);
  }
  
  private boolean a(Rect paramRect)
  {
    boolean bool = false;
    if (paramRect != null)
    {
      if (paramRect.isEmpty()) {
        return false;
      }
      if (i.getWindowVisibility() != 0) {
        return false;
      }
      paramRect = i.getParent();
      while ((paramRect instanceof View))
      {
        paramRect = (View)paramRect;
        if (paramRect.getAlpha() > 0.0F)
        {
          if (paramRect.getVisibility() != 0) {
            return false;
          }
          paramRect = paramRect.getParent();
        }
        else
        {
          return false;
        }
      }
      if (paramRect != null) {
        bool = true;
      }
      return bool;
    }
    return false;
  }
  
  private static int b(int paramInt)
  {
    switch (paramInt)
    {
    case 20: 
    default: 
      return 130;
    case 22: 
      return 66;
    case 21: 
      return 17;
    }
    return 33;
  }
  
  private SparseArrayCompat<AccessibilityNodeInfoCompat> b()
  {
    ArrayList localArrayList = new ArrayList();
    getVisibleVirtualViews(localArrayList);
    SparseArrayCompat localSparseArrayCompat = new SparseArrayCompat();
    int n = 0;
    while (n < localArrayList.size())
    {
      localSparseArrayCompat.put(n, e(n));
      n += 1;
    }
    return localSparseArrayCompat;
  }
  
  private AccessibilityEvent b(int paramInt1, int paramInt2)
  {
    AccessibilityEvent localAccessibilityEvent = AccessibilityEvent.obtain(paramInt2);
    AccessibilityNodeInfoCompat localAccessibilityNodeInfoCompat = a(paramInt1);
    localAccessibilityEvent.getText().add(localAccessibilityNodeInfoCompat.getText());
    localAccessibilityEvent.setContentDescription(localAccessibilityNodeInfoCompat.getContentDescription());
    localAccessibilityEvent.setScrollable(localAccessibilityNodeInfoCompat.isScrollable());
    localAccessibilityEvent.setPassword(localAccessibilityNodeInfoCompat.isPassword());
    localAccessibilityEvent.setEnabled(localAccessibilityNodeInfoCompat.isEnabled());
    localAccessibilityEvent.setChecked(localAccessibilityNodeInfoCompat.isChecked());
    onPopulateEventForVirtualView(paramInt1, localAccessibilityEvent);
    if ((localAccessibilityEvent.getText().isEmpty()) && (localAccessibilityEvent.getContentDescription() == null)) {
      throw new RuntimeException("Callbacks must add text or a content description in populateEventForVirtualViewId()");
    }
    localAccessibilityEvent.setClassName(localAccessibilityNodeInfoCompat.getClassName());
    AccessibilityRecordCompat.setSource(localAccessibilityEvent, i, paramInt1);
    localAccessibilityEvent.setPackageName(i.getContext().getPackageName());
    return localAccessibilityEvent;
  }
  
  private boolean b(int paramInt1, int paramInt2, Bundle paramBundle)
  {
    if (paramInt2 != 64)
    {
      if (paramInt2 != 128)
      {
        switch (paramInt2)
        {
        default: 
          return onPerformActionForVirtualView(paramInt1, paramInt2, paramBundle);
        case 2: 
          return clearKeyboardFocusForVirtualView(paramInt1);
        }
        return requestKeyboardFocusForVirtualView(paramInt1);
      }
      return g(paramInt1);
    }
    return f(paramInt1);
  }
  
  private boolean b(int paramInt, @Nullable Rect paramRect)
  {
    SparseArrayCompat localSparseArrayCompat = b();
    int i1 = c;
    int n = Integer.MIN_VALUE;
    if (i1 == Integer.MIN_VALUE) {}
    for (AccessibilityNodeInfoCompat localAccessibilityNodeInfoCompat = null;; localAccessibilityNodeInfoCompat = (AccessibilityNodeInfoCompat)localSparseArrayCompat.get(i1)) {
      break;
    }
    if ((paramInt != 17) && (paramInt != 33) && (paramInt != 66) && (paramInt != 130))
    {
      switch (paramInt)
      {
      default: 
        throw new IllegalArgumentException("direction must be one of {FOCUS_FORWARD, FOCUS_BACKWARD, FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
      }
      boolean bool;
      if (ViewCompat.getLayoutDirection(i) == 1) {
        bool = true;
      } else {
        bool = false;
      }
      paramRect = (AccessibilityNodeInfoCompat)FocusStrategy.a(localSparseArrayCompat, m, l, localAccessibilityNodeInfoCompat, paramInt, bool, false);
    }
    else
    {
      Rect localRect = new Rect();
      if (c != Integer.MIN_VALUE) {
        a(c, localRect);
      } else if (paramRect != null) {
        localRect.set(paramRect);
      } else {
        a(i, paramInt, localRect);
      }
      paramRect = (AccessibilityNodeInfoCompat)FocusStrategy.a(localSparseArrayCompat, m, l, localAccessibilityNodeInfoCompat, localRect, paramInt);
    }
    if (paramRect == null) {
      paramInt = n;
    } else {
      paramInt = localSparseArrayCompat.keyAt(localSparseArrayCompat.indexOfValue(paramRect));
    }
    return requestKeyboardFocusForVirtualView(paramInt);
  }
  
  private void c(int paramInt)
  {
    if (k == paramInt) {
      return;
    }
    int n = k;
    k = paramInt;
    sendEventForVirtualView(paramInt, 128);
    sendEventForVirtualView(n, 256);
  }
  
  private boolean c()
  {
    return (c != Integer.MIN_VALUE) && (onPerformActionForVirtualView(c, 16, null));
  }
  
  @NonNull
  private AccessibilityNodeInfoCompat d()
  {
    AccessibilityNodeInfoCompat localAccessibilityNodeInfoCompat = AccessibilityNodeInfoCompat.obtain(i);
    ViewCompat.onInitializeAccessibilityNodeInfo(i, localAccessibilityNodeInfoCompat);
    ArrayList localArrayList = new ArrayList();
    getVisibleVirtualViews(localArrayList);
    if ((localAccessibilityNodeInfoCompat.getChildCount() > 0) && (localArrayList.size() > 0)) {
      throw new RuntimeException("Views cannot have both real and virtual children");
    }
    int n = 0;
    int i1 = localArrayList.size();
    while (n < i1)
    {
      localAccessibilityNodeInfoCompat.addChild(i, ((Integer)localArrayList.get(n)).intValue());
      n += 1;
    }
    return localAccessibilityNodeInfoCompat;
  }
  
  private AccessibilityEvent d(int paramInt)
  {
    AccessibilityEvent localAccessibilityEvent = AccessibilityEvent.obtain(paramInt);
    i.onInitializeAccessibilityEvent(localAccessibilityEvent);
    return localAccessibilityEvent;
  }
  
  @NonNull
  private AccessibilityNodeInfoCompat e(int paramInt)
  {
    AccessibilityNodeInfoCompat localAccessibilityNodeInfoCompat1 = AccessibilityNodeInfoCompat.obtain();
    localAccessibilityNodeInfoCompat1.setEnabled(true);
    localAccessibilityNodeInfoCompat1.setFocusable(true);
    localAccessibilityNodeInfoCompat1.setClassName("android.view.View");
    localAccessibilityNodeInfoCompat1.setBoundsInParent(a);
    localAccessibilityNodeInfoCompat1.setBoundsInScreen(a);
    localAccessibilityNodeInfoCompat1.setParent(i);
    onPopulateNodeForVirtualView(paramInt, localAccessibilityNodeInfoCompat1);
    if ((localAccessibilityNodeInfoCompat1.getText() == null) && (localAccessibilityNodeInfoCompat1.getContentDescription() == null)) {
      throw new RuntimeException("Callbacks must add text or a content description in populateNodeForVirtualViewId()");
    }
    localAccessibilityNodeInfoCompat1.getBoundsInParent(e);
    if (!e.equals(a))
    {
      int n = localAccessibilityNodeInfoCompat1.getActions();
      if ((n & 0x40) == 0)
      {
        if ((n & 0x80) == 0)
        {
          localAccessibilityNodeInfoCompat1.setPackageName(i.getContext().getPackageName());
          localAccessibilityNodeInfoCompat1.setSource(i, paramInt);
          if (b == paramInt)
          {
            localAccessibilityNodeInfoCompat1.setAccessibilityFocused(true);
            localAccessibilityNodeInfoCompat1.addAction(128);
          }
          else
          {
            localAccessibilityNodeInfoCompat1.setAccessibilityFocused(false);
            localAccessibilityNodeInfoCompat1.addAction(64);
          }
          boolean bool;
          if (c == paramInt) {
            bool = true;
          } else {
            bool = false;
          }
          if (bool) {
            localAccessibilityNodeInfoCompat1.addAction(2);
          } else if (localAccessibilityNodeInfoCompat1.isFocusable()) {
            localAccessibilityNodeInfoCompat1.addAction(1);
          }
          localAccessibilityNodeInfoCompat1.setFocused(bool);
          i.getLocationOnScreen(g);
          localAccessibilityNodeInfoCompat1.getBoundsInScreen(d);
          if (d.equals(a))
          {
            localAccessibilityNodeInfoCompat1.getBoundsInParent(d);
            if (mParentVirtualDescendantId != -1)
            {
              AccessibilityNodeInfoCompat localAccessibilityNodeInfoCompat2 = AccessibilityNodeInfoCompat.obtain();
              for (paramInt = mParentVirtualDescendantId; paramInt != -1; paramInt = mParentVirtualDescendantId)
              {
                localAccessibilityNodeInfoCompat2.setParent(i, -1);
                localAccessibilityNodeInfoCompat2.setBoundsInParent(a);
                onPopulateNodeForVirtualView(paramInt, localAccessibilityNodeInfoCompat2);
                localAccessibilityNodeInfoCompat2.getBoundsInParent(e);
                d.offset(e.left, e.top);
              }
              localAccessibilityNodeInfoCompat2.recycle();
            }
            d.offset(g[0] - i.getScrollX(), g[1] - i.getScrollY());
          }
          if (i.getLocalVisibleRect(f))
          {
            f.offset(g[0] - i.getScrollX(), g[1] - i.getScrollY());
            if (d.intersect(f))
            {
              localAccessibilityNodeInfoCompat1.setBoundsInScreen(d);
              if (a(d)) {
                localAccessibilityNodeInfoCompat1.setVisibleToUser(true);
              }
            }
          }
          return localAccessibilityNodeInfoCompat1;
        }
        throw new RuntimeException("Callbacks must not add ACTION_CLEAR_ACCESSIBILITY_FOCUS in populateNodeForVirtualViewId()");
      }
      throw new RuntimeException("Callbacks must not add ACTION_ACCESSIBILITY_FOCUS in populateNodeForVirtualViewId()");
    }
    throw new RuntimeException("Callbacks must set parent bounds in populateNodeForVirtualViewId()");
  }
  
  private boolean f(int paramInt)
  {
    if (h.isEnabled())
    {
      if (!h.isTouchExplorationEnabled()) {
        return false;
      }
      if (b != paramInt)
      {
        if (b != Integer.MIN_VALUE) {
          g(b);
        }
        b = paramInt;
        i.invalidate();
        sendEventForVirtualView(paramInt, 32768);
        return true;
      }
      return false;
    }
    return false;
  }
  
  private boolean g(int paramInt)
  {
    if (b == paramInt)
    {
      b = Integer.MIN_VALUE;
      i.invalidate();
      sendEventForVirtualView(paramInt, 65536);
      return true;
    }
    return false;
  }
  
  @NonNull
  AccessibilityNodeInfoCompat a(int paramInt)
  {
    if (paramInt == -1) {
      return d();
    }
    return e(paramInt);
  }
  
  boolean a(int paramInt1, int paramInt2, Bundle paramBundle)
  {
    if (paramInt1 != -1) {
      return b(paramInt1, paramInt2, paramBundle);
    }
    return a(paramInt2, paramBundle);
  }
  
  public final boolean clearKeyboardFocusForVirtualView(int paramInt)
  {
    if (c != paramInt) {
      return false;
    }
    c = Integer.MIN_VALUE;
    onVirtualViewKeyboardFocusChanged(paramInt, false);
    sendEventForVirtualView(paramInt, 8);
    return true;
  }
  
  public final boolean dispatchHoverEvent(@NonNull MotionEvent paramMotionEvent)
  {
    boolean bool2 = h.isEnabled();
    boolean bool1 = false;
    if (bool2)
    {
      if (!h.isTouchExplorationEnabled()) {
        return false;
      }
      int n = paramMotionEvent.getAction();
      if (n != 7) {
        switch (n)
        {
        default: 
          return false;
        case 10: 
          if (k != Integer.MIN_VALUE)
          {
            c(Integer.MIN_VALUE);
            return true;
          }
          return false;
        }
      }
      n = getVirtualViewAt(paramMotionEvent.getX(), paramMotionEvent.getY());
      c(n);
      if (n != Integer.MIN_VALUE) {
        bool1 = true;
      }
      return bool1;
    }
    return false;
  }
  
  public final boolean dispatchKeyEvent(@NonNull KeyEvent paramKeyEvent)
  {
    int i1 = paramKeyEvent.getAction();
    boolean bool2 = false;
    int n = 0;
    boolean bool1 = bool2;
    if (i1 != 1)
    {
      i1 = paramKeyEvent.getKeyCode();
      if (i1 != 61)
      {
        if (i1 != 66)
        {
          switch (i1)
          {
          default: 
            return false;
          case 19: 
          case 20: 
          case 21: 
          case 22: 
            bool1 = bool2;
            if (!paramKeyEvent.hasNoModifiers()) {
              break;
            }
            i1 = b(i1);
            int i2 = paramKeyEvent.getRepeatCount();
            for (bool1 = false; (n < i2 + 1) && (b(i1, null)); bool1 = true) {
              n += 1;
            }
            return bool1;
          }
        }
        else
        {
          bool1 = bool2;
          if (paramKeyEvent.hasNoModifiers())
          {
            bool1 = bool2;
            if (paramKeyEvent.getRepeatCount() == 0)
            {
              c();
              return true;
            }
          }
        }
      }
      else
      {
        if (paramKeyEvent.hasNoModifiers()) {
          return b(2, null);
        }
        bool1 = bool2;
        if (paramKeyEvent.hasModifiers(1)) {
          bool1 = b(1, null);
        }
      }
    }
    return bool1;
  }
  
  public final int getAccessibilityFocusedVirtualViewId()
  {
    return b;
  }
  
  public AccessibilityNodeProviderCompat getAccessibilityNodeProvider(View paramView)
  {
    if (j == null) {
      j = new a();
    }
    return j;
  }
  
  @Deprecated
  public int getFocusedVirtualView()
  {
    return getAccessibilityFocusedVirtualViewId();
  }
  
  public final int getKeyboardFocusedVirtualViewId()
  {
    return c;
  }
  
  protected abstract int getVirtualViewAt(float paramFloat1, float paramFloat2);
  
  protected abstract void getVisibleVirtualViews(List<Integer> paramList);
  
  public final void invalidateRoot()
  {
    invalidateVirtualView(-1, 1);
  }
  
  public final void invalidateVirtualView(int paramInt)
  {
    invalidateVirtualView(paramInt, 0);
  }
  
  public final void invalidateVirtualView(int paramInt1, int paramInt2)
  {
    if ((paramInt1 != Integer.MIN_VALUE) && (h.isEnabled()))
    {
      ViewParent localViewParent = i.getParent();
      if (localViewParent != null)
      {
        AccessibilityEvent localAccessibilityEvent = a(paramInt1, 2048);
        AccessibilityEventCompat.setContentChangeTypes(localAccessibilityEvent, paramInt2);
        ViewParentCompat.requestSendAccessibilityEvent(localViewParent, i, localAccessibilityEvent);
      }
    }
  }
  
  public final void onFocusChanged(boolean paramBoolean, int paramInt, @Nullable Rect paramRect)
  {
    if (c != Integer.MIN_VALUE) {
      clearKeyboardFocusForVirtualView(c);
    }
    if (paramBoolean) {
      b(paramInt, paramRect);
    }
  }
  
  public void onInitializeAccessibilityEvent(View paramView, AccessibilityEvent paramAccessibilityEvent)
  {
    super.onInitializeAccessibilityEvent(paramView, paramAccessibilityEvent);
    onPopulateEventForHost(paramAccessibilityEvent);
  }
  
  public void onInitializeAccessibilityNodeInfo(View paramView, AccessibilityNodeInfoCompat paramAccessibilityNodeInfoCompat)
  {
    super.onInitializeAccessibilityNodeInfo(paramView, paramAccessibilityNodeInfoCompat);
    onPopulateNodeForHost(paramAccessibilityNodeInfoCompat);
  }
  
  protected abstract boolean onPerformActionForVirtualView(int paramInt1, int paramInt2, @Nullable Bundle paramBundle);
  
  protected void onPopulateEventForHost(@NonNull AccessibilityEvent paramAccessibilityEvent) {}
  
  protected void onPopulateEventForVirtualView(int paramInt, @NonNull AccessibilityEvent paramAccessibilityEvent) {}
  
  protected void onPopulateNodeForHost(@NonNull AccessibilityNodeInfoCompat paramAccessibilityNodeInfoCompat) {}
  
  protected abstract void onPopulateNodeForVirtualView(int paramInt, @NonNull AccessibilityNodeInfoCompat paramAccessibilityNodeInfoCompat);
  
  protected void onVirtualViewKeyboardFocusChanged(int paramInt, boolean paramBoolean) {}
  
  public final boolean requestKeyboardFocusForVirtualView(int paramInt)
  {
    if ((!i.isFocused()) && (!i.requestFocus())) {
      return false;
    }
    if (c == paramInt) {
      return false;
    }
    if (c != Integer.MIN_VALUE) {
      clearKeyboardFocusForVirtualView(c);
    }
    c = paramInt;
    onVirtualViewKeyboardFocusChanged(paramInt, true);
    sendEventForVirtualView(paramInt, 8);
    return true;
  }
  
  public final boolean sendEventForVirtualView(int paramInt1, int paramInt2)
  {
    if (paramInt1 != Integer.MIN_VALUE)
    {
      if (!h.isEnabled()) {
        return false;
      }
      ViewParent localViewParent = i.getParent();
      if (localViewParent == null) {
        return false;
      }
      AccessibilityEvent localAccessibilityEvent = a(paramInt1, paramInt2);
      return ViewParentCompat.requestSendAccessibilityEvent(localViewParent, i, localAccessibilityEvent);
    }
    return false;
  }
  
  private class a
    extends AccessibilityNodeProviderCompat
  {
    a() {}
    
    public AccessibilityNodeInfoCompat createAccessibilityNodeInfo(int paramInt)
    {
      return AccessibilityNodeInfoCompat.obtain(a(paramInt));
    }
    
    public AccessibilityNodeInfoCompat findFocus(int paramInt)
    {
      if (paramInt == 2) {
        paramInt = b;
      } else {
        paramInt = c;
      }
      if (paramInt == Integer.MIN_VALUE) {
        return null;
      }
      return createAccessibilityNodeInfo(paramInt);
    }
    
    public boolean performAction(int paramInt1, int paramInt2, Bundle paramBundle)
    {
      return a(paramInt1, paramInt2, paramBundle);
    }
  }
}
