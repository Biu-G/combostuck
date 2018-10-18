package android.support.design.widget;

import android.animation.Animator;
import android.animation.Animator.AnimatorListener;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.animation.ValueAnimator.AnimatorUpdateListener;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Matrix;
import android.graphics.Matrix.ScaleToFit;
import android.graphics.PorterDuff.Mode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.LayerDrawable;
import android.os.Build.VERSION;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.design.R.animator;
import android.support.design.R.color;
import android.support.design.animation.AnimationUtils;
import android.support.design.animation.AnimatorSetCompat;
import android.support.design.animation.ImageMatrixProperty;
import android.support.design.animation.MatrixEvaluator;
import android.support.design.animation.MotionSpec;
import android.support.design.animation.MotionTiming;
import android.support.design.ripple.RippleUtils;
import android.support.v4.content.ContextCompat;
import android.support.v4.graphics.drawable.DrawableCompat;
import android.support.v4.view.ViewCompat;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnPreDrawListener;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

class b
{
  static final TimeInterpolator a = AnimationUtils.FAST_OUT_LINEAR_IN_INTERPOLATOR;
  static final int[] p = { 16842919, 16842910 };
  static final int[] q = { 16843623, 16842908, 16842910 };
  static final int[] r = { 16842908, 16842910 };
  static final int[] s = { 16843623, 16842910 };
  static final int[] t = { 16842910 };
  static final int[] u = new int[0];
  private float A;
  private ArrayList<Animator.AnimatorListener> B;
  private ArrayList<Animator.AnimatorListener> C;
  private final Rect D = new Rect();
  private final RectF E = new RectF();
  private final RectF F = new RectF();
  private final Matrix G = new Matrix();
  private ViewTreeObserver.OnPreDrawListener H;
  int b = 0;
  @Nullable
  Animator c;
  @Nullable
  MotionSpec d;
  @Nullable
  MotionSpec e;
  ShadowDrawableWrapper f;
  Drawable g;
  Drawable h;
  CircularBorderDrawable i;
  Drawable j;
  float k;
  float l;
  float m;
  int n;
  float o = 1.0F;
  final VisibilityAwareImageButton v;
  final ShadowViewDelegate w;
  @Nullable
  private MotionSpec x;
  @Nullable
  private MotionSpec y;
  private final StateListAnimator z;
  
  b(VisibilityAwareImageButton paramVisibilityAwareImageButton, ShadowViewDelegate paramShadowViewDelegate)
  {
    v = paramVisibilityAwareImageButton;
    w = paramShadowViewDelegate;
    z = new StateListAnimator();
    z.addState(p, a(new c()));
    z.addState(q, a(new b()));
    z.addState(r, a(new b()));
    z.addState(s, a(new b()));
    z.addState(t, a(new e()));
    z.addState(u, a(new a()));
    A = v.getRotation();
  }
  
  @NonNull
  private AnimatorSet a(@NonNull MotionSpec paramMotionSpec, float paramFloat1, float paramFloat2, float paramFloat3)
  {
    ArrayList localArrayList = new ArrayList();
    ObjectAnimator localObjectAnimator = ObjectAnimator.ofFloat(v, View.ALPHA, new float[] { paramFloat1 });
    paramMotionSpec.getTiming("opacity").apply(localObjectAnimator);
    localArrayList.add(localObjectAnimator);
    localObjectAnimator = ObjectAnimator.ofFloat(v, View.SCALE_X, new float[] { paramFloat2 });
    paramMotionSpec.getTiming("scale").apply(localObjectAnimator);
    localArrayList.add(localObjectAnimator);
    localObjectAnimator = ObjectAnimator.ofFloat(v, View.SCALE_Y, new float[] { paramFloat2 });
    paramMotionSpec.getTiming("scale").apply(localObjectAnimator);
    localArrayList.add(localObjectAnimator);
    a(paramFloat3, G);
    localObjectAnimator = ObjectAnimator.ofObject(v, new ImageMatrixProperty(), new MatrixEvaluator(), new Matrix[] { new Matrix(G) });
    paramMotionSpec.getTiming("iconScale").apply(localObjectAnimator);
    localArrayList.add(localObjectAnimator);
    paramMotionSpec = new AnimatorSet();
    AnimatorSetCompat.playTogether(paramMotionSpec, localArrayList);
    return paramMotionSpec;
  }
  
  private ValueAnimator a(@NonNull f paramF)
  {
    ValueAnimator localValueAnimator = new ValueAnimator();
    localValueAnimator.setInterpolator(a);
    localValueAnimator.setDuration(100L);
    localValueAnimator.addListener(paramF);
    localValueAnimator.addUpdateListener(paramF);
    localValueAnimator.setFloatValues(new float[] { 0.0F, 1.0F });
    return localValueAnimator;
  }
  
