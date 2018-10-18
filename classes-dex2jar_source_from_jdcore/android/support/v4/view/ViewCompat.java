package android.support.v4.view;

import android.animation.ValueAnimator;
import android.annotation.SuppressLint;
import android.content.ClipData;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.PorterDuff.Mode;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.support.annotation.FloatRange;
import android.support.annotation.IdRes;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.Px;
import android.support.annotation.RequiresApi;
import android.support.annotation.RestrictTo;
import android.support.annotation.UiThread;
import android.support.compat.R.id;
import android.support.v4.util.ArrayMap;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.support.v4.view.accessibility.AccessibilityNodeProviderCompat;
import android.util.Log;
import android.util.SparseArray;
import android.view.Display;
import android.view.KeyEvent;
import android.view.PointerIcon;
import android.view.View;
import android.view.View.DragShadowBuilder;
import android.view.View.OnApplyWindowInsetsListener;
import android.view.View.OnUnhandledKeyEventListener;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.WindowInsets;
import android.view.WindowManager;
import android.view.accessibility.AccessibilityEvent;
import java.lang.annotation.Annotation;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.ref.WeakReference;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.WeakHashMap;
import java.util.concurrent.atomic.AtomicInteger;

public class ViewCompat
{
  public static final int ACCESSIBILITY_LIVE_REGION_ASSERTIVE = 2;
  public static final int ACCESSIBILITY_LIVE_REGION_NONE = 0;
  public static final int ACCESSIBILITY_LIVE_REGION_POLITE = 1;
  public static final int IMPORTANT_FOR_ACCESSIBILITY_AUTO = 0;
  public static final int IMPORTANT_FOR_ACCESSIBILITY_NO = 2;
  public static final int IMPORTANT_FOR_ACCESSIBILITY_NO_HIDE_DESCENDANTS = 4;
  public static final int IMPORTANT_FOR_ACCESSIBILITY_YES = 1;
  @Deprecated
  public static final int LAYER_TYPE_HARDWARE = 2;
  @Deprecated
  public static final int LAYER_TYPE_NONE = 0;
  @Deprecated
  public static final int LAYER_TYPE_SOFTWARE = 1;
  public static final int LAYOUT_DIRECTION_INHERIT = 2;
  public static final int LAYOUT_DIRECTION_LOCALE = 3;
  public static final int LAYOUT_DIRECTION_LTR = 0;
  public static final int LAYOUT_DIRECTION_RTL = 1;
  @Deprecated
  public static final int MEASURED_HEIGHT_STATE_SHIFT = 16;
  @Deprecated
  public static final int MEASURED_SIZE_MASK = 16777215;
  @Deprecated
  public static final int MEASURED_STATE_MASK = -16777216;
  @Deprecated
  public static final int MEASURED_STATE_TOO_SMALL = 16777216;
  @Deprecated
  public static final int OVER_SCROLL_ALWAYS = 0;
  @Deprecated
  public static final int OVER_SCROLL_IF_CONTENT_SCROLLS = 1;
  @Deprecated
  public static final int OVER_SCROLL_NEVER = 2;
  public static final int SCROLL_AXIS_HORIZONTAL = 1;
  public static final int SCROLL_AXIS_NONE = 0;
  public static final int SCROLL_AXIS_VERTICAL = 2;
  public static final int SCROLL_INDICATOR_BOTTOM = 2;
  public static final int SCROLL_INDICATOR_END = 32;
  public static final int SCROLL_INDICATOR_LEFT = 4;
  public static final int SCROLL_INDICATOR_RIGHT = 8;
  public static final int SCROLL_INDICATOR_START = 16;
  public static final int SCROLL_INDICATOR_TOP = 1;
  public static final int TYPE_NON_TOUCH = 1;
  public static final int TYPE_TOUCH = 0;
  private static final AtomicInteger a = new AtomicInteger(1);
  private static Field b;
  private static boolean c;
  private static Field d;
  private static boolean e;
  private static Method f;
  private static Method g;
  private static boolean h;
  private static WeakHashMap<View, String> i;
  private static WeakHashMap<View, ViewPropertyAnimatorCompat> j = null;
  private static Method k;
  private static Field l;
  private static boolean m = false;
  private static ThreadLocal<Rect> n;
  
  protected ViewCompat() {}
  
  private static Rect a()
  {
    if (n == null) {
      n = new ThreadLocal();
    }
    Rect localRect2 = (Rect)n.get();
    Rect localRect1 = localRect2;
    if (localRect2 == null)
    {
      localRect1 = new Rect();
      n.set(localRect1);
    }
    localRect1.setEmpty();
    return localRect1;
  }
  
  private static void a(View paramView)
  {
    float f1 = paramView.getTranslationY();
    paramView.setTranslationY(1.0F + f1);
    paramView.setTranslationY(f1);
  }
  
  private static void a(View paramView, int paramInt)
  {
    paramView.offsetTopAndBottom(paramInt);
    if (paramView.getVisibility() == 0)
    {
      a(paramView);
      paramView = paramView.getParent();
      if ((paramView instanceof View)) {
        a((View)paramView);
      }
    }
  }
  
  @UiThread
  static boolean a(View paramView, KeyEvent paramKeyEvent)
  {
    if (Build.VERSION.SDK_INT >= 28) {
      return false;
    }
    return b.a(paramView).a(paramKeyEvent);
  }
  
  public static void addKeyboardNavigationClusters(@NonNull View paramView, @NonNull Collection<View> paramCollection, int paramInt)
  {
    if (Build.VERSION.SDK_INT >= 26) {
      paramView.addKeyboardNavigationClusters(paramCollection, paramInt);
    }
  }
  
  public static void addOnUnhandledKeyEventListener(@NonNull View paramView, @NonNull OnUnhandledKeyEventListenerCompat paramOnUnhandledKeyEventListenerCompat)
  {
    if (Build.VERSION.SDK_INT >= 28)
    {
      localObject2 = (Map)paramView.getTag(R.id.tag_unhandled_key_listeners);
      localObject1 = localObject2;
      if (localObject2 == null)
      {
        localObject1 = new ArrayMap();
        paramView.setTag(R.id.tag_unhandled_key_listeners, localObject1);
      }
      localObject2 = new a(paramOnUnhandledKeyEventListenerCompat);
      ((Map)localObject1).put(paramOnUnhandledKeyEventListenerCompat, localObject2);
      paramView.addOnUnhandledKeyEventListener((View.OnUnhandledKeyEventListener)localObject2);
      return;
    }
    Object localObject2 = (ArrayList)paramView.getTag(R.id.tag_unhandled_key_listeners);
    Object localObject1 = localObject2;
    if (localObject2 == null)
    {
      localObject1 = new ArrayList();
      paramView.setTag(R.id.tag_unhandled_key_listeners, localObject1);
    }
    ((ArrayList)localObject1).add(paramOnUnhandledKeyEventListenerCompat);
    if (((ArrayList)localObject1).size() == 1) {
      b.b(paramView);
    }
  }
  
