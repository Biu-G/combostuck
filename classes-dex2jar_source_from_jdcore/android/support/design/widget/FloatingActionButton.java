package android.support.design.widget;

import android.animation.Animator.AnimatorListener;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.PorterDuff.Mode;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Parcelable;
import android.support.annotation.AnimatorRes;
import android.support.annotation.ColorInt;
import android.support.annotation.DimenRes;
import android.support.annotation.DrawableRes;
import android.support.annotation.IdRes;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.Px;
import android.support.annotation.RestrictTo;
import android.support.annotation.VisibleForTesting;
import android.support.design.R.attr;
import android.support.design.R.dimen;
import android.support.design.R.style;
import android.support.design.R.styleable;
import android.support.design.animation.MotionSpec;
import android.support.design.expandable.ExpandableTransformationWidget;
import android.support.design.expandable.ExpandableWidgetHelper;
import android.support.design.internal.ThemeEnforcement;
import android.support.design.internal.ViewUtils;
import android.support.design.resources.MaterialResources;
import android.support.design.stateful.ExtendableSavedState;
import android.support.v4.graphics.drawable.DrawableCompat;
import android.support.v4.util.SimpleArrayMap;
import android.support.v4.view.TintableBackgroundView;
import android.support.v4.view.ViewCompat;
import android.support.v4.widget.TintableImageSourceView;
import android.support.v7.widget.AppCompatDrawableManager;
import android.support.v7.widget.AppCompatImageHelper;
import android.util.AttributeSet;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.MeasureSpec;
import android.widget.ImageView.ScaleType;
import java.lang.annotation.Annotation;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.List;

