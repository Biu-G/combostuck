package android.support.v7.preference;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.support.annotation.RestrictTo;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.widget.TextView;

public abstract class TwoStatePreference
  extends Preference
{
  private CharSequence a;
  private CharSequence b;
  private boolean c;
  private boolean d;
  protected boolean mChecked;
  
  public TwoStatePreference(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public TwoStatePreference(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }
  
  public TwoStatePreference(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    this(paramContext, paramAttributeSet, paramInt, 0);
  }
  
  public TwoStatePreference(Context paramContext, AttributeSet paramAttributeSet, int paramInt1, int paramInt2)
  {
    super(paramContext, paramAttributeSet, paramInt1, paramInt2);
  }
  
  public boolean getDisableDependentsState()
  {
    return d;
  }
  
  public CharSequence getSummaryOff()
  {
    return b;
  }
  
  public CharSequence getSummaryOn()
  {
    return a;
  }
  
  public boolean isChecked()
  {
    return mChecked;
  }
  
  protected void onClick()
  {
    super.onClick();
    boolean bool = isChecked() ^ true;
    if (callChangeListener(Boolean.valueOf(bool))) {
      setChecked(bool);
    }
  }
  
  protected Object onGetDefaultValue(TypedArray paramTypedArray, int paramInt)
  {
    return Boolean.valueOf(paramTypedArray.getBoolean(paramInt, false));
  }
  
  protected void onRestoreInstanceState(Parcelable paramParcelable)
  {
    if ((paramParcelable != null) && (paramParcelable.getClass().equals(a.class)))
    {
      paramParcelable = (a)paramParcelable;
      super.onRestoreInstanceState(paramParcelable.getSuperState());
      setChecked(a);
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
    a = isChecked();
    return localObject;
  }
  
  protected void onSetInitialValue(Object paramObject)
  {
    Object localObject = paramObject;
    if (paramObject == null) {
      localObject = Boolean.valueOf(false);
    }
    setChecked(getPersistedBoolean(((Boolean)localObject).booleanValue()));
  }
  
  public void setChecked(boolean paramBoolean)
  {
    int i;
    if (mChecked != paramBoolean) {
      i = 1;
    } else {
      i = 0;
    }
    if ((i != 0) || (!c))
    {
      mChecked = paramBoolean;
      c = true;
      persistBoolean(paramBoolean);
      if (i != 0)
      {
        notifyDependencyChange(shouldDisableDependents());
        notifyChanged();
      }
    }
  }
  
  public void setDisableDependentsState(boolean paramBoolean)
  {
    d = paramBoolean;
  }
  
  public void setSummaryOff(int paramInt)
  {
    setSummaryOff(getContext().getString(paramInt));
  }
  
  public void setSummaryOff(CharSequence paramCharSequence)
  {
    b = paramCharSequence;
    if (!isChecked()) {
      notifyChanged();
    }
  }
  
  public void setSummaryOn(int paramInt)
  {
    setSummaryOn(getContext().getString(paramInt));
  }
  
  public void setSummaryOn(CharSequence paramCharSequence)
  {
    a = paramCharSequence;
    if (isChecked()) {
      notifyChanged();
    }
  }
  
  public boolean shouldDisableDependents()
  {
    boolean bool1 = d;
    boolean bool2 = false;
    if (bool1) {
      bool1 = mChecked;
    } else if (!mChecked) {
      bool1 = true;
    } else {
      bool1 = false;
    }
    if (!bool1)
    {
      bool1 = bool2;
      if (!super.shouldDisableDependents()) {}
    }
    else
    {
      bool1 = true;
    }
    return bool1;
  }
  
  protected void syncSummaryView(PreferenceViewHolder paramPreferenceViewHolder)
  {
    syncSummaryView(paramPreferenceViewHolder.findViewById(16908304));
  }
  
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
  protected void syncSummaryView(View paramView)
  {
    if (!(paramView instanceof TextView)) {
      return;
    }
    paramView = (TextView)paramView;
    int j = 1;
    if ((mChecked) && (!TextUtils.isEmpty(a))) {
      paramView.setText(a);
    }
    for (;;)
    {
      i = 0;
      break;
      i = j;
      if (mChecked) {
        break;
      }
      i = j;
      if (TextUtils.isEmpty(b)) {
        break;
      }
      paramView.setText(b);
    }
    j = i;
    if (i != 0)
    {
      CharSequence localCharSequence = getSummary();
      j = i;
      if (!TextUtils.isEmpty(localCharSequence))
      {
        paramView.setText(localCharSequence);
        j = 0;
      }
    }
    int i = 8;
    if (j == 0) {
      i = 0;
    }
    if (i != paramView.getVisibility()) {
      paramView.setVisibility(i);
    }
  }
  
  static class a
    extends Preference.BaseSavedState
  {
    public static final Parcelable.Creator<a> CREATOR = new Parcelable.Creator()
    {
      public TwoStatePreference.a a(Parcel paramAnonymousParcel)
      {
        return new TwoStatePreference.a(paramAnonymousParcel);
      }
      
      public TwoStatePreference.a[] a(int paramAnonymousInt)
      {
        return new TwoStatePreference.a[paramAnonymousInt];
      }
    };
    boolean a;
    
    public a(Parcel paramParcel)
    {
      super();
      int i = paramParcel.readInt();
      boolean bool = true;
      if (i != 1) {
        bool = false;
      }
      a = bool;
    }
    
    public a(Parcelable paramParcelable)
    {
      super();
    }
    
    public void writeToParcel(Parcel paramParcel, int paramInt)
    {
      throw new Runtime("d2j fail translate: java.lang.RuntimeException: can not merge I and Z\n\tat com.googlecode.dex2jar.ir.TypeClass.merge(TypeClass.java:100)\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer$TypeRef.updateTypeClass(TypeTransformer.java:174)\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer$TypeAnalyze.provideAs(TypeTransformer.java:780)\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer$TypeAnalyze.e1expr(TypeTransformer.java:496)\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer$TypeAnalyze.exExpr(TypeTransformer.java:713)\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer$TypeAnalyze.exExpr(TypeTransformer.java:703)\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer$TypeAnalyze.enexpr(TypeTransformer.java:698)\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer$TypeAnalyze.exExpr(TypeTransformer.java:719)\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer$TypeAnalyze.exExpr(TypeTransformer.java:703)\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer$TypeAnalyze.s1stmt(TypeTransformer.java:810)\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer$TypeAnalyze.sxStmt(TypeTransformer.java:840)\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer$TypeAnalyze.analyze(TypeTransformer.java:206)\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer.transform(TypeTransformer.java:44)\n\tat com.googlecode.d2j.dex.Dex2jar$2.optimize(Dex2jar.java:162)\n\tat com.googlecode.d2j.dex.Dex2Asm.convertCode(Dex2Asm.java:414)\n\tat com.googlecode.d2j.dex.ExDex2Asm.convertCode(ExDex2Asm.java:42)\n\tat com.googlecode.d2j.dex.Dex2jar$2.convertCode(Dex2jar.java:128)\n\tat com.googlecode.d2j.dex.Dex2Asm.convertMethod(Dex2Asm.java:509)\n\tat com.googlecode.d2j.dex.Dex2Asm.convertClass(Dex2Asm.java:406)\n\tat com.googlecode.d2j.dex.Dex2Asm.convertDex(Dex2Asm.java:422)\n\tat com.googlecode.d2j.dex.Dex2jar.doTranslate(Dex2jar.java:172)\n\tat com.googlecode.d2j.dex.Dex2jar.to(Dex2jar.java:272)\n\tat com.googlecode.dex2jar.tools.Dex2jarCmd.doCommandLine(Dex2jarCmd.java:108)\n\tat com.googlecode.dex2jar.tools.BaseCmd.doMain(BaseCmd.java:288)\n\tat com.googlecode.dex2jar.tools.Dex2jarCmd.main(Dex2jarCmd.java:32)\n");
    }
  }
}
