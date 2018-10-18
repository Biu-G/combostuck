package android.support.v14.preference;

import android.app.AlertDialog.Builder;
import android.content.DialogInterface;
import android.content.DialogInterface.OnMultiChoiceClickListener;
import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.v7.preference.internal.AbstractMultiSelectListPreference;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Set;

public class MultiSelectListPreferenceDialogFragment
  extends PreferenceDialogFragment
{
  Set<String> a = new HashSet();
  boolean b;
  CharSequence[] c;
  CharSequence[] d;
  
  public MultiSelectListPreferenceDialogFragment() {}
  
  private AbstractMultiSelectListPreference a()
  {
    return (AbstractMultiSelectListPreference)getPreference();
  }
  
  public static MultiSelectListPreferenceDialogFragment newInstance(String paramString)
  {
    MultiSelectListPreferenceDialogFragment localMultiSelectListPreferenceDialogFragment = new MultiSelectListPreferenceDialogFragment();
    Bundle localBundle = new Bundle(1);
    localBundle.putString("key", paramString);
    localMultiSelectListPreferenceDialogFragment.setArguments(localBundle);
    return localMultiSelectListPreferenceDialogFragment;
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    if (paramBundle == null)
    {
      paramBundle = a();
      if ((paramBundle.getEntries() != null) && (paramBundle.getEntryValues() != null))
      {
        a.clear();
        a.addAll(paramBundle.getValues());
        b = false;
        c = paramBundle.getEntries();
        d = paramBundle.getEntryValues();
        return;
      }
      throw new IllegalStateException("MultiSelectListPreference requires an entries array and an entryValues array.");
    }
    a.clear();
    a.addAll(paramBundle.getStringArrayList("MultiSelectListPreferenceDialogFragment.values"));
    b = paramBundle.getBoolean("MultiSelectListPreferenceDialogFragment.changed", false);
    c = paramBundle.getCharSequenceArray("MultiSelectListPreferenceDialogFragment.entries");
    d = paramBundle.getCharSequenceArray("MultiSelectListPreferenceDialogFragment.entryValues");
  }
  
  public void onDialogClosed(boolean paramBoolean)
  {
    AbstractMultiSelectListPreference localAbstractMultiSelectListPreference = a();
    if ((paramBoolean) && (b))
    {
      Set localSet = a;
      if (localAbstractMultiSelectListPreference.callChangeListener(localSet)) {
        localAbstractMultiSelectListPreference.setValues(localSet);
      }
    }
    b = false;
  }
  
  protected void onPrepareDialogBuilder(AlertDialog.Builder paramBuilder)
  {
    super.onPrepareDialogBuilder(paramBuilder);
    int j = d.length;
    boolean[] arrayOfBoolean = new boolean[j];
    int i = 0;
    while (i < j)
    {
      arrayOfBoolean[i] = a.contains(d[i].toString());
      i += 1;
    }
    paramBuilder.setMultiChoiceItems(c, arrayOfBoolean, new DialogInterface.OnMultiChoiceClickListener()
    {
      public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt, boolean paramAnonymousBoolean)
      {
        if (paramAnonymousBoolean)
        {
          paramAnonymousDialogInterface = MultiSelectListPreferenceDialogFragment.this;
          paramAnonymousBoolean = b;
          b = (a.add(d[paramAnonymousInt].toString()) | paramAnonymousBoolean);
          return;
        }
        paramAnonymousDialogInterface = MultiSelectListPreferenceDialogFragment.this;
        paramAnonymousBoolean = b;
        b = (a.remove(d[paramAnonymousInt].toString()) | paramAnonymousBoolean);
      }
    });
  }
  
  public void onSaveInstanceState(@NonNull Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    paramBundle.putStringArrayList("MultiSelectListPreferenceDialogFragment.values", new ArrayList(a));
    paramBundle.putBoolean("MultiSelectListPreferenceDialogFragment.changed", b);
    paramBundle.putCharSequenceArray("MultiSelectListPreferenceDialogFragment.entries", c);
    paramBundle.putCharSequenceArray("MultiSelectListPreferenceDialogFragment.entryValues", d);
  }
}
