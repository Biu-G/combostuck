package android.support.v14.preference;

import android.app.AlertDialog.Builder;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.v7.preference.ListPreference;

public class ListPreferenceDialogFragment
  extends PreferenceDialogFragment
{
  int a;
  private CharSequence[] b;
  private CharSequence[] c;
  
  public ListPreferenceDialogFragment() {}
  
  private ListPreference a()
  {
    return (ListPreference)getPreference();
  }
  
  public static ListPreferenceDialogFragment newInstance(String paramString)
  {
    ListPreferenceDialogFragment localListPreferenceDialogFragment = new ListPreferenceDialogFragment();
    Bundle localBundle = new Bundle(1);
    localBundle.putString("key", paramString);
    localListPreferenceDialogFragment.setArguments(localBundle);
    return localListPreferenceDialogFragment;
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    if (paramBundle == null)
    {
      paramBundle = a();
      if ((paramBundle.getEntries() != null) && (paramBundle.getEntryValues() != null))
      {
        a = paramBundle.findIndexOfValue(paramBundle.getValue());
        b = paramBundle.getEntries();
        c = paramBundle.getEntryValues();
        return;
      }
      throw new IllegalStateException("ListPreference requires an entries array and an entryValues array.");
    }
    a = paramBundle.getInt("ListPreferenceDialogFragment.index", 0);
    b = paramBundle.getCharSequenceArray("ListPreferenceDialogFragment.entries");
    c = paramBundle.getCharSequenceArray("ListPreferenceDialogFragment.entryValues");
  }
  
  public void onDialogClosed(boolean paramBoolean)
  {
    ListPreference localListPreference = a();
    if ((paramBoolean) && (a >= 0))
    {
      String str = c[a].toString();
      if (localListPreference.callChangeListener(str)) {
        localListPreference.setValue(str);
      }
    }
  }
  
  protected void onPrepareDialogBuilder(AlertDialog.Builder paramBuilder)
  {
    super.onPrepareDialogBuilder(paramBuilder);
    paramBuilder.setSingleChoiceItems(b, a, new DialogInterface.OnClickListener()
    {
      public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
      {
        a = paramAnonymousInt;
        ListPreferenceDialogFragment.this.onClick(paramAnonymousDialogInterface, -1);
        paramAnonymousDialogInterface.dismiss();
      }
    });
    paramBuilder.setPositiveButton(null, null);
  }
  
  public void onSaveInstanceState(@NonNull Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    paramBundle.putInt("ListPreferenceDialogFragment.index", a);
    paramBundle.putCharSequenceArray("ListPreferenceDialogFragment.entries", b);
    paramBundle.putCharSequenceArray("ListPreferenceDialogFragment.entryValues", c);
  }
}
