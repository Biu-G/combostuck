package android.support.v7.preference;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.util.AttributeSet;
import android.util.Log;
import android.view.KeyEvent;
import android.view.View;
import android.view.View.OnKeyListener;
import android.widget.SeekBar;
import android.widget.SeekBar.OnSeekBarChangeListener;
import android.widget.TextView;

public class SeekBarPreference
  extends Preference
{
  int a;
  int b;
  boolean c;
  SeekBar d;
  boolean e;
  private int f;
  private int g;
  private TextView h;
  private boolean i;
  private SeekBar.OnSeekBarChangeListener j = new SeekBar.OnSeekBarChangeListener()
  {
    public void onProgressChanged(SeekBar paramAnonymousSeekBar, int paramAnonymousInt, boolean paramAnonymousBoolean)
    {
      if ((paramAnonymousBoolean) && (!c)) {
        a(paramAnonymousSeekBar);
      }
    }
    
    public void onStartTrackingTouch(SeekBar paramAnonymousSeekBar)
    {
      c = true;
    }
    
    public void onStopTrackingTouch(SeekBar paramAnonymousSeekBar)
    {
      c = false;
      if (paramAnonymousSeekBar.getProgress() + b != a) {
        a(paramAnonymousSeekBar);
      }
    }
  };
  private View.OnKeyListener k = new View.OnKeyListener()
  {
    public boolean onKey(View paramAnonymousView, int paramAnonymousInt, KeyEvent paramAnonymousKeyEvent)
    {
      if (paramAnonymousKeyEvent.getAction() != 0) {
        return false;
      }
      if ((!e) && ((paramAnonymousInt == 21) || (paramAnonymousInt == 22))) {
        return false;
      }
      if (paramAnonymousInt != 23)
      {
        if (paramAnonymousInt == 66) {
          return false;
        }
        if (d == null)
        {
          Log.e("SeekBarPreference", "SeekBar view is null and hence cannot be adjusted.");
          return false;
        }
        return d.onKeyDown(paramAnonymousInt, paramAnonymousKeyEvent);
      }
      return false;
    }
  };
  
  public SeekBarPreference(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public SeekBarPreference(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, R.attr.seekBarPreferenceStyle);
  }
  
  public SeekBarPreference(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    this(paramContext, paramAttributeSet, paramInt, 0);
  }
  
  public SeekBarPreference(Context paramContext, AttributeSet paramAttributeSet, int paramInt1, int paramInt2)
  {
    super(paramContext, paramAttributeSet, paramInt1, paramInt2);
    paramContext = paramContext.obtainStyledAttributes(paramAttributeSet, R.styleable.SeekBarPreference, paramInt1, paramInt2);
    b = paramContext.getInt(R.styleable.SeekBarPreference_min, 0);
    setMax(paramContext.getInt(R.styleable.SeekBarPreference_android_max, 100));
    setSeekBarIncrement(paramContext.getInt(R.styleable.SeekBarPreference_seekBarIncrement, 0));
    e = paramContext.getBoolean(R.styleable.SeekBarPreference_adjustable, true);
    i = paramContext.getBoolean(R.styleable.SeekBarPreference_showSeekBarValue, true);
    paramContext.recycle();
  }
  
  private void a(int paramInt, boolean paramBoolean)
  {
    int m = paramInt;
    if (paramInt < b) {
      m = b;
    }
    paramInt = m;
    if (m > f) {
      paramInt = f;
    }
    if (paramInt != a)
    {
      a = paramInt;
      if (h != null) {
        h.setText(String.valueOf(a));
      }
      persistInt(paramInt);
      if (paramBoolean) {
        notifyChanged();
      }
    }
  }
  
  void a(SeekBar paramSeekBar)
  {
    int m = b + paramSeekBar.getProgress();
    if (m != a)
    {
      if (callChangeListener(Integer.valueOf(m)))
      {
        a(m, false);
        return;
      }
      paramSeekBar.setProgress(a - b);
    }
  }
  
  public int getMax()
  {
    return f;
  }
  
  public int getMin()
  {
    return b;
  }
  
  public final int getSeekBarIncrement()
  {
    return g;
  }
  
  public int getValue()
  {
    return a;
  }
  
  public boolean isAdjustable()
  {
    return e;
  }
  
  public void onBindViewHolder(PreferenceViewHolder paramPreferenceViewHolder)
  {
    super.onBindViewHolder(paramPreferenceViewHolder);
    itemView.setOnKeyListener(k);
    d = ((SeekBar)paramPreferenceViewHolder.findViewById(R.id.seekbar));
    h = ((TextView)paramPreferenceViewHolder.findViewById(R.id.seekbar_value));
    if (i)
    {
      h.setVisibility(0);
    }
    else
    {
      h.setVisibility(8);
      h = null;
    }
    if (d == null)
    {
      Log.e("SeekBarPreference", "SeekBar view is null in onBindViewHolder.");
      return;
    }
    d.setOnSeekBarChangeListener(j);
    d.setMax(f - b);
    if (g != 0) {
      d.setKeyProgressIncrement(g);
    } else {
      g = d.getKeyProgressIncrement();
    }
    d.setProgress(a - b);
    if (h != null) {
      h.setText(String.valueOf(a));
    }
    d.setEnabled(isEnabled());
  }
  
  protected Object onGetDefaultValue(TypedArray paramTypedArray, int paramInt)
  {
    return Integer.valueOf(paramTypedArray.getInt(paramInt, 0));
  }
  
  protected void onRestoreInstanceState(Parcelable paramParcelable)
  {
    if (!paramParcelable.getClass().equals(a.class))
    {
      super.onRestoreInstanceState(paramParcelable);
      return;
    }
    paramParcelable = (a)paramParcelable;
    super.onRestoreInstanceState(paramParcelable.getSuperState());
    a = a;
    b = b;
    f = c;
    notifyChanged();
  }
  
  protected Parcelable onSaveInstanceState()
  {
    Object localObject = super.onSaveInstanceState();
    if (isPersistent()) {
      return localObject;
    }
    localObject = new a((Parcelable)localObject);
    a = a;
    b = b;
    c = f;
    return localObject;
  }
  
  protected void onSetInitialValue(Object paramObject)
  {
    Object localObject = paramObject;
    if (paramObject == null) {
      localObject = Integer.valueOf(0);
    }
    setValue(getPersistedInt(((Integer)localObject).intValue()));
  }
  
  public void setAdjustable(boolean paramBoolean)
  {
    e = paramBoolean;
  }
  
  public final void setMax(int paramInt)
  {
    int m = paramInt;
    if (paramInt < b) {
      m = b;
    }
    if (m != f)
    {
      f = m;
      notifyChanged();
    }
  }
  
  public void setMin(int paramInt)
  {
    int m = paramInt;
    if (paramInt > f) {
      m = f;
    }
    if (m != b)
    {
      b = m;
      notifyChanged();
    }
  }
  
  public final void setSeekBarIncrement(int paramInt)
  {
    if (paramInt != g)
    {
      g = Math.min(f - b, Math.abs(paramInt));
      notifyChanged();
    }
  }
  
  public void setValue(int paramInt)
  {
    a(paramInt, true);
  }
  
  private static class a
    extends Preference.BaseSavedState
  {
    public static final Parcelable.Creator<a> CREATOR = new Parcelable.Creator()
    {
      public SeekBarPreference.a a(Parcel paramAnonymousParcel)
      {
        return new SeekBarPreference.a(paramAnonymousParcel);
      }
      
      public SeekBarPreference.a[] a(int paramAnonymousInt)
      {
        return new SeekBarPreference.a[paramAnonymousInt];
      }
    };
    int a;
    int b;
    int c;
    
    public a(Parcel paramParcel)
    {
      super();
      a = paramParcel.readInt();
      b = paramParcel.readInt();
      c = paramParcel.readInt();
    }
    
    public a(Parcelable paramParcelable)
    {
      super();
    }
    
    public void writeToParcel(Parcel paramParcel, int paramInt)
    {
      super.writeToParcel(paramParcel, paramInt);
      paramParcel.writeInt(a);
      paramParcel.writeInt(b);
      paramParcel.writeInt(c);
    }
  }
}