  @NonNull
  public static ViewPropertyAnimatorCompat animate(@NonNull View paramView)
  {
    if (j == null) {
      j = new WeakHashMap();
    }
    ViewPropertyAnimatorCompat localViewPropertyAnimatorCompat2 = (ViewPropertyAnimatorCompat)j.get(paramView);
    ViewPropertyAnimatorCompat localViewPropertyAnimatorCompat1 = localViewPropertyAnimatorCompat2;
    if (localViewPropertyAnimatorCompat2 == null)
    {
      localViewPropertyAnimatorCompat1 = new ViewPropertyAnimatorCompat(paramView);
      j.put(paramView, localViewPropertyAnimatorCompat1);
    }
    return localViewPropertyAnimatorCompat1;
  }
  
  private static void b()
  {
    try
    {
      f = View.class.getDeclaredMethod("dispatchStartTemporaryDetach", new Class[0]);
      g = View.class.getDeclaredMethod("dispatchFinishTemporaryDetach", new Class[0]);
    }
    catch (NoSuchMethodException localNoSuchMethodException)
    {
      Log.e("ViewCompat", "Couldn't find method", localNoSuchMethodException);
    }
    h = true;
  }
  
  private static void b(View paramView, int paramInt)
  {
    paramView.offsetLeftAndRight(paramInt);
    if (paramView.getVisibility() == 0)
    {
      a(paramView);
      paramView = paramView.getParent();
      if ((paramView instanceof View)) {
        a((View)paramView);
      }
    }
  }
  
  @UiThread
  static boolean b(View paramView, KeyEvent paramKeyEvent)
  {
    if (Build.VERSION.SDK_INT >= 28) {
      return false;
    }
    return b.a(paramView).a(paramView, paramKeyEvent);
  }
  
  @Deprecated
  public static boolean canScrollHorizontally(View paramView, int paramInt)
  {
    return paramView.canScrollHorizontally(paramInt);
  }
  
  @Deprecated
  public static boolean canScrollVertically(View paramView, int paramInt)
  {
    return paramView.canScrollVertically(paramInt);
  }
  
  public static void cancelDragAndDrop(@NonNull View paramView)
  {
    if (Build.VERSION.SDK_INT >= 24) {
      paramView.cancelDragAndDrop();
    }
  }
  
  @Deprecated
  public static int combineMeasuredStates(int paramInt1, int paramInt2)
  {
    return View.combineMeasuredStates(paramInt1, paramInt2);
  }
  
  public static WindowInsetsCompat dispatchApplyWindowInsets(@NonNull View paramView, WindowInsetsCompat paramWindowInsetsCompat)
  {
    if (Build.VERSION.SDK_INT >= 21)
    {
      paramWindowInsetsCompat = (WindowInsets)WindowInsetsCompat.a(paramWindowInsetsCompat);
      WindowInsets localWindowInsets = paramView.dispatchApplyWindowInsets(paramWindowInsetsCompat);
      paramView = paramWindowInsetsCompat;
      if (localWindowInsets != paramWindowInsetsCompat) {
        paramView = new WindowInsets(localWindowInsets);
      }
      return WindowInsetsCompat.a(paramView);
    }
    return paramWindowInsetsCompat;
  }
  
  public static void dispatchFinishTemporaryDetach(@NonNull View paramView)
  {
    if (Build.VERSION.SDK_INT >= 24)
    {
      paramView.dispatchFinishTemporaryDetach();
      return;
    }
    if (!h) {
      b();
    }
    if (g != null) {
      try
      {
        g.invoke(paramView, new Object[0]);
        return;
      }
      catch (Exception paramView)
      {
        Log.d("ViewCompat", "Error calling dispatchFinishTemporaryDetach", paramView);
        return;
      }
    }
    paramView.onFinishTemporaryDetach();
  }
  
  public static boolean dispatchNestedFling(@NonNull View paramView, float paramFloat1, float paramFloat2, boolean paramBoolean)
  {
    if (Build.VERSION.SDK_INT >= 21) {
      return paramView.dispatchNestedFling(paramFloat1, paramFloat2, paramBoolean);
    }
    if ((paramView instanceof NestedScrollingChild)) {
      return ((NestedScrollingChild)paramView).dispatchNestedFling(paramFloat1, paramFloat2, paramBoolean);
    }
    return false;
  }
  
  public static boolean dispatchNestedPreFling(@NonNull View paramView, float paramFloat1, float paramFloat2)
  {
    if (Build.VERSION.SDK_INT >= 21) {
      return paramView.dispatchNestedPreFling(paramFloat1, paramFloat2);
    }
    if ((paramView instanceof NestedScrollingChild)) {
      return ((NestedScrollingChild)paramView).dispatchNestedPreFling(paramFloat1, paramFloat2);
    }
    return false;
  }
  
  public static boolean dispatchNestedPreScroll(@NonNull View paramView, int paramInt1, int paramInt2, @Nullable int[] paramArrayOfInt1, @Nullable int[] paramArrayOfInt2)
  {
    if (Build.VERSION.SDK_INT >= 21) {
      return paramView.dispatchNestedPreScroll(paramInt1, paramInt2, paramArrayOfInt1, paramArrayOfInt2);
    }
    if ((paramView instanceof NestedScrollingChild)) {
      return ((NestedScrollingChild)paramView).dispatchNestedPreScroll(paramInt1, paramInt2, paramArrayOfInt1, paramArrayOfInt2);
    }
    return false;
  }
  
  public static boolean dispatchNestedPreScroll(@NonNull View paramView, int paramInt1, int paramInt2, @Nullable int[] paramArrayOfInt1, @Nullable int[] paramArrayOfInt2, int paramInt3)
  {
    if ((paramView instanceof NestedScrollingChild2)) {
      return ((NestedScrollingChild2)paramView).dispatchNestedPreScroll(paramInt1, paramInt2, paramArrayOfInt1, paramArrayOfInt2, paramInt3);
    }
    if (paramInt3 == 0) {
      return dispatchNestedPreScroll(paramView, paramInt1, paramInt2, paramArrayOfInt1, paramArrayOfInt2);
    }
    return false;
  }
  
  public static boolean dispatchNestedScroll(@NonNull View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4, @Nullable int[] paramArrayOfInt)
  {
    if (Build.VERSION.SDK_INT >= 21) {
      return paramView.dispatchNestedScroll(paramInt1, paramInt2, paramInt3, paramInt4, paramArrayOfInt);
    }
    if ((paramView instanceof NestedScrollingChild)) {
      return ((NestedScrollingChild)paramView).dispatchNestedScroll(paramInt1, paramInt2, paramInt3, paramInt4, paramArrayOfInt);
    }
    return false;
  }
  
  public static boolean dispatchNestedScroll(@NonNull View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4, @Nullable int[] paramArrayOfInt, int paramInt5)
  {
    if ((paramView instanceof NestedScrollingChild2)) {
      return ((NestedScrollingChild2)paramView).dispatchNestedScroll(paramInt1, paramInt2, paramInt3, paramInt4, paramArrayOfInt, paramInt5);
    }
    if (paramInt5 == 0) {
      return dispatchNestedScroll(paramView, paramInt1, paramInt2, paramInt3, paramInt4, paramArrayOfInt);
    }
    return false;
  }
  
  public static void dispatchStartTemporaryDetach(@NonNull View paramView)
  {
    if (Build.VERSION.SDK_INT >= 24)
    {
      paramView.dispatchStartTemporaryDetach();
      return;
    }
    if (!h) {
      b();
    }
    if (f != null) {
      try
      {
        f.invoke(paramView, new Object[0]);
        return;
      }
      catch (Exception paramView)
      {
        Log.d("ViewCompat", "Error calling dispatchStartTemporaryDetach", paramView);
        return;
      }
    }
    paramView.onStartTemporaryDetach();
  }
  
