package com.amap.api.maps2d;

import android.graphics.Point;
import android.graphics.PointF;
import android.os.RemoteException;
import com.amap.api.interfaces.IProjection;
import com.amap.api.mapcore2d.cm;
import com.amap.api.maps2d.model.LatLng;
import com.amap.api.maps2d.model.RuntimeRemoteException;
import com.amap.api.maps2d.model.VisibleRegion;

public class Projection
{
  private final IProjection a;
  
  public Projection(IProjection paramIProjection)
  {
    a = paramIProjection;
  }
  
  public LatLng fromScreenLocation(Point paramPoint)
  {
    try
    {
      paramPoint = a.fromScreenLocation(paramPoint);
      return paramPoint;
    }
    catch (RemoteException paramPoint)
    {
      cm.a(paramPoint, "Projection", "fromScreenLocation");
      throw new RuntimeRemoteException(paramPoint);
    }
  }
  
  public VisibleRegion getVisibleRegion()
  {
    try
    {
      VisibleRegion localVisibleRegion = a.getVisibleRegion();
      return localVisibleRegion;
    }
    catch (RemoteException localRemoteException)
    {
      cm.a(localRemoteException, "Projection", "getVisibleRegion");
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
  
  public PointF toMapLocation(LatLng paramLatLng)
  {
    try
    {
      paramLatLng = a.toMapLocation(paramLatLng);
      return paramLatLng;
    }
    catch (RemoteException paramLatLng)
    {
      cm.a(paramLatLng, "Projection", "toMapLocation");
      throw new RuntimeRemoteException(paramLatLng);
    }
  }
  
  public Point toScreenLocation(LatLng paramLatLng)
  {
    try
    {
      paramLatLng = a.toScreenLocation(paramLatLng);
      return paramLatLng;
    }
    catch (RemoteException paramLatLng)
    {
      cm.a(paramLatLng, "Projection", "toScreenLocation");
      throw new RuntimeRemoteException(paramLatLng);
    }
  }
}
