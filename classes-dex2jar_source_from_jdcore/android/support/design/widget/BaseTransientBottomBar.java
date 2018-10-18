package android.support.design.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.animation.ValueAnimator.AnimatorUpdateListener;
import android.content.Context;
import android.content.res.TypedArray;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Handler;
import android.os.Handler.Callback;
import android.os.Looper;
import android.os.Message;
import android.support.annotation.IntRange;
import android.support.annotation.LayoutRes;
import android.support.annotation.NonNull;
import android.support.annotation.RestrictTo;
import android.support.design.R.attr;
import android.support.design.R.layout;
import android.support.design.R.styleable;
import android.support.design.animation.AnimationUtils;
import android.support.design.internal.ThemeEnforcement;
import android.support.design.snackbar.ContentViewCallback;
import android.support.v4.view.AccessibilityDelegateCompat;
import android.support.v4.view.OnApplyWindowInsetsListener;
import android.support.v4.view.ViewCompat;
import android.support.v4.view.WindowInsetsCompat;
import android.support.v4.view.accessibility.AccessibilityManagerCompat;
import android.support.v4.view.accessibility.AccessibilityManagerCompat.TouchExplorationStateChangeListener;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewGroup.MarginLayoutParams;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityManager;
import android.widget.FrameLayout;
import java.lang.annotation.Annotation;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.List;

public abstract class BaseTransientBottomBar<B extends BaseTransientBottomBar<B>>
{
  public static final int LENGTH_INDEFINITE = -2;
  public static final int LENGTH_LONG = 0;
  public static final int LENGTH_SHORT = -1;
  static final Handler a = new Handler(Looper.getMainLooper(), new Handler.Callback()
  {
    public boolean handleMessage(Message paramAnonymousMessage)
    {
      switch (what)
      {
      default: 
        return false;
      case 1: 
        ((BaseTransientBottomBar)obj).a(arg1);
        return true;
      }
      ((BaseTransientBottomBar)obj).a();
      return true;
    }
  });
  private static final boolean c;
  private static final int[] d;
  final g.a b = new g.a()
  {
    public void a()
    {
      BaseTransientBottomBar.a.sendMessage(BaseTransientBottomBar.a.obtainMessage(0, BaseTransientBottomBar.this));
    }
    
    public void a(int paramAnonymousInt)
    {
      BaseTransientBottomBar.a.sendMessage(BaseTransientBottomBar.a.obtainMessage(1, paramAnonymousInt, 0, BaseTransientBottomBar.this));
    }
  };
  private final ViewGroup e;
  private final Context f;
  private final ContentViewCallback g;
  private int h;
  private List<BaseCallback<B>> i;
  private Behavior j;
  private final AccessibilityManager k;
  protected final SnackbarBaseLayout view;
  
  static
  {
    boolean bool;
    if ((Build.VERSION.SDK_INT >= 16) && (Build.VERSION.SDK_INT <= 19)) {
      bool = true;
    } else {
      bool = false;
    }
    c = bool;
    d = new int[] { R.attr.snackbarStyle };
  }
  