  public static int generateViewId()
  {
    if (Build.VERSION.SDK_INT >= 17) {
      return View.generateViewId();
    }
    int i3;
    int i1;
    do
    {
      i3 = a.get();
      int i2 = i3 + 1;
      i1 = i2;
      if (i2 > 16777215) {
        i1 = 1;
      }
    } while (!a.compareAndSet(i3, i1));
    return i3;
  }
  
  public static int getAccessibilityLiveRegion(@NonNull View paramView)
  {
    if (Build.VERSION.SDK_INT >= 19) {
      return paramView.getAccessibilityLiveRegion();
    }
    return 0;
  }
  
  public static AccessibilityNodeProviderCompat getAccessibilityNodeProvider(@NonNull View paramView)
  {
    if (Build.VERSION.SDK_INT >= 16)
    {
      paramView = paramView.getAccessibilityNodeProvider();
      if (paramView != null) {
        return new AccessibilityNodeProviderCompat(paramView);
      }
    }
    return null;
  }
  
  @Deprecated
  public static float getAlpha(View paramView)
  {
    return paramView.getAlpha();
  }
  
  public static ColorStateList getBackgroundTintList(@NonNull View paramView)
  {
    if (Build.VERSION.SDK_INT >= 21) {
      return paramView.getBackgroundTintList();
    }
    if ((paramView instanceof TintableBackgroundView)) {
      return ((TintableBackgroundView)paramView).getSupportBackgroundTintList();
    }
    return null;
  }
  
  public static PorterDuff.Mode getBackgroundTintMode(@NonNull View paramView)
  {
    if (Build.VERSION.SDK_INT >= 21) {
      return paramView.getBackgroundTintMode();
    }
    if ((paramView instanceof TintableBackgroundView)) {
      return ((TintableBackgroundView)paramView).getSupportBackgroundTintMode();
    }
    return null;
  }
  
  @Nullable
  public static Rect getClipBounds(@NonNull View paramView)
  {
    if (Build.VERSION.SDK_INT >= 18) {
      return paramView.getClipBounds();
    }
    return null;
  }
  
  @Nullable
  public static Display getDisplay(@NonNull View paramView)
  {
    if (Build.VERSION.SDK_INT >= 17) {
      return paramView.getDisplay();
    }
    if (isAttachedToWindow(paramView)) {
      return ((WindowManager)paramView.getContext().getSystemService("window")).getDefaultDisplay();
    }
    return null;
  }
  
  public static float getElevation(@NonNull View paramView)
  {
    if (Build.VERSION.SDK_INT >= 21) {
      return paramView.getElevation();
    }
    return 0.0F;
  }
  
  public static boolean getFitsSystemWindows(@NonNull View paramView)
  {
    if (Build.VERSION.SDK_INT >= 16) {
      return paramView.getFitsSystemWindows();
    }
    return false;
  }
  
  public static int getImportantForAccessibility(@NonNull View paramView)
  {
    if (Build.VERSION.SDK_INT >= 16) {
      return paramView.getImportantForAccessibility();
    }
    return 0;
  }
  
  @SuppressLint({"InlinedApi"})
  public static int getImportantForAutofill(@NonNull View paramView)
  {
    if (Build.VERSION.SDK_INT >= 26) {
      return paramView.getImportantForAutofill();
    }
    return 0;
  }
  
  public static int getLabelFor(@NonNull View paramView)
  {
    if (Build.VERSION.SDK_INT >= 17) {
      return paramView.getLabelFor();
    }
    return 0;
  }
  
  @Deprecated
  public static int getLayerType(View paramView)
  {
    return paramView.getLayerType();
  }
  
  public static int getLayoutDirection(@NonNull View paramView)
  {
    if (Build.VERSION.SDK_INT >= 17) {
      return paramView.getLayoutDirection();
    }
    return 0;
  }
  
  @Deprecated
  @Nullable
  public static Matrix getMatrix(View paramView)
  {
    return paramView.getMatrix();
  }
  
  @Deprecated
  public static int getMeasuredHeightAndState(View paramView)
  {
    return paramView.getMeasuredHeightAndState();
  }
  
  @Deprecated
  public static int getMeasuredState(View paramView)
  {
    return paramView.getMeasuredState();
  }
  
  @Deprecated
  public static int getMeasuredWidthAndState(View paramView)
  {
    return paramView.getMeasuredWidthAndState();
  }
  
  public static int getMinimumHeight(@NonNull View paramView)
  {
    if (Build.VERSION.SDK_INT >= 16) {
      return paramView.getMinimumHeight();
    }
    if (!e) {}
    try
    {
      d = View.class.getDeclaredField("mMinHeight");
      d.setAccessible(true);
      e = true;
      if (d != null) {}
      try
      {
        int i1 = ((Integer)d.get(paramView)).intValue();
        return i1;
      }
      catch (Exception paramView)
      {
        for (;;) {}
      }
      return 0;
    }
    catch (NoSuchFieldException localNoSuchFieldException)
    {
      for (;;) {}
    }
  }
  
  public static int getMinimumWidth(@NonNull View paramView)
  {
    if (Build.VERSION.SDK_INT >= 16) {
      return paramView.getMinimumWidth();
    }
    if (!c) {}
    try
    {
      b = View.class.getDeclaredField("mMinWidth");
      b.setAccessible(true);
      c = true;
      if (b != null) {}
      try
      {
        int i1 = ((Integer)b.get(paramView)).intValue();
        return i1;
      }
      catch (Exception paramView)
      {
        for (;;) {}
      }
      return 0;
    }
    catch (NoSuchFieldException localNoSuchFieldException)
    {
      for (;;) {}
    }
  }
  
  public static int getNextClusterForwardId(@NonNull View paramView)
  {
    if (Build.VERSION.SDK_INT >= 26) {
      return paramView.getNextClusterForwardId();
    }
    return -1;
  }
  
  @Deprecated
  public static int getOverScrollMode(View paramView)
  {
    return paramView.getOverScrollMode();
  }
  
  @Px
  public static int getPaddingEnd(@NonNull View paramView)
  {
    if (Build.VERSION.SDK_INT >= 17) {
      return paramView.getPaddingEnd();
    }
    return paramView.getPaddingRight();
  }
  
  @Px
  public static int getPaddingStart(@NonNull View paramView)
  {
    if (Build.VERSION.SDK_INT >= 17) {
      return paramView.getPaddingStart();
    }
    return paramView.getPaddingLeft();
  }
  
  public static ViewParent getParentForAccessibility(@NonNull View paramView)
  {
    if (Build.VERSION.SDK_INT >= 16) {
      return paramView.getParentForAccessibility();
    }
    return paramView.getParent();
  }
  
  @Deprecated
  public static float getPivotX(View paramView)
  {
    return paramView.getPivotX();
  }
  
  @Deprecated
  public static float getPivotY(View paramView)
  {
    return paramView.getPivotY();
  }
  
  @Deprecated
  public static float getRotation(View paramView)
  {
    return paramView.getRotation();
  }
  
  @Deprecated
  public static float getRotationX(View paramView)
  {
    return paramView.getRotationX();
  }
  
