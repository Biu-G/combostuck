package com.amap.api.maps2d.model;

import android.os.RemoteException;
import com.amap.api.interfaces.IPolyline;
import com.amap.api.mapcore2d.cm;
import java.util.List;

public class Polyline
{
  private final IPolyline a;
  
  public Polyline(IPolyline paramIPolyline)
  {
    a = paramIPolyline;
  }
  
  public boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof Polyline)) {
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
      cm.a(paramObject, "Polyline", "equals");
      throw new RuntimeRemoteException(paramObject);
    }
  }
  
  public int getColor()
  {
    try
    {
      if (a == null) {
        return 0;
      }
      int i = a.getColor();
      return i;
    }
    catch (RemoteException localRemoteException)
    {
      cm.a(localRemoteException, "Polyline", "getColor");
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
  
  public String getId()
  {
    try
    {
      if (a == null) {
        return "";
      }
      String str = a.getId();
      return str;
    }
    catch (RemoteException localRemoteException)
    {
      cm.a(localRemoteException, "Polyline", "getId");
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
      cm.a(localRemoteException, "Polyline", "getPoints");
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
  
  public float getWidth()
  {
    try
    {
      if (a == null) {
        return 0.0F;
      }
      float f = a.getWidth();
      return f;
    }
    catch (RemoteException localRemoteException)
    {
      cm.a(localRemoteException, "Polyline", "getWidth");
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
      cm.a(localRemoteException, "Polyline", "getZIndex");
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
      cm.a(localRemoteException, "Polyline", "hashCode");
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
  
  public boolean isDottedLine()
  {
    if (a == null) {
      return false;
    }
    return a.isDottedLine();
  }
  
  public boolean isGeodesic()
  {
    if (a == null) {
      return false;
    }
    return a.isGeodesic();
  }
  
  public boolean isVisible()
  {
    try
    {
      if (a == null) {
        return false;
      }
      boolean bool = a.isVisible();
      return bool;
    }
    catch (RemoteException localRemoteException)
    {
      cm.a(localRemoteException, "Polyline", "isVisible");
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
      cm.a(localRemoteException, "Polyline", "remove");
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
  
  public void setColor(int paramInt)
  {
    try
    {
      if (a == null) {
        return;
      }
      a.setColor(paramInt);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      cm.a(localRemoteException, "Polyline", "setColor");
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
  
  public void setDottedLine(boolean paramBoolean)
  {
    if (a == null) {
      return;
    }
    a.setDottedLine(paramBoolean);
  }
  
  public void setGeodesic(boolean paramBoolean)
  {
    try
    {
      if (a == null) {
        return;
      }
      if (a.isGeodesic() != paramBoolean)
      {
        List localList = getPoints();
        a.setGeodesic(paramBoolean);
        setPoints(localList);
      }
      return;
    }
    catch (RemoteException localRemoteException)
    {
      cm.a(localRemoteException, "Polyline", "setGeodesic");
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
      cm.a(paramList, "Polyline", "setPoints");
      throw new RuntimeRemoteException(paramList);
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
      cm.a(localRemoteException, "Polyline", "setVisible");
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
  
  public void setWidth(float paramFloat)
  {
    try
    {
      if (a == null) {
        return;
      }
      a.setWidth(paramFloat);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      cm.a(localRemoteException, "Polyline", "setWidth");
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
      cm.a(localRemoteException, "Polyline", "setZIndex");
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
}
