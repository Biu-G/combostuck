package android.support.v7.preference;

import android.content.DialogInterface;
import android.content.DialogInterface.OnMultiChoiceClickListener;
import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.v7.app.AlertDialog.Builder;
import android.support.v7.preference.internal.AbstractMultiSelectListPreference;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Set;

public class MultiSelectListPreferenceDialogFragmentCompat
  extends PreferenceDialogFragmentCompat
{
  Set<String> j = new HashSet();
  boolean k;
  CharSequence[] l;
  CharSequence[] m;
  
  public MultiSelectListPreferenceDialogFragmentCompat() {}
  
  private AbstractMultiSelectListPreference a()
  {
    return (AbstractMultiSelectListPreference)getPreference();
  }
  
  public static MultiSelectListPreferenceDialogFragmentCompat newInstance(String paramString)
  {
    MultiSelectListPreferenceDialogFragmentCompat localMultiSelectListPreferenceDialogFragmentCompat = new MultiSelectListPreferenceDialogFragmentCompat();
    Bundle localBundle = new Bundle(1);
    localBundle.putString("key", paramString);
    localMultiSelectListPreferenceDialogFragmentCompat.setArguments(localBundle);
    return localMultiSelectListPreferenceDialogFragmentCompat;
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    if (paramBundle == null)
    {
      paramBundle = a();
      if ((paramBundle.getEntries() != null) && (paramBundle.getEntryValues() != null))
      {
        j.clear();
        j.addAll(paramBundle.getValues());
        k = false;
        l = paramBundle.getEntries();
        m = paramBundle.getEntryValues();
        return;
      }
      throw new IllegalStateException("MultiSelectListPreference requires an entries array and an entryValues array.");
    }
    j.clear();
    j.addAll(paramBundle.getStringArrayList("MultiSelectListPreferenceDialogFragmentCompat.values"));
    k = paramBundle.getBoolean("MultiSelectListPreferenceDialogFragmentCompat.changed", false);
    l = paramBundle.getCharSequenceArray("MultiSelectListPreferenceDialogFragmentCompat.entries");
    m = paramBundle.getCharSequenceArray("MultiSelectListPreferenceDialogFragmentCompat.entryValues");
  }
  
  public void onDialogClosed(boolean paramBoolean)
  {
    AbstractMultiSelectListPreference localAbstractMultiSelectListPreference = a();
    if ((paramBoolean) && (k))
    {
      Set localSet = j;
      if (localAbstractMultiSelectListPreference.callChangeListener(localSet)) {
        localAbstractMultiSelectListPreference.setValues(localSet);
      }
    }
    k = false;
  }
  
  protected void onPrepareDialogBuilder(AlertDialog.Builder paramBuilder)
  {
    super.onPrepareDialogBuilder(paramBuilder);
    int n = m.length;
    boolean[] arrayOfBoolean = new boolean[n];
    int i = 0;
    while (i < n)
    {
      arrayOfBoolean[i] = j.contains(m[i].toString());
      i += 1;
    }
    paramBuilder.setMultiChoiceItems(l, arrayOfBoolean, new DialogInterface.OnMultiChoiceClickListener()
    {
      public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt, boolean paramAnonymousBoolean)
      {
        if (paramAnonymousBoolean)
        {
          paramAnonymousDialogInterface = MultiSelectListPreferenceDialogFragmentCompat.this;
          paramAnonymousBoolean = k;
          k = (j.add(m[paramAnonymousInt].toString()) | paramAnonymousBoolean);
          return;
        }
        paramAnonymousDialogInterface = MultiSelectListPreferenceDialogFragmentCompat.this;
        paramAnonymousBoolean = k;
        k = (j.remove(m[paramAnonymousInt].toString()) | paramAnonymousBoolean);
      }
    });
  }
  
  public void onSaveInstanceState(@NonNull Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    paramBundle.putStringArrayList("MultiSelectListPreferenceDialogFragmentCompat.values", new ArrayList(j));
    paramBundle.putBoolean("MultiSelectListPreferenceDialogFragmentCompat.changed", k);
    paramBundle.putCharSequenceArray("MultiSelectListPreferenceDialogFragmentCompat.entries", l);
    paramBundle.putCharSequenceArray("MultiSelectListPreferenceDialogFragmentCompat.entryValues", m);
  }
}