  @Deprecated
  public static float getRotationY(View paramView)
  {
    return paramView.getRotationY();
  }
  
  @Deprecated
  public static float getScaleX(View paramView)
  {
    return paramView.getScaleX();
  }
  
  @Deprecated
  public static float getScaleY(View paramView)
  {
    return paramView.getScaleY();
  }
  
  public static int getScrollIndicators(@NonNull View paramView)
  {
    if (Build.VERSION.SDK_INT >= 23) {
      return paramView.getScrollIndicators();
    }
    return 0;
  }
  
  @Nullable
  public static String getTransitionName(@NonNull View paramView)
  {
    if (Build.VERSION.SDK_INT >= 21) {
      return paramView.getTransitionName();
    }
    if (i == null) {
      return null;
    }
    return (String)i.get(paramView);
  }
  
  @Deprecated
  public static float getTranslationX(View paramView)
  {
    return paramView.getTranslationX();
  }
  
  @Deprecated
  public static float getTranslationY(View paramView)
  {
    return paramView.getTranslationY();
  }
  
  public static float getTranslationZ(@NonNull View paramView)
  {
    if (Build.VERSION.SDK_INT >= 21) {
      return paramView.getTranslationZ();
    }
    return 0.0F;
  }
  
  public static int getWindowSystemUiVisibility(@NonNull View paramView)
  {
    if (Build.VERSION.SDK_INT >= 16) {
      return paramView.getWindowSystemUiVisibility();
    }
    return 0;
  }
  
  @Deprecated
  public static float getX(View paramView)
  {
    return paramView.getX();
  }
  
  @Deprecated
  public static float getY(View paramView)
  {
    return paramView.getY();
  }
  
  public static float getZ(@NonNull View paramView)
  {
    if (Build.VERSION.SDK_INT >= 21) {
      return paramView.getZ();
    }
    return 0.0F;
  }
  
  public static boolean hasAccessibilityDelegate(@NonNull View paramView)
  {
    boolean bool2 = m;
    boolean bool1 = false;
    if (bool2) {
      return false;
    }
    if (l == null) {}
    try
    {
      l = View.class.getDeclaredField("mAccessibilityDelegate");
      l.setAccessible(true);
    }
    catch (Throwable paramView)
    {
      for (;;) {}
    }
    m = true;
    return false;
    try
    {
      paramView = l.get(paramView);
      if (paramView != null) {
        bool1 = true;
      }
      return bool1;
    }
    catch (Throwable paramView)
    {
      for (;;) {}
    }
    m = true;
    return false;
  }
  
  public static boolean hasExplicitFocusable(@NonNull View paramView)
  {
    if (Build.VERSION.SDK_INT >= 26) {
      return paramView.hasExplicitFocusable();
    }
    return paramView.hasFocusable();
  }
  
  public static boolean hasNestedScrollingParent(@NonNull View paramView)
  {
    if (Build.VERSION.SDK_INT >= 21) {
      return paramView.hasNestedScrollingParent();
    }
    if ((paramView instanceof NestedScrollingChild)) {
      return ((NestedScrollingChild)paramView).hasNestedScrollingParent();
    }
    return false;
  }
  
  public static boolean hasNestedScrollingParent(@NonNull View paramView, int paramInt)
  {
    if ((paramView instanceof NestedScrollingChild2)) {
      ((NestedScrollingChild2)paramView).hasNestedScrollingParent(paramInt);
    } else if (paramInt == 0) {
      return hasNestedScrollingParent(paramView);
    }
    return false;
  }
  
  public static boolean hasOnClickListeners(@NonNull View paramView)
  {
    if (Build.VERSION.SDK_INT >= 15) {
      return paramView.hasOnClickListeners();
    }
    return false;
  }
  
  public static boolean hasOverlappingRendering(@NonNull View paramView)
  {
    if (Build.VERSION.SDK_INT >= 16) {
      return paramView.hasOverlappingRendering();
    }
    return true;
  }
  
  public static boolean hasTransientState(@NonNull View paramView)
  {
    if (Build.VERSION.SDK_INT >= 16) {
      return paramView.hasTransientState();
    }
    return false;
  }
  
  public static boolean isAttachedToWindow(@NonNull View paramView)
  {
    if (Build.VERSION.SDK_INT >= 19) {
      return paramView.isAttachedToWindow();
    }
    return paramView.getWindowToken() != null;
  }
  
  public static boolean isFocusedByDefault(@NonNull View paramView)
  {
    if (Build.VERSION.SDK_INT >= 26) {
      return paramView.isFocusedByDefault();
    }
    return false;
  }
  
  public static boolean isImportantForAccessibility(@NonNull View paramView)
  {
    if (Build.VERSION.SDK_INT >= 21) {
      return paramView.isImportantForAccessibility();
    }
    return true;
  }
  
  public static boolean isImportantForAutofill(@NonNull View paramView)
  {
    if (Build.VERSION.SDK_INT >= 26) {
      return paramView.isImportantForAutofill();
    }
    return true;
  }
  
  public static boolean isInLayout(@NonNull View paramView)
  {
    if (Build.VERSION.SDK_INT >= 18) {
      return paramView.isInLayout();
    }
    return false;
  }
  
  public static boolean isKeyboardNavigationCluster(@NonNull View paramView)
  {
    if (Build.VERSION.SDK_INT >= 26) {
      return paramView.isKeyboardNavigationCluster();
    }
    return false;
  }
  
  public static boolean isLaidOut(@NonNull View paramView)
  {
    if (Build.VERSION.SDK_INT >= 19) {
      return paramView.isLaidOut();
    }
    return (paramView.getWidth() > 0) && (paramView.getHeight() > 0);
  }
  
  public static boolean isLayoutDirectionResolved(@NonNull View paramView)
  {
    if (Build.VERSION.SDK_INT >= 19) {
      return paramView.isLayoutDirectionResolved();
    }
    return false;
  }
  
  public static boolean isNestedScrollingEnabled(@NonNull View paramView)
  {
    if (Build.VERSION.SDK_INT >= 21) {
      return paramView.isNestedScrollingEnabled();
    }
    if ((paramView instanceof NestedScrollingChild)) {
      return ((NestedScrollingChild)paramView).isNestedScrollingEnabled();
    }
    return false;
  }
  
  @Deprecated
  public static boolean isOpaque(View paramView)
  {
    return paramView.isOpaque();
  }
  
  public static boolean isPaddingRelative(@NonNull View paramView)
  {
    if (Build.VERSION.SDK_INT >= 17) {
      return paramView.isPaddingRelative();
    }
    return false;
  }
  
  @Deprecated
  public static void jumpDrawablesToCurrentState(View paramView)
  {
    paramView.jumpDrawablesToCurrentState();
  }
  
  public static View keyboardNavigationClusterSearch(@NonNull View paramView1, View paramView2, int paramInt)
  {
    if (Build.VERSION.SDK_INT >= 26) {
      return paramView1.keyboardNavigationClusterSearch(paramView2, paramInt);
    }
    return null;
  }
  
