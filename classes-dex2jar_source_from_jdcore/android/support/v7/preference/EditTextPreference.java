package android.support.v7.preference;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.support.v4.content.res.TypedArrayUtils;
import android.text.TextUtils;
import android.util.AttributeSet;

public class EditTextPreference
  extends DialogPreference
{
  private String a;
  
  public EditTextPreference(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public EditTextPreference(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, TypedArrayUtils.getAttr(paramContext, R.attr.editTextPreferenceStyle, 16842898));
  }
  
  public EditTextPreference(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    this(paramContext, paramAttributeSet, paramInt, 0);
  }
  
  public EditTextPreference(Context paramContext, AttributeSet paramAttributeSet, int paramInt1, int paramInt2)
  {
    super(paramContext, paramAttributeSet, paramInt1, paramInt2);
  }
  
  public String getText()
  {
    return a;
  }
  
  protected Object onGetDefaultValue(TypedArray paramTypedArray, int paramInt)
  {
    return paramTypedArray.getString(paramInt);
  }
  
  protected void onRestoreInstanceState(Parcelable paramParcelable)
  {
    if ((paramParcelable != null) && (paramParcelable.getClass().equals(a.class)))
    {
      paramParcelable = (a)paramParcelable;
      super.onRestoreInstanceState(paramParcelable.getSuperState());
      setText(a);
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
    a = getText();
    return localObject;
  }
  
  protected void onSetInitialValue(Object paramObject)
  {
    setText(getPersistedString((String)paramObject));
  }
  
  public void setText(String paramString)
  {
    boolean bool1 = shouldDisableDependents();
    a = paramString;
    persistString(paramString);
    boolean bool2 = shouldDisableDependents();
    if (bool2 != bool1) {
      notifyDependencyChange(bool2);
    }
  }
  
  public boolean shouldDisableDependents()
  {
    return (TextUtils.isEmpty(a)) || (super.shouldDisableDependents());
  }
  
  private static class a
    extends Preference.BaseSavedState
  {
    public static final Parcelable.Creator<a> CREATOR = new Parcelable.Creator()
    {
      public EditTextPreference.a a(Parcel paramAnonymousParcel)
      {
        return new EditTextPreference.a(paramAnonymousParcel);
      }
      
      public EditTextPreference.a[] a(int paramAnonymousInt)
      {
        return new EditTextPreference.a[paramAnonymousInt];
      }
    };
    String a;
    
    public a(Parcel paramParcel)
    {
      super();
      a = paramParcel.readString();
    }
    
    public a(Parcelable paramParcelable)
    {
      super();
    }
    
    public void writeToParcel(Parcel paramParcel, int paramInt)
    {
      super.writeToParcel(paramParcel, paramInt);
      paramParcel.writeString(a);
    }
  }
}
