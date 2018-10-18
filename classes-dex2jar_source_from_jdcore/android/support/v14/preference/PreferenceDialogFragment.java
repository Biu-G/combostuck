package android.support.v14.preference;

import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.app.DialogFragment;
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
import android.support.v7.preference.DialogPreference;
import android.support.v7.preference.DialogPreference.TargetFragment;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.Window;
import android.widget.TextView;

public abstract class PreferenceDialogFragment
  extends DialogFragment
  implements DialogInterface.OnClickListener
{
  protected static final String ARG_KEY = "key";
  private DialogPreference a;
  private CharSequence b;
  private CharSequence c;
  private CharSequence d;
  private CharSequence e;
  @LayoutRes
  private int f;
  private BitmapDrawable g;
  private int h;
  
  public PreferenceDialogFragment() {}
  
  private void a(Dialog paramDialog)
  {
    paramDialog.getWindow().setSoftInputMode(5);
  }
  
  public DialogPreference getPreference()
  {
    if (a == null)
    {
      String str = getArguments().getString("key");
      a = ((DialogPreference)((DialogPreference.TargetFragment)getTargetFragment()).findPreference(str));
    }
    return a;
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
      CharSequence localCharSequence = e;
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
    h = paramInt;
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
        a = ((DialogPreference)((DialogPreference.TargetFragment)localObject1).findPreference((CharSequence)localObject2));
        b = a.getDialogTitle();
        c = a.getPositiveButtonText();
        d = a.getNegativeButtonText();
        e = a.getDialogMessage();
        f = a.getDialogLayoutResource();
        paramBundle = a.getDialogIcon();
        if ((paramBundle != null) && (!(paramBundle instanceof BitmapDrawable)))
        {
          localObject1 = Bitmap.createBitmap(paramBundle.getIntrinsicWidth(), paramBundle.getIntrinsicHeight(), Bitmap.Config.ARGB_8888);
          localObject2 = new Canvas((Bitmap)localObject1);
          paramBundle.setBounds(0, 0, ((Canvas)localObject2).getWidth(), ((Canvas)localObject2).getHeight());
          paramBundle.draw((Canvas)localObject2);
          g = new BitmapDrawable(getResources(), (Bitmap)localObject1);
          return;
        }
        g = ((BitmapDrawable)paramBundle);
        return;
      }
      b = paramBundle.getCharSequence("PreferenceDialogFragment.title");
      c = paramBundle.getCharSequence("PreferenceDialogFragment.positiveText");
      d = paramBundle.getCharSequence("PreferenceDialogFragment.negativeText");
      e = paramBundle.getCharSequence("PreferenceDialogFragment.message");
      f = paramBundle.getInt("PreferenceDialogFragment.layout", 0);
      paramBundle = (Bitmap)paramBundle.getParcelable("PreferenceDialogFragment.icon");
      if (paramBundle != null) {
        g = new BitmapDrawable(getResources(), paramBundle);
      }
      return;
    }
    throw new IllegalStateException("Target fragment must implement TargetFragment interface");
  }
  
  @NonNull
  public Dialog onCreateDialog(Bundle paramBundle)
  {
    Object localObject = getActivity();
    h = -2;
    paramBundle = new AlertDialog.Builder((Context)localObject).setTitle(b).setIcon(g).setPositiveButton(c, this).setNegativeButton(d, this);
    localObject = onCreateDialogView((Context)localObject);
    if (localObject != null)
    {
      onBindDialogView((View)localObject);
      paramBundle.setView((View)localObject);
    }
    else
    {
      paramBundle.setMessage(e);
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
    int i = f;
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
    if (h == -1) {
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
    paramBundle.putCharSequence("PreferenceDialogFragment.title", b);
    paramBundle.putCharSequence("PreferenceDialogFragment.positiveText", c);
    paramBundle.putCharSequence("PreferenceDialogFragment.negativeText", d);
    paramBundle.putCharSequence("PreferenceDialogFragment.message", e);
    paramBundle.putInt("PreferenceDialogFragment.layout", f);
    if (g != null) {
      paramBundle.putParcelable("PreferenceDialogFragment.icon", g.getBitmap());
    }
  }
}
