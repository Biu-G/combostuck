package com.bumptech.glide.manager;

import android.annotation.SuppressLint;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.support.annotation.NonNull;
import android.util.Log;
import com.bumptech.glide.util.Preconditions;

final class c
  implements ConnectivityMonitor
{
  final ConnectivityMonitor.ConnectivityListener a;
  boolean b;
  private final Context c;
  private boolean d;
  private final BroadcastReceiver e = new BroadcastReceiver()
  {
    public void onReceive(@NonNull Context paramAnonymousContext, Intent paramAnonymousIntent)
    {
      boolean bool = b;
      b = a(paramAnonymousContext);
      if (bool != b)
      {
        if (Log.isLoggable("ConnectivityMonitor", 3))
        {
          paramAnonymousContext = new StringBuilder();
          paramAnonymousContext.append("connectivity changed, isConnected: ");
          paramAnonymousContext.append(b);
          Log.d("ConnectivityMonitor", paramAnonymousContext.toString());
        }
        a.onConnectivityChanged(b);
      }
    }
  };
  
  c(@NonNull Context paramContext, @NonNull ConnectivityMonitor.ConnectivityListener paramConnectivityListener)
  {
    c = paramContext.getApplicationContext();
    a = paramConnectivityListener;
  }
  
  private void a()
  {
    if (d) {
      return;
    }
    b = a(c);
    try
    {
      c.registerReceiver(e, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
      d = true;
      return;
    }
    catch (SecurityException localSecurityException)
    {
      if (Log.isLoggable("ConnectivityMonitor", 5)) {
        Log.w("ConnectivityMonitor", "Failed to register", localSecurityException);
      }
    }
  }
  
  private void b()
  {
    if (!d) {
      return;
    }
    c.unregisterReceiver(e);
    d = false;
  }
  
  @SuppressLint({"MissingPermission"})
  boolean a(@NonNull Context paramContext)
  {
    paramContext = (ConnectivityManager)Preconditions.checkNotNull((ConnectivityManager)paramContext.getSystemService("connectivity"));
    try
    {
      paramContext = paramContext.getActiveNetworkInfo();
      return (paramContext != null) && (paramContext.isConnected());
    }
    catch (RuntimeException paramContext)
    {
      if (Log.isLoggable("ConnectivityMonitor", 5)) {
        Log.w("ConnectivityMonitor", "Failed to determine connectivity status when connectivity changed", paramContext);
      }
    }
    return true;
  }
  
  public void onDestroy() {}
  
  public void onStart()
  {
    a();
  }
  
  public void onStop()
  {
    b();
  }
}
