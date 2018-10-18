package android.support.design.animation;

import android.animation.Animator;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;

public class MotionTiming
{
  private long a = 0L;
  private long b = 300L;
  @Nullable
  private TimeInterpolator c = null;
  private int d = 0;
  private int e = 1;
  
  public MotionTiming(long paramLong1, long paramLong2)
  {
    a = paramLong1;
    b = paramLong2;
  }
  
  public MotionTiming(long paramLong1, long paramLong2, @NonNull TimeInterpolator paramTimeInterpolator)
  {
    a = paramLong1;
    b = paramLong2;
    c = paramTimeInterpolator;
  }
  
  static MotionTiming a(ValueAnimator paramValueAnimator)
  {
    MotionTiming localMotionTiming = new MotionTiming(paramValueAnimator.getStartDelay(), paramValueAnimator.getDuration(), b(paramValueAnimator));
    d = paramValueAnimator.getRepeatCount();
    e = paramValueAnimator.getRepeatMode();
    return localMotionTiming;
  }
  
  private static TimeInterpolator b(ValueAnimator paramValueAnimator)
  {
    paramValueAnimator = paramValueAnimator.getInterpolator();
    if ((!(paramValueAnimator instanceof AccelerateDecelerateInterpolator)) && (paramValueAnimator != null))
    {
      if ((paramValueAnimator instanceof AccelerateInterpolator)) {
        return AnimationUtils.FAST_OUT_LINEAR_IN_INTERPOLATOR;
      }
      if ((paramValueAnimator instanceof DecelerateInterpolator)) {
        return AnimationUtils.LINEAR_OUT_SLOW_IN_INTERPOLATOR;
      }
      return paramValueAnimator;
    }
    return AnimationUtils.FAST_OUT_SLOW_IN_INTERPOLATOR;
  }
  
  public void apply(Animator paramAnimator)
  {
    paramAnimator.setStartDelay(getDelay());
    paramAnimator.setDuration(getDuration());
    paramAnimator.setInterpolator(getInterpolator());
    if ((paramAnimator instanceof ValueAnimator))
    {
      paramAnimator = (ValueAnimator)paramAnimator;
      paramAnimator.setRepeatCount(getRepeatCount());
      paramAnimator.setRepeatMode(getRepeatMode());
    }
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {
      return true;
    }
    if (paramObject != null)
    {
      if (getClass() != paramObject.getClass()) {
        return false;
      }
      paramObject = (MotionTiming)paramObject;
      if (getDelay() != paramObject.getDelay()) {
        return false;
      }
      if (getDuration() != paramObject.getDuration()) {
        return false;
      }
      if (getRepeatCount() != paramObject.getRepeatCount()) {
        return false;
      }
      if (getRepeatMode() != paramObject.getRepeatMode()) {
        return false;
      }
      return getInterpolator().getClass().equals(paramObject.getInterpolator().getClass());
    }
    return false;
  }
  
  public long getDelay()
  {
    return a;
  }
  
  public long getDuration()
  {
    return b;
  }
  
  public TimeInterpolator getInterpolator()
  {
    if (c != null) {
      return c;
    }
    return AnimationUtils.FAST_OUT_SLOW_IN_INTERPOLATOR;
  }
  
  public int getRepeatCount()
  {
    return d;
  }
  
  public int getRepeatMode()
  {
    return e;
  }
  
  public int hashCode()
  {
    return ((((int)(getDelay() ^ getDelay() >>> 32) * 31 + (int)(getDuration() ^ getDuration() >>> 32)) * 31 + getInterpolator().getClass().hashCode()) * 31 + getRepeatCount()) * 31 + getRepeatMode();
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append('\n');
    localStringBuilder.append(getClass().getName());
    localStringBuilder.append('{');
    localStringBuilder.append(Integer.toHexString(System.identityHashCode(this)));
    localStringBuilder.append(" delay: ");
    localStringBuilder.append(getDelay());
    localStringBuilder.append(" duration: ");
    localStringBuilder.append(getDuration());
    localStringBuilder.append(" interpolator: ");
    localStringBuilder.append(getInterpolator().getClass());
    localStringBuilder.append(" repeatCount: ");
    localStringBuilder.append(getRepeatCount());
    localStringBuilder.append(" repeatMode: ");
    localStringBuilder.append(getRepeatMode());
    localStringBuilder.append("}\n");
    return localStringBuilder.toString();
  }
}
