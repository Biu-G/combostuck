package com.amap.api.interfaces;

import android.graphics.Point;
import android.graphics.PointF;
import android.os.RemoteException;
import com.amap.api.maps2d.model.LatLng;
import com.amap.api.maps2d.model.VisibleRegion;

public abstract interface IProjection
{
  public abstract LatLng fromScreenLocation(Point paramPoint)
    throws RemoteException;
  
  public abstract VisibleRegion getVisibleRegion()
    throws RemoteException;
  
  public abstract PointF toMapLocation(LatLng paramLatLng)
    throws RemoteException;
  
  public abstract Point toScreenLocation(LatLng paramLatLng)
    throws RemoteException;
}
