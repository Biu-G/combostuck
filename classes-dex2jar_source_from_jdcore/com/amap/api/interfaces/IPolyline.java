package com.amap.api.interfaces;

import android.os.RemoteException;
import com.amap.api.maps2d.model.LatLng;
import java.util.List;

public abstract interface IPolyline
  extends IOverlay
{
  public abstract int getColor()
    throws RemoteException;
  
  public abstract List<LatLng> getPoints()
    throws RemoteException;
  
  public abstract float getWidth()
    throws RemoteException;
  
  public abstract boolean isDottedLine();
  
  public abstract boolean isGeodesic();
  
  public abstract void setColor(int paramInt)
    throws RemoteException;
  
  public abstract void setDottedLine(boolean paramBoolean);
  
  public abstract void setGeodesic(boolean paramBoolean)
    throws RemoteException;
  
  public abstract void setPoints(List<LatLng> paramList)
    throws RemoteException;
  
  public abstract void setWidth(float paramFloat)
    throws RemoteException;
}