  private void a(float paramFloat, Matrix paramMatrix)
  {
    paramMatrix.reset();
    Drawable localDrawable = v.getDrawable();
    if ((localDrawable != null) && (n != 0))
    {
      RectF localRectF1 = E;
      RectF localRectF2 = F;
      localRectF1.set(0.0F, 0.0F, localDrawable.getIntrinsicWidth(), localDrawable.getIntrinsicHeight());
      localRectF2.set(0.0F, 0.0F, n, n);
      paramMatrix.setRectToRect(localRectF1, localRectF2, Matrix.ScaleToFit.CENTER);
      paramMatrix.postScale(paramFloat, paramFloat, n / 2.0F, n / 2.0F);
    }
  }
  
  private MotionSpec t()
  {
    if (x == null) {
      x = MotionSpec.createFromResource(v.getContext(), R.animator.design_fab_show_motion_spec);
    }
    return x;
  }
  
  private MotionSpec u()
  {
    if (y == null) {
      y = MotionSpec.createFromResource(v.getContext(), R.animator.design_fab_hide_motion_spec);
    }
    return y;
  }
  
  private void v()
  {
    if (H == null) {
      H = new ViewTreeObserver.OnPreDrawListener()
      {
        public boolean onPreDraw()
        {
          o();
          return true;
        }
      };
    }
  }
  
  private boolean w()
  {
    return (ViewCompat.isLaidOut(v)) && (!v.isInEditMode());
  }
  
  private void x()
  {
    if (Build.VERSION.SDK_INT == 19) {
      if (A % 90.0F != 0.0F)
      {
        if (v.getLayerType() != 1) {
          v.setLayerType(1, null);
        }
      }
      else if (v.getLayerType() != 0) {
        v.setLayerType(0, null);
      }
    }
    if (f != null) {
      f.setRotation(-A);
    }
    if (i != null) {
      i.setRotation(-A);
    }
  }
  
  float a()
  {
    return k;
  }
  
  CircularBorderDrawable a(int paramInt, ColorStateList paramColorStateList)
  {
    Context localContext = v.getContext();
    CircularBorderDrawable localCircularBorderDrawable = n();
    localCircularBorderDrawable.setGradientColors(ContextCompat.getColor(localContext, R.color.design_fab_stroke_top_outer_color), ContextCompat.getColor(localContext, R.color.design_fab_stroke_top_inner_color), ContextCompat.getColor(localContext, R.color.design_fab_stroke_end_inner_color), ContextCompat.getColor(localContext, R.color.design_fab_stroke_end_outer_color));
    localCircularBorderDrawable.setBorderWidth(paramInt);
    localCircularBorderDrawable.setBorderTint(paramColorStateList);
    return localCircularBorderDrawable;
  }
  
  final void a(float paramFloat)
  {
    if (k != paramFloat)
    {
      k = paramFloat;
      a(k, l, m);
    }
  }
  
  void a(float paramFloat1, float paramFloat2, float paramFloat3)
  {
    if (f != null)
    {
      f.setShadowSize(paramFloat1, m + paramFloat1);
      j();
    }
  }
  
  final void a(int paramInt)
  {
    if (n != paramInt)
    {
      n = paramInt;
      d();
    }
  }
  
  void a(@NonNull Animator.AnimatorListener paramAnimatorListener)
  {
    if (B == null) {
      B = new ArrayList();
    }
    B.add(paramAnimatorListener);
  }
  
  void a(ColorStateList paramColorStateList)
  {
    if (g != null) {
      DrawableCompat.setTintList(g, paramColorStateList);
    }
    if (i != null) {
      i.setBorderTint(paramColorStateList);
    }
  }
  
  void a(ColorStateList paramColorStateList1, PorterDuff.Mode paramMode, ColorStateList paramColorStateList2, int paramInt)
  {
    g = DrawableCompat.wrap(p());
    DrawableCompat.setTintList(g, paramColorStateList1);
    if (paramMode != null) {
      DrawableCompat.setTintMode(g, paramMode);
    }
    h = DrawableCompat.wrap(p());
    DrawableCompat.setTintList(h, RippleUtils.convertToRippleDrawableColor(paramColorStateList2));
    if (paramInt > 0)
    {
      i = a(paramInt, paramColorStateList1);
      paramColorStateList1 = new Drawable[3];
      paramColorStateList1[0] = i;
      paramColorStateList1[1] = g;
      paramColorStateList1[2] = h;
    }
    else
    {
      i = null;
      paramColorStateList1 = new Drawable[2];
      paramColorStateList1[0] = g;
      paramColorStateList1[1] = h;
    }
    j = new LayerDrawable(paramColorStateList1);
    f = new ShadowDrawableWrapper(v.getContext(), j, w.getRadius(), k, k + m);
    f.setAddPaddingForCorners(false);
    w.setBackgroundDrawable(f);
  }
  