  protected BaseTransientBottomBar(@NonNull ViewGroup paramViewGroup, @NonNull View paramView, @NonNull ContentViewCallback paramContentViewCallback)
  {
    if (paramViewGroup != null)
    {
      if (paramView != null)
      {
        if (paramContentViewCallback != null)
        {
          e = paramViewGroup;
          g = paramContentViewCallback;
          f = paramViewGroup.getContext();
          ThemeEnforcement.checkAppCompatTheme(f);
          view = ((SnackbarBaseLayout)LayoutInflater.from(f).inflate(getSnackbarBaseLayoutResId(), e, false));
          view.addView(paramView);
          ViewCompat.setAccessibilityLiveRegion(view, 1);
          ViewCompat.setImportantForAccessibility(view, 1);
          ViewCompat.setFitsSystemWindows(view, true);
          ViewCompat.setOnApplyWindowInsetsListener(view, new OnApplyWindowInsetsListener()
          {
            public WindowInsetsCompat onApplyWindowInsets(View paramAnonymousView, WindowInsetsCompat paramAnonymousWindowInsetsCompat)
            {
              paramAnonymousView.setPadding(paramAnonymousView.getPaddingLeft(), paramAnonymousView.getPaddingTop(), paramAnonymousView.getPaddingRight(), paramAnonymousWindowInsetsCompat.getSystemWindowInsetBottom());
              return paramAnonymousWindowInsetsCompat;
            }
          });
          ViewCompat.setAccessibilityDelegate(view, new AccessibilityDelegateCompat()
          {
            public void onInitializeAccessibilityNodeInfo(View paramAnonymousView, AccessibilityNodeInfoCompat paramAnonymousAccessibilityNodeInfoCompat)
            {
              super.onInitializeAccessibilityNodeInfo(paramAnonymousView, paramAnonymousAccessibilityNodeInfoCompat);
              paramAnonymousAccessibilityNodeInfoCompat.addAction(1048576);
              paramAnonymousAccessibilityNodeInfoCompat.setDismissable(true);
            }
            
            public boolean performAccessibilityAction(View paramAnonymousView, int paramAnonymousInt, Bundle paramAnonymousBundle)
            {
              if (paramAnonymousInt == 1048576)
              {
                dismiss();
                return true;
              }
              return super.performAccessibilityAction(paramAnonymousView, paramAnonymousInt, paramAnonymousBundle);
            }
          });
          k = ((AccessibilityManager)f.getSystemService("accessibility"));
          return;
        }
        throw new IllegalArgumentException("Transient bottom bar must have non-null callback");
      }
      throw new IllegalArgumentException("Transient bottom bar must have non-null content");
    }
    throw new IllegalArgumentException("Transient bottom bar must have non-null parent");
  }
  
