package android.support.v4.app;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import android.content.DialogInterface.OnDismissListener;
import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.RestrictTo;
import android.support.annotation.StyleRes;
import android.view.LayoutInflater;
import android.view.View;
import android.view.Window;

public class DialogFragment
  extends Fragment
  implements DialogInterface.OnCancelListener, DialogInterface.OnDismissListener
{
  public static final int STYLE_NORMAL = 0;
  public static final int STYLE_NO_FRAME = 2;
  public static final int STYLE_NO_INPUT = 3;
  public static final int STYLE_NO_TITLE = 1;
  int a = 0;
  int b = 0;
  boolean c = true;
  boolean d = true;
  int e = -1;
  Dialog f;
  boolean g;
  boolean h;
  boolean i;
  
  public DialogFragment() {}
  
  void a(boolean paramBoolean)
  {
    if (h) {
      return;
    }
    h = true;
    i = false;
    if (f != null) {
      f.dismiss();
    }
    g = true;
    if (e >= 0)
    {
      getFragmentManager().popBackStack(e, 1);
      e = -1;
      return;
    }
    FragmentTransaction localFragmentTransaction = getFragmentManager().beginTransaction();
    localFragmentTransaction.remove(this);
    if (paramBoolean)
    {
      localFragmentTransaction.commitAllowingStateLoss();
      return;
    }
    localFragmentTransaction.commit();
  }
  
  public void dismiss()
  {
    a(false);
  }
  
  public void dismissAllowingStateLoss()
  {
    a(true);
  }
  
  public Dialog getDialog()
  {
    return f;
  }
  
  public boolean getShowsDialog()
  {
    return d;
  }
  
  @StyleRes
  public int getTheme()
  {
    return b;
  }
  
  public boolean isCancelable()
  {
    return c;
  }
  
  public void onActivityCreated(@Nullable Bundle paramBundle)
  {
    super.onActivityCreated(paramBundle);
    if (!d) {
      return;
    }
    Object localObject = getView();
    if (localObject != null) {
      if (((View)localObject).getParent() == null) {
        f.setContentView((View)localObject);
      } else {
        throw new IllegalStateException("DialogFragment can not be attached to a container view");
      }
    }
    localObject = getActivity();
    if (localObject != null) {
      f.setOwnerActivity((Activity)localObject);
    }
    f.setCancelable(c);
    f.setOnCancelListener(this);
    f.setOnDismissListener(this);
    if (paramBundle != null)
    {
      paramBundle = paramBundle.getBundle("android:savedDialogState");
      if (paramBundle != null) {
        f.onRestoreInstanceState(paramBundle);
      }
    }
  }
  
  public void onAttach(Context paramContext)
  {
    super.onAttach(paramContext);
    if (!i) {
      h = false;
    }
  }
  
  public void onCancel(DialogInterface paramDialogInterface) {}
  
  public void onCreate(@Nullable Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    boolean bool;
    if (mContainerId == 0) {
      bool = true;
    } else {
      bool = false;
    }
    d = bool;
    if (paramBundle != null)
    {
      a = paramBundle.getInt("android:style", 0);
      b = paramBundle.getInt("android:theme", 0);
      c = paramBundle.getBoolean("android:cancelable", true);
      d = paramBundle.getBoolean("android:showsDialog", d);
      e = paramBundle.getInt("android:backStackId", -1);
    }
  }
  
  @NonNull
  public Dialog onCreateDialog(@Nullable Bundle paramBundle)
  {
    return new Dialog(getActivity(), getTheme());
  }
  
  public void onDestroyView()
  {
    super.onDestroyView();
    if (f != null)
    {
      g = true;
      f.dismiss();
      f = null;
    }
  }
  
  public void onDetach()
  {
    super.onDetach();
    if ((!i) && (!h)) {
      h = true;
    }
  }
  
  public void onDismiss(DialogInterface paramDialogInterface)
  {
    if (!g) {
      a(true);
    }
  }
  
  @NonNull
  public LayoutInflater onGetLayoutInflater(@Nullable Bundle paramBundle)
  {
    if (!d) {
      return super.onGetLayoutInflater(paramBundle);
    }
    f = onCreateDialog(paramBundle);
    if (f != null)
    {
      setupDialog(f, a);
      return (LayoutInflater)f.getContext().getSystemService("layout_inflater");
    }
    return (LayoutInflater)mHost.c().getSystemService("layout_inflater");
  }
  
  public void onSaveInstanceState(@NonNull Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    if (f != null)
    {
      Bundle localBundle = f.onSaveInstanceState();
      if (localBundle != null) {
        paramBundle.putBundle("android:savedDialogState", localBundle);
      }
    }
    if (a != 0) {
      paramBundle.putInt("android:style", a);
    }
    if (b != 0) {
      paramBundle.putInt("android:theme", b);
    }
    if (!c) {
      paramBundle.putBoolean("android:cancelable", c);
    }
    if (!d) {
      paramBundle.putBoolean("android:showsDialog", d);
    }
    if (e != -1) {
      paramBundle.putInt("android:backStackId", e);
    }
  }
  
  public void onStart()
  {
    super.onStart();
    if (f != null)
    {
      g = false;
      f.show();
    }
  }
  
  public void onStop()
  {
    super.onStop();
    if (f != null) {
      f.hide();
    }
  }
  
  public void setCancelable(boolean paramBoolean)
  {
    c = paramBoolean;
    if (f != null) {
      f.setCancelable(paramBoolean);
    }
  }
  
  public void setShowsDialog(boolean paramBoolean)
  {
    d = paramBoolean;
  }
  
  public void setStyle(int paramInt1, @StyleRes int paramInt2)
  {
    a = paramInt1;
    if ((a == 2) || (a == 3)) {
      b = 16973913;
    }
    if (paramInt2 != 0) {
      b = paramInt2;
    }
  }
  
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
  public void setupDialog(Dialog paramDialog, int paramInt)
  {
    switch (paramInt)
    {
    default: 
      return;
    case 3: 
      paramDialog.getWindow().addFlags(24);
    }
    paramDialog.requestWindowFeature(1);
  }
  
  public int show(FragmentTransaction paramFragmentTransaction, String paramString)
  {
    h = false;
    i = true;
    paramFragmentTransaction.add(this, paramString);
    g = false;
    e = paramFragmentTransaction.commit();
    return e;
  }
  
  public void show(FragmentManager paramFragmentManager, String paramString)
  {
    h = false;
    i = true;
    paramFragmentManager = paramFragmentManager.beginTransaction();
    paramFragmentManager.add(this, paramString);
    paramFragmentManager.commit();
  }
  
  public void showNow(FragmentManager paramFragmentManager, String paramString)
  {
    h = false;
    i = true;
    paramFragmentManager = paramFragmentManager.beginTransaction();
    paramFragmentManager.add(this, paramString);
    paramFragmentManager.commitNow();
  }
}