  public static void offsetLeftAndRight(@NonNull View paramView, int paramInt)
  {
    if (Build.VERSION.SDK_INT >= 23)
    {
      paramView.offsetLeftAndRight(paramInt);
      return;
    }
    if (Build.VERSION.SDK_INT >= 21)
    {
      Rect localRect = a();
      boolean bool = false;
      ViewParent localViewParent = paramView.getParent();
      if ((localViewParent instanceof View))
      {
        View localView = (View)localViewParent;
        localRect.set(localView.getLeft(), localView.getTop(), localView.getRight(), localView.getBottom());
        bool = localRect.intersects(paramView.getLeft(), paramView.getTop(), paramView.getRight(), paramView.getBottom()) ^ true;
      }
      b(paramView, paramInt);
      if ((bool) && (localRect.intersect(paramView.getLeft(), paramView.getTop(), paramView.getRight(), paramView.getBottom()))) {
        ((View)localViewParent).invalidate(localRect);
      }
    }
    else
    {
      b(paramView, paramInt);
    }
  }
  
  public static void offsetTopAndBottom(@NonNull View paramView, int paramInt)
  {
    if (Build.VERSION.SDK_INT >= 23)
    {
      paramView.offsetTopAndBottom(paramInt);
      return;
    }
    if (Build.VERSION.SDK_INT >= 21)
    {
      Rect localRect = a();
      boolean bool = false;
      ViewParent localViewParent = paramView.getParent();
      if ((localViewParent instanceof View))
      {
        View localView = (View)localViewParent;
        localRect.set(localView.getLeft(), localView.getTop(), localView.getRight(), localView.getBottom());
        bool = localRect.intersects(paramView.getLeft(), paramView.getTop(), paramView.getRight(), paramView.getBottom()) ^ true;
      }
      a(paramView, paramInt);
      if ((bool) && (localRect.intersect(paramView.getLeft(), paramView.getTop(), paramView.getRight(), paramView.getBottom()))) {
        ((View)localViewParent).invalidate(localRect);
      }
    }
    else
    {
      a(paramView, paramInt);
    }
  }
  
  public static WindowInsetsCompat onApplyWindowInsets(@NonNull View paramView, WindowInsetsCompat paramWindowInsetsCompat)
  {
    if (Build.VERSION.SDK_INT >= 21)
    {
      paramWindowInsetsCompat = (WindowInsets)WindowInsetsCompat.a(paramWindowInsetsCompat);
      WindowInsets localWindowInsets = paramView.onApplyWindowInsets(paramWindowInsetsCompat);
      paramView = paramWindowInsetsCompat;
      if (localWindowInsets != paramWindowInsetsCompat) {
        paramView = new WindowInsets(localWindowInsets);
      }
      return WindowInsetsCompat.a(paramView);
    }
    return paramWindowInsetsCompat;
  }
  
  @Deprecated
  public static void onInitializeAccessibilityEvent(View paramView, AccessibilityEvent paramAccessibilityEvent)
  {
    paramView.onInitializeAccessibilityEvent(paramAccessibilityEvent);
  }
  
  public static void onInitializeAccessibilityNodeInfo(@NonNull View paramView, AccessibilityNodeInfoCompat paramAccessibilityNodeInfoCompat)
  {
    paramView.onInitializeAccessibilityNodeInfo(paramAccessibilityNodeInfoCompat.unwrap());
  }
  
  @Deprecated
  public static void onPopulateAccessibilityEvent(View paramView, AccessibilityEvent paramAccessibilityEvent)
  {
    paramView.onPopulateAccessibilityEvent(paramAccessibilityEvent);
  }
  
  public static boolean performAccessibilityAction(@NonNull View paramView, int paramInt, Bundle paramBundle)
  {
    if (Build.VERSION.SDK_INT >= 16) {
      return paramView.performAccessibilityAction(paramInt, paramBundle);
    }
    return false;
  }
  
  public static void postInvalidateOnAnimation(@NonNull View paramView)
  {
    if (Build.VERSION.SDK_INT >= 16)
    {
      paramView.postInvalidateOnAnimation();
      return;
    }
    paramView.postInvalidate();
  }
  
  public static void postInvalidateOnAnimation(@NonNull View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    if (Build.VERSION.SDK_INT >= 16)
    {
      paramView.postInvalidateOnAnimation(paramInt1, paramInt2, paramInt3, paramInt4);
      return;
    }
    paramView.postInvalidate(paramInt1, paramInt2, paramInt3, paramInt4);
  }
  
  public static void postOnAnimation(@NonNull View paramView, Runnable paramRunnable)
  {
    if (Build.VERSION.SDK_INT >= 16)
    {
      paramView.postOnAnimation(paramRunnable);
      return;
    }
    paramView.postDelayed(paramRunnable, ValueAnimator.getFrameDelay());
  }
  
  public static void postOnAnimationDelayed(@NonNull View paramView, Runnable paramRunnable, long paramLong)
  {
    if (Build.VERSION.SDK_INT >= 16)
    {
      paramView.postOnAnimationDelayed(paramRunnable, paramLong);
      return;
    }
    paramView.postDelayed(paramRunnable, ValueAnimator.getFrameDelay() + paramLong);
  }
  
  public static void removeOnUnhandledKeyEventListener(@NonNull View paramView, @NonNull OnUnhandledKeyEventListenerCompat paramOnUnhandledKeyEventListenerCompat)
  {
    if (Build.VERSION.SDK_INT >= 28)
    {
      localObject = (Map)paramView.getTag(R.id.tag_unhandled_key_listeners);
      if (localObject == null) {
        return;
      }
      paramOnUnhandledKeyEventListenerCompat = (View.OnUnhandledKeyEventListener)((Map)localObject).get(paramOnUnhandledKeyEventListenerCompat);
      if (paramOnUnhandledKeyEventListenerCompat != null) {
        paramView.removeOnUnhandledKeyEventListener(paramOnUnhandledKeyEventListenerCompat);
      }
      return;
    }
    Object localObject = (ArrayList)paramView.getTag(R.id.tag_unhandled_key_listeners);
    if (localObject != null)
    {
      ((ArrayList)localObject).remove(paramOnUnhandledKeyEventListenerCompat);
      if (((ArrayList)localObject).size() == 0) {
        b.c(paramView);
      }
    }
  }
  
  public static void requestApplyInsets(@NonNull View paramView)
  {
    if (Build.VERSION.SDK_INT >= 20)
    {
      paramView.requestApplyInsets();
      return;
    }
    if (Build.VERSION.SDK_INT >= 16) {
      paramView.requestFitSystemWindows();
    }
  }
  
  @NonNull
  public static <T extends View> T requireViewById(@NonNull View paramView, @IdRes int paramInt)
  {
    if (Build.VERSION.SDK_INT >= 28) {
      return paramView.requireViewById(paramInt);
    }
    paramView = paramView.findViewById(paramInt);
    if (paramView != null) {
      return paramView;
    }
    throw new IllegalArgumentException("ID does not reference a View inside this View");
  }
  
  @Deprecated
  public static int resolveSizeAndState(int paramInt1, int paramInt2, int paramInt3)
  {
    return View.resolveSizeAndState(paramInt1, paramInt2, paramInt3);
  }
  
  public static boolean restoreDefaultFocus(@NonNull View paramView)
  {
    if (Build.VERSION.SDK_INT >= 26) {
      return paramView.restoreDefaultFocus();
    }
    return paramView.requestFocus();
  }
  