  private void c(final int paramInt)
  {
    ValueAnimator localValueAnimator = new ValueAnimator();
    localValueAnimator.setIntValues(new int[] { 0, f() });
    localValueAnimator.setInterpolator(AnimationUtils.FAST_OUT_SLOW_IN_INTERPOLATOR);
    localValueAnimator.setDuration(250L);
    localValueAnimator.addListener(new AnimatorListenerAdapter()
    {
      public void onAnimationEnd(Animator paramAnonymousAnimator)
      {
        b(paramInt);
      }
      
      public void onAnimationStart(Animator paramAnonymousAnimator)
      {
        BaseTransientBottomBar.a(BaseTransientBottomBar.this).animateContentOut(0, 180);
      }
    });
    localValueAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener()
    {
      private int b = 0;
      
      public void onAnimationUpdate(ValueAnimator paramAnonymousValueAnimator)
      {
        int i = ((Integer)paramAnonymousValueAnimator.getAnimatedValue()).intValue();
        if (BaseTransientBottomBar.e()) {
          ViewCompat.offsetTopAndBottom(view, i - b);
        } else {
          view.setTranslationY(i);
        }
        b = i;
      }
    });
    localValueAnimator.start();
  }
  
  private int f()
  {
    int n = view.getHeight();
    ViewGroup.LayoutParams localLayoutParams = view.getLayoutParams();
    int m = n;
    if ((localLayoutParams instanceof ViewGroup.MarginLayoutParams)) {
      m = n + bottomMargin;
    }
    return m;
  }
  
  final void a()
  {
    if (view.getParent() == null)
    {
      Object localObject = view.getLayoutParams();
      if ((localObject instanceof CoordinatorLayout.LayoutParams))
      {
        CoordinatorLayout.LayoutParams localLayoutParams = (CoordinatorLayout.LayoutParams)localObject;
        if (j == null) {
          localObject = getNewBehavior();
        } else {
          localObject = j;
        }
        if ((localObject instanceof Behavior)) {
          Behavior.a((Behavior)localObject, this);
        }
        ((SwipeDismissBehavior)localObject).setListener(new SwipeDismissBehavior.OnDismissListener()
        {
          public void onDismiss(View paramAnonymousView)
          {
            paramAnonymousView.setVisibility(8);
            dispatchDismiss(0);
          }
          
          public void onDragStateChanged(int paramAnonymousInt)
          {
            switch (paramAnonymousInt)
            {
            default: 
              return;
            case 1: 
            case 2: 
              g.a().c(b);
              return;
            }
            g.a().d(b);
          }
        });
        localLayoutParams.setBehavior((CoordinatorLayout.Behavior)localObject);
        insetEdge = 80;
      }
      e.addView(view);
    }
    view.setOnAttachStateChangeListener(new OnAttachStateChangeListener()
    {
      public void onViewAttachedToWindow(View paramAnonymousView) {}
      
      public void onViewDetachedFromWindow(View paramAnonymousView)
      {
        if (isShownOrQueued()) {
          BaseTransientBottomBar.a.post(new Runnable()
          {
            public void run()
            {
              b(3);
            }
          });
        }
      }
    });
    if (ViewCompat.isLaidOut(view))
    {
      if (d())
      {
        b();
        return;
      }
      c();
      return;
    }
    view.setOnLayoutChangeListener(new OnLayoutChangeListener()
    {
      public void onLayoutChange(View paramAnonymousView, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3, int paramAnonymousInt4)
      {
        view.setOnLayoutChangeListener(null);
        if (d())
        {
          b();
          return;
        }
        c();
      }
    });
  }
  
  final void a(int paramInt)
  {
    if ((d()) && (view.getVisibility() == 0))
    {
      c(paramInt);
      return;
    }
    b(paramInt);
  }
  
  @NonNull
  public B addCallback(@NonNull BaseCallback<B> paramBaseCallback)
  {
    if (paramBaseCallback == null) {
      return this;
    }
    if (i == null) {
      i = new ArrayList();
    }
    i.add(paramBaseCallback);
    return this;
  }
  
  void b()
  {
    final int m = f();
    if (c) {
      ViewCompat.offsetTopAndBottom(view, m);
    } else {
      view.setTranslationY(m);
    }
    ValueAnimator localValueAnimator = new ValueAnimator();
    localValueAnimator.setIntValues(new int[] { m, 0 });
    localValueAnimator.setInterpolator(AnimationUtils.FAST_OUT_SLOW_IN_INTERPOLATOR);
    localValueAnimator.setDuration(250L);
    localValueAnimator.addListener(new AnimatorListenerAdapter()
    {
      public void onAnimationEnd(Animator paramAnonymousAnimator)
      {
        c();
      }
      
      public void onAnimationStart(Animator paramAnonymousAnimator)
      {
        BaseTransientBottomBar.a(BaseTransientBottomBar.this).animateContentIn(70, 180);
      }
    });
    localValueAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener()
    {
      private int c = m;
      
      public void onAnimationUpdate(ValueAnimator paramAnonymousValueAnimator)
      {
        int i = ((Integer)paramAnonymousValueAnimator.getAnimatedValue()).intValue();
        if (BaseTransientBottomBar.e()) {
          ViewCompat.offsetTopAndBottom(view, i - c);
        } else {
          view.setTranslationY(i);
        }
        c = i;
      }
    });
    localValueAnimator.start();
  }
  
  void b(int paramInt)
  {
    g.a().a(b);
    if (i != null)
    {
      int m = i.size() - 1;
      while (m >= 0)
      {
        ((BaseCallback)i.get(m)).onDismissed(this, paramInt);
        m -= 1;
      }
    }
    ViewParent localViewParent = view.getParent();
    if ((localViewParent instanceof ViewGroup)) {
      ((ViewGroup)localViewParent).removeView(view);
    }
  }
  
  void c()
  {
    g.a().b(b);
    if (i != null)
    {
      int m = i.size() - 1;
      while (m >= 0)
      {
        ((BaseCallback)i.get(m)).onShown(this);
        m -= 1;
      }
    }
  }
  
  boolean d()
  {
    List localList = k.getEnabledAccessibilityServiceList(1);
    return (localList != null) && (localList.isEmpty());
  }
  
  public void dismiss()
  {
    dispatchDismiss(3);
  }
  
  protected void dispatchDismiss(int paramInt)
  {
    g.a().a(b, paramInt);
  }
  
  public Behavior getBehavior()
  {
    return j;
  }
  
  @NonNull
  public Context getContext()
  {
    return f;
  }
  
  public int getDuration()
  {
    return h;
  }
  
  protected SwipeDismissBehavior<? extends View> getNewBehavior()
  {
    return new Behavior();
  }
  
  @LayoutRes
  protected int getSnackbarBaseLayoutResId()
  {
    if (hasSnackbarStyleAttr()) {
      return R.layout.mtrl_layout_snackbar;
    }
    return R.layout.design_layout_snackbar;
  }
  
  @NonNull
  public View getView()
  {
    return view;
  }
  
  protected boolean hasSnackbarStyleAttr()
  {
    TypedArray localTypedArray = f.obtainStyledAttributes(d);
    boolean bool = false;
    int m = localTypedArray.getResourceId(0, -1);
    localTypedArray.recycle();
    if (m != -1) {
      bool = true;
    }
    return bool;
  }
  
  public boolean isShown()
  {
    return g.a().e(b);
  }
  
  public boolean isShownOrQueued()
  {
    return g.a().f(b);
  }
  
  @NonNull
  public B removeCallback(@NonNull BaseCallback<B> paramBaseCallback)
  {
    if (paramBaseCallback == null) {
      return this;
    }
    if (i == null) {
      return this;
    }
    i.remove(paramBaseCallback);
    return this;
  }
  
  public B setBehavior(Behavior paramBehavior)
  {
    j = paramBehavior;
    return this;
  }
  
  @NonNull
  public B setDuration(int paramInt)
  {
    h = paramInt;
    return this;
  }
  
  public void show()
  {
    g.a().a(getDuration(), b);
  }
  
  public static abstract class BaseCallback<B>
  {
    public static final int DISMISS_EVENT_ACTION = 1;
    public static final int DISMISS_EVENT_CONSECUTIVE = 4;
    public static final int DISMISS_EVENT_MANUAL = 3;
    public static final int DISMISS_EVENT_SWIPE = 0;
    public static final int DISMISS_EVENT_TIMEOUT = 2;
    
    public BaseCallback() {}
    
    public void onDismissed(B paramB, int paramInt) {}
    
    public void onShown(B paramB) {}
    
    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
    public static @interface DismissEvent {}
  }
  
  public static class Behavior
    extends SwipeDismissBehavior<View>
  {
    private final BaseTransientBottomBar.BehaviorDelegate g = new BaseTransientBottomBar.BehaviorDelegate(this);
    
    public Behavior() {}
    
    private void a(BaseTransientBottomBar<?> paramBaseTransientBottomBar)
    {
      g.setBaseTransientBottomBar(paramBaseTransientBottomBar);
    }
    
    public boolean canSwipeDismissView(View paramView)
    {
      return g.canSwipeDismissView(paramView);
    }
    
    public boolean onInterceptTouchEvent(CoordinatorLayout paramCoordinatorLayout, View paramView, MotionEvent paramMotionEvent)
    {
      g.onInterceptTouchEvent(paramCoordinatorLayout, paramView, paramMotionEvent);
      return super.onInterceptTouchEvent(paramCoordinatorLayout, paramView, paramMotionEvent);
    }
  }
  
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
  public static class BehaviorDelegate
  {
    private g.a a;
    
    public BehaviorDelegate(SwipeDismissBehavior<?> paramSwipeDismissBehavior)
    {
      paramSwipeDismissBehavior.setStartAlphaSwipeDistance(0.1F);
      paramSwipeDismissBehavior.setEndAlphaSwipeDistance(0.6F);
      paramSwipeDismissBehavior.setSwipeDirection(0);
    }
    
    public boolean canSwipeDismissView(View paramView)
    {
      return paramView instanceof BaseTransientBottomBar.SnackbarBaseLayout;
    }
    
    public void onInterceptTouchEvent(CoordinatorLayout paramCoordinatorLayout, View paramView, MotionEvent paramMotionEvent)
    {
      int i = paramMotionEvent.getActionMasked();
      if (i != 3) {
        switch (i)
        {
        default: 
          return;
        case 0: 
          if (!paramCoordinatorLayout.isPointInChildBounds(paramView, (int)paramMotionEvent.getX(), (int)paramMotionEvent.getY())) {
            break;
          }
          g.a().c(a);
          return;
        }
      } else {
        g.a().d(a);
      }
    }
    
    public void setBaseTransientBottomBar(BaseTransientBottomBar<?> paramBaseTransientBottomBar)
    {
      a = b;
    }
  }
  
  @Deprecated
  public static abstract interface ContentViewCallback
    extends ContentViewCallback
  {}
  
  @Retention(RetentionPolicy.SOURCE)
  @IntRange(from=1L)
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
  public static @interface Duration {}
  
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
  protected static abstract interface OnAttachStateChangeListener
  {
    public abstract void onViewAttachedToWindow(View paramView);
    
    public abstract void onViewDetachedFromWindow(View paramView);
  }
  
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
  protected static abstract interface OnLayoutChangeListener
  {
    public abstract void onLayoutChange(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4);
  }
  
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
  protected static class SnackbarBaseLayout
    extends FrameLayout
  {
    private final AccessibilityManager a;
    private final AccessibilityManagerCompat.TouchExplorationStateChangeListener b;
    private BaseTransientBottomBar.OnLayoutChangeListener c;
    private BaseTransientBottomBar.OnAttachStateChangeListener d;
    
    protected SnackbarBaseLayout(Context paramContext)
    {
      this(paramContext, null);
    }
    
    protected SnackbarBaseLayout(Context paramContext, AttributeSet paramAttributeSet)
    {
      super(paramAttributeSet);
      paramAttributeSet = paramContext.obtainStyledAttributes(paramAttributeSet, R.styleable.SnackbarLayout);
      if (paramAttributeSet.hasValue(R.styleable.SnackbarLayout_elevation)) {
        ViewCompat.setElevation(this, paramAttributeSet.getDimensionPixelSize(R.styleable.SnackbarLayout_elevation, 0));
      }
      paramAttributeSet.recycle();
      a = ((AccessibilityManager)paramContext.getSystemService("accessibility"));
      b = new AccessibilityManagerCompat.TouchExplorationStateChangeListener()
      {
        public void onTouchExplorationStateChanged(boolean paramAnonymousBoolean)
        {
          BaseTransientBottomBar.SnackbarBaseLayout.a(BaseTransientBottomBar.SnackbarBaseLayout.this, paramAnonymousBoolean);
        }
      };
      AccessibilityManagerCompat.addTouchExplorationStateChangeListener(a, b);
      setClickableOrFocusableBasedOnAccessibility(a.isTouchExplorationEnabled());
    }
    
    private void setClickableOrFocusableBasedOnAccessibility(boolean paramBoolean)
    {
      setClickable(paramBoolean ^ true);
      setFocusable(paramBoolean);
    }
    
    protected void onAttachedToWindow()
    {
      super.onAttachedToWindow();
      if (d != null) {
        d.onViewAttachedToWindow(this);
      }
      ViewCompat.requestApplyInsets(this);
    }
    
    protected void onDetachedFromWindow()
    {
      super.onDetachedFromWindow();
      if (d != null) {
        d.onViewDetachedFromWindow(this);
      }
      AccessibilityManagerCompat.removeTouchExplorationStateChangeListener(a, b);
    }
    
    protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
    {
      super.onLayout(paramBoolean, paramInt1, paramInt2, paramInt3, paramInt4);
      if (c != null) {
        c.onLayoutChange(this, paramInt1, paramInt2, paramInt3, paramInt4);
      }
    }
    
    void setOnAttachStateChangeListener(BaseTransientBottomBar.OnAttachStateChangeListener paramOnAttachStateChangeListener)
    {
      d = paramOnAttachStateChangeListener;
    }
    
    void setOnLayoutChangeListener(BaseTransientBottomBar.OnLayoutChangeListener paramOnLayoutChangeListener)
    {
      c = paramOnLayoutChangeListener;
    }
  }
}
