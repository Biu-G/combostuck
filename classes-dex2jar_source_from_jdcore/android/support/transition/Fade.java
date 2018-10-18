package android.support.transition;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.support.annotation.NonNull;
import android.support.v4.content.res.TypedArrayUtils;
import android.support.v4.view.ViewCompat;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import java.util.Map;

public class Fade
  extends Visibility
{
  public static final int IN = 1;
  public static final int OUT = 2;
  
  public Fade() {}
  
  public Fade(int paramInt)
  {
    setMode(paramInt);
  }
  
  public Fade(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    paramContext = paramContext.obtainStyledAttributes(paramAttributeSet, m.f);
    setMode(TypedArrayUtils.getNamedInt(paramContext, (XmlResourceParser)paramAttributeSet, "fadingMode", 0, getMode()));
    paramContext.recycle();
  }
  
  private static float a(TransitionValues paramTransitionValues, float paramFloat)
  {
    float f = paramFloat;
    if (paramTransitionValues != null)
    {
      paramTransitionValues = (Float)values.get("android:fade:transitionAlpha");
      f = paramFloat;
      if (paramTransitionValues != null) {
        f = paramTransitionValues.floatValue();
      }
    }
    return f;
  }
  
  private Animator a(final View paramView, float paramFloat1, float paramFloat2)
  {
    if (paramFloat1 == paramFloat2) {
      return null;
    }
    aa.a(paramView, paramFloat1);
    ObjectAnimator localObjectAnimator = ObjectAnimator.ofFloat(paramView, aa.a, new float[] { paramFloat2 });
    localObjectAnimator.addListener(new a(paramView));
    addListener(new TransitionListenerAdapter()
    {
      public void onTransitionEnd(@NonNull Transition paramAnonymousTransition)
      {
        aa.a(paramView, 1.0F);
        aa.e(paramView);
        paramAnonymousTransition.removeListener(this);
      }
    });
    return localObjectAnimator;
  }
  
  public void captureStartValues(@NonNull TransitionValues paramTransitionValues)
  {
    super.captureStartValues(paramTransitionValues);
    values.put("android:fade:transitionAlpha", Float.valueOf(aa.c(view)));
  }
  
  public Animator onAppear(ViewGroup paramViewGroup, View paramView, TransitionValues paramTransitionValues1, TransitionValues paramTransitionValues2)
  {
    float f1 = 0.0F;
    float f2 = a(paramTransitionValues1, 0.0F);
    if (f2 != 1.0F) {
      f1 = f2;
    }
    return a(paramView, f1, 1.0F);
  }
  
  public Animator onDisappear(ViewGroup paramViewGroup, View paramView, TransitionValues paramTransitionValues1, TransitionValues paramTransitionValues2)
  {
    aa.d(paramView);
    return a(paramView, a(paramTransitionValues1, 1.0F), 0.0F);
  }
  
  private static class a
    extends AnimatorListenerAdapter
  {
    private final View a;
    private boolean b = false;
    
    a(View paramView)
    {
      a = paramView;
    }
    
    public void onAnimationEnd(Animator paramAnimator)
    {
      aa.a(a, 1.0F);
      if (b) {
        a.setLayerType(0, null);
      }
    }
    
    public void onAnimationStart(Animator paramAnimator)
    {
      if ((ViewCompat.hasOverlappingRendering(a)) && (a.getLayerType() == 0))
      {
        b = true;
        a.setLayerType(2, null);
      }
    }
  }
}