  public static void setAccessibilityDelegate(@NonNull View paramView, AccessibilityDelegateCompat paramAccessibilityDelegateCompat)
  {
    if (paramAccessibilityDelegateCompat == null) {
      paramAccessibilityDelegateCompat = null;
    } else {
      paramAccessibilityDelegateCompat = paramAccessibilityDelegateCompat.a();
    }
    paramView.setAccessibilityDelegate(paramAccessibilityDelegateCompat);
  }
  
  public static void setAccessibilityLiveRegion(@NonNull View paramView, int paramInt)
  {
    if (Build.VERSION.SDK_INT >= 19) {
      paramView.setAccessibilityLiveRegion(paramInt);
    }
  }
  
  @Deprecated
  public static void setActivated(View paramView, boolean paramBoolean)
  {
    paramView.setActivated(paramBoolean);
  }
  
  @Deprecated
  public static void setAlpha(View paramView, @FloatRange(from=0.0D, to=1.0D) float paramFloat)
  {
    paramView.setAlpha(paramFloat);
  }
  
  public static void setAutofillHints(@NonNull View paramView, @Nullable String... paramVarArgs)
  {
    if (Build.VERSION.SDK_INT >= 26) {
      paramView.setAutofillHints(paramVarArgs);
    }
  }
  
  public static void setBackground(@NonNull View paramView, @Nullable Drawable paramDrawable)
  {
    if (Build.VERSION.SDK_INT >= 16)
    {
      paramView.setBackground(paramDrawable);
      return;
    }
    paramView.setBackgroundDrawable(paramDrawable);
  }
  
  public static void setBackgroundTintList(@NonNull View paramView, ColorStateList paramColorStateList)
  {
    if (Build.VERSION.SDK_INT >= 21)
    {
      paramView.setBackgroundTintList(paramColorStateList);
      if (Build.VERSION.SDK_INT == 21)
      {
        paramColorStateList = paramView.getBackground();
        int i1;
        if ((paramView.getBackgroundTintList() == null) && (paramView.getBackgroundTintMode() == null)) {
          i1 = 0;
        } else {
          i1 = 1;
        }
        if ((paramColorStateList != null) && (i1 != 0))
        {
          if (paramColorStateList.isStateful()) {
            paramColorStateList.setState(paramView.getDrawableState());
          }
          paramView.setBackground(paramColorStateList);
        }
      }
    }
    else if ((paramView instanceof TintableBackgroundView))
    {
      ((TintableBackgroundView)paramView).setSupportBackgroundTintList(paramColorStateList);
    }
  }
  
  public static void setBackgroundTintMode(@NonNull View paramView, PorterDuff.Mode paramMode)
  {
    if (Build.VERSION.SDK_INT >= 21)
    {
      paramView.setBackgroundTintMode(paramMode);
      if (Build.VERSION.SDK_INT == 21)
      {
        paramMode = paramView.getBackground();
        int i1;
        if ((paramView.getBackgroundTintList() == null) && (paramView.getBackgroundTintMode() == null)) {
          i1 = 0;
        } else {
          i1 = 1;
        }
        if ((paramMode != null) && (i1 != 0))
        {
          if (paramMode.isStateful()) {
            paramMode.setState(paramView.getDrawableState());
          }
          paramView.setBackground(paramMode);
        }
      }
    }
    else if ((paramView instanceof TintableBackgroundView))
    {
      ((TintableBackgroundView)paramView).setSupportBackgroundTintMode(paramMode);
    }
  }
  
  @Deprecated
  public static void setChildrenDrawingOrderEnabled(ViewGroup paramViewGroup, boolean paramBoolean)
  {
    if (k == null)
    {
      try
      {
        k = ViewGroup.class.getDeclaredMethod("setChildrenDrawingOrderEnabled", new Class[] { Boolean.TYPE });
      }
      catch (NoSuchMethodException localNoSuchMethodException)
      {
        Log.e("ViewCompat", "Unable to find childrenDrawingOrderEnabled", localNoSuchMethodException);
      }
      k.setAccessible(true);
    }
    try
    {
      k.invoke(paramViewGroup, new Object[] { Boolean.valueOf(paramBoolean) });
      return;
    }
    catch (InvocationTargetException paramViewGroup)
    {
      Log.e("ViewCompat", "Unable to invoke childrenDrawingOrderEnabled", paramViewGroup);
      return;
    }
    catch (IllegalArgumentException paramViewGroup)
    {
      Log.e("ViewCompat", "Unable to invoke childrenDrawingOrderEnabled", paramViewGroup);
      return;
    }
    catch (IllegalAccessException paramViewGroup)
    {
      Log.e("ViewCompat", "Unable to invoke childrenDrawingOrderEnabled", paramViewGroup);
    }
  }
  
  public static void setClipBounds(@NonNull View paramView, Rect paramRect)
  {
    if (Build.VERSION.SDK_INT >= 18) {
      paramView.setClipBounds(paramRect);
    }
  }
  
  public static void setElevation(@NonNull View paramView, float paramFloat)
  {
    if (Build.VERSION.SDK_INT >= 21) {
      paramView.setElevation(paramFloat);
    }
  }
  
  @Deprecated
  public static void setFitsSystemWindows(View paramView, boolean paramBoolean)
  {
    paramView.setFitsSystemWindows(paramBoolean);
  }
  
  public static void setFocusedByDefault(@NonNull View paramView, boolean paramBoolean)
  {
    if (Build.VERSION.SDK_INT >= 26) {
      paramView.setFocusedByDefault(paramBoolean);
    }
  }
  
  public static void setHasTransientState(@NonNull View paramView, boolean paramBoolean)
  {
    if (Build.VERSION.SDK_INT >= 16) {
      paramView.setHasTransientState(paramBoolean);
    }
  }
  
  public static void setImportantForAccessibility(@NonNull View paramView, int paramInt)
  {
    if (Build.VERSION.SDK_INT >= 19)
    {
      paramView.setImportantForAccessibility(paramInt);
      return;
    }
    if (Build.VERSION.SDK_INT >= 16)
    {
      int i1 = paramInt;
      if (paramInt == 4) {
        i1 = 2;
      }
      paramView.setImportantForAccessibility(i1);
    }
  }
  
  public static void setImportantForAutofill(@NonNull View paramView, int paramInt)
  {
    if (Build.VERSION.SDK_INT >= 26) {
      paramView.setImportantForAutofill(paramInt);
    }
  }
  
  public static void setKeyboardNavigationCluster(@NonNull View paramView, boolean paramBoolean)
  {
    if (Build.VERSION.SDK_INT >= 26) {
      paramView.setKeyboardNavigationCluster(paramBoolean);
    }
  }
  
  public static void setLabelFor(@NonNull View paramView, @IdRes int paramInt)
  {
    if (Build.VERSION.SDK_INT >= 17) {
      paramView.setLabelFor(paramInt);
    }
  }
  
  public static void setLayerPaint(@NonNull View paramView, Paint paramPaint)
  {
    if (Build.VERSION.SDK_INT >= 17)
    {
      paramView.setLayerPaint(paramPaint);
      return;
    }
    paramView.setLayerType(paramView.getLayerType(), paramPaint);
    paramView.invalidate();
  }
  
  @Deprecated
  public static void setLayerType(View paramView, int paramInt, Paint paramPaint)
  {
    paramView.setLayerType(paramInt, paramPaint);
  }
  
