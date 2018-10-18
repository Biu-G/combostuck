package com.bumptech.glide;

import android.support.annotation.NonNull;
import com.bumptech.glide.request.transition.TransitionFactory;
import com.bumptech.glide.request.transition.ViewPropertyTransition.Animator;

public final class GenericTransitionOptions<TranscodeType>
  extends TransitionOptions<GenericTransitionOptions<TranscodeType>, TranscodeType>
{
  public GenericTransitionOptions() {}
  
  @NonNull
  public static <TranscodeType> GenericTransitionOptions<TranscodeType> with(int paramInt)
  {
    return (GenericTransitionOptions)new GenericTransitionOptions().transition(paramInt);
  }
  
  @NonNull
  public static <TranscodeType> GenericTransitionOptions<TranscodeType> with(@NonNull TransitionFactory<? super TranscodeType> paramTransitionFactory)
  {
    return (GenericTransitionOptions)new GenericTransitionOptions().transition(paramTransitionFactory);
  }
  
  @NonNull
  public static <TranscodeType> GenericTransitionOptions<TranscodeType> with(@NonNull ViewPropertyTransition.Animator paramAnimator)
  {
    return (GenericTransitionOptions)new GenericTransitionOptions().transition(paramAnimator);
  }
  
  @NonNull
  public static <TranscodeType> GenericTransitionOptions<TranscodeType> withNoTransition()
  {
    return (GenericTransitionOptions)new GenericTransitionOptions().dontTransition();
  }
}
