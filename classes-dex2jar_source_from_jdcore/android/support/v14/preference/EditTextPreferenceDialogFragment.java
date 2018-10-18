package android.support.v14.preference;

import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.annotation.RestrictTo;
import android.support.v7.preference.EditTextPreference;
import android.text.Editable;
import android.view.View;
import android.widget.EditText;

public class EditTextPreferenceDialogFragment
  extends PreferenceDialogFragment
{
  private EditText a;
  private CharSequence b;
  
  public EditTextPreferenceDialogFragment() {}
  
  private EditTextPreference a()
  {
    return (EditTextPreference)getPreference();
  }
  
  public static EditTextPreferenceDialogFragment newInstance(String paramString)
  {
    EditTextPreferenceDialogFragment localEditTextPreferenceDialogFragment = new EditTextPreferenceDialogFragment();
    Bundle localBundle = new Bundle(1);
    localBundle.putString("key", paramString);
    localEditTextPreferenceDialogFragment.setArguments(localBundle);
    return localEditTextPreferenceDialogFragment;
  }
  
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
  protected boolean needInputMethod()
  {
    return true;
  }
  
  protected void onBindDialogView(View paramView)
  {
    super.onBindDialogView(paramView);
    a = ((EditText)paramView.findViewById(16908291));
    a.requestFocus();
    if (a != null)
    {
      a.setText(b);
      a.setSelection(a.getText().length());
      return;
    }
    throw new IllegalStateException("Dialog view must contain an EditText with id @android:id/edit");
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    if (paramBundle == null)
    {
      b = a().getText();
      return;
    }
    b = paramBundle.getCharSequence("EditTextPreferenceDialogFragment.text");
  }
  
  public void onDialogClosed(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      String str = a.getText().toString();
      if (a().callChangeListener(str)) {
        a().setText(str);
      }
    }
  }
  
  public void onSaveInstanceState(@NonNull Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    paramBundle.putCharSequence("EditTextPreferenceDialogFragment.text", b);
  }
}
