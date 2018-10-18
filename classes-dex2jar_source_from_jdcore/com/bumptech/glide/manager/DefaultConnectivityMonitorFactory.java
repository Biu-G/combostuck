package com.bumptech.glide.manager;

import android.content.Context;
import android.support.annotation.NonNull;
import android.support.v4.content.ContextCompat;
import android.util.Log;

public class DefaultConnectivityMonitorFactory
  implements ConnectivityMonitorFactory
{
  public DefaultConnectivityMonitorFactory() {}
  
  @NonNull
  public ConnectivityMonitor build(@NonNull Context paramContext, @NonNull ConnectivityMonitor.ConnectivityListener paramConnectivityListener)
  {
    int i;
    if (ContextCompat.checkSelfPermission(paramContext, "android.permission.ACCESS_NETWORK_STATE") == 0) {
      i = 1;
    } else {
      i = 0;
    }
    if (Log.isLoggable("ConnectivityMonitor", 3))
    {
      String str;
      if (i != 0) {
        str = "ACCESS_NETWORK_STATE permission granted, registering connectivity monitor";
      } else {
        str = "ACCESS_NETWORK_STATE permission missing, cannot register connectivity monitor";
      }
      Log.d("ConnectivityMonitor", str);
    }
    if (i != 0) {
      return new c(paramContext, paramConnectivityListener);
    }
    return new e();
  }
}
