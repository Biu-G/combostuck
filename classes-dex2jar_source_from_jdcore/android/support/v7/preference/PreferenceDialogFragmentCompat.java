package android.support.v7.preference;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.Canvas;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.support.annotation.LayoutRes;
import android.support.annotation.NonNull;
import android.support.annotation.RestrictTo;
import android.support.v4.app.DialogFragment;
import android.support.v7.app.AlertDialog.Builder;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.Window;
import android.widget.TextView;

public abstract class PreferenceDialogFragmentCompat
  extends DialogFragment
  implements DialogInterface.OnClickListener
{
  protected static final String ARG_KEY = "key";
  private DialogPreference j;
  private CharSequence k;
  private CharSequence l;
  private CharSequence m;
  private CharSequence n;
  @LayoutRes
  private int o;
  private BitmapDrawable p;
  private int q;
  
  public PreferenceDialogFragmentCompat() {}
  
  private void a(Dialog paramDialog)
  {
    paramDialog.getWindow().setSoftInputMode(5);
  }
  
  public DialogPreference getPreference()
  {
    if (j == null)
    {
      String str = getArguments().getString("key");
      j = ((DialogPreference)((DialogPreference.TargetFragment)getTargetFragment()).findPreference(str));
    }
    return j;
  }
  
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
  protected boolean needInputMethod()
  {
    return false;
  }
  
  protected void onBindDialogView(View paramView)
  {
    paramView = paramView.findViewById(16908299);
    if (paramView != null)
    {
      CharSequence localCharSequence = n;
      int i = 8;
      if (!TextUtils.isEmpty(localCharSequence))
      {
        if ((paramView instanceof TextView)) {
          ((TextView)paramView).setText(localCharSequence);
        }
        i = 0;
      }
      if (paramView.getVisibility() != i) {
        paramView.setVisibility(i);
      }
    }
  }
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    q = paramInt;
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    Object localObject1 = getTargetFragment();
    if ((localObject1 instanceof DialogPreference.TargetFragment))
    {
      localObject1 = (DialogPreference.TargetFragment)localObject1;
      Object localObject2 = getArguments().getString("key");
      if (paramBundle == null)
      {
        j = ((DialogPreference)((DialogPreference.TargetFragment)localObject1).findPreference((CharSequence)localObject2));
        k = j.getDialogTitle();
        l = j.getPositiveButtonText();
        m = j.getNegativeButtonText();
        n = j.getDialogMessage();
        o = j.getDialogLayoutResource();
        paramBundle = j.getDialogIcon();
        if ((paramBundle != null) && (!(paramBundle instanceof BitmapDrawable)))
        {
          localObject1 = Bitmap.createBitmap(paramBundle.getIntrinsicWidth(), paramBundle.getIntrinsicHeight(), Bitmap.Config.ARGB_8888);
          localObject2 = new Canvas((Bitmap)localObject1);
          paramBundle.setBounds(0, 0, ((Canvas)localObject2).getWidth(), ((Canvas)localObject2).getHeight());
          paramBundle.draw((Canvas)localObject2);
          p = new BitmapDrawable(getResources(), (Bitmap)localObject1);
          return;
        }
        p = ((BitmapDrawable)paramBundle);
        return;
      }
      k = paramBundle.getCharSequence("PreferenceDialogFragment.title");
      l = paramBundle.getCharSequence("PreferenceDialogFragment.positiveText");
      m = paramBundle.getCharSequence("PreferenceDialogFragment.negativeText");
      n = paramBundle.getCharSequence("PreferenceDialogFragment.message");
      o = paramBundle.getInt("PreferenceDialogFragment.layout", 0);
      paramBundle = (Bitmap)paramBundle.getParcelable("PreferenceDialogFragment.icon");
      if (paramBundle != null) {
        p = new BitmapDrawable(getResources(), paramBundle);
      }
      return;
    }
    throw new IllegalStateException("Target fragment must implement TargetFragment interface");
  }
  
  @NonNull
  public Dialog onCreateDialog(Bundle paramBundle)
  {
    Object localObject = getActivity();
    q = -2;
    paramBundle = new AlertDialog.Builder((Context)localObject).setTitle(k).setIcon(p).setPositiveButton(l, this).setNegativeButton(m, this);
    localObject = onCreateDialogView((Context)localObject);
    if (localObject != null)
    {
      onBindDialogView((View)localObject);
      paramBundle.setView((View)localObject);
    }
    else
    {
      paramBundle.setMessage(n);
    }
    onPrepareDialogBuilder(paramBundle);
    paramBundle = paramBundle.create();
    if (needInputMethod()) {
      a(paramBundle);
    }
    return paramBundle;
  }
  
  protected View onCreateDialogView(Context paramContext)
  {
    int i = o;
    if (i == 0) {
      return null;
    }
    return LayoutInflater.from(paramContext).inflate(i, null);
  }
  
  public abstract void onDialogClosed(boolean paramBoolean);
  
  public void onDismiss(DialogInterface paramDialogInterface)
  {
    super.onDismiss(paramDialogInterface);
    boolean bool;
    if (q == -1) {
      bool = true;
    } else {
      bool = false;
    }
    onDialogClosed(bool);
  }
  
  protected void onPrepareDialogBuilder(AlertDialog.Builder paramBuilder) {}
  
  public void onSaveInstanceState(@NonNull Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    paramBundle.putCharSequence("PreferenceDialogFragment.title", k);
    paramBundle.putCharSequence("PreferenceDialogFragment.positiveText", l);
    paramBundle.putCharSequence("PreferenceDialogFragment.negativeText", m);
    paramBundle.putCharSequence("PreferenceDialogFragment.message", n);
    paramBundle.putInt("PreferenceDialogFragment.layout", o);
    if (p != null) {
      paramBundle.putParcelable("PreferenceDialogFragment.icon", p.getBitmap());
    }
  }
}