  void a(PorterDuff.Mode paramMode)
  {
    if (g != null) {
      DrawableCompat.setTintMode(g, paramMode);
    }
  }
  
  void a(Rect paramRect)
  {
    f.getPadding(paramRect);
  }
  
  final void a(@Nullable MotionSpec paramMotionSpec)
  {
    d = paramMotionSpec;
  }
  
  void a(@Nullable final d paramD, final boolean paramBoolean)
  {
    if (s()) {
      return;
    }
    if (c != null) {
      c.cancel();
    }
    if (w())
    {
      if (e != null) {
        localObject = e;
      } else {
        localObject = u();
      }
      localObject = a((MotionSpec)localObject, 0.0F, 0.0F, 0.0F);
      ((AnimatorSet)localObject).addListener(new AnimatorListenerAdapter()
      {
        private boolean d;
        
        public void onAnimationCancel(Animator paramAnonymousAnimator)
        {
          d = true;
        }
        
        public void onAnimationEnd(Animator paramAnonymousAnimator)
        {
          b = 0;
          c = null;
          if (!d)
          {
            paramAnonymousAnimator = v;
            int i;
            if (paramBoolean) {
              i = 8;
            } else {
              i = 4;
            }
            paramAnonymousAnimator.internalSetVisibility(i, paramBoolean);
            if (paramD != null) {
              paramD.b();
            }
          }
        }
        
        public void onAnimationStart(Animator paramAnonymousAnimator)
        {
          v.internalSetVisibility(0, paramBoolean);
          b = 1;
          c = paramAnonymousAnimator;
          d = false;
        }
      });
      if (C != null)
      {
        paramD = C.iterator();
        while (paramD.hasNext()) {
          ((AnimatorSet)localObject).addListener((Animator.AnimatorListener)paramD.next());
        }
      }
      ((AnimatorSet)localObject).start();
      return;
    }
    Object localObject = v;
    int i1;
    if (paramBoolean) {
      i1 = 8;
    } else {
      i1 = 4;
    }
    ((VisibilityAwareImageButton)localObject).internalSetVisibility(i1, paramBoolean);
    if (paramD != null) {
      paramD.b();
    }
  }
  
  void a(int[] paramArrayOfInt)
  {
    z.setState(paramArrayOfInt);
  }
  
  float b()
  {
    return l;
  }
  
  final void b(float paramFloat)
  {
    if (l != paramFloat)
    {
      l = paramFloat;
      a(k, l, m);
    }
  }
  
  void b(@NonNull Animator.AnimatorListener paramAnimatorListener)
  {
    if (B == null) {
      return;
    }
    B.remove(paramAnimatorListener);
  }
  
  void b(ColorStateList paramColorStateList)
  {
    if (h != null) {
      DrawableCompat.setTintList(h, RippleUtils.convertToRippleDrawableColor(paramColorStateList));
    }
  }
  
  void b(Rect paramRect) {}
  
  final void b(@Nullable MotionSpec paramMotionSpec)
  {
    e = paramMotionSpec;
  }
  
  void b(@Nullable final d paramD, final boolean paramBoolean)
  {
    if (r()) {
      return;
    }
    if (c != null) {
      c.cancel();
    }
    if (w())
    {
      if (v.getVisibility() != 0)
      {
        v.setAlpha(0.0F);
        v.setScaleY(0.0F);
        v.setScaleX(0.0F);
        d(0.0F);
      }
      if (d != null) {
        localObject = d;
      } else {
        localObject = t();
      }
      Object localObject = a((MotionSpec)localObject, 1.0F, 1.0F, 1.0F);
      ((AnimatorSet)localObject).addListener(new AnimatorListenerAdapter()
      {
        public void onAnimationEnd(Animator paramAnonymousAnimator)
        {
          b = 0;
          c = null;
          if (paramD != null) {
            paramD.a();
          }
        }
        
        public void onAnimationStart(Animator paramAnonymousAnimator)
        {
          v.internalSetVisibility(0, paramBoolean);
          b = 2;
          c = paramAnonymousAnimator;
        }
      });
      if (B != null)
      {
        paramD = B.iterator();
        while (paramD.hasNext()) {
          ((AnimatorSet)localObject).addListener((Animator.AnimatorListener)paramD.next());
        }
      }
      ((AnimatorSet)localObject).start();
      return;
    }
    v.internalSetVisibility(0, paramBoolean);
    v.setAlpha(1.0F);
    v.setScaleY(1.0F);
    v.setScaleX(1.0F);
    d(1.0F);
    if (paramD != null) {
      paramD.a();
    }
  }
  
