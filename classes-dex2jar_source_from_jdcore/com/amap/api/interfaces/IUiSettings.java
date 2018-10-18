package com.amap.api.interfaces;

import android.os.RemoteException;

public abstract interface IUiSettings
{
  public abstract int getLogoPosition()
    throws RemoteException;
  
  public abstract int getZoomPosition()
    throws RemoteException;
  
  public abstract boolean isCompassEnabled()
    throws RemoteException;
  
  public abstract boolean isMyLocationButtonEnabled()
    throws RemoteException;
  
  public abstract boolean isScaleControlsEnabled()
    throws RemoteException;
  
  public abstract boolean isScrollGesturesEnabled()
    throws RemoteException;
  
  public abstract boolean isZoomControlsEnabled()
    throws RemoteException;
  
  public abstract boolean isZoomGesturesEnabled()
    throws RemoteException;
  
  public abstract boolean isZoomInByScreenCenter();
  
  public abstract void setAllGesturesEnabled(boolean paramBoolean)
    throws RemoteException;
  
  public abstract void setCompassEnabled(boolean paramBoolean)
    throws RemoteException;
  
  public abstract void setLogoPosition(int paramInt)
    throws RemoteException;
  
  public abstract void setMyLocationButtonEnabled(boolean paramBoolean)
    throws RemoteException;
  
  public abstract void setScaleControlsEnabled(boolean paramBoolean)
    throws RemoteException;
  
  public abstract void setScrollGesturesEnabled(boolean paramBoolean)
    throws RemoteException;
  
  public abstract void setZoomControlsEnabled(boolean paramBoolean)
    throws RemoteException;
  
  public abstract void setZoomGesturesEnabled(boolean paramBoolean)
    throws RemoteException;
  
  public abstract void setZoomInByScreenCenter(boolean paramBoolean);
  
  public abstract void setZoomPosition(int paramInt)
    throws RemoteException;
}
