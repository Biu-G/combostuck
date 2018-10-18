package com.bumptech.glide.manager;

import android.content.Context;
import android.support.annotation.NonNull;

public abstract interface ConnectivityMonitorFactory
{
  @NonNull
  public abstract ConnectivityMonitor build(@NonNull Context paramContext, @NonNull ConnectivityMonitor.ConnectivityListener paramConnectivityListener);
}
