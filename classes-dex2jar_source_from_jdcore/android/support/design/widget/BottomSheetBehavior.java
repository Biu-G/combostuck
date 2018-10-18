package android.support.design.widget;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.os.Build.VERSION;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.ClassLoaderCreator;
import android.os.Parcelable.Creator;
import android.support.annotation.NonNull;
import android.support.annotation.RestrictTo;
import android.support.annotation.VisibleForTesting;
import android.support.design.R.dimen;
import android.support.design.R.styleable;
import android.support.v4.math.MathUtils;
import android.support.v4.view.AbsSavedState;
import android.support.v4.view.ViewCompat;
import android.support.v4.widget.ViewDragHelper;
import android.support.v4.widget.ViewDragHelper.Callback;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import java.lang.annotation.Annotation;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;

public class BottomSheetBehavior<V extends View>
  extends CoordinatorLayout.Behavior<V>
{
  public static final int PEEK_HEIGHT_AUTO = -1;
  public static final int STATE_COLLAPSED = 4;
  public static final int STATE_DRAGGING = 1;
  public static final int STATE_EXPANDED = 3;
  public static final int STATE_HALF_EXPANDED = 6;
  public static final int STATE_HIDDEN = 5;
  public static final int STATE_SETTLING = 2;
  int a;
  int b;
  int c;
  boolean d;
  int e = 4;
  ViewDragHelper f;
  int g;
  WeakReference<V> h;
  WeakReference<View> i;
  int j;
  boolean k;
  private boolean l = true;
  private float m;
  private int n;
  private boolean o;
  private int p;
  private int q;
  private boolean r;
  private boolean s;
  private int t;
  private boolean u;
  private BottomSheetCallback v;
  private VelocityTracker w;
  private int x;
  private Map<View, Integer> y;
  private final ViewDragHelper.Callback z = new ViewDragHelper.Callback()
  {
    public int clampViewPositionHorizontal(@NonNull View paramAnonymousView, int paramAnonymousInt1, int paramAnonymousInt2)
    {
      return paramAnonymousView.getLeft();
    }
    
    public int clampViewPositionVertical(@NonNull View paramAnonymousView, int paramAnonymousInt1, int paramAnonymousInt2)
    {
      int i = BottomSheetBehavior.b(BottomSheetBehavior.this);
      if (d) {
        paramAnonymousInt2 = g;
      } else {
        paramAnonymousInt2 = c;
      }
      return MathUtils.clamp(paramAnonymousInt1, i, paramAnonymousInt2);
    }
    
    public int getViewVerticalDragRange(@NonNull View paramAnonymousView)
    {
      if (d) {
        return g;
      }
      return c;
    }
    
    public void onViewDragStateChanged(int paramAnonymousInt)
    {
      if (paramAnonymousInt == 1) {
        a(1);
      }
    }
    
    public void onViewPositionChanged(@NonNull View paramAnonymousView, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3, int paramAnonymousInt4)
    {
      b(paramAnonymousInt2);
    }
    
    public void onViewReleased(@NonNull View paramAnonymousView, float paramAnonymousFloat1, float paramAnonymousFloat2)
    {
      int j = 4;
      if (paramAnonymousFloat2 < 0.0F) {
        if (BottomSheetBehavior.a(BottomSheetBehavior.this)) {
          i = a;
        }
      }
      for (;;)
      {
        j = 3;
        break label333;
        if (paramAnonymousView.getTop() > b)
        {
          i = b;
          j = 6;
          break label333;
        }
        label64:
        i = 0;
        continue;
        if ((d) && (a(paramAnonymousView, paramAnonymousFloat2)) && ((paramAnonymousView.getTop() > c) || (Math.abs(paramAnonymousFloat1) < Math.abs(paramAnonymousFloat2))))
        {
          i = g;
          j = 5;
          break label333;
        }
        if ((paramAnonymousFloat2 != 0.0F) && (Math.abs(paramAnonymousFloat1) <= Math.abs(paramAnonymousFloat2)))
        {
          i = c;
          break label333;
        }
        i = paramAnonymousView.getTop();
        if (!BottomSheetBehavior.a(BottomSheetBehavior.this)) {
          break label235;
        }
        if (Math.abs(i - a) >= Math.abs(i - c)) {
          break;
        }
        i = a;
      }
      for (int i = c;; i = c)
      {
        break label333;
        label235:
        if (i < b)
        {
          if (i < Math.abs(i - c)) {
            break label64;
          }
          i = b;
          break;
        }
        if (Math.abs(i - b) < Math.abs(i - c))
        {
          i = b;
          break;
        }
      }
      label333:
      if (f.settleCapturedViewAt(paramAnonymousView.getLeft(), i))
      {
        a(2);
        ViewCompat.postOnAnimation(paramAnonymousView, new BottomSheetBehavior.a(BottomSheetBehavior.this, paramAnonymousView, j));
        return;
      }
      a(j);
    }
    
    public boolean tryCaptureView(@NonNull View paramAnonymousView, int paramAnonymousInt)
    {
      if (e == 1) {
        return false;
      }
      if (k) {
        return false;
      }
      if ((e == 3) && (j == paramAnonymousInt))
      {
        View localView = (View)i.get();
        if ((localView != null) && (localView.canScrollVertically(-1))) {
          return false;
        }
      }
      return (h != null) && (h.get() == paramAnonymousView);
    }
  };
  
  public BottomSheetBehavior() {}
  
  public BottomSheetBehavior(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    paramAttributeSet = paramContext.obtainStyledAttributes(paramAttributeSet, R.styleable.BottomSheetBehavior_Layout);
    TypedValue localTypedValue = paramAttributeSet.peekValue(R.styleable.BottomSheetBehavior_Layout_behavior_peekHeight);
    if ((localTypedValue != null) && (data == -1)) {
      setPeekHeight(data);
    } else {
      setPeekHeight(paramAttributeSet.getDimensionPixelSize(R.styleable.BottomSheetBehavior_Layout_behavior_peekHeight, -1));
    }
    setHideable(paramAttributeSet.getBoolean(R.styleable.BottomSheetBehavior_Layout_behavior_hideable, false));
    setFitToContents(paramAttributeSet.getBoolean(R.styleable.BottomSheetBehavior_Layout_behavior_fitToContents, true));
    setSkipCollapsed(paramAttributeSet.getBoolean(R.styleable.BottomSheetBehavior_Layout_behavior_skipCollapsed, false));
    paramAttributeSet.recycle();
    m = ViewConfiguration.get(paramContext).getScaledMaximumFlingVelocity();
  }
  
  private void a()
  {
    if (l)
    {
      c = Math.max(g - q, a);
      return;
    }
    c = (g - q);
  }
  
  private void a(boolean paramBoolean)
  {
    if (h == null) {
      return;
    }
    Object localObject = ((View)h.get()).getParent();
    if (!(localObject instanceof CoordinatorLayout)) {
      return;
    }
    localObject = (CoordinatorLayout)localObject;
    int i2 = ((CoordinatorLayout)localObject).getChildCount();
    if ((Build.VERSION.SDK_INT >= 16) && (paramBoolean)) {
      if (y == null) {
        y = new HashMap(i2);
      } else {
        return;
      }
    }
    int i1 = 0;
    while (i1 < i2)
    {
      View localView = ((CoordinatorLayout)localObject).getChildAt(i1);
      if (localView != h.get()) {
        if (!paramBoolean)
        {
          if ((y != null) && (y.containsKey(localView))) {
            ViewCompat.setImportantForAccessibility(localView, ((Integer)y.get(localView)).intValue());
          }
        }
        else
        {
          if (Build.VERSION.SDK_INT >= 16) {
            y.put(localView, Integer.valueOf(localView.getImportantForAccessibility()));
          }
          ViewCompat.setImportantForAccessibility(localView, 4);
        }
      }
      i1 += 1;
    }
    if (!paramBoolean) {
      y = null;
    }
  }
  
  private void b()
  {
    j = -1;
    if (w != null)
    {
      w.recycle();
      w = null;
    }
  }
  
  private float c()
  {
    if (w == null) {
      return 0.0F;
    }
    w.computeCurrentVelocity(1000, m);
    return w.getYVelocity(j);
  }
  
  private int d()
  {
    if (l) {
      return a;
    }
    return 0;
  }
  
  public static <V extends View> BottomSheetBehavior<V> from(V paramV)
  {
    paramV = paramV.getLayoutParams();
    if ((paramV instanceof CoordinatorLayout.LayoutParams))
    {
      paramV = ((CoordinatorLayout.LayoutParams)paramV).getBehavior();
      if ((paramV instanceof BottomSheetBehavior)) {
        return (BottomSheetBehavior)paramV;
      }
      throw new IllegalArgumentException("The view is not associated with BottomSheetBehavior");
    }
    throw new IllegalArgumentException("The view is not a child of CoordinatorLayout");
  }
  
  @VisibleForTesting
  View a(View paramView)
  {
    if (ViewCompat.isNestedScrollingEnabled(paramView)) {
      return paramView;
    }
    if ((paramView instanceof ViewGroup))
    {
      paramView = (ViewGroup)paramView;
      int i1 = 0;
      int i2 = paramView.getChildCount();
      while (i1 < i2)
      {
        View localView = a(paramView.getChildAt(i1));
        if (localView != null) {
          return localView;
        }
        i1 += 1;
      }
    }
    return null;
  }
  
  void a(int paramInt)
  {
    if (e == paramInt) {
      return;
    }
    e = paramInt;
    if ((paramInt != 6) && (paramInt != 3))
    {
      if ((paramInt == 5) || (paramInt == 4)) {
        a(false);
      }
    }
    else {
      a(true);
    }
    View localView = (View)h.get();
    if ((localView != null) && (v != null)) {
      v.onStateChanged(localView, paramInt);
    }
  }
  
  void a(View paramView, int paramInt)
  {
    int i1;
    if (paramInt == 4)
    {
      i1 = c;
    }
    else if (paramInt == 6)
    {
      i1 = b;
      if ((l) && (i1 <= a))
      {
        i1 = a;
        paramInt = 3;
      }
    }
    else if (paramInt == 3)
    {
      i1 = d();
    }
    else
    {
      if ((!d) || (paramInt != 5)) {
        break label124;
      }
      i1 = g;
    }
    if (f.smoothSlideViewTo(paramView, paramView.getLeft(), i1))
    {
      a(2);
      ViewCompat.postOnAnimation(paramView, new a(paramView, paramInt));
      return;
    }
    a(paramInt);
    return;
    label124:
    paramView = new StringBuilder();
    paramView.append("Illegal state argument: ");
    paramView.append(paramInt);
    throw new IllegalArgumentException(paramView.toString());
  }
  
  boolean a(View paramView, float paramFloat)
  {
    if (r) {
      return true;
    }
    if (paramView.getTop() < c) {
      return false;
    }
    return Math.abs(paramView.getTop() + paramFloat * 0.1F - c) / n > 0.5F;
  }
  
  void b(int paramInt)
  {
    View localView = (View)h.get();
    if ((localView != null) && (v != null))
    {
      if (paramInt > c)
      {
        v.onSlide(localView, (c - paramInt) / (g - c));
        return;
      }
      v.onSlide(localView, (c - paramInt) / (c - d()));
    }
  }
  
  public final int getPeekHeight()
  {
    if (o) {
      return -1;
    }
    return n;
  }
  
  public boolean getSkipCollapsed()
  {
    return r;
  }
  
  public final int getState()
  {
    return e;
  }
  
  public boolean isFitToContents()
  {
    return l;
  }
  
  public boolean isHideable()
  {
    return d;
  }
  
  public boolean onInterceptTouchEvent(CoordinatorLayout paramCoordinatorLayout, V paramV, MotionEvent paramMotionEvent)
  {
    boolean bool1 = paramV.isShown();
    boolean bool2 = false;
    if (!bool1)
    {
      s = true;
      return false;
    }
    int i1 = paramMotionEvent.getActionMasked();
    if (i1 == 0) {
      b();
    }
    if (w == null) {
      w = VelocityTracker.obtain();
    }
    w.addMovement(paramMotionEvent);
    Object localObject = null;
    if (i1 != 3)
    {
      switch (i1)
      {
      default: 
        break;
      case 0: 
        int i2 = (int)paramMotionEvent.getX();
        x = ((int)paramMotionEvent.getY());
        View localView;
        if (i != null) {
          localView = (View)i.get();
        } else {
          localView = null;
        }
        if ((localView != null) && (paramCoordinatorLayout.isPointInChildBounds(localView, i2, x)))
        {
          j = paramMotionEvent.getPointerId(paramMotionEvent.getActionIndex());
          k = true;
        }
        if ((j == -1) && (!paramCoordinatorLayout.isPointInChildBounds(paramV, i2, x))) {
          bool1 = true;
        } else {
          bool1 = false;
        }
        s = bool1;
        break;
      }
    }
    else
    {
      k = false;
      j = -1;
      if (s)
      {
        s = false;
        return false;
      }
    }
    if ((!s) && (f != null) && (f.shouldInterceptTouchEvent(paramMotionEvent))) {
      return true;
    }
    paramV = localObject;
    if (i != null) {
      paramV = (View)i.get();
    }
    bool1 = bool2;
    if (i1 == 2)
    {
      bool1 = bool2;
      if (paramV != null)
      {
        bool1 = bool2;
        if (!s)
        {
          bool1 = bool2;
          if (e != 1)
          {
            bool1 = bool2;
            if (!paramCoordinatorLayout.isPointInChildBounds(paramV, (int)paramMotionEvent.getX(), (int)paramMotionEvent.getY()))
            {
              bool1 = bool2;
              if (f != null)
              {
                bool1 = bool2;
                if (Math.abs(x - paramMotionEvent.getY()) > f.getTouchSlop()) {
                  bool1 = true;
                }
              }
            }
          }
        }
      }
    }
    return bool1;
  }
  
  public boolean onLayoutChild(CoordinatorLayout paramCoordinatorLayout, V paramV, int paramInt)
  {
    if ((ViewCompat.getFitsSystemWindows(paramCoordinatorLayout)) && (!ViewCompat.getFitsSystemWindows(paramV))) {
      paramV.setFitsSystemWindows(true);
    }
    int i1 = paramV.getTop();
    paramCoordinatorLayout.onLayoutChild(paramV, paramInt);
    g = paramCoordinatorLayout.getHeight();
    if (o)
    {
      if (p == 0) {
        p = paramCoordinatorLayout.getResources().getDimensionPixelSize(R.dimen.design_bottom_sheet_peek_height_min);
      }
      q = Math.max(p, g - paramCoordinatorLayout.getWidth() * 9 / 16);
    }
    else
    {
      q = n;
    }
    a = Math.max(0, g - paramV.getHeight());
    b = (g / 2);
    a();
    if (e == 3) {
      ViewCompat.offsetTopAndBottom(paramV, d());
    } else if (e == 6) {
      ViewCompat.offsetTopAndBottom(paramV, b);
    } else if ((d) && (e == 5)) {
      ViewCompat.offsetTopAndBottom(paramV, g);
    } else if (e == 4) {
      ViewCompat.offsetTopAndBottom(paramV, c);
    } else if ((e == 1) || (e == 2)) {
      ViewCompat.offsetTopAndBottom(paramV, i1 - paramV.getTop());
    }
    if (f == null) {
      f = ViewDragHelper.create(paramCoordinatorLayout, z);
    }
    h = new WeakReference(paramV);
    i = new WeakReference(a(paramV));
    return true;
  }
  
  public boolean onNestedPreFling(@NonNull CoordinatorLayout paramCoordinatorLayout, @NonNull V paramV, @NonNull View paramView, float paramFloat1, float paramFloat2)
  {
    return (paramView == i.get()) && ((e != 3) || (super.onNestedPreFling(paramCoordinatorLayout, paramV, paramView, paramFloat1, paramFloat2)));
  }
  
  public void onNestedPreScroll(@NonNull CoordinatorLayout paramCoordinatorLayout, @NonNull V paramV, @NonNull View paramView, int paramInt1, int paramInt2, @NonNull int[] paramArrayOfInt, int paramInt3)
  {
    if (paramInt3 == 1) {
      return;
    }
    if (paramView != (View)i.get()) {
      return;
    }
    paramInt1 = paramV.getTop();
    paramInt3 = paramInt1 - paramInt2;
    if (paramInt2 > 0)
    {
      if (paramInt3 < d())
      {
        paramArrayOfInt[1] = (paramInt1 - d());
        ViewCompat.offsetTopAndBottom(paramV, -paramArrayOfInt[1]);
        a(3);
      }
      else
      {
        paramArrayOfInt[1] = paramInt2;
        ViewCompat.offsetTopAndBottom(paramV, -paramInt2);
        a(1);
      }
    }
    else if ((paramInt2 < 0) && (!paramView.canScrollVertically(-1))) {
      if ((paramInt3 > c) && (!d))
      {
        paramArrayOfInt[1] = (paramInt1 - c);
        ViewCompat.offsetTopAndBottom(paramV, -paramArrayOfInt[1]);
        a(4);
      }
      else
      {
        paramArrayOfInt[1] = paramInt2;
        ViewCompat.offsetTopAndBottom(paramV, -paramInt2);
        a(1);
      }
    }
    b(paramV.getTop());
    t = paramInt2;
    u = true;
  }
  
  public void onRestoreInstanceState(CoordinatorLayout paramCoordinatorLayout, V paramV, Parcelable paramParcelable)
  {
    paramParcelable = (SavedState)paramParcelable;
    super.onRestoreInstanceState(paramCoordinatorLayout, paramV, paramParcelable.getSuperState());
    if ((a != 1) && (a != 2))
    {
      e = a;
      return;
    }
    e = 4;
  }
  
  public Parcelable onSaveInstanceState(CoordinatorLayout paramCoordinatorLayout, V paramV)
  {
    return new SavedState(super.onSaveInstanceState(paramCoordinatorLayout, paramV), e);
  }
  
  public boolean onStartNestedScroll(@NonNull CoordinatorLayout paramCoordinatorLayout, @NonNull V paramV, @NonNull View paramView1, @NonNull View paramView2, int paramInt1, int paramInt2)
  {
    boolean bool = false;
    t = 0;
    u = false;
    if ((paramInt1 & 0x2) != 0) {
      bool = true;
    }
    return bool;
  }
  
  public void onStopNestedScroll(@NonNull CoordinatorLayout paramCoordinatorLayout, @NonNull V paramV, @NonNull View paramView, int paramInt)
  {
    paramInt = paramV.getTop();
    int i2 = d();
    int i1 = 3;
    if (paramInt == i2)
    {
      a(3);
      return;
    }
    if (paramView == i.get())
    {
      if (!u) {
        return;
      }
      if (t > 0)
      {
        paramInt = d();
      }
      else if ((d) && (a(paramV, c())))
      {
        paramInt = g;
        i1 = 5;
      }
      else
      {
        if (t == 0)
        {
          paramInt = paramV.getTop();
          if (l)
          {
            if (Math.abs(paramInt - a) < Math.abs(paramInt - c))
            {
              paramInt = a;
              break label248;
            }
            paramInt = c;
          }
          else
          {
            if (paramInt < b) {
              if (paramInt < Math.abs(paramInt - c))
              {
                paramInt = 0;
                break label248;
              }
            }
            for (paramInt = b;; paramInt = b)
            {
              i1 = 6;
              break label248;
              if (Math.abs(paramInt - b) >= Math.abs(paramInt - c)) {
                break;
              }
            }
            paramInt = c;
          }
        }
        else
        {
          paramInt = c;
        }
        i1 = 4;
      }
      label248:
      if (f.smoothSlideViewTo(paramV, paramV.getLeft(), paramInt))
      {
        a(2);
        ViewCompat.postOnAnimation(paramV, new a(paramV, i1));
      }
      else
      {
        a(i1);
      }
      u = false;
      return;
    }
  }
  
  public boolean onTouchEvent(CoordinatorLayout paramCoordinatorLayout, V paramV, MotionEvent paramMotionEvent)
  {
    if (!paramV.isShown()) {
      return false;
    }
    int i1 = paramMotionEvent.getActionMasked();
    if ((e == 1) && (i1 == 0)) {
      return true;
    }
    if (f != null) {
      f.processTouchEvent(paramMotionEvent);
    }
    if (i1 == 0) {
      b();
    }
    if (w == null) {
      w = VelocityTracker.obtain();
    }
    w.addMovement(paramMotionEvent);
    if ((i1 == 2) && (!s) && (Math.abs(x - paramMotionEvent.getY()) > f.getTouchSlop())) {
      f.captureChildView(paramV, paramMotionEvent.getPointerId(paramMotionEvent.getActionIndex()));
    }
    return s ^ true;
  }
  
  public void setBottomSheetCallback(BottomSheetCallback paramBottomSheetCallback)
  {
    v = paramBottomSheetCallback;
  }
  
  public void setFitToContents(boolean paramBoolean)
  {
    if (l == paramBoolean) {
      return;
    }
    l = paramBoolean;
    if (h != null) {
      a();
    }
    int i1;
    if ((l) && (e == 6)) {
      i1 = 3;
    } else {
      i1 = e;
    }
    a(i1);
  }
  
  public void setHideable(boolean paramBoolean)
  {
    d = paramBoolean;
  }
  
  public final void setPeekHeight(int paramInt)
  {
    int i1 = 1;
    if (paramInt == -1)
    {
      if (!o)
      {
        o = true;
        paramInt = i1;
        break label73;
      }
    }
    else {
      if ((o) || (n != paramInt)) {
        break label47;
      }
    }
    paramInt = 0;
    break label73;
    label47:
    o = false;
    n = Math.max(0, paramInt);
    c = (g - paramInt);
    paramInt = i1;
    label73:
    if ((paramInt != 0) && (e == 4) && (h != null))
    {
      View localView = (View)h.get();
      if (localView != null) {
        localView.requestLayout();
      }
    }
  }
  
  public void setSkipCollapsed(boolean paramBoolean)
  {
    r = paramBoolean;
  }
  
  public final void setState(final int paramInt)
  {
    if (paramInt == e) {
      return;
    }
    if (h == null)
    {
      if ((paramInt == 4) || (paramInt == 3) || (paramInt == 6) || ((d) && (paramInt == 5))) {
        e = paramInt;
      }
      return;
    }
    final View localView = (View)h.get();
    if (localView == null) {
      return;
    }
    ViewParent localViewParent = localView.getParent();
    if ((localViewParent != null) && (localViewParent.isLayoutRequested()) && (ViewCompat.isAttachedToWindow(localView)))
    {
      localView.post(new Runnable()
      {
        public void run()
        {
          a(localView, paramInt);
        }
      });
      return;
    }
    a(localView, paramInt);
  }
  
  public static abstract class BottomSheetCallback
  {
    public BottomSheetCallback() {}
    
    public abstract void onSlide(@NonNull View paramView, float paramFloat);
    
    public abstract void onStateChanged(@NonNull View paramView, int paramInt);
  }
  
  protected static class SavedState
    extends AbsSavedState
  {
    public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.ClassLoaderCreator()
    {
      public BottomSheetBehavior.SavedState a(Parcel paramAnonymousParcel)
      {
        return new BottomSheetBehavior.SavedState(paramAnonymousParcel, null);
      }
      
      public BottomSheetBehavior.SavedState a(Parcel paramAnonymousParcel, ClassLoader paramAnonymousClassLoader)
      {
        return new BottomSheetBehavior.SavedState(paramAnonymousParcel, paramAnonymousClassLoader);
      }
      
      public BottomSheetBehavior.SavedState[] a(int paramAnonymousInt)
      {
        return new BottomSheetBehavior.SavedState[paramAnonymousInt];
      }
    };
    final int a;
    
    public SavedState(Parcel paramParcel)
    {
      this(paramParcel, null);
    }
    
    public SavedState(Parcel paramParcel, ClassLoader paramClassLoader)
    {
      super(paramClassLoader);
      a = paramParcel.readInt();
    }
    
    public SavedState(Parcelable paramParcelable, int paramInt)
    {
      super();
      a = paramInt;
    }
    
    public void writeToParcel(Parcel paramParcel, int paramInt)
    {
      super.writeToParcel(paramParcel, paramInt);
      paramParcel.writeInt(a);
    }
  }
  
  @Retention(RetentionPolicy.SOURCE)
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
  public static @interface State {}
  
  private class a
    implements Runnable
  {
    private final View b;
    private final int c;
    
    a(View paramView, int paramInt)
    {
      b = paramView;
      c = paramInt;
    }
    
    public void run()
    {
      if ((f != null) && (f.continueSettling(true)))
      {
        ViewCompat.postOnAnimation(b, this);
        return;
      }
      a(c);
    }
  }
}