@CoordinatorLayout.DefaultBehavior(Behavior.class)
public class FloatingActionButton
  extends VisibilityAwareImageButton
  implements ExpandableTransformationWidget, TintableBackgroundView, TintableImageSourceView
{
  public static final int NO_CUSTOM_SIZE = 0;
  public static final int SIZE_AUTO = -1;
  public static final int SIZE_MINI = 1;
  public static final int SIZE_NORMAL = 0;
  boolean a;
  final Rect b = new Rect();
  private ColorStateList c;
  private PorterDuff.Mode d;
  @Nullable
  private ColorStateList e;
  @Nullable
  private PorterDuff.Mode f;
  private int g;
  private ColorStateList h;
  private int i;
  private int j;
  private int k;
  private int l;
  private final Rect m = new Rect();
  private final AppCompatImageHelper n;
  private final ExpandableWidgetHelper o;
  private b p;
  
  public FloatingActionButton(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public FloatingActionButton(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, R.attr.floatingActionButtonStyle);
  }
  
  public FloatingActionButton(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    TypedArray localTypedArray = ThemeEnforcement.obtainStyledAttributes(paramContext, paramAttributeSet, R.styleable.FloatingActionButton, paramInt, R.style.Widget_Design_FloatingActionButton, new int[0]);
    c = MaterialResources.getColorStateList(paramContext, localTypedArray, R.styleable.FloatingActionButton_backgroundTint);
    d = ViewUtils.parseTintMode(localTypedArray.getInt(R.styleable.FloatingActionButton_backgroundTintMode, -1), null);
    h = MaterialResources.getColorStateList(paramContext, localTypedArray, R.styleable.FloatingActionButton_rippleColor);
    i = localTypedArray.getInt(R.styleable.FloatingActionButton_fabSize, -1);
    j = localTypedArray.getDimensionPixelSize(R.styleable.FloatingActionButton_fabCustomSize, 0);
    g = localTypedArray.getDimensionPixelSize(R.styleable.FloatingActionButton_borderWidth, 0);
    float f1 = localTypedArray.getDimension(R.styleable.FloatingActionButton_elevation, 0.0F);
    float f2 = localTypedArray.getDimension(R.styleable.FloatingActionButton_hoveredFocusedTranslationZ, 0.0F);
    float f3 = localTypedArray.getDimension(R.styleable.FloatingActionButton_pressedTranslationZ, 0.0F);
    a = localTypedArray.getBoolean(R.styleable.FloatingActionButton_useCompatPadding, false);
    l = localTypedArray.getDimensionPixelSize(R.styleable.FloatingActionButton_maxImageSize, 0);
    MotionSpec localMotionSpec = MotionSpec.createFromAttribute(paramContext, localTypedArray, R.styleable.FloatingActionButton_showMotionSpec);
    paramContext = MotionSpec.createFromAttribute(paramContext, localTypedArray, R.styleable.FloatingActionButton_hideMotionSpec);
    localTypedArray.recycle();
    n = new AppCompatImageHelper(this);
    n.loadFromAttributes(paramAttributeSet, paramInt);
    o = new ExpandableWidgetHelper(this);
    getImpl().a(c, d, h, g);
    getImpl().a(f1);
    getImpl().b(f2);
    getImpl().c(f3);
    getImpl().a(l);
    getImpl().a(localMotionSpec);
    getImpl().b(paramContext);
    setScaleType(ImageView.ScaleType.MATRIX);
  }
  
  private int a(int paramInt)
  {
    if (j != 0) {
      return j;
    }
    Resources localResources = getResources();
    if (paramInt != -1)
    {
      if (paramInt != 1) {
        return localResources.getDimensionPixelSize(R.dimen.design_fab_size_normal);
      }
      return localResources.getDimensionPixelSize(R.dimen.design_fab_size_mini);
    }
    if (Math.max(getConfigurationscreenWidthDp, getConfigurationscreenHeightDp) < 470) {
      return a(1);
    }
    return a(0);
  }
  
  private static int a(int paramInt1, int paramInt2)
  {
    int i1 = View.MeasureSpec.getMode(paramInt2);
    paramInt2 = View.MeasureSpec.getSize(paramInt2);
    if (i1 != Integer.MIN_VALUE)
    {
      if (i1 != 0)
      {
        if (i1 == 1073741824) {
          return paramInt2;
        }
        throw new IllegalArgumentException();
      }
    }
    else {
      paramInt1 = Math.min(paramInt1, paramInt2);
    }
    return paramInt1;
  }
  
  @Nullable
  private b.d a(@Nullable final OnVisibilityChangedListener paramOnVisibilityChangedListener)
  {
    if (paramOnVisibilityChangedListener == null) {
      return null;
    }
    new b.d()
    {
      public void a()
      {
        paramOnVisibilityChangedListener.onShown(FloatingActionButton.this);
      }
      
      public void b()
      {
        paramOnVisibilityChangedListener.onHidden(FloatingActionButton.this);
      }
    };
  }
  
  private void a()
  {
    Drawable localDrawable = getDrawable();
    if (localDrawable == null) {
      return;
    }
    if (e == null)
    {
      DrawableCompat.clearColorFilter(localDrawable);
      return;
    }
    int i1 = e.getColorForState(getDrawableState(), 0);
    PorterDuff.Mode localMode2 = f;
    PorterDuff.Mode localMode1 = localMode2;
    if (localMode2 == null) {
      localMode1 = PorterDuff.Mode.SRC_IN;
    }
    localDrawable.mutate().setColorFilter(AppCompatDrawableManager.getPorterDuffColorFilter(i1, localMode1));
  }
  
  private void a(@NonNull Rect paramRect)
  {
    left += b.left;
    top += b.top;
    right -= b.right;
    bottom -= b.bottom;
  }
  
  private b b()
  {
    if (Build.VERSION.SDK_INT >= 21) {
      return new c(this, new a());
    }
    return new b(this, new a());
  }
  
  private b getImpl()
  {
    if (p == null) {
      p = b();
    }
    return p;
  }
  
  void a(OnVisibilityChangedListener paramOnVisibilityChangedListener, boolean paramBoolean)
  {
    getImpl().b(a(paramOnVisibilityChangedListener), paramBoolean);
  }
  
  public void addOnHideAnimationListener(@NonNull Animator.AnimatorListener paramAnimatorListener)
  {
    getImpl().c(paramAnimatorListener);
  }
  
  public void addOnShowAnimationListener(@NonNull Animator.AnimatorListener paramAnimatorListener)
  {
    getImpl().a(paramAnimatorListener);
  }
  
  void b(@Nullable OnVisibilityChangedListener paramOnVisibilityChangedListener, boolean paramBoolean)
  {
    getImpl().a(a(paramOnVisibilityChangedListener), paramBoolean);
  }
  
  public void clearCustomSize()
  {
    setCustomSize(0);
  }
  
  protected void drawableStateChanged()
  {
    super.drawableStateChanged();
    getImpl().a(getDrawableState());
  }
  
  @Nullable
  public ColorStateList getBackgroundTintList()
  {
    return c;
  }
  
  @Nullable
  public PorterDuff.Mode getBackgroundTintMode()
  {
    return d;
  }
  
  public float getCompatElevation()
  {
    return getImpl().a();
  }
  
  public float getCompatHoveredFocusedTranslationZ()
  {
    return getImpl().b();
  }
  
  public float getCompatPressedTranslationZ()
  {
    return getImpl().c();
  }
  
  @NonNull
  public Drawable getContentBackground()
  {
    return getImpl().h();
  }
  
  @Deprecated
  public boolean getContentRect(@NonNull Rect paramRect)
  {
    if (ViewCompat.isLaidOut(this))
    {
      paramRect.set(0, 0, getWidth(), getHeight());
      a(paramRect);
      return true;
    }
    return false;
  }
  
  @Px
  public int getCustomSize()
  {
    return j;
  }
  
  public int getExpandedComponentIdHint()
  {
    return o.getExpandedComponentIdHint();
  }
  
  public MotionSpec getHideMotionSpec()
  {
    return getImpl().f();
  }
  
  public void getMeasuredContentRect(@NonNull Rect paramRect)
  {
    paramRect.set(0, 0, getMeasuredWidth(), getMeasuredHeight());
    a(paramRect);
  }
  
  @Deprecated
  @ColorInt
  public int getRippleColor()
  {
    if (h != null) {
      return h.getDefaultColor();
    }
    return 0;
  }
  
  @Nullable
  public ColorStateList getRippleColorStateList()
  {
    return h;
  }
  
  public MotionSpec getShowMotionSpec()
  {
    return getImpl().e();
  }
  
  public int getSize()
  {
    return i;
  }
  
  int getSizeDimension()
  {
    return a(i);
  }
  
  @Nullable
  public ColorStateList getSupportBackgroundTintList()
  {
    return getBackgroundTintList();
  }
  
  @Nullable
  public PorterDuff.Mode getSupportBackgroundTintMode()
  {
    return getBackgroundTintMode();
  }
  
  @Nullable
  public ColorStateList getSupportImageTintList()
  {
    return e;
  }
  
  @Nullable
  public PorterDuff.Mode getSupportImageTintMode()
  {
    return f;
  }
  
  public boolean getUseCompatPadding()
  {
    return a;
  }
  
  public void hide()
  {
    hide(null);
  }
  
  public void hide(@Nullable OnVisibilityChangedListener paramOnVisibilityChangedListener)
  {
    b(paramOnVisibilityChangedListener, true);
  }
  
  public boolean isExpanded()
  {
    return o.isExpanded();
  }
  
  public boolean isOrWillBeHidden()
  {
    return getImpl().s();
  }
  
  public boolean isOrWillBeShown()
  {
    return getImpl().r();
  }
  
  public void jumpDrawablesToCurrentState()
  {
    super.jumpDrawablesToCurrentState();
    getImpl().g();
  }
  
  protected void onAttachedToWindow()
  {
    super.onAttachedToWindow();
    getImpl().k();
  }
  
  protected void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
    getImpl().l();
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    int i1 = getSizeDimension();
    k = ((i1 - l) / 2);
    getImpl().j();
    paramInt1 = Math.min(a(i1, paramInt1), a(i1, paramInt2));
    setMeasuredDimension(b.left + paramInt1 + b.right, paramInt1 + b.top + b.bottom);
  }
  
  protected void onRestoreInstanceState(Parcelable paramParcelable)
  {
    if (!(paramParcelable instanceof ExtendableSavedState))
    {
      super.onRestoreInstanceState(paramParcelable);
      return;
    }
    paramParcelable = (ExtendableSavedState)paramParcelable;
    super.onRestoreInstanceState(paramParcelable.getSuperState());
    o.onRestoreInstanceState((Bundle)extendableStates.get("expandableWidgetHelper"));
  }
  
  protected Parcelable onSaveInstanceState()
  {
    ExtendableSavedState localExtendableSavedState = new ExtendableSavedState(super.onSaveInstanceState());
    extendableStates.put("expandableWidgetHelper", o.onSaveInstanceState());
    return localExtendableSavedState;
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    if ((paramMotionEvent.getAction() == 0) && (getContentRect(m)) && (!m.contains((int)paramMotionEvent.getX(), (int)paramMotionEvent.getY()))) {
      return false;
    }
    return super.onTouchEvent(paramMotionEvent);
  }
  
  public void removeOnHideAnimationListener(@NonNull Animator.AnimatorListener paramAnimatorListener)
  {
    getImpl().d(paramAnimatorListener);
  }
  
  public void removeOnShowAnimationListener(@NonNull Animator.AnimatorListener paramAnimatorListener)
  {
    getImpl().b(paramAnimatorListener);
  }
  
  public void setBackgroundColor(int paramInt)
  {
    Log.i("FloatingActionButton", "Setting a custom background is not supported.");
  }
  
  public void setBackgroundDrawable(Drawable paramDrawable)
  {
    Log.i("FloatingActionButton", "Setting a custom background is not supported.");
  }
  
  public void setBackgroundResource(int paramInt)
  {
    Log.i("FloatingActionButton", "Setting a custom background is not supported.");
  }
  
  public void setBackgroundTintList(@Nullable ColorStateList paramColorStateList)
  {
    if (c != paramColorStateList)
    {
      c = paramColorStateList;
      getImpl().a(paramColorStateList);
    }
  }
  
  public void setBackgroundTintMode(@Nullable PorterDuff.Mode paramMode)
  {
    if (d != paramMode)
    {
      d = paramMode;
      getImpl().a(paramMode);
    }
  }
  
  public void setCompatElevation(float paramFloat)
  {
    getImpl().a(paramFloat);
  }
  
  public void setCompatElevationResource(@DimenRes int paramInt)
  {
    setCompatElevation(getResources().getDimension(paramInt));
  }
  
  public void setCompatHoveredFocusedTranslationZ(float paramFloat)
  {
    getImpl().b(paramFloat);
  }
  
  public void setCompatHoveredFocusedTranslationZResource(@DimenRes int paramInt)
  {
    setCompatHoveredFocusedTranslationZ(getResources().getDimension(paramInt));
  }
  
  public void setCompatPressedTranslationZ(float paramFloat)
  {
    getImpl().c(paramFloat);
  }
  
  public void setCompatPressedTranslationZResource(@DimenRes int paramInt)
  {
    setCompatPressedTranslationZ(getResources().getDimension(paramInt));
  }
  
  public void setCustomSize(@Px int paramInt)
  {
    if (paramInt >= 0)
    {
      j = paramInt;
      return;
    }
    throw new IllegalArgumentException("Custom size must be non-negative");
  }
  
  public boolean setExpanded(boolean paramBoolean)
  {
    return o.setExpanded(paramBoolean);
  }
  
  public void setExpandedComponentIdHint(@IdRes int paramInt)
  {
    o.setExpandedComponentIdHint(paramInt);
  }
  
  public void setHideMotionSpec(MotionSpec paramMotionSpec)
  {
    getImpl().b(paramMotionSpec);
  }
  
  public void setHideMotionSpecResource(@AnimatorRes int paramInt)
  {
    setHideMotionSpec(MotionSpec.createFromResource(getContext(), paramInt));
  }
  
  public void setImageDrawable(@Nullable Drawable paramDrawable)
  {
    super.setImageDrawable(paramDrawable);
    getImpl().d();
  }
  
  public void setImageResource(@DrawableRes int paramInt)
  {
    n.setImageResource(paramInt);
  }
  
  public void setRippleColor(@ColorInt int paramInt)
  {
    setRippleColor(ColorStateList.valueOf(paramInt));
  }
  
  public void setRippleColor(@Nullable ColorStateList paramColorStateList)
  {
    if (h != paramColorStateList)
    {
      h = paramColorStateList;
      getImpl().b(h);
    }
  }
  
  public void setShowMotionSpec(MotionSpec paramMotionSpec)
  {
    getImpl().a(paramMotionSpec);
  }
  
  public void setShowMotionSpecResource(@AnimatorRes int paramInt)
  {
    setShowMotionSpec(MotionSpec.createFromResource(getContext(), paramInt));
  }
  
  public void setSize(int paramInt)
  {
    j = 0;
    if (paramInt != i)
    {
      i = paramInt;
      requestLayout();
    }
  }
  
  public void setSupportBackgroundTintList(@Nullable ColorStateList paramColorStateList)
  {
    setBackgroundTintList(paramColorStateList);
  }
  
  public void setSupportBackgroundTintMode(@Nullable PorterDuff.Mode paramMode)
  {
    setBackgroundTintMode(paramMode);
  }
  
  public void setSupportImageTintList(@Nullable ColorStateList paramColorStateList)
  {
    if (e != paramColorStateList)
    {
      e = paramColorStateList;
      a();
    }
  }
  
  public void setSupportImageTintMode(@Nullable PorterDuff.Mode paramMode)
  {
    if (f != paramMode)
    {
      f = paramMode;
      a();
    }
  }
  
  public void setUseCompatPadding(boolean paramBoolean)
  {
    if (a != paramBoolean)
    {
      a = paramBoolean;
      getImpl().i();
    }
  }
  
  public void show()
  {
    show(null);
  }
  
  public void show(@Nullable OnVisibilityChangedListener paramOnVisibilityChangedListener)
  {
    a(paramOnVisibilityChangedListener, true);
  }
  
  protected static class BaseBehavior<T extends FloatingActionButton>
    extends CoordinatorLayout.Behavior<T>
  {
    private Rect a;
    private FloatingActionButton.OnVisibilityChangedListener b;
    private boolean c;
    
    public BaseBehavior()
    {
      c = true;
    }
    
    public BaseBehavior(Context paramContext, AttributeSet paramAttributeSet)
    {
      super(paramAttributeSet);
      paramContext = paramContext.obtainStyledAttributes(paramAttributeSet, R.styleable.FloatingActionButton_Behavior_Layout);
      c = paramContext.getBoolean(R.styleable.FloatingActionButton_Behavior_Layout_behavior_autoHide, true);
      paramContext.recycle();
    }
    
    private void a(CoordinatorLayout paramCoordinatorLayout, FloatingActionButton paramFloatingActionButton)
    {
      Rect localRect = b;
      if ((localRect != null) && (localRect.centerX() > 0) && (localRect.centerY() > 0))
      {
        CoordinatorLayout.LayoutParams localLayoutParams = (CoordinatorLayout.LayoutParams)paramFloatingActionButton.getLayoutParams();
        int i = paramFloatingActionButton.getRight();
        int k = paramCoordinatorLayout.getWidth();
        int m = rightMargin;
        int j = 0;
        if (i >= k - m) {
          i = right;
        } else if (paramFloatingActionButton.getLeft() <= leftMargin) {
          i = -left;
        } else {
          i = 0;
        }
        if (paramFloatingActionButton.getBottom() >= paramCoordinatorLayout.getHeight() - bottomMargin) {
          j = bottom;
        } else if (paramFloatingActionButton.getTop() <= topMargin) {
          j = -top;
        }
        if (j != 0) {
          ViewCompat.offsetTopAndBottom(paramFloatingActionButton, j);
        }
        if (i != 0) {
          ViewCompat.offsetLeftAndRight(paramFloatingActionButton, i);
        }
      }
    }
    
    private boolean a(CoordinatorLayout paramCoordinatorLayout, AppBarLayout paramAppBarLayout, FloatingActionButton paramFloatingActionButton)
    {
      if (!a(paramAppBarLayout, paramFloatingActionButton)) {
        return false;
      }
      if (a == null) {
        a = new Rect();
      }
      Rect localRect = a;
      DescendantOffsetUtils.getDescendantRect(paramCoordinatorLayout, paramAppBarLayout, localRect);
      if (bottom <= paramAppBarLayout.getMinimumHeightForVisibleOverlappingContent()) {
        paramFloatingActionButton.b(b, false);
      } else {
        paramFloatingActionButton.a(b, false);
      }
      return true;
    }
    
    private static boolean a(@NonNull View paramView)
    {
      paramView = paramView.getLayoutParams();
      if ((paramView instanceof CoordinatorLayout.LayoutParams)) {
        return ((CoordinatorLayout.LayoutParams)paramView).getBehavior() instanceof BottomSheetBehavior;
      }
      return false;
    }
    
    private boolean a(View paramView, FloatingActionButton paramFloatingActionButton)
    {
      CoordinatorLayout.LayoutParams localLayoutParams = (CoordinatorLayout.LayoutParams)paramFloatingActionButton.getLayoutParams();
      if (!c) {
        return false;
      }
      if (localLayoutParams.getAnchorId() != paramView.getId()) {
        return false;
      }
      return paramFloatingActionButton.getUserSetVisibility() == 0;
    }
    
    private boolean b(View paramView, FloatingActionButton paramFloatingActionButton)
    {
      if (!a(paramView, paramFloatingActionButton)) {
        return false;
      }
      CoordinatorLayout.LayoutParams localLayoutParams = (CoordinatorLayout.LayoutParams)paramFloatingActionButton.getLayoutParams();
      if (paramView.getTop() < paramFloatingActionButton.getHeight() / 2 + topMargin) {
        paramFloatingActionButton.b(b, false);
      } else {
        paramFloatingActionButton.a(b, false);
      }
      return true;
    }
    
    public boolean getInsetDodgeRect(@NonNull CoordinatorLayout paramCoordinatorLayout, @NonNull FloatingActionButton paramFloatingActionButton, @NonNull Rect paramRect)
    {
      paramCoordinatorLayout = b;
      paramRect.set(paramFloatingActionButton.getLeft() + left, paramFloatingActionButton.getTop() + top, paramFloatingActionButton.getRight() - right, paramFloatingActionButton.getBottom() - bottom);
      return true;
    }
    
    public boolean isAutoHideEnabled()
    {
      return c;
    }
    
    public void onAttachedToLayoutParams(@NonNull CoordinatorLayout.LayoutParams paramLayoutParams)
    {
      if (dodgeInsetEdges == 0) {
        dodgeInsetEdges = 80;
      }
    }
    
    public boolean onDependentViewChanged(CoordinatorLayout paramCoordinatorLayout, FloatingActionButton paramFloatingActionButton, View paramView)
    {
      if ((paramView instanceof AppBarLayout)) {
        a(paramCoordinatorLayout, (AppBarLayout)paramView, paramFloatingActionButton);
      } else if (a(paramView)) {
        b(paramView, paramFloatingActionButton);
      }
      return false;
    }
    
    public boolean onLayoutChild(CoordinatorLayout paramCoordinatorLayout, FloatingActionButton paramFloatingActionButton, int paramInt)
    {
      List localList = paramCoordinatorLayout.getDependencies(paramFloatingActionButton);
      int j = localList.size();
      int i = 0;
      while (i < j)
      {
        View localView = (View)localList.get(i);
        if ((localView instanceof AppBarLayout) ? !a(paramCoordinatorLayout, (AppBarLayout)localView, paramFloatingActionButton) : (a(localView)) && (b(localView, paramFloatingActionButton))) {
          break;
        }
        i += 1;
      }
      paramCoordinatorLayout.onLayoutChild(paramFloatingActionButton, paramInt);
      a(paramCoordinatorLayout, paramFloatingActionButton);
      return true;
    }
    
    public void setAutoHideEnabled(boolean paramBoolean)
    {
      c = paramBoolean;
    }
    
    @VisibleForTesting
    public void setInternalAutoHideListener(FloatingActionButton.OnVisibilityChangedListener paramOnVisibilityChangedListener)
    {
      b = paramOnVisibilityChangedListener;
    }
  }
  
  public static class Behavior
    extends FloatingActionButton.BaseBehavior<FloatingActionButton>
  {
    public Behavior() {}
    
    public Behavior(Context paramContext, AttributeSet paramAttributeSet)
    {
      super(paramAttributeSet);
    }
  }
  
  public static abstract class OnVisibilityChangedListener
  {
    public OnVisibilityChangedListener() {}
    
    public void onHidden(FloatingActionButton paramFloatingActionButton) {}
    
    public void onShown(FloatingActionButton paramFloatingActionButton) {}
  }
  
  @Retention(RetentionPolicy.SOURCE)
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
  public static @interface Size {}
  
  private class a
    implements ShadowViewDelegate
  {
    a() {}
    
    public float getRadius()
    {
      return getSizeDimension() / 2.0F;
    }
    
    public boolean isCompatPaddingEnabled()
    {
      return a;
    }
    
    public void setBackgroundDrawable(Drawable paramDrawable)
    {
      FloatingActionButton.a(FloatingActionButton.this, paramDrawable);
    }
    
    public void setShadowPadding(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
    {
      b.set(paramInt1, paramInt2, paramInt3, paramInt4);
      setPadding(paramInt1 + FloatingActionButton.a(FloatingActionButton.this), paramInt2 + FloatingActionButton.a(FloatingActionButton.this), paramInt3 + FloatingActionButton.a(FloatingActionButton.this), paramInt4 + FloatingActionButton.a(FloatingActionButton.this));
    }
  }
}
