package com.amap.api.maps2d.model;

import android.os.RemoteException;
import com.amap.api.interfaces.IPolygon;
import com.amap.api.mapcore2d.af;
import com.amap.api.mapcore2d.cm;
import java.util.List;

public final class Polygon
{
  private IPolygon a;
  
  public Polygon(af paramAf)
  {
    a = paramAf;
  }
  
  public boolean contains(LatLng paramLatLng)
  {
    try
    {
      if (a == null) {
        return false;
      }
      boolean bool = a.contains(paramLatLng);
      return bool;
    }
    catch (RemoteException paramLatLng)
    {
      cm.a(paramLatLng, "Polygon", "contains");
      throw new RuntimeRemoteException(paramLatLng);
    }
  }
  
  public boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof Polygon)) {
      return false;
    }
    try
    {
      if (a == null) {
        return false;
      }
      boolean bool = a.equalsRemote(a);
      return bool;
    }
    catch (RemoteException paramObject)
    {
      cm.a(paramObject, "Polygon", "equeals");
    }
    return false;
  }
  
  public int getFillColor()
  {
    try
    {
      if (a == null) {
        return 0;
      }
      int i = a.getFillColor();
      return i;
    }
    catch (RemoteException localRemoteException)
    {
      cm.a(localRemoteException, "Polygon", "getFillColor");
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
  
  public String getId()
  {
    try
    {
      if (a == null) {
        return null;
      }
      String str = a.getId();
      return str;
    }
    catch (RemoteException localRemoteException)
    {
      cm.a(localRemoteException, "Polygon", "getId");
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
  
  public List<LatLng> getPoints()
  {
    try
    {
      if (a == null) {
        return null;
      }
      List localList = a.getPoints();
      return localList;
    }
    catch (RemoteException localRemoteException)
    {
      cm.a(localRemoteException, "Polygon", "getPoints");
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
  
  public int getStrokeColor()
  {
    try
    {
      if (a == null) {
        return 0;
      }
      int i = a.getStrokeColor();
      return i;
    }
    catch (RemoteException localRemoteException)
    {
      cm.a(localRemoteException, "Polygon", "getStrokeColor");
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
  
  public float getStrokeWidth()
  {
    try
    {
      if (a == null) {
        return 0.0F;
      }
      float f = a.getStrokeWidth();
      return f;
    }
    catch (RemoteException localRemoteException)
    {
      cm.a(localRemoteException, "Polygon", "getStrokeWidth");
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
  
  public float getZIndex()
  {
    try
    {
      if (a == null) {
        return 0.0F;
      }
      float f = a.getZIndex();
      return f;
    }
    catch (RemoteException localRemoteException)
    {
      cm.a(localRemoteException, "Polygon", "getZIndex");
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
  
  public int hashCode()
  {
    try
    {
      if (a == null) {
        return 0;
      }
      int i = a.hashCodeRemote();
      return i;
    }
    catch (RemoteException localRemoteException)
    {
      cm.a(localRemoteException, "Polygon", "hashCode");
    }
    return super.hashCode();
  }
  
  public boolean isVisible()
  {
    try
    {
      if (a == null) {
        return true;
      }
      boolean bool = a.isVisible();
      return bool;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
  
  public void remove()
  {
    try
    {
      if (a == null) {
        return;
      }
      a.remove();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      cm.a(localRemoteException, "Polygon", "remove");
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
  
  public void setFillColor(int paramInt)
  {
    try
    {
      if (a == null) {
        return;
      }
      a.setFillColor(paramInt);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      cm.a(localRemoteException, "Polygon", "setFillColor");
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
  
  public void setPoints(List<LatLng> paramList)
  {
    try
    {
      if (a == null) {
        return;
      }
      a.setPoints(paramList);
      return;
    }
    catch (RemoteException paramList)
    {
      cm.a(paramList, "Polygon", "setPoints");
      throw new RuntimeRemoteException(paramList);
    }
  }
  
  public void setStrokeColor(int paramInt)
  {
    try
    {
      if (a == null) {
        return;
      }
      a.setStrokeColor(paramInt);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      cm.a(localRemoteException, "Polygon", "setStrokeColor");
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
  
  public void setStrokeWidth(float paramFloat)
  {
    try
    {
      if (a == null) {
        return;
      }
      a.setStrokeWidth(paramFloat);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      cm.a(localRemoteException, "Polygon", "setStrokeWidth");
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
  
  public void setVisible(boolean paramBoolean)
  {
    try
    {
      if (a == null) {
        return;
      }
      a.setVisible(paramBoolean);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      cm.a(localRemoteException, "Polygon", "setVisible");
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
  
  public void setZIndex(float paramFloat)
  {
    try
    {
      if (a == null) {
        return;
      }
      a.setZIndex(paramFloat);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      cm.a(localRemoteException, "Polygon", "setZIndex");
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
}
