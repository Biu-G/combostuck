package android.support.transition;

import android.content.Context;
import android.util.AttributeSet;

public class AutoTransition
  extends TransitionSet
{
  public AutoTransition()
  {
    a();
  }
  
  public AutoTransition(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    a();
  }
  
  private void a()
  {
    setOrdering(1);
    addTransition(new Fade(2)).addTransition(new ChangeBounds()).addTransition(new Fade(1));
  }
}
