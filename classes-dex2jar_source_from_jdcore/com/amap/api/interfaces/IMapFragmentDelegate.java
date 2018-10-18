package com.amap.api.interfaces;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.amap.api.maps2d.AMapOptions;

public abstract interface IMapFragmentDelegate
{
  public abstract IAMap getMap()
    throws RemoteException;
  
  public abstract boolean isReady()
    throws RemoteException;
  
  public abstract void onCreate(Bundle paramBundle)
    throws RemoteException;
  
  public abstract View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
    throws RemoteException;
  
  public abstract void onDestroy()
    throws RemoteException;
  
  public abstract void onDestroyView()
    throws RemoteException;
  
  public abstract void onInflate(Activity paramActivity, AMapOptions paramAMapOptions, Bundle paramBundle)
    throws RemoteException;
  
  public abstract void onLowMemory()
    throws RemoteException;
  
  public abstract void onPause()
    throws RemoteException;
  
  public abstract void onResume()
    throws RemoteException;
  
  public abstract void onSaveInstanceState(Bundle paramBundle)
    throws RemoteException;
  
  public abstract void setContext(Context paramContext);
  
  public abstract void setOptions(AMapOptions paramAMapOptions);
}
