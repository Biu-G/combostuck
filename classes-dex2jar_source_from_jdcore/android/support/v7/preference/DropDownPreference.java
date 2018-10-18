package android.support.v7.preference;

import android.content.Context;
import android.support.annotation.NonNull;
import android.support.annotation.RestrictTo;
import android.util.AttributeSet;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemSelectedListener;
import android.widget.ArrayAdapter;
import android.widget.Spinner;

public class DropDownPreference
  extends ListPreference
{
  private final Context a;
  private final ArrayAdapter b;
  private Spinner c;
  private final AdapterView.OnItemSelectedListener d = new AdapterView.OnItemSelectedListener()
  {
    public void onItemSelected(AdapterView<?> paramAnonymousAdapterView, View paramAnonymousView, int paramAnonymousInt, long paramAnonymousLong)
    {
      if (paramAnonymousInt >= 0)
      {
        paramAnonymousAdapterView = getEntryValues()[paramAnonymousInt].toString();
        if ((!paramAnonymousAdapterView.equals(getValue())) && (callChangeListener(paramAnonymousAdapterView))) {
          setValue(paramAnonymousAdapterView);
        }
      }
    }
    
    public void onNothingSelected(AdapterView<?> paramAnonymousAdapterView) {}
  };
  
  public DropDownPreference(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public DropDownPreference(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, R.attr.dropdownPreferenceStyle);
  }
  
  public DropDownPreference(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    this(paramContext, paramAttributeSet, paramInt, 0);
  }
  
  public DropDownPreference(Context paramContext, AttributeSet paramAttributeSet, int paramInt1, int paramInt2)
  {
    super(paramContext, paramAttributeSet, paramInt1, paramInt2);
    a = paramContext;
    b = createAdapter();
    d();
  }
  
  private void d()
  {
    b.clear();
    if (getEntries() != null)
    {
      CharSequence[] arrayOfCharSequence = getEntries();
      int j = arrayOfCharSequence.length;
      int i = 0;
      while (i < j)
      {
        CharSequence localCharSequence = arrayOfCharSequence[i];
        b.add(localCharSequence.toString());
        i += 1;
      }
    }
  }
  
  protected ArrayAdapter createAdapter()
  {
    return new ArrayAdapter(a, 17367049);
  }
  
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
  public int findSpinnerIndexOfValue(String paramString)
  {
    CharSequence[] arrayOfCharSequence = getEntryValues();
    if ((paramString != null) && (arrayOfCharSequence != null))
    {
      int i = arrayOfCharSequence.length - 1;
      while (i >= 0)
      {
        if (arrayOfCharSequence[i].equals(paramString)) {
          return i;
        }
        i -= 1;
      }
    }
    return -1;
  }
  
  protected void notifyChanged()
  {
    super.notifyChanged();
    b.notifyDataSetChanged();
  }
  
  public void onBindViewHolder(PreferenceViewHolder paramPreferenceViewHolder)
  {
    c = ((Spinner)itemView.findViewById(R.id.spinner));
    c.setAdapter(b);
    c.setOnItemSelectedListener(d);
    c.setSelection(findSpinnerIndexOfValue(getValue()));
    super.onBindViewHolder(paramPreferenceViewHolder);
  }
  
  protected void onClick()
  {
    c.performClick();
  }
  
  public void setEntries(@NonNull CharSequence[] paramArrayOfCharSequence)
  {
    super.setEntries(paramArrayOfCharSequence);
    d();
  }
  
  public void setValueIndex(int paramInt)
  {
    setValue(getEntryValues()[paramInt].toString());
  }
}
