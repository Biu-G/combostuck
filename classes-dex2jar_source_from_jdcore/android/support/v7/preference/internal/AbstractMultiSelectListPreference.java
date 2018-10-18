package android.support.v7.preference.internal;

import android.content.Context;
import android.support.annotation.RestrictTo;
import android.support.v7.preference.DialogPreference;
import android.util.AttributeSet;
import java.util.Set;

@RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
public abstract class AbstractMultiSelectListPreference
  extends DialogPreference
{
  public AbstractMultiSelectListPreference(Context paramContext)
  {
    super(paramContext);
  }
  
  public AbstractMultiSelectListPreference(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  public AbstractMultiSelectListPreference(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }
  
  public AbstractMultiSelectListPreference(Context paramContext, AttributeSet paramAttributeSet, int paramInt1, int paramInt2)
  {
    super(paramContext, paramAttributeSet, paramInt1, paramInt2);
  }
  
  public abstract CharSequence[] getEntries();
  
  public abstract CharSequence[] getEntryValues();
  
  public abstract Set<String> getValues();
  
  public abstract void setValues(Set<String> paramSet);
}
