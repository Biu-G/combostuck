package android.support.v14.preference;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.support.annotation.ArrayRes;
import android.support.annotation.NonNull;
import android.support.v4.content.res.TypedArrayUtils;
import android.support.v7.preference.Preference.BaseSavedState;
import android.support.v7.preference.R.attr;
import android.support.v7.preference.R.styleable;
import android.support.v7.preference.internal.AbstractMultiSelectListPreference;
import android.util.AttributeSet;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

public class MultiSelectListPreference
  extends AbstractMultiSelectListPreference
{
  private CharSequence[] a;
  private CharSequence[] b;
  private Set<String> c = new HashSet();
  
  public MultiSelectListPreference(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public MultiSelectListPreference(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, TypedArrayUtils.getAttr(paramContext, R.attr.dialogPreferenceStyle, 16842897));
  }
  
  public MultiSelectListPreference(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    this(paramContext, paramAttributeSet, paramInt, 0);
  }
  
  public MultiSelectListPreference(Context paramContext, AttributeSet paramAttributeSet, int paramInt1, int paramInt2)
  {
    super(paramContext, paramAttributeSet, paramInt1, paramInt2);
    paramContext = paramContext.obtainStyledAttributes(paramAttributeSet, R.styleable.MultiSelectListPreference, paramInt1, paramInt2);
    a = TypedArrayUtils.getTextArray(paramContext, R.styleable.MultiSelectListPreference_entries, R.styleable.MultiSelectListPreference_android_entries);
    b = TypedArrayUtils.getTextArray(paramContext, R.styleable.MultiSelectListPreference_entryValues, R.styleable.MultiSelectListPreference_android_entryValues);
    paramContext.recycle();
  }
  
  public int findIndexOfValue(String paramString)
  {
    if ((paramString != null) && (b != null))
    {
      int i = b.length - 1;
      while (i >= 0)
      {
        if (b[i].equals(paramString)) {
          return i;
        }
        i -= 1;
      }
    }
    return -1;
  }
  
  public CharSequence[] getEntries()
  {
    return a;
  }
  
  public CharSequence[] getEntryValues()
  {
    return b;
  }
  
  protected boolean[] getSelectedItems()
  {
    CharSequence[] arrayOfCharSequence = b;
    int j = arrayOfCharSequence.length;
    Set localSet = c;
    boolean[] arrayOfBoolean = new boolean[j];
    int i = 0;
    while (i < j)
    {
      arrayOfBoolean[i] = localSet.contains(arrayOfCharSequence[i].toString());
      i += 1;
    }
    return arrayOfBoolean;
  }
  
  public Set<String> getValues()
  {
    return c;
  }
  
  protected Object onGetDefaultValue(TypedArray paramTypedArray, int paramInt)
  {
    paramTypedArray = paramTypedArray.getTextArray(paramInt);
    HashSet localHashSet = new HashSet();
    int i = paramTypedArray.length;
    paramInt = 0;
    while (paramInt < i)
    {
      localHashSet.add(paramTypedArray[paramInt].toString());
      paramInt += 1;
    }
    return localHashSet;
  }
  
  protected void onRestoreInstanceState(Parcelable paramParcelable)
  {
    if ((paramParcelable != null) && (paramParcelable.getClass().equals(a.class)))
    {
      paramParcelable = (a)paramParcelable;
      super.onRestoreInstanceState(paramParcelable.getSuperState());
      setValues(a);
      return;
    }
    super.onRestoreInstanceState(paramParcelable);
  }
  
  protected Parcelable onSaveInstanceState()
  {
    Object localObject = super.onSaveInstanceState();
    if (isPersistent()) {
      return localObject;
    }
    localObject = new a((Parcelable)localObject);
    a = getValues();
    return localObject;
  }
  
  protected void onSetInitialValue(Object paramObject)
  {
    setValues(getPersistedStringSet((Set)paramObject));
  }
  
  public void setEntries(@ArrayRes int paramInt)
  {
    setEntries(getContext().getResources().getTextArray(paramInt));
  }
  
  public void setEntries(CharSequence[] paramArrayOfCharSequence)
  {
    a = paramArrayOfCharSequence;
  }
  
  public void setEntryValues(@ArrayRes int paramInt)
  {
    setEntryValues(getContext().getResources().getTextArray(paramInt));
  }
  
  public void setEntryValues(CharSequence[] paramArrayOfCharSequence)
  {
    b = paramArrayOfCharSequence;
  }
  
  public void setValues(Set<String> paramSet)
  {
    c.clear();
    c.addAll(paramSet);
    persistStringSet(paramSet);
  }
  
  private static class a
    extends Preference.BaseSavedState
  {
    public static final Parcelable.Creator<a> CREATOR = new Parcelable.Creator()
    {
      public MultiSelectListPreference.a a(Parcel paramAnonymousParcel)
      {
        return new MultiSelectListPreference.a(paramAnonymousParcel);
      }
      
      public MultiSelectListPreference.a[] a(int paramAnonymousInt)
      {
        return new MultiSelectListPreference.a[paramAnonymousInt];
      }
    };
    Set<String> a;
    
    a(Parcel paramParcel)
    {
      super();
      int i = paramParcel.readInt();
      a = new HashSet();
      String[] arrayOfString = new String[i];
      paramParcel.readStringArray(arrayOfString);
      Collections.addAll(a, arrayOfString);
    }
    
    a(Parcelable paramParcelable)
    {
      super();
    }
    
    public void writeToParcel(@NonNull Parcel paramParcel, int paramInt)
    {
      super.writeToParcel(paramParcel, paramInt);
      paramParcel.writeInt(a.size());
      paramParcel.writeStringArray((String[])a.toArray(new String[a.size()]));
    }
  }
}
