package android.support.v7.preference;

import android.content.Context;
import android.support.annotation.RestrictTo;
import android.util.AttributeSet;
import android.widget.LinearLayout;

@RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
public class UnPressableLinearLayout
  extends LinearLayout
{
  public UnPressableLinearLayout(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public UnPressableLinearLayout(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  protected void dispatchSetPressed(boolean paramBoolean) {}
}