  float c()
  {
    return m;
  }
  
  final void c(float paramFloat)
  {
    if (m != paramFloat)
    {
      m = paramFloat;
      a(k, l, m);
    }
  }
  
  public void c(@NonNull Animator.AnimatorListener paramAnimatorListener)
  {
    if (C == null) {
      C = new ArrayList();
    }
    C.add(paramAnimatorListener);
  }
  
  final void d()
  {
    d(o);
  }
  
  final void d(float paramFloat)
  {
    o = paramFloat;
    Matrix localMatrix = G;
    a(paramFloat, localMatrix);
    v.setImageMatrix(localMatrix);
  }
  
  public void d(@NonNull Animator.AnimatorListener paramAnimatorListener)
  {
    if (C == null) {
      return;
    }
    C.remove(paramAnimatorListener);
  }
  
  @Nullable
  final MotionSpec e()
  {
    return d;
  }
  
  @Nullable
  final MotionSpec f()
  {
    return e;
  }
  
  void g()
  {
    z.jumpToCurrentState();
  }
  
  final Drawable h()
  {
    return j;
  }
  
  void i() {}
  
  final void j()
  {
    Rect localRect = D;
    a(localRect);
    b(localRect);
    w.setShadowPadding(left, top, right, bottom);
  }
  
  void k()
  {
    if (m())
    {
      v();
      v.getViewTreeObserver().addOnPreDrawListener(H);
    }
  }
  
  void l()
  {
    if (H != null)
    {
      v.getViewTreeObserver().removeOnPreDrawListener(H);
      H = null;
    }
  }
  
  boolean m()
  {
    return true;
  }
  
  CircularBorderDrawable n()
  {
    return new CircularBorderDrawable();
  }
  
  void o()
  {
    float f1 = v.getRotation();
    if (A != f1)
    {
      A = f1;
      x();
    }
  }
  
  GradientDrawable p()
  {
    GradientDrawable localGradientDrawable = q();
    localGradientDrawable.setShape(1);
    localGradientDrawable.setColor(-1);
    return localGradientDrawable;
  }
  
  GradientDrawable q()
  {
    return new GradientDrawable();
  }
  
  boolean r()
  {
    int i1 = v.getVisibility();
    boolean bool2 = false;
    boolean bool1 = false;
    if (i1 != 0)
    {
      if (b == 2) {
        bool1 = true;
      }
      return bool1;
    }
    bool1 = bool2;
    if (b != 1) {
      bool1 = true;
    }
    return bool1;
  }
  
  boolean s()
  {
    int i1 = v.getVisibility();
    boolean bool2 = false;
    boolean bool1 = false;
    if (i1 == 0)
    {
      if (b == 1) {
        bool1 = true;
      }
      return bool1;
    }
    bool1 = bool2;
    if (b != 2) {
      bool1 = true;
    }
    return bool1;
  }
  
  private class a
    extends b.f
  {
    a()
    {
      super(null);
    }
    
    protected float a()
    {
      return 0.0F;
    }
  }
  
  private class b
    extends b.f
  {
    b()
    {
      super(null);
    }
    
    protected float a()
    {
      return k + l;
    }
  }
  
  private class c
    extends b.f
  {
    c()
    {
      super(null);
    }
    
    protected float a()
    {
      return k + m;
    }
  }
  
  static abstract interface d
  {
    public abstract void a();
    
    public abstract void b();
  }
  
  private class e
    extends b.f
  {
    e()
    {
      super(null);
    }
    
    protected float a()
    {
      return k;
    }
  }
  
  private abstract class f
    extends AnimatorListenerAdapter
    implements ValueAnimator.AnimatorUpdateListener
  {
    private boolean a;
    private float c;
    private float d;
    
    private f() {}
    
    protected abstract float a();
    
    public void onAnimationEnd(Animator paramAnimator)
    {
      f.setShadowSize(d);
      a = false;
    }
    
    public void onAnimationUpdate(ValueAnimator paramValueAnimator)
    {
      if (!a)
      {
        c = f.getShadowSize();
        d = a();
        a = true;
      }
      f.setShadowSize(c + (d - c) * paramValueAnimator.getAnimatedFraction());
    }
  }
}
