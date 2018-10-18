package android.support.v7.preference;

import android.content.Context;
import android.support.annotation.RestrictTo;
import android.support.v4.content.res.TypedArrayUtils;
import android.util.AttributeSet;

public final class PreferenceScreen
  extends PreferenceGroup
{
  private boolean b = true;
  
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
  public PreferenceScreen(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet, TypedArrayUtils.getAttr(paramContext, R.attr.preferenceScreenStyle, 16842891));
  }
  
  protected boolean isOnSameScreenAsChildren()
  {
    return false;
  }
  
  protected void onClick()
  {
    if ((getIntent() == null) && (getFragment() == null))
    {
      if (getPreferenceCount() == 0) {
        return;
      }
      PreferenceManager.OnNavigateToScreenListener localOnNavigateToScreenListener = getPreferenceManager().getOnNavigateToScreenListener();
      if (localOnNavigateToScreenListener != null) {
        localOnNavigateToScreenListener.onNavigateToScreen(this);
      }
      return;
    }
  }
  
  public void setShouldUseGeneratedIds(boolean paramBoolean)
  {
    if (!isAttached())
    {
      b = paramBoolean;
      return;
    }
    throw new IllegalStateException("Cannot change the usage of generated IDs while attached to the preference hierarchy");
  }
  
  public boolean shouldUseGeneratedIds()
  {
    return b;
  }
}