  public static void setLayoutDirection(@NonNull View paramView, int paramInt)
  {
    if (Build.VERSION.SDK_INT >= 17) {
      paramView.setLayoutDirection(paramInt);
    }
  }
  
  public static void setNestedScrollingEnabled(@NonNull View paramView, boolean paramBoolean)
  {
    if (Build.VERSION.SDK_INT >= 21)
    {
      paramView.setNestedScrollingEnabled(paramBoolean);
      return;
    }
    if ((paramView instanceof NestedScrollingChild)) {
      ((NestedScrollingChild)paramView).setNestedScrollingEnabled(paramBoolean);
    }
  }
  
  public static void setNextClusterForwardId(@NonNull View paramView, int paramInt)
  {
    if (Build.VERSION.SDK_INT >= 26) {
      paramView.setNextClusterForwardId(paramInt);
    }
  }
  
  public static void setOnApplyWindowInsetsListener(@NonNull View paramView, OnApplyWindowInsetsListener paramOnApplyWindowInsetsListener)
  {
    if (Build.VERSION.SDK_INT >= 21)
    {
      if (paramOnApplyWindowInsetsListener == null)
      {
        paramView.setOnApplyWindowInsetsListener(null);
        return;
      }
      paramView.setOnApplyWindowInsetsListener(new View.OnApplyWindowInsetsListener()
      {
        public WindowInsets onApplyWindowInsets(View paramAnonymousView, WindowInsets paramAnonymousWindowInsets)
        {
          paramAnonymousWindowInsets = WindowInsetsCompat.a(paramAnonymousWindowInsets);
          return (WindowInsets)WindowInsetsCompat.a(a.onApplyWindowInsets(paramAnonymousView, paramAnonymousWindowInsets));
        }
      });
    }
  }
  
  @Deprecated
  public static void setOverScrollMode(View paramView, int paramInt)
  {
    paramView.setOverScrollMode(paramInt);
  }
  
  public static void setPaddingRelative(@NonNull View paramView, @Px int paramInt1, @Px int paramInt2, @Px int paramInt3, @Px int paramInt4)
  {
    if (Build.VERSION.SDK_INT >= 17)
    {
      paramView.setPaddingRelative(paramInt1, paramInt2, paramInt3, paramInt4);
      return;
    }
    paramView.setPadding(paramInt1, paramInt2, paramInt3, paramInt4);
  }
  
  @Deprecated
  public static void setPivotX(View paramView, float paramFloat)
  {
    paramView.setPivotX(paramFloat);
  }
  
  @Deprecated
  public static void setPivotY(View paramView, float paramFloat)
  {
    paramView.setPivotY(paramFloat);
  }
  
  public static void setPointerIcon(@NonNull View paramView, PointerIconCompat paramPointerIconCompat)
  {
    if (Build.VERSION.SDK_INT >= 24)
    {
      if (paramPointerIconCompat != null) {
        paramPointerIconCompat = paramPointerIconCompat.getPointerIcon();
      } else {
        paramPointerIconCompat = null;
      }
      paramView.setPointerIcon((PointerIcon)paramPointerIconCompat);
    }
  }
  
  @Deprecated
  public static void setRotation(View paramView, float paramFloat)
  {
    paramView.setRotation(paramFloat);
  }
  
  @Deprecated
  public static void setRotationX(View paramView, float paramFloat)
  {
    paramView.setRotationX(paramFloat);
  }
  
  @Deprecated
  public static void setRotationY(View paramView, float paramFloat)
  {
    paramView.setRotationY(paramFloat);
  }
  
  @Deprecated
  public static void setSaveFromParentEnabled(View paramView, boolean paramBoolean)
  {
    paramView.setSaveFromParentEnabled(paramBoolean);
  }
  
  @Deprecated
  public static void setScaleX(View paramView, float paramFloat)
  {
    paramView.setScaleX(paramFloat);
  }
  
  @Deprecated
  public static void setScaleY(View paramView, float paramFloat)
  {
    paramView.setScaleY(paramFloat);
  }
  
  public static void setScrollIndicators(@NonNull View paramView, int paramInt)
  {
    if (Build.VERSION.SDK_INT >= 23) {
      paramView.setScrollIndicators(paramInt);
    }
  }
  
  public static void setScrollIndicators(@NonNull View paramView, int paramInt1, int paramInt2)
  {
    if (Build.VERSION.SDK_INT >= 23) {
      paramView.setScrollIndicators(paramInt1, paramInt2);
    }
  }
  
  public static void setTooltipText(@NonNull View paramView, @Nullable CharSequence paramCharSequence)
  {
    if (Build.VERSION.SDK_INT >= 26) {
      paramView.setTooltipText(paramCharSequence);
    }
  }
  
  public static void setTransitionName(@NonNull View paramView, String paramString)
  {
    if (Build.VERSION.SDK_INT >= 21)
    {
      paramView.setTransitionName(paramString);
      return;
    }
    if (i == null) {
      i = new WeakHashMap();
    }
    i.put(paramView, paramString);
  }
  
  @Deprecated
  public static void setTranslationX(View paramView, float paramFloat)
  {
    paramView.setTranslationX(paramFloat);
  }
  
  @Deprecated
  public static void setTranslationY(View paramView, float paramFloat)
  {
    paramView.setTranslationY(paramFloat);
  }
  
  public static void setTranslationZ(@NonNull View paramView, float paramFloat)
  {
    if (Build.VERSION.SDK_INT >= 21) {
      paramView.setTranslationZ(paramFloat);
    }
  }
  
  @Deprecated
  public static void setX(View paramView, float paramFloat)
  {
    paramView.setX(paramFloat);
  }
  
  @Deprecated
  public static void setY(View paramView, float paramFloat)
  {
    paramView.setY(paramFloat);
  }
  
  public static void setZ(@NonNull View paramView, float paramFloat)
  {
    if (Build.VERSION.SDK_INT >= 21) {
      paramView.setZ(paramFloat);
    }
  }
  
  public static boolean startDragAndDrop(@NonNull View paramView, ClipData paramClipData, View.DragShadowBuilder paramDragShadowBuilder, Object paramObject, int paramInt)
  {
    if (Build.VERSION.SDK_INT >= 24) {
      return paramView.startDragAndDrop(paramClipData, paramDragShadowBuilder, paramObject, paramInt);
    }
    return paramView.startDrag(paramClipData, paramDragShadowBuilder, paramObject, paramInt);
  }
  
  public static boolean startNestedScroll(@NonNull View paramView, int paramInt)
  {
    if (Build.VERSION.SDK_INT >= 21) {
      return paramView.startNestedScroll(paramInt);
    }
    if ((paramView instanceof NestedScrollingChild)) {
      return ((NestedScrollingChild)paramView).startNestedScroll(paramInt);
    }
    return false;
  }
  
  public static boolean startNestedScroll(@NonNull View paramView, int paramInt1, int paramInt2)
  {
    if ((paramView instanceof NestedScrollingChild2)) {
      return ((NestedScrollingChild2)paramView).startNestedScroll(paramInt1, paramInt2);
    }
    if (paramInt2 == 0) {
      return startNestedScroll(paramView, paramInt1);
    }
    return false;
  }
  
  public static void stopNestedScroll(@NonNull View paramView)
  {
    if (Build.VERSION.SDK_INT >= 21)
    {
      paramView.stopNestedScroll();
      return;
    }
    if ((paramView instanceof NestedScrollingChild)) {
      ((NestedScrollingChild)paramView).stopNestedScroll();
    }
  }
  
