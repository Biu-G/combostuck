package com.amap.api.interfaces;

import android.os.RemoteException;
import com.amap.api.maps2d.model.LatLng;

public abstract interface ICircle
  extends IOverlay
{
  public abstract boolean contains(LatLng paramLatLng)
    throws RemoteException;
  
  public abstract LatLng getCenter()
    throws RemoteException;
  
  public abstract int getFillColor()
    throws RemoteException;
  
  public abstract double getRadius()
    throws RemoteException;
  
  public abstract int getStrokeColor()
    throws RemoteException;
  
  public abstract float getStrokeWidth()
    throws RemoteException;
  
  public abstract void setCenter(LatLng paramLatLng)
    throws RemoteException;
  
  public abstract void setFillColor(int paramInt)
    throws RemoteException;
  
  public abstract void setRadius(double paramDouble)
    throws RemoteException;
  
  public abstract void setStrokeColor(int paramInt)
    throws RemoteException;
  
  public abstract void setStrokeWidth(float paramFloat)
    throws RemoteException;
}
