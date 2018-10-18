package com.bumptech.glide;

import android.support.annotation.NonNull;
import com.bumptech.glide.request.transition.NoTransition;
import com.bumptech.glide.request.transition.TransitionFactory;
import com.bumptech.glide.request.transition.ViewAnimationFactory;
import com.bumptech.glide.request.transition.ViewPropertyAnimationFactory;
import com.bumptech.glide.request.transition.ViewPropertyTransition.Animator;
import com.bumptech.glide.util.Preconditions;

public abstract class TransitionOptions<CHILD extends TransitionOptions<CHILD, TranscodeType>, TranscodeType>
  implements Cloneable
{
  private TransitionFactory<? super TranscodeType> a = NoTransition.getFactory();
  
  public TransitionOptions() {}
  
  private CHILD b()
  {
    return this;
  }
  
  final TransitionFactory<? super TranscodeType> a()
  {
    return a;
  }
  
  public final CHILD clone()
  {
    try
    {
      TransitionOptions localTransitionOptions = (TransitionOptions)super.clone();
      return localTransitionOptions;
    }
    catch (CloneNotSupportedException localCloneNotSupportedException)
    {
      throw new RuntimeException(localCloneNotSupportedException);
    }
  }
  
  @NonNull
  public final CHILD dontTransition()
  {
    return transition(NoTransition.getFactory());
  }
  
  @NonNull
  public final CHILD transition(int paramInt)
  {
    return transition(new ViewAnimationFactory(paramInt));
  }
  
  @NonNull
  public final CHILD transition(@NonNull TransitionFactory<? super TranscodeType> paramTransitionFactory)
  {
    a = ((TransitionFactory)Preconditions.checkNotNull(paramTransitionFactory));
    return b();
  }
  
  @NonNull
  public final CHILD transition(@NonNull ViewPropertyTransition.Animator paramAnimator)
  {
    return transition(new ViewPropertyAnimationFactory(paramAnimator));
  }
}