  public static void stopNestedScroll(@NonNull View paramView, int paramInt)
  {
    if ((paramView instanceof NestedScrollingChild2))
    {
      ((NestedScrollingChild2)paramView).stopNestedScroll(paramInt);
      return;
    }
    if (paramInt == 0) {
      stopNestedScroll(paramView);
    }
  }
  
  public static void updateDragShadow(@NonNull View paramView, View.DragShadowBuilder paramDragShadowBuilder)
  {
    if (Build.VERSION.SDK_INT >= 24) {
      paramView.updateDragShadow(paramDragShadowBuilder);
    }
  }
  
  @Retention(RetentionPolicy.SOURCE)
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
  public static @interface FocusDirection {}
  
  @Retention(RetentionPolicy.SOURCE)
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
  public static @interface FocusRealDirection {}
  
  @Retention(RetentionPolicy.SOURCE)
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
  public static @interface FocusRelativeDirection {}
  
  @Retention(RetentionPolicy.SOURCE)
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
  public static @interface NestedScrollType {}
  
  public static abstract interface OnUnhandledKeyEventListenerCompat
  {
    public abstract boolean onUnhandledKeyEvent(View paramView, KeyEvent paramKeyEvent);
  }
  
  @Retention(RetentionPolicy.SOURCE)
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
  public static @interface ScrollAxis {}
  
  @Retention(RetentionPolicy.SOURCE)
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
  public static @interface ScrollIndicators {}
  
  @RequiresApi(28)
  private static class a
    implements View.OnUnhandledKeyEventListener
  {
    private ViewCompat.OnUnhandledKeyEventListenerCompat a;
    
    a(ViewCompat.OnUnhandledKeyEventListenerCompat paramOnUnhandledKeyEventListenerCompat)
    {
      a = paramOnUnhandledKeyEventListenerCompat;
    }
    
    public boolean onUnhandledKeyEvent(View paramView, KeyEvent paramKeyEvent)
    {
      return a.onUnhandledKeyEvent(paramView, paramKeyEvent);
    }
  }
  
  static class b
  {
    private static final ArrayList<WeakReference<View>> a = new ArrayList();
    @Nullable
    private WeakHashMap<View, Boolean> b = null;
    private SparseArray<WeakReference<View>> c = null;
    private WeakReference<KeyEvent> d = null;
    
    b() {}
    
    static b a(View paramView)
    {
      b localB2 = (b)paramView.getTag(R.id.tag_unhandled_key_event_manager);
      b localB1 = localB2;
      if (localB2 == null)
      {
        localB1 = new b();
        paramView.setTag(R.id.tag_unhandled_key_event_manager, localB1);
      }
      return localB1;
    }
    
    private SparseArray<WeakReference<View>> a()
    {
      if (c == null) {
        c = new SparseArray();
      }
      return c;
    }
    
    @Nullable
    private View b(View paramView, KeyEvent paramKeyEvent)
    {
      if (b != null)
      {
        if (!b.containsKey(paramView)) {
          return null;
        }
        if ((paramView instanceof ViewGroup))
        {
          ViewGroup localViewGroup = (ViewGroup)paramView;
          int i = localViewGroup.getChildCount() - 1;
          while (i >= 0)
          {
            View localView = b(localViewGroup.getChildAt(i), paramKeyEvent);
            if (localView != null) {
              return localView;
            }
            i -= 1;
          }
        }
        if (c(paramView, paramKeyEvent)) {
          return paramView;
        }
        return null;
      }
      return null;
    }
    
    private void b()
    {
      if (b != null) {
        b.clear();
      }
      if (a.isEmpty()) {
        return;
      }
      for (;;)
      {
        int i;
        synchronized (a)
        {
          if (b == null) {
            b = new WeakHashMap();
          }
          i = a.size() - 1;
          if (i >= 0)
          {
            Object localObject1 = (View)((WeakReference)a.get(i)).get();
            if (localObject1 == null)
            {
              a.remove(i);
            }
            else
            {
              b.put(localObject1, Boolean.TRUE);
              localObject1 = ((View)localObject1).getParent();
              if ((localObject1 instanceof View))
              {
                b.put((View)localObject1, Boolean.TRUE);
                localObject1 = ((ViewParent)localObject1).getParent();
                continue;
              }
            }
          }
          else
          {
            return;
          }
        }
        i -= 1;
      }
    }
    
    static void b(View paramView)
    {
      synchronized (a)
      {
        Iterator localIterator = a.iterator();
        while (localIterator.hasNext()) {
          if (((WeakReference)localIterator.next()).get() == paramView) {
            return;
          }
        }
        a.add(new WeakReference(paramView));
        return;
      }
    }
    
    static void c(View paramView)
    {
      ArrayList localArrayList = a;
      int i = 0;
      for (;;)
      {
        try
        {
          if (i < a.size())
          {
            if (((WeakReference)a.get(i)).get() == paramView) {
              a.remove(i);
            }
          }
          else {
            return;
          }
        }
        finally {}
        i += 1;
      }
    }
    
    private boolean c(@NonNull View paramView, @NonNull KeyEvent paramKeyEvent)
    {
      ArrayList localArrayList = (ArrayList)paramView.getTag(R.id.tag_unhandled_key_listeners);
      if (localArrayList != null)
      {
        int i = localArrayList.size() - 1;
        while (i >= 0)
        {
          if (((ViewCompat.OnUnhandledKeyEventListenerCompat)localArrayList.get(i)).onUnhandledKeyEvent(paramView, paramKeyEvent)) {
            return true;
          }
          i -= 1;
        }
      }
      return false;
    }
    
    boolean a(KeyEvent paramKeyEvent)
    {
      if ((d != null) && (d.get() == paramKeyEvent)) {
        return false;
      }
      d = new WeakReference(paramKeyEvent);
      Object localObject2 = null;
      SparseArray localSparseArray = a();
      Object localObject1 = localObject2;
      if (paramKeyEvent.getAction() == 1)
      {
        int i = localSparseArray.indexOfKey(paramKeyEvent.getKeyCode());
        localObject1 = localObject2;
        if (i >= 0)
        {
          localObject1 = (WeakReference)localSparseArray.valueAt(i);
          localSparseArray.removeAt(i);
        }
      }
      localObject2 = localObject1;
      if (localObject1 == null) {
        localObject2 = (WeakReference)localSparseArray.get(paramKeyEvent.getKeyCode());
      }
      if (localObject2 != null)
      {
        localObject1 = (View)((WeakReference)localObject2).get();
        if ((localObject1 != null) && (ViewCompat.isAttachedToWindow((View)localObject1))) {
          c((View)localObject1, paramKeyEvent);
        }
        return true;
      }
      return false;
    }
    
    boolean a(View paramView, KeyEvent paramKeyEvent)
    {
      if (paramKeyEvent.getAction() == 0) {
        b();
      }
      paramView = b(paramView, paramKeyEvent);
      if (paramKeyEvent.getAction() == 0)
      {
        int i = paramKeyEvent.getKeyCode();
        if ((paramView != null) && (!KeyEvent.isModifierKey(i))) {
          a().put(i, new WeakReference(paramView));
        }
      }
      return paramView != null;
    }
  }
}
