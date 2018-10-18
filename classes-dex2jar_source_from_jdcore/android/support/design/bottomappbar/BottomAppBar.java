package android.support.design.bottomappbar;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.animation.ValueAnimator.AnimatorUpdateListener;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Paint.Style;
import android.graphics.Rect;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.ClassLoaderCreator;
import android.os.Parcelable.Creator;
import android.support.annotation.Dimension;
import android.support.annotation.MenuRes;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.Px;
import android.support.design.R.attr;
import android.support.design.R.dimen;
import android.support.design.R.style;
import android.support.design.R.styleable;
import android.support.design.animation.AnimationUtils;
import android.support.design.behavior.HideBottomViewOnScrollBehavior;
import android.support.design.internal.ThemeEnforcement;
import android.support.design.resources.MaterialResources;
import android.support.design.shape.MaterialShapeDrawable;
import android.support.design.shape.ShapePathModel;
import android.support.design.widget.CoordinatorLayout;
import android.support.design.widget.CoordinatorLayout.AttachedBehavior;
import android.support.design.widget.CoordinatorLayout.Behavior;
import android.support.design.widget.CoordinatorLayout.LayoutParams;
import android.support.design.widget.FloatingActionButton;
import android.support.v4.graphics.drawable.DrawableCompat;
import android.support.v4.view.AbsSavedState;
import android.support.v4.view.ViewCompat;
import android.support.v7.widget.ActionMenuView;
import android.support.v7.widget.Toolbar;
import android.support.v7.widget.Toolbar.LayoutParams;
import android.util.AttributeSet;
import android.view.Menu;
import android.view.View;
import android.view.ViewPropertyAnimator;
import java.lang.annotation.Annotation;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class BottomAppBar
  extends Toolbar
  implements CoordinatorLayout.AttachedBehavior
{
  public static final int FAB_ALIGNMENT_MODE_CENTER = 0;
  public static final int FAB_ALIGNMENT_MODE_END = 1;
  AnimatorListenerAdapter a = new AnimatorListenerAdapter()
  {
    public void onAnimationStart(Animator paramAnonymousAnimator)
    {
      BottomAppBar.a(BottomAppBar.this, BottomAppBar.c(BottomAppBar.this));
      BottomAppBar.a(BottomAppBar.this, BottomAppBar.d(BottomAppBar.this), BottomAppBar.c(BottomAppBar.this));
    }
  };
  private final int f;
  private final MaterialShapeDrawable g;
  private final BottomAppBarTopEdgeTreatment h;
  @Nullable
  private Animator i;
  @Nullable
  private Animator j;
  @Nullable
  private Animator k;
  private int l;
  private boolean m;
  private boolean n = true;
  
  public BottomAppBar(Context paramContext)
  {
    this(paramContext, null, 0);
  }
  
  public BottomAppBar(Context paramContext, @Nullable AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, R.attr.bottomAppBarStyle);
  }
  
  public BottomAppBar(Context paramContext, @Nullable AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    paramAttributeSet = ThemeEnforcement.obtainStyledAttributes(paramContext, paramAttributeSet, R.styleable.BottomAppBar, paramInt, R.style.Widget_MaterialComponents_BottomAppBar, new int[0]);
    paramContext = MaterialResources.getColorStateList(paramContext, paramAttributeSet, R.styleable.BottomAppBar_backgroundTint);
    float f1 = paramAttributeSet.getDimensionPixelOffset(R.styleable.BottomAppBar_fabCradleMargin, 0);
    float f2 = paramAttributeSet.getDimensionPixelOffset(R.styleable.BottomAppBar_fabCradleRoundedCornerRadius, 0);
    float f3 = paramAttributeSet.getDimensionPixelOffset(R.styleable.BottomAppBar_fabCradleVerticalOffset, 0);
    l = paramAttributeSet.getInt(R.styleable.BottomAppBar_fabAlignmentMode, 0);
    m = paramAttributeSet.getBoolean(R.styleable.BottomAppBar_hideOnScroll, false);
    paramAttributeSet.recycle();
    f = getResources().getDimensionPixelOffset(R.dimen.mtrl_bottomappbar_fabOffsetEndMode);
    h = new BottomAppBarTopEdgeTreatment(f1, f2, f3);
    paramAttributeSet = new ShapePathModel();
    paramAttributeSet.setTopEdge(h);
    g = new MaterialShapeDrawable(paramAttributeSet);
    g.setShadowEnabled(true);
    g.setPaintStyle(Paint.Style.FILL);
    DrawableCompat.setTintList(g, paramContext);
    ViewCompat.setBackground(this, g);
  }
  
  private void a(int paramInt)
  {
    if (l != paramInt)
    {
      if (!ViewCompat.isLaidOut(this)) {
        return;
      }
      if (j != null) {
        j.cancel();
      }
      ArrayList localArrayList = new ArrayList();
      a(paramInt, localArrayList);
      b(paramInt, localArrayList);
      AnimatorSet localAnimatorSet = new AnimatorSet();
      localAnimatorSet.playTogether(localArrayList);
      j = localAnimatorSet;
      j.addListener(new AnimatorListenerAdapter()
      {
        public void onAnimationEnd(Animator paramAnonymousAnimator)
        {
          BottomAppBar.a(BottomAppBar.this, null);
        }
      });
      j.start();
      return;
    }
  }
  
  private void a(int paramInt, List<Animator> paramList)
  {
    if (!n) {
      return;
    }
    ValueAnimator localValueAnimator = ValueAnimator.ofFloat(new float[] { h.a(), b(paramInt) });
    localValueAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener()
    {
      public void onAnimationUpdate(ValueAnimator paramAnonymousValueAnimator)
      {
        BottomAppBar.a(BottomAppBar.this).a(((Float)paramAnonymousValueAnimator.getAnimatedValue()).floatValue());
        BottomAppBar.b(BottomAppBar.this).invalidateSelf();
      }
    });
    localValueAnimator.setDuration(300L);
    paramList.add(localValueAnimator);
  }
  
  private void a(int paramInt, boolean paramBoolean)
  {
    if (!ViewCompat.isLaidOut(this)) {
      return;
    }
    if (k != null) {
      k.cancel();
    }
    ArrayList localArrayList = new ArrayList();
    if (!e())
    {
      paramInt = 0;
      paramBoolean = false;
    }
    a(paramInt, paramBoolean, localArrayList);
    AnimatorSet localAnimatorSet = new AnimatorSet();
    localAnimatorSet.playTogether(localArrayList);
    k = localAnimatorSet;
    k.addListener(new AnimatorListenerAdapter()
    {
      public void onAnimationEnd(Animator paramAnonymousAnimator)
      {
        BottomAppBar.b(BottomAppBar.this, null);
      }
    });
    k.start();
  }
  
  private void a(final int paramInt, final boolean paramBoolean, List<Animator> paramList)
  {
    Object localObject = getActionMenuView();
    if (localObject == null) {
      return;
    }
    ObjectAnimator localObjectAnimator1 = ObjectAnimator.ofFloat(localObject, "alpha", new float[] { 1.0F });
    if (((!n) && ((!paramBoolean) || (!e()))) || ((l != 1) && (paramInt != 1)))
    {
      if (((ActionMenuView)localObject).getAlpha() < 1.0F) {
        paramList.add(localObjectAnimator1);
      }
    }
    else
    {
      ObjectAnimator localObjectAnimator2 = ObjectAnimator.ofFloat(localObject, "alpha", new float[] { 0.0F });
      localObjectAnimator2.addListener(new AnimatorListenerAdapter()
      {
        public boolean a;
        
        public void onAnimationCancel(Animator paramAnonymousAnimator)
        {
          a = true;
        }
        
        public void onAnimationEnd(Animator paramAnonymousAnimator)
        {
          if (!a) {
            BottomAppBar.a(BottomAppBar.this, b, paramInt, paramBoolean);
          }
        }
      });
      localObject = new AnimatorSet();
      ((AnimatorSet)localObject).setDuration(150L);
      ((AnimatorSet)localObject).playSequentially(new Animator[] { localObjectAnimator2, localObjectAnimator1 });
      paramList.add(localObject);
    }
  }
  
  private void a(@NonNull FloatingActionButton paramFloatingActionButton)
  {
    b(paramFloatingActionButton);
    paramFloatingActionButton.addOnHideAnimationListener(a);
    paramFloatingActionButton.addOnShowAnimationListener(a);
  }
  
  private void a(ActionMenuView paramActionMenuView, int paramInt, boolean paramBoolean)
  {
    int i1;
    if (ViewCompat.getLayoutDirection(this) == 1) {
      i1 = 1;
    } else {
      i1 = 0;
    }
    int i3 = 0;
    int i4;
    for (int i2 = 0; i3 < getChildCount(); i2 = i4)
    {
      View localView = getChildAt(i3);
      int i5;
      if (((localView.getLayoutParams() instanceof Toolbar.LayoutParams)) && ((getLayoutParamsgravity & 0x800007) == 8388611)) {
        i5 = 1;
      } else {
        i5 = 0;
      }
      i4 = i2;
      if (i5 != 0)
      {
        if (i1 != 0) {
          i4 = localView.getLeft();
        } else {
          i4 = localView.getRight();
        }
        i4 = Math.max(i2, i4);
      }
      i3 += 1;
    }
    if (i1 != 0) {
      i1 = paramActionMenuView.getRight();
    } else {
      i1 = paramActionMenuView.getLeft();
    }
    float f1;
    if ((paramInt == 1) && (paramBoolean)) {
      f1 = i2 - i1;
    } else {
      f1 = 0.0F;
    }
    paramActionMenuView.setTranslationX(f1);
  }
  
  private void a(boolean paramBoolean)
  {
    if (!ViewCompat.isLaidOut(this)) {
      return;
    }
    if (i != null) {
      i.cancel();
    }
    ArrayList localArrayList = new ArrayList();
    boolean bool;
    if ((paramBoolean) && (e())) {
      bool = true;
    } else {
      bool = false;
    }
    a(bool, localArrayList);
    b(paramBoolean, localArrayList);
    AnimatorSet localAnimatorSet = new AnimatorSet();
    localAnimatorSet.playTogether(localArrayList);
    i = localAnimatorSet;
    i.addListener(new AnimatorListenerAdapter()
    {
      public void onAnimationEnd(Animator paramAnonymousAnimator)
      {
        BottomAppBar.c(BottomAppBar.this, null);
      }
    });
    i.start();
  }
  
  private void a(boolean paramBoolean, List<Animator> paramList)
  {
    if (paramBoolean) {
      h.a(getFabTranslationX());
    }
    float f2 = g.getInterpolation();
    float f1;
    if (paramBoolean) {
      f1 = 1.0F;
    } else {
      f1 = 0.0F;
    }
    ValueAnimator localValueAnimator = ValueAnimator.ofFloat(new float[] { f2, f1 });
    localValueAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener()
    {
      public void onAnimationUpdate(ValueAnimator paramAnonymousValueAnimator)
      {
        BottomAppBar.b(BottomAppBar.this).setInterpolation(((Float)paramAnonymousValueAnimator.getAnimatedValue()).floatValue());
      }
    });
    localValueAnimator.setDuration(300L);
    paramList.add(localValueAnimator);
  }
  
  private float b(boolean paramBoolean)
  {
    FloatingActionButton localFloatingActionButton = d();
    if (localFloatingActionButton == null) {
      return 0.0F;
    }
    Rect localRect = new Rect();
    localFloatingActionButton.getContentRect(localRect);
    float f2 = localRect.height();
    float f1 = f2;
    if (f2 == 0.0F) {
      f1 = localFloatingActionButton.getMeasuredHeight();
    }
    f2 = localFloatingActionButton.getHeight() - bottom;
    float f5 = localFloatingActionButton.getHeight() - localRect.height();
    float f3 = -getCradleVerticalOffset();
    float f4 = f1 / 2.0F;
    f1 = f5 - localFloatingActionButton.getPaddingBottom();
    f5 = -getMeasuredHeight();
    if (paramBoolean) {
      f1 = f3 + f4 + f2;
    }
    return f5 + f1;
  }
  
  private int b(int paramInt)
  {
    int i1 = ViewCompat.getLayoutDirection(this);
    int i2 = 0;
    int i3 = 1;
    if (i1 == 1) {
      i1 = 1;
    } else {
      i1 = 0;
    }
    if (paramInt == 1)
    {
      i2 = getMeasuredWidth() / 2;
      int i4 = f;
      paramInt = i3;
      if (i1 != 0) {
        paramInt = -1;
      }
      i2 = (i2 - i4) * paramInt;
    }
    return i2;
  }
  
  private void b(int paramInt, List<Animator> paramList)
  {
    ObjectAnimator localObjectAnimator = ObjectAnimator.ofFloat(d(), "translationX", new float[] { b(paramInt) });
    localObjectAnimator.setDuration(300L);
    paramList.add(localObjectAnimator);
  }
  
  private void b(@NonNull FloatingActionButton paramFloatingActionButton)
  {
    paramFloatingActionButton.removeOnHideAnimationListener(a);
    paramFloatingActionButton.removeOnShowAnimationListener(a);
  }
  
  private void b(boolean paramBoolean, List<Animator> paramList)
  {
    Object localObject = d();
    if (localObject == null) {
      return;
    }
    localObject = ObjectAnimator.ofFloat(localObject, "translationY", new float[] { b(paramBoolean) });
    ((ObjectAnimator)localObject).setDuration(300L);
    paramList.add(localObject);
  }
  
  @Nullable
  private FloatingActionButton d()
  {
    if (!(getParent() instanceof CoordinatorLayout)) {
      return null;
    }
    Iterator localIterator = ((CoordinatorLayout)getParent()).getDependents(this).iterator();
    while (localIterator.hasNext())
    {
      View localView = (View)localIterator.next();
      if ((localView instanceof FloatingActionButton)) {
        return (FloatingActionButton)localView;
      }
    }
    return null;
  }
  
  private boolean e()
  {
    FloatingActionButton localFloatingActionButton = d();
    return (localFloatingActionButton != null) && (localFloatingActionButton.isOrWillBeShown());
  }
  
  private void f()
  {
    if (i != null) {
      i.cancel();
    }
    if (k != null) {
      k.cancel();
    }
    if (j != null) {
      j.cancel();
    }
  }
  
  private boolean g()
  {
    return ((i != null) && (i.isRunning())) || ((k != null) && (k.isRunning())) || ((j != null) && (j.isRunning()));
  }
  
  @Nullable
  private ActionMenuView getActionMenuView()
  {
    int i1 = 0;
    while (i1 < getChildCount())
    {
      View localView = getChildAt(i1);
      if ((localView instanceof ActionMenuView)) {
        return (ActionMenuView)localView;
      }
      i1 += 1;
    }
    return null;
  }
  
  private float getFabTranslationX()
  {
    return b(l);
  }
  
  private float getFabTranslationY()
  {
    return b(n);
  }
  
  private void h()
  {
    h.a(getFabTranslationX());
    Object localObject = d();
    MaterialShapeDrawable localMaterialShapeDrawable = g;
    float f1;
    if ((n) && (e())) {
      f1 = 1.0F;
    } else {
      f1 = 0.0F;
    }
    localMaterialShapeDrawable.setInterpolation(f1);
    if (localObject != null)
    {
      ((FloatingActionButton)localObject).setTranslationY(getFabTranslationY());
      ((FloatingActionButton)localObject).setTranslationX(getFabTranslationX());
    }
    localObject = getActionMenuView();
    if (localObject != null)
    {
      ((ActionMenuView)localObject).setAlpha(1.0F);
      if (!e())
      {
        a((ActionMenuView)localObject, 0, false);
        return;
      }
      a((ActionMenuView)localObject, l, n);
    }
  }
  
  @Nullable
  public ColorStateList getBackgroundTint()
  {
    return g.getTintList();
  }
  
  @NonNull
  public CoordinatorLayout.Behavior<BottomAppBar> getBehavior()
  {
    return new Behavior();
  }
  
  @Dimension
  public float getCradleVerticalOffset()
  {
    return h.b();
  }
  
  public int getFabAlignmentMode()
  {
    return l;
  }
  
  public float getFabCradleMargin()
  {
    return h.d();
  }
  
  @Dimension
  public float getFabCradleRoundedCornerRadius()
  {
    return h.e();
  }
  
  public boolean getHideOnScroll()
  {
    return m;
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onLayout(paramBoolean, paramInt1, paramInt2, paramInt3, paramInt4);
    f();
    h();
  }
  
  protected void onRestoreInstanceState(Parcelable paramParcelable)
  {
    if (!(paramParcelable instanceof a))
    {
      super.onRestoreInstanceState(paramParcelable);
      return;
    }
    paramParcelable = (a)paramParcelable;
    super.onRestoreInstanceState(paramParcelable.getSuperState());
    l = a;
    n = b;
  }
  
  protected Parcelable onSaveInstanceState()
  {
    a localA = new a(super.onSaveInstanceState());
    a = l;
    b = n;
    return localA;
  }
  
  public void replaceMenu(@MenuRes int paramInt)
  {
    getMenu().clear();
    inflateMenu(paramInt);
  }
  
  public void setBackgroundTint(@Nullable ColorStateList paramColorStateList)
  {
    DrawableCompat.setTintList(g, paramColorStateList);
  }
  
  public void setCradleVerticalOffset(@Dimension float paramFloat)
  {
    if (paramFloat != getCradleVerticalOffset())
    {
      h.b(paramFloat);
      g.invalidateSelf();
    }
  }
  
  public void setFabAlignmentMode(int paramInt)
  {
    a(paramInt);
    a(paramInt, n);
    l = paramInt;
  }
  
  public void setFabCradleMargin(@Dimension float paramFloat)
  {
    if (paramFloat != getFabCradleMargin())
    {
      h.d(paramFloat);
      g.invalidateSelf();
    }
  }
  
  public void setFabCradleRoundedCornerRadius(@Dimension float paramFloat)
  {
    if (paramFloat != getFabCradleRoundedCornerRadius())
    {
      h.e(paramFloat);
      g.invalidateSelf();
    }
  }
  
  void setFabDiameter(@Px int paramInt)
  {
    float f1 = paramInt;
    if (f1 != h.c())
    {
      h.c(f1);
      g.invalidateSelf();
    }
  }
  
  public void setHideOnScroll(boolean paramBoolean)
  {
    m = paramBoolean;
  }
  
  public void setSubtitle(CharSequence paramCharSequence) {}
  
  public void setTitle(CharSequence paramCharSequence) {}
  
  public static class Behavior
    extends HideBottomViewOnScrollBehavior<BottomAppBar>
  {
    private final Rect a = new Rect();
    
    public Behavior() {}
    
    public Behavior(Context paramContext, AttributeSet paramAttributeSet)
    {
      super(paramAttributeSet);
    }
    
    private boolean a(FloatingActionButton paramFloatingActionButton, BottomAppBar paramBottomAppBar)
    {
      getLayoutParamsanchorGravity = 17;
      BottomAppBar.a(paramBottomAppBar, paramFloatingActionButton);
      return true;
    }
    
    public boolean onLayoutChild(CoordinatorLayout paramCoordinatorLayout, BottomAppBar paramBottomAppBar, int paramInt)
    {
      FloatingActionButton localFloatingActionButton = BottomAppBar.e(paramBottomAppBar);
      if (localFloatingActionButton != null)
      {
        a(localFloatingActionButton, paramBottomAppBar);
        localFloatingActionButton.getMeasuredContentRect(a);
        paramBottomAppBar.setFabDiameter(a.height());
      }
      if (!BottomAppBar.f(paramBottomAppBar)) {
        BottomAppBar.g(paramBottomAppBar);
      }
      paramCoordinatorLayout.onLayoutChild(paramBottomAppBar, paramInt);
      return super.onLayoutChild(paramCoordinatorLayout, paramBottomAppBar, paramInt);
    }
    
    public boolean onStartNestedScroll(@NonNull CoordinatorLayout paramCoordinatorLayout, @NonNull BottomAppBar paramBottomAppBar, @NonNull View paramView1, @NonNull View paramView2, int paramInt1, int paramInt2)
    {
      return (paramBottomAppBar.getHideOnScroll()) && (super.onStartNestedScroll(paramCoordinatorLayout, paramBottomAppBar, paramView1, paramView2, paramInt1, paramInt2));
    }
    
    protected void slideDown(BottomAppBar paramBottomAppBar)
    {
      super.slideDown(paramBottomAppBar);
      paramBottomAppBar = BottomAppBar.e(paramBottomAppBar);
      if (paramBottomAppBar != null)
      {
        paramBottomAppBar.getContentRect(a);
        float f = paramBottomAppBar.getMeasuredHeight() - a.height();
        paramBottomAppBar.clearAnimation();
        paramBottomAppBar.animate().translationY(-paramBottomAppBar.getPaddingBottom() + f).setInterpolator(AnimationUtils.FAST_OUT_LINEAR_IN_INTERPOLATOR).setDuration(175L);
      }
    }
    
    protected void slideUp(BottomAppBar paramBottomAppBar)
    {
      super.slideUp(paramBottomAppBar);
      FloatingActionButton localFloatingActionButton = BottomAppBar.e(paramBottomAppBar);
      if (localFloatingActionButton != null)
      {
        localFloatingActionButton.clearAnimation();
        localFloatingActionButton.animate().translationY(BottomAppBar.h(paramBottomAppBar)).setInterpolator(AnimationUtils.LINEAR_OUT_SLOW_IN_INTERPOLATOR).setDuration(225L);
      }
    }
  }
  
  @Retention(RetentionPolicy.SOURCE)
  public static @interface FabAlignmentMode {}
  
  static class a
    extends AbsSavedState
  {
    public static final Parcelable.Creator<a> CREATOR = new Parcelable.ClassLoaderCreator()
    {
      public BottomAppBar.a a(Parcel paramAnonymousParcel)
      {
        return new BottomAppBar.a(paramAnonymousParcel, null);
      }
      
      public BottomAppBar.a a(Parcel paramAnonymousParcel, ClassLoader paramAnonymousClassLoader)
      {
        return new BottomAppBar.a(paramAnonymousParcel, paramAnonymousClassLoader);
      }
      
      public BottomAppBar.a[] a(int paramAnonymousInt)
      {
        return new BottomAppBar.a[paramAnonymousInt];
      }
    };
    int a;
    boolean b;
    
    public a(Parcel paramParcel, ClassLoader paramClassLoader)
    {
      super(paramClassLoader);
      a = paramParcel.readInt();
      boolean bool;
      if (paramParcel.readInt() != 0) {
        bool = true;
      } else {
        bool = false;
      }
      b = bool;
    }
    
    public a(Parcelable paramParcelable)
    {
      super();
    }
    
    public void writeToParcel(@NonNull Parcel paramParcel, int paramInt)
    {
      throw new Runtime("d2j fail translate: java.lang.RuntimeException: can not merge I and Z\n\tat com.googlecode.dex2jar.ir.TypeClass.merge(TypeClass.java:100)\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer$TypeRef.updateTypeClass(TypeTransformer.java:174)\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer$TypeAnalyze.provideAs(TypeTransformer.java:780)\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer$TypeAnalyze.e1expr(TypeTransformer.java:496)\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer$TypeAnalyze.exExpr(TypeTransformer.java:713)\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer$TypeAnalyze.exExpr(TypeTransformer.java:703)\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer$TypeAnalyze.enexpr(TypeTransformer.java:698)\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer$TypeAnalyze.exExpr(TypeTransformer.java:719)\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer$TypeAnalyze.exExpr(TypeTransformer.java:703)\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer$TypeAnalyze.s1stmt(TypeTransformer.java:810)\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer$TypeAnalyze.sxStmt(TypeTransformer.java:840)\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer$TypeAnalyze.analyze(TypeTransformer.java:206)\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer.transform(TypeTransformer.java:44)\n\tat com.googlecode.d2j.dex.Dex2jar$2.optimize(Dex2jar.java:162)\n\tat com.googlecode.d2j.dex.Dex2Asm.convertCode(Dex2Asm.java:414)\n\tat com.googlecode.d2j.dex.ExDex2Asm.convertCode(ExDex2Asm.java:42)\n\tat com.googlecode.d2j.dex.Dex2jar$2.convertCode(Dex2jar.java:128)\n\tat com.googlecode.d2j.dex.Dex2Asm.convertMethod(Dex2Asm.java:509)\n\tat com.googlecode.d2j.dex.Dex2Asm.convertClass(Dex2Asm.java:406)\n\tat com.googlecode.d2j.dex.Dex2Asm.convertDex(Dex2Asm.java:422)\n\tat com.googlecode.d2j.dex.Dex2jar.doTranslate(Dex2jar.java:172)\n\tat com.googlecode.d2j.dex.Dex2jar.to(Dex2jar.java:272)\n\tat com.googlecode.dex2jar.tools.Dex2jarCmd.doCommandLine(Dex2jarCmd.java:108)\n\tat com.googlecode.dex2jar.tools.BaseCmd.doMain(BaseCmd.java:288)\n\tat com.googlecode.dex2jar.tools.Dex2jarCmd.main(Dex2jarCmd.java:32)\n");
    }
  }
}
