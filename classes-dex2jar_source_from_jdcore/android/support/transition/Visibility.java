package android.support.transition;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.content.Context;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.RestrictTo;
import android.support.v4.content.res.TypedArrayUtils;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import java.lang.annotation.Annotation;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.Map;

public abstract class Visibility
  extends Transition
{
  public static final int MODE_IN = 1;
  public static final int MODE_OUT = 2;
  private static final String[] a = { "android:visibility:visibility", "android:visibility:parent" };
  private int i = 3;
  
  public Visibility() {}
  
  public Visibility(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    paramContext = paramContext.obtainStyledAttributes(paramAttributeSet, m.e);
    int j = TypedArrayUtils.getNamedInt(paramContext, (XmlResourceParser)paramAttributeSet, "transitionVisibilityMode", 0, 0);
    paramContext.recycle();
    if (j != 0) {
      setMode(j);
    }
  }
  
  private b a(TransitionValues paramTransitionValues1, TransitionValues paramTransitionValues2)
  {
    b localB = new b();
    a = false;
    b = false;
    if ((paramTransitionValues1 != null) && (values.containsKey("android:visibility:visibility")))
    {
      c = ((Integer)values.get("android:visibility:visibility")).intValue();
      e = ((ViewGroup)values.get("android:visibility:parent"));
    }
    else
    {
      c = -1;
      e = null;
    }
    if ((paramTransitionValues2 != null) && (values.containsKey("android:visibility:visibility")))
    {
      d = ((Integer)values.get("android:visibility:visibility")).intValue();
      f = ((ViewGroup)values.get("android:visibility:parent"));
    }
    else
    {
      d = -1;
      f = null;
    }
    if ((paramTransitionValues1 != null) && (paramTransitionValues2 != null))
    {
      if ((c == d) && (e == f)) {
        return localB;
      }
      if (c != d)
      {
        if (c == 0)
        {
          b = false;
          a = true;
          return localB;
        }
        if (d == 0)
        {
          b = true;
          a = true;
          return localB;
        }
      }
      else
      {
        if (f == null)
        {
          b = false;
          a = true;
          return localB;
        }
        if (e == null)
        {
          b = true;
          a = true;
          return localB;
        }
      }
    }
    else
    {
      if ((paramTransitionValues1 == null) && (d == 0))
      {
        b = true;
        a = true;
        return localB;
      }
      if ((paramTransitionValues2 == null) && (c == 0))
      {
        b = false;
        a = true;
      }
    }
    return localB;
  }
  
  private void b(TransitionValues paramTransitionValues)
  {
    int j = view.getVisibility();
    values.put("android:visibility:visibility", Integer.valueOf(j));
    values.put("android:visibility:parent", view.getParent());
    int[] arrayOfInt = new int[2];
    view.getLocationOnScreen(arrayOfInt);
    values.put("android:visibility:screenLocation", arrayOfInt);
  }
  
  public void captureEndValues(@NonNull TransitionValues paramTransitionValues)
  {
    b(paramTransitionValues);
  }
  
  public void captureStartValues(@NonNull TransitionValues paramTransitionValues)
  {
    b(paramTransitionValues);
  }
  
  @Nullable
  public Animator createAnimator(@NonNull ViewGroup paramViewGroup, @Nullable TransitionValues paramTransitionValues1, @Nullable TransitionValues paramTransitionValues2)
  {
    b localB = a(paramTransitionValues1, paramTransitionValues2);
    if ((a) && ((e != null) || (f != null)))
    {
      if (b) {
        return onAppear(paramViewGroup, paramTransitionValues1, c, paramTransitionValues2, d);
      }
      return onDisappear(paramViewGroup, paramTransitionValues1, c, paramTransitionValues2, d);
    }
    return null;
  }
  
  public int getMode()
  {
    return i;
  }
  
  @Nullable
  public String[] getTransitionProperties()
  {
    return a;
  }
  
  public boolean isTransitionRequired(TransitionValues paramTransitionValues1, TransitionValues paramTransitionValues2)
  {
    boolean bool2 = false;
    if ((paramTransitionValues1 == null) && (paramTransitionValues2 == null)) {
      return false;
    }
    if ((paramTransitionValues1 != null) && (paramTransitionValues2 != null) && (values.containsKey("android:visibility:visibility") != values.containsKey("android:visibility:visibility"))) {
      return false;
    }
    paramTransitionValues1 = a(paramTransitionValues1, paramTransitionValues2);
    boolean bool1 = bool2;
    if (a) {
      if (c != 0)
      {
        bool1 = bool2;
        if (d != 0) {}
      }
      else
      {
        bool1 = true;
      }
    }
    return bool1;
  }
  
  public boolean isVisible(TransitionValues paramTransitionValues)
  {
    boolean bool2 = false;
    if (paramTransitionValues == null) {
      return false;
    }
    int j = ((Integer)values.get("android:visibility:visibility")).intValue();
    paramTransitionValues = (View)values.get("android:visibility:parent");
    boolean bool1 = bool2;
    if (j == 0)
    {
      bool1 = bool2;
      if (paramTransitionValues != null) {
        bool1 = true;
      }
    }
    return bool1;
  }
  
  public Animator onAppear(ViewGroup paramViewGroup, TransitionValues paramTransitionValues1, int paramInt1, TransitionValues paramTransitionValues2, int paramInt2)
  {
    if ((i & 0x1) == 1)
    {
      if (paramTransitionValues2 == null) {
        return null;
      }
      if (paramTransitionValues1 == null)
      {
        View localView = (View)view.getParent();
        if (aagetTransitionValuesa) {
          return null;
        }
      }
      return onAppear(paramViewGroup, view, paramTransitionValues1, paramTransitionValues2);
    }
    return null;
  }
  
  public Animator onAppear(ViewGroup paramViewGroup, View paramView, TransitionValues paramTransitionValues1, TransitionValues paramTransitionValues2)
  {
    return null;
  }
  
  public Animator onDisappear(ViewGroup paramViewGroup, TransitionValues paramTransitionValues1, int paramInt1, TransitionValues paramTransitionValues2, int paramInt2)
  {
    if ((i & 0x2) != 2) {
      return null;
    }
    if (paramTransitionValues1 != null) {
      localObject2 = view;
    } else {
      localObject2 = null;
    }
    if (paramTransitionValues2 != null) {
      localObject1 = view;
    } else {
      localObject1 = null;
    }
    if ((localObject1 != null) && (((View)localObject1).getParent() != null))
    {
      if ((paramInt2 == 4) || (localObject2 == localObject1))
      {
        Object localObject3 = null;
        localObject2 = localObject1;
        localObject1 = localObject3;
        break label264;
      }
      if (f) {
        break label145;
      }
      localObject1 = n.a(paramViewGroup, (View)localObject2, (View)((View)localObject2).getParent());
    }
    else
    {
      if (localObject1 == null) {
        break label132;
      }
    }
    for (;;)
    {
      localObject2 = null;
      break label264;
      label132:
      if (localObject2 == null) {
        break;
      }
      if (((View)localObject2).getParent() == null)
      {
        label145:
        localObject1 = localObject2;
      }
      else
      {
        if (!(((View)localObject2).getParent() instanceof View)) {
          break;
        }
        localObject1 = (View)((View)localObject2).getParent();
        if (!agetTransitionValuesaa)
        {
          localObject1 = n.a(paramViewGroup, (View)localObject2, (View)localObject1);
        }
        else
        {
          if (((View)localObject1).getParent() == null)
          {
            paramInt1 = ((View)localObject1).getId();
            if ((paramInt1 != -1) && (paramViewGroup.findViewById(paramInt1) != null) && (f))
            {
              localObject1 = localObject2;
              continue;
            }
          }
          localObject1 = null;
        }
      }
    }
    Object localObject1 = null;
    Object localObject2 = localObject1;
    label264:
    if ((localObject1 != null) && (paramTransitionValues1 != null))
    {
      localObject2 = (int[])values.get("android:visibility:screenLocation");
      paramInt1 = localObject2[0];
      paramInt2 = localObject2[1];
      localObject2 = new int[2];
      paramViewGroup.getLocationOnScreen((int[])localObject2);
      ((View)localObject1).offsetLeftAndRight(paramInt1 - localObject2[0] - ((View)localObject1).getLeft());
      ((View)localObject1).offsetTopAndBottom(paramInt2 - localObject2[1] - ((View)localObject1).getTop());
      localObject2 = u.a(paramViewGroup);
      ((t)localObject2).a((View)localObject1);
      paramViewGroup = onDisappear(paramViewGroup, (View)localObject1, paramTransitionValues1, paramTransitionValues2);
      if (paramViewGroup == null)
      {
        ((t)localObject2).b((View)localObject1);
        return paramViewGroup;
      }
      paramViewGroup.addListener(new AnimatorListenerAdapter()
      {
        public void onAnimationEnd(Animator paramAnonymousAnimator)
        {
          a.b(b);
        }
      });
      return paramViewGroup;
    }
    if (localObject2 != null)
    {
      paramInt1 = ((View)localObject2).getVisibility();
      aa.a((View)localObject2, 0);
      paramViewGroup = onDisappear(paramViewGroup, (View)localObject2, paramTransitionValues1, paramTransitionValues2);
      if (paramViewGroup != null)
      {
        paramTransitionValues1 = new a((View)localObject2, paramInt2, true);
        paramViewGroup.addListener(paramTransitionValues1);
        a.a(paramViewGroup, paramTransitionValues1);
        addListener(paramTransitionValues1);
        return paramViewGroup;
      }
      aa.a((View)localObject2, paramInt1);
      return paramViewGroup;
    }
    return null;
  }
  
  public Animator onDisappear(ViewGroup paramViewGroup, View paramView, TransitionValues paramTransitionValues1, TransitionValues paramTransitionValues2)
  {
    return null;
  }
  
  public void setMode(int paramInt)
  {
    if ((paramInt & 0xFFFFFFFC) == 0)
    {
      i = paramInt;
      return;
    }
    throw new IllegalArgumentException("Only MODE_IN and MODE_OUT flags are allowed");
  }
  
  @Retention(RetentionPolicy.SOURCE)
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
  public static @interface Mode {}
  
  private static class a
    extends AnimatorListenerAdapter
    implements Transition.TransitionListener, a.a
  {
    boolean a = false;
    private final View b;
    private final int c;
    private final ViewGroup d;
    private final boolean e;
    private boolean f;
    
    a(View paramView, int paramInt, boolean paramBoolean)
    {
      b = paramView;
      c = paramInt;
      d = ((ViewGroup)paramView.getParent());
      e = paramBoolean;
      a(true);
    }
    
    private void a()
    {
      if (!a)
      {
        aa.a(b, c);
        if (d != null) {
          d.invalidate();
        }
      }
      a(false);
    }
    
    private void a(boolean paramBoolean)
    {
      if ((e) && (f != paramBoolean) && (d != null))
      {
        f = paramBoolean;
        u.a(d, paramBoolean);
      }
    }
    
    public void onAnimationCancel(Animator paramAnimator)
    {
      a = true;
    }
    
    public void onAnimationEnd(Animator paramAnimator)
    {
      a();
    }
    
    public void onAnimationPause(Animator paramAnimator)
    {
      if (!a) {
        aa.a(b, c);
      }
    }
    
    public void onAnimationRepeat(Animator paramAnimator) {}
    
    public void onAnimationResume(Animator paramAnimator)
    {
      if (!a) {
        aa.a(b, 0);
      }
    }
    
    public void onAnimationStart(Animator paramAnimator) {}
    
    public void onTransitionCancel(@NonNull Transition paramTransition) {}
    
    public void onTransitionEnd(@NonNull Transition paramTransition)
    {
      a();
      paramTransition.removeListener(this);
    }
    
    public void onTransitionPause(@NonNull Transition paramTransition)
    {
      a(false);
    }
    
    public void onTransitionResume(@NonNull Transition paramTransition)
    {
      a(true);
    }
    
    public void onTransitionStart(@NonNull Transition paramTransition) {}
  }
  
  private static class b
  {
    boolean a;
    boolean b;
    int c;
    int d;
    ViewGroup e;
    ViewGroup f;
    
    b() {}
  }
}
