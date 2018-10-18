package com.amap.api.interfaces;

import android.os.RemoteException;
import com.amap.api.maps2d.model.LatLng;
import java.util.List;

public abstract interface IPolygon
  extends IOverlay
{
  public abstract boolean contains(LatLng paramLatLng)
    throws RemoteException;
  
  public abstract int getFillColor()
    throws RemoteException;
  
  public abstract List<LatLng> getPoints()
    throws RemoteException;
  
  public abstract int getStrokeColor()
    throws RemoteException;
  
  public abstract float getStrokeWidth()
    throws RemoteException;
  
  public abstract void setFillColor(int paramInt)
    throws RemoteException;
  
  public abstract void setPoints(List<LatLng> paramList)
    throws RemoteException;
  
  public abstract void setStrokeColor(int paramInt)
    throws RemoteException;
  
  public abstract void setStrokeWidth(float paramFloat)
    throws RemoteException;
}
