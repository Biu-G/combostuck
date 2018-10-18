package android.support.v4.app;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.IntentSender;
import android.content.IntentSender.SendIntentException;
import android.os.Bundle;
import android.os.Handler;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v4.util.Preconditions;
import android.view.LayoutInflater;
import android.view.View;
import java.io.FileDescriptor;
import java.io.PrintWriter;

public abstract class FragmentHostCallback<E>
  extends FragmentContainer
{
  @Nullable
  private final Activity a;
  final c b = new c();
  @NonNull
  private final Context c;
  @NonNull
  private final Handler d;
  private final int e;
  
  FragmentHostCallback(@Nullable Activity paramActivity, @NonNull Context paramContext, @NonNull Handler paramHandler, int paramInt)
  {
    a = paramActivity;
    c = ((Context)Preconditions.checkNotNull(paramContext, "context == null"));
    d = ((Handler)Preconditions.checkNotNull(paramHandler, "handler == null"));
    e = paramInt;
  }
  
  public FragmentHostCallback(@NonNull Context paramContext, @NonNull Handler paramHandler, int paramInt)
  {
    this(localActivity, paramContext, paramHandler, paramInt);
  }
  
  FragmentHostCallback(@NonNull FragmentActivity paramFragmentActivity)
  {
    this(paramFragmentActivity, paramFragmentActivity, mHandler, 0);
  }
  
  void a(Fragment paramFragment) {}
  
  @Nullable
  Activity b()
  {
    return a;
  }
  
  @NonNull
  Context c()
  {
    return c;
  }
  
  @NonNull
  Handler d()
  {
    return d;
  }
  
  c e()
  {
    return b;
  }
  
  public void onDump(String paramString, FileDescriptor paramFileDescriptor, PrintWriter paramPrintWriter, String[] paramArrayOfString) {}
  
  @Nullable
  public View onFindViewById(int paramInt)
  {
    return null;
  }
  
  @Nullable
  public abstract E onGetHost();
  
  @NonNull
  public LayoutInflater onGetLayoutInflater()
  {
    return LayoutInflater.from(c);
  }
  
  public int onGetWindowAnimations()
  {
    return e;
  }
  
  public boolean onHasView()
  {
    return true;
  }
  
  public boolean onHasWindowAnimations()
  {
    return true;
  }
  
  public void onRequestPermissionsFromFragment(@NonNull Fragment paramFragment, @NonNull String[] paramArrayOfString, int paramInt) {}
  
  public boolean onShouldSaveFragmentState(Fragment paramFragment)
  {
    return true;
  }
  
  public boolean onShouldShowRequestPermissionRationale(@NonNull String paramString)
  {
    return false;
  }
  
  public void onStartActivityFromFragment(Fragment paramFragment, Intent paramIntent, int paramInt)
  {
    onStartActivityFromFragment(paramFragment, paramIntent, paramInt, null);
  }
  
  public void onStartActivityFromFragment(Fragment paramFragment, Intent paramIntent, int paramInt, @Nullable Bundle paramBundle)
  {
    if (paramInt == -1)
    {
      c.startActivity(paramIntent);
      return;
    }
    throw new IllegalStateException("Starting activity with a requestCode requires a FragmentActivity host");
  }
  
  public void onStartIntentSenderFromFragment(Fragment paramFragment, IntentSender paramIntentSender, int paramInt1, @Nullable Intent paramIntent, int paramInt2, int paramInt3, int paramInt4, Bundle paramBundle)
    throws IntentSender.SendIntentException
  {
    if (paramInt1 == -1)
    {
      ActivityCompat.startIntentSenderForResult(a, paramIntentSender, paramInt1, paramIntent, paramInt2, paramInt3, paramInt4, paramBundle);
      return;
    }
    throw new IllegalStateException("Starting intent sender with a requestCode requires a FragmentActivity host");
  }
  
  public void onSupportInvalidateOptionsMenu() {}
}