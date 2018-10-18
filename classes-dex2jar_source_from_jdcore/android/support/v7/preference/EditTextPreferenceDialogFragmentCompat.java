package android.support.v7.preference;

import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.annotation.RestrictTo;
import android.text.Editable;
import android.view.View;
import android.widget.EditText;

public class EditTextPreferenceDialogFragmentCompat
  extends PreferenceDialogFragmentCompat
{
  private EditText j;
  private CharSequence k;
  
  public EditTextPreferenceDialogFragmentCompat() {}
  
  private EditTextPreference a()
  {
    return (EditTextPreference)getPreference();
  }
  
  public static EditTextPreferenceDialogFragmentCompat newInstance(String paramString)
  {
    EditTextPreferenceDialogFragmentCompat localEditTextPreferenceDialogFragmentCompat = new EditTextPreferenceDialogFragmentCompat();
    Bundle localBundle = new Bundle(1);
    localBundle.putString("key", paramString);
    localEditTextPreferenceDialogFragmentCompat.setArguments(localBundle);
    return localEditTextPreferenceDialogFragmentCompat;
  }
  
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
  protected boolean needInputMethod()
  {
    return true;
  }
  
  protected void onBindDialogView(View paramView)
  {
    super.onBindDialogView(paramView);
    j = ((EditText)paramView.findViewById(16908291));
    j.requestFocus();
    if (j != null)
    {
      j.setText(k);
      j.setSelection(j.getText().length());
      return;
    }
    throw new IllegalStateException("Dialog view must contain an EditText with id @android:id/edit");
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    if (paramBundle == null)
    {
      k = a().getText();
      return;
    }
    k = paramBundle.getCharSequence("EditTextPreferenceDialogFragment.text");
  }
  
  public void onDialogClosed(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      String str = j.getText().toString();
      if (a().callChangeListener(str)) {
        a().setText(str);
      }
    }
  }
  
  public void onSaveInstanceState(@NonNull Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    paramBundle.putCharSequence("EditTextPreferenceDialogFragment.text", k);
  }
}
