package android.support.design.widget;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.AnimatorSet.Builder;
import android.animation.ObjectAnimator;
import android.animation.StateListAnimator;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff.Mode;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build.VERSION;
import android.support.annotation.NonNull;
import android.support.annotation.RequiresApi;
import android.support.design.ripple.RippleUtils;
import android.support.v4.graphics.drawable.DrawableCompat;
import android.view.View;
import java.util.ArrayList;
import java.util.List;

@RequiresApi(21)
class c
  extends b
{
  private InsetDrawable x;
  
  c(VisibilityAwareImageButton paramVisibilityAwareImageButton, ShadowViewDelegate paramShadowViewDelegate)
  {
    super(paramVisibilityAwareImageButton, paramShadowViewDelegate);
  }
  
  @NonNull
  private Animator a(float paramFloat1, float paramFloat2)
  {
    AnimatorSet localAnimatorSet = new AnimatorSet();
    localAnimatorSet.play(ObjectAnimator.ofFloat(v, "elevation", new float[] { paramFloat1 }).setDuration(0L)).with(ObjectAnimator.ofFloat(v, View.TRANSLATION_Z, new float[] { paramFloat2 }).setDuration(100L));
    localAnimatorSet.setInterpolator(a);
    return localAnimatorSet;
  }
  
  public float a()
  {
    return v.getElevation();
  }
  
  void a(float paramFloat1, float paramFloat2, float paramFloat3)
  {
    if (Build.VERSION.SDK_INT == 21)
    {
      v.refreshDrawableState();
    }
    else
    {
      StateListAnimator localStateListAnimator = new StateListAnimator();
      localStateListAnimator.addState(p, a(paramFloat1, paramFloat3));
      localStateListAnimator.addState(q, a(paramFloat1, paramFloat2));
      localStateListAnimator.addState(r, a(paramFloat1, paramFloat2));
      localStateListAnimator.addState(s, a(paramFloat1, paramFloat2));
      AnimatorSet localAnimatorSet = new AnimatorSet();
      ArrayList localArrayList = new ArrayList();
      localArrayList.add(ObjectAnimator.ofFloat(v, "elevation", new float[] { paramFloat1 }).setDuration(0L));
      if ((Build.VERSION.SDK_INT >= 22) && (Build.VERSION.SDK_INT <= 24)) {
        localArrayList.add(ObjectAnimator.ofFloat(v, View.TRANSLATION_Z, new float[] { v.getTranslationZ() }).setDuration(100L));
      }
      localArrayList.add(ObjectAnimator.ofFloat(v, View.TRANSLATION_Z, new float[] { 0.0F }).setDuration(100L));
      localAnimatorSet.playSequentially((Animator[])localArrayList.toArray(new Animator[0]));
      localAnimatorSet.setInterpolator(a);
      localStateListAnimator.addState(t, localAnimatorSet);
      localStateListAnimator.addState(u, a(0.0F, 0.0F));
      v.setStateListAnimator(localStateListAnimator);
    }
    if (w.isCompatPaddingEnabled()) {
      j();
    }
  }
  
  void a(ColorStateList paramColorStateList1, PorterDuff.Mode paramMode, ColorStateList paramColorStateList2, int paramInt)
  {
    g = DrawableCompat.wrap(p());
    DrawableCompat.setTintList(g, paramColorStateList1);
    if (paramMode != null) {
      DrawableCompat.setTintMode(g, paramMode);
    }
    if (paramInt > 0)
    {
      i = a(paramInt, paramColorStateList1);
      paramColorStateList1 = new LayerDrawable(new Drawable[] { i, g });
    }
    else
    {
      i = null;
      paramColorStateList1 = g;
    }
    h = new RippleDrawable(RippleUtils.convertToRippleDrawableColor(paramColorStateList2), paramColorStateList1, null);
    j = h;
    w.setBackgroundDrawable(h);
  }
  
  void a(Rect paramRect)
  {
    if (w.isCompatPaddingEnabled())
    {
      float f1 = w.getRadius();
      float f2 = a() + m;
      int i = (int)Math.ceil(ShadowDrawableWrapper.calculateHorizontalPadding(f2, f1, false));
      int j = (int)Math.ceil(ShadowDrawableWrapper.calculateVerticalPadding(f2, f1, false));
      paramRect.set(i, j, i, j);
      return;
    }
    paramRect.set(0, 0, 0, 0);
  }
  
  void a(int[] paramArrayOfInt)
  {
    if (Build.VERSION.SDK_INT == 21)
    {
      if (v.isEnabled())
      {
        v.setElevation(k);
        if (v.isPressed())
        {
          v.setTranslationZ(m);
          return;
        }
        if ((!v.isFocused()) && (!v.isHovered()))
        {
          v.setTranslationZ(0.0F);
          return;
        }
        v.setTranslationZ(l);
        return;
      }
      v.setElevation(0.0F);
      v.setTranslationZ(0.0F);
    }
  }
  
  void b(ColorStateList paramColorStateList)
  {
    if ((h instanceof RippleDrawable))
    {
      ((RippleDrawable)h).setColor(RippleUtils.convertToRippleDrawableColor(paramColorStateList));
      return;
    }
    super.b(paramColorStateList);
  }
  
  void b(Rect paramRect)
  {
    if (w.isCompatPaddingEnabled())
    {
      x = new InsetDrawable(h, left, top, right, bottom);
      w.setBackgroundDrawable(x);
      return;
    }
    w.setBackgroundDrawable(h);
  }
  
  void g() {}
  
  void i()
  {
    j();
  }
  
  boolean m()
  {
    return false;
  }
  
  CircularBorderDrawable n()
  {
    return new CircularBorderDrawableLollipop();
  }
  
  GradientDrawable q()
  {
    return new a();
  }
  
  static class a
    extends GradientDrawable
  {
    a() {}
    
    public boolean isStateful()
    {
      return true;
    }
  }
}
