package android.support.design.animation;

import android.animation.Animator;
import android.animation.AnimatorInflater;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.support.annotation.AnimatorRes;
import android.support.annotation.Nullable;
import android.support.annotation.StyleableRes;
import android.support.v4.util.SimpleArrayMap;
import android.util.Log;
import java.util.ArrayList;
import java.util.List;

public class MotionSpec
{
  private final SimpleArrayMap<String, MotionTiming> a = new SimpleArrayMap();
  
  public MotionSpec() {}
  
  private static MotionSpec a(List<Animator> paramList)
  {
    MotionSpec localMotionSpec = new MotionSpec();
    int j = paramList.size();
    int i = 0;
    while (i < j)
    {
      a(localMotionSpec, (Animator)paramList.get(i));
      i += 1;
    }
    return localMotionSpec;
  }
  
  private static void a(MotionSpec paramMotionSpec, Animator paramAnimator)
  {
    if ((paramAnimator instanceof ObjectAnimator))
    {
      paramAnimator = (ObjectAnimator)paramAnimator;
      paramMotionSpec.setTiming(paramAnimator.getPropertyName(), MotionTiming.a(paramAnimator));
      return;
    }
    paramMotionSpec = new StringBuilder();
    paramMotionSpec.append("Animator must be an ObjectAnimator: ");
    paramMotionSpec.append(paramAnimator);
    throw new IllegalArgumentException(paramMotionSpec.toString());
  }
  
  @Nullable
  public static MotionSpec createFromAttribute(Context paramContext, TypedArray paramTypedArray, @StyleableRes int paramInt)
  {
    if (paramTypedArray.hasValue(paramInt))
    {
      paramInt = paramTypedArray.getResourceId(paramInt, 0);
      if (paramInt != 0) {
        return createFromResource(paramContext, paramInt);
      }
    }
    return null;
  }
  
  @Nullable
  public static MotionSpec createFromResource(Context paramContext, @AnimatorRes int paramInt)
  {
    try
    {
      paramContext = AnimatorInflater.loadAnimator(paramContext, paramInt);
      if ((paramContext instanceof AnimatorSet)) {
        return a(((AnimatorSet)paramContext).getChildAnimations());
      }
      if (paramContext != null)
      {
        localObject = new ArrayList();
        ((List)localObject).add(paramContext);
        paramContext = a((List)localObject);
        return paramContext;
      }
      return null;
    }
    catch (Exception paramContext)
    {
      Object localObject = new StringBuilder();
      ((StringBuilder)localObject).append("Can't load animation resource ID #0x");
      ((StringBuilder)localObject).append(Integer.toHexString(paramInt));
      Log.w("MotionSpec", ((StringBuilder)localObject).toString(), paramContext);
    }
    return null;
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {
      return true;
    }
    if ((paramObject != null) && (getClass() == paramObject.getClass()))
    {
      paramObject = (MotionSpec)paramObject;
      return a.equals(a);
    }
    return false;
  }
  
  public MotionTiming getTiming(String paramString)
  {
    if (hasTiming(paramString)) {
      return (MotionTiming)a.get(paramString);
    }
    throw new IllegalArgumentException();
  }
  
  public long getTotalDuration()
  {
    int j = a.size();
    long l = 0L;
    int i = 0;
    while (i < j)
    {
      MotionTiming localMotionTiming = (MotionTiming)a.valueAt(i);
      l = Math.max(l, localMotionTiming.getDelay() + localMotionTiming.getDuration());
      i += 1;
    }
    return l;
  }
  
  public boolean hasTiming(String paramString)
  {
    return a.get(paramString) != null;
  }
  
  public int hashCode()
  {
    return a.hashCode();
  }
  
  public void setTiming(String paramString, @Nullable MotionTiming paramMotionTiming)
  {
    a.put(paramString, paramMotionTiming);
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append('\n');
    localStringBuilder.append(getClass().getName());
    localStringBuilder.append('{');
    localStringBuilder.append(Integer.toHexString(System.identityHashCode(this)));
    localStringBuilder.append(" timings: ");
    localStringBuilder.append(a);
    localStringBuilder.append("}\n");
    return localStringBuilder.toString();
  }
}
