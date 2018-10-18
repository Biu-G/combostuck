package android.support.v7.preference;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.v7.app.AlertDialog.Builder;

public class ListPreferenceDialogFragmentCompat
  extends PreferenceDialogFragmentCompat
{
  int j;
  private CharSequence[] k;
  private CharSequence[] l;
  
  public ListPreferenceDialogFragmentCompat() {}
  
  private ListPreference a()
  {
    return (ListPreference)getPreference();
  }
  
  public static ListPreferenceDialogFragmentCompat newInstance(String paramString)
  {
    ListPreferenceDialogFragmentCompat localListPreferenceDialogFragmentCompat = new ListPreferenceDialogFragmentCompat();
    Bundle localBundle = new Bundle(1);
    localBundle.putString("key", paramString);
    localListPreferenceDialogFragmentCompat.setArguments(localBundle);
    return localListPreferenceDialogFragmentCompat;
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    if (paramBundle == null)
    {
      paramBundle = a();
      if ((paramBundle.getEntries() != null) && (paramBundle.getEntryValues() != null))
      {
        j = paramBundle.findIndexOfValue(paramBundle.getValue());
        k = paramBundle.getEntries();
        l = paramBundle.getEntryValues();
        return;
      }
      throw new IllegalStateException("ListPreference requires an entries array and an entryValues array.");
    }
    j = paramBundle.getInt("ListPreferenceDialogFragment.index", 0);
    k = paramBundle.getCharSequenceArray("ListPreferenceDialogFragment.entries");
    l = paramBundle.getCharSequenceArray("ListPreferenceDialogFragment.entryValues");
  }
  
  public void onDialogClosed(boolean paramBoolean)
  {
    ListPreference localListPreference = a();
    if ((paramBoolean) && (j >= 0))
    {
      String str = l[j].toString();
      if (localListPreference.callChangeListener(str)) {
        localListPreference.setValue(str);
      }
    }
  }
  
  protected void onPrepareDialogBuilder(AlertDialog.Builder paramBuilder)
  {
    super.onPrepareDialogBuilder(paramBuilder);
    paramBuilder.setSingleChoiceItems(k, j, new DialogInterface.OnClickListener()
    {
      public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
      {
        j = paramAnonymousInt;
        ListPreferenceDialogFragmentCompat.this.onClick(paramAnonymousDialogInterface, -1);
        paramAnonymousDialogInterface.dismiss();
      }
    });
    paramBuilder.setPositiveButton(null, null);
  }
  
  public void onSaveInstanceState(@NonNull Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    paramBundle.putInt("ListPreferenceDialogFragment.index", j);
    paramBundle.putCharSequenceArray("ListPreferenceDialogFragment.entries", k);
    paramBundle.putCharSequenceArray("ListPreferenceDialogFragment.entryValues", l);
  }
}
