package com.amap.api.interfaces;

import android.os.RemoteException;
import com.amap.api.maps2d.model.BitmapDescriptor;
import com.amap.api.maps2d.model.LatLng;
import com.amap.api.maps2d.model.LatLngBounds;

public abstract interface IGroundOverlay
{
  public abstract float getBearing()
    throws RemoteException;
  
  public abstract LatLngBounds getBounds()
    throws RemoteException;
  
  public abstract float getHeight()
    throws RemoteException;
  
  public abstract LatLng getPosition()
    throws RemoteException;
  
  public abstract float getTransparency()
    throws RemoteException;
  
  public abstract float getWidth()
    throws RemoteException;
  
  public abstract void setAnchor(float paramFloat1, float paramFloat2)
    throws RemoteException;
  
  public abstract void setBearing(float paramFloat)
    throws RemoteException;
  
  public abstract void setDimensions(float paramFloat)
    throws RemoteException;
  
  public abstract void setDimensions(float paramFloat1, float paramFloat2)
    throws RemoteException;
  
  public abstract void setImage(BitmapDescriptor paramBitmapDescriptor)
    throws RemoteException;
  
  public abstract void setPosition(LatLng paramLatLng)
    throws RemoteException;
  
  public abstract void setPositionFromBounds(LatLngBounds paramLatLngBounds)
    throws RemoteException;
  
  public abstract void setTransparency(float paramFloat)
    throws RemoteException;
}
