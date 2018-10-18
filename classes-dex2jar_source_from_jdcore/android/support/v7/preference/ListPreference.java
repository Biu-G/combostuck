package android.support.v7.preference;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.support.annotation.ArrayRes;
import android.support.annotation.NonNull;
import android.support.v4.content.res.TypedArrayUtils;
import android.text.TextUtils;
import android.util.AttributeSet;

public class ListPreference
  extends DialogPreference
{
  private CharSequence[] a;
  private CharSequence[] b;
  private String c;
  private String d;
  private boolean e;
  
  public ListPreference(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public ListPreference(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, TypedArrayUtils.getAttr(paramContext, R.attr.dialogPreferenceStyle, 16842897));
  }
  
  public ListPreference(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    this(paramContext, paramAttributeSet, paramInt, 0);
  }
  
  public ListPreference(Context paramContext, AttributeSet paramAttributeSet, int paramInt1, int paramInt2)
  {
    super(paramContext, paramAttributeSet, paramInt1, paramInt2);
    TypedArray localTypedArray = paramContext.obtainStyledAttributes(paramAttributeSet, R.styleable.ListPreference, paramInt1, paramInt2);
    a = TypedArrayUtils.getTextArray(localTypedArray, R.styleable.ListPreference_entries, R.styleable.ListPreference_android_entries);
    b = TypedArrayUtils.getTextArray(localTypedArray, R.styleable.ListPreference_entryValues, R.styleable.ListPreference_android_entryValues);
    localTypedArray.recycle();
    paramContext = paramContext.obtainStyledAttributes(paramAttributeSet, R.styleable.Preference, paramInt1, paramInt2);
    d = TypedArrayUtils.getString(paramContext, R.styleable.Preference_summary, R.styleable.Preference_android_summary);
    paramContext.recycle();
  }
  
  private int d()
  {
    return findIndexOfValue(c);
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
  
  public CharSequence getEntry()
  {
    int i = d();
    if ((i >= 0) && (a != null)) {
      return a[i];
    }
    return null;
  }
  
  public CharSequence[] getEntryValues()
  {
    return b;
  }
  
  public CharSequence getSummary()
  {
    CharSequence localCharSequence = getEntry();
    if (d == null) {
      return super.getSummary();
    }
    String str = d;
    Object localObject = localCharSequence;
    if (localCharSequence == null) {
      localObject = "";
    }
    return String.format(str, new Object[] { localObject });
  }
  
  public String getValue()
  {
    return c;
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
      setValue(a);
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
    a = getValue();
    return localObject;
  }
  
  protected void onSetInitialValue(Object paramObject)
  {
    setValue(getPersistedString((String)paramObject));
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
  
  public void setSummary(CharSequence paramCharSequence)
  {
    super.setSummary(paramCharSequence);
    if ((paramCharSequence == null) && (d != null))
    {
      d = null;
      return;
    }
    if ((paramCharSequence != null) && (!paramCharSequence.equals(d))) {
      d = paramCharSequence.toString();
    }
  }
  
  public void setValue(String paramString)
  {
    boolean bool = TextUtils.equals(c, paramString) ^ true;
    if ((bool) || (!e))
    {
      c = paramString;
      e = true;
      persistString(paramString);
      if (bool) {
        notifyChanged();
      }
    }
  }
  
  public void setValueIndex(int paramInt)
  {
    if (b != null) {
      setValue(b[paramInt].toString());
    }
  }
  
  private static class a
    extends Preference.BaseSavedState
  {
    public static final Parcelable.Creator<a> CREATOR = new Parcelable.Creator()
    {
      public ListPreference.a a(Parcel paramAnonymousParcel)
      {
        return new ListPreference.a(paramAnonymousParcel);
      }
      
      public ListPreference.a[] a(int paramAnonymousInt)
      {
        return new ListPreference.a[paramAnonymousInt];
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
    
    public void writeToParcel(@NonNull Parcel paramParcel, int paramInt)
    {
      super.writeToParcel(paramParcel, paramInt);
      paramParcel.writeString(a);
    }
  }
}
