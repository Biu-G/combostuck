package com.amap.api.maps2d.model;

import android.os.RemoteException;
import com.amap.api.interfaces.ICircle;
import com.amap.api.mapcore2d.cm;

public final class Circle
{
  private final ICircle a;
  
  public Circle(ICircle paramICircle)
  {
    a = paramICircle;
  }
  
  public boolean contains(LatLng paramLatLng)
  {
    try
    {
      if ((a != null) && (paramLatLng != null))
      {
        boolean bool = a.contains(paramLatLng);
        return bool;
      }
      return false;
    }
    catch (RemoteException paramLatLng)
    {
      cm.a(paramLatLng, "Circle", "contains");
      throw new RuntimeRemoteException(paramLatLng);
    }
  }
  
  public boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof Circle)) {
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
      cm.a(paramObject, "Circle", "equals");
      throw new RuntimeRemoteException(paramObject);
    }
  }
  
  public LatLng getCenter()
  {
    try
    {
      if (a == null) {
        return null;
      }
      LatLng localLatLng = a.getCenter();
      return localLatLng;
    }
    catch (RemoteException localRemoteException)
    {
      cm.a(localRemoteException, "Circle", "getCenter");
      throw new RuntimeRemoteException(localRemoteException);
    }
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
      cm.a(localRemoteException, "Circle", "getFillColor");
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
      cm.a(localRemoteException, "Circle", "getId");
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
  
  public double getRadius()
  {
    try
    {
      if (a == null) {
        return 0.0D;
      }
      double d = a.getRadius();
      return d;
    }
    catch (RemoteException localRemoteException)
    {
      cm.a(localRemoteException, "Circle", "getRadius");
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
      cm.a(localRemoteException, "Circle", "getStrokeColor");
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
      cm.a(localRemoteException, "Circle", "getStrokeWidth");
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
      cm.a(localRemoteException, "Circle", "getZIndex");
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
      cm.a(localRemoteException, "Circle", "hashCode");
      throw new RuntimeRemoteException(localRemoteException);
    }
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
      cm.a(localRemoteException, "Circle", "isVisible");
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
      cm.a(localRemoteException, "Circle", "remove");
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
  
  public void setCenter(LatLng paramLatLng)
  {
    try
    {
      if (a == null) {
        return;
      }
      a.setCenter(paramLatLng);
      return;
    }
    catch (RemoteException paramLatLng)
    {
      cm.a(paramLatLng, "Circle", "setCenter");
      throw new RuntimeRemoteException(paramLatLng);
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
      cm.a(localRemoteException, "Circle", "setFillColor");
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
  
  public void setRadius(double paramDouble)
  {
    try
    {
      if (a == null) {
        return;
      }
      a.setRadius(paramDouble);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      cm.a(localRemoteException, "Circle", "setRadius");
      throw new RuntimeRemoteException(localRemoteException);
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
      cm.a(localRemoteException, "Circle", "setStrokeColor");
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
      cm.a(localRemoteException, "Circle", "setStrokeWidth");
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
      cm.a(localRemoteException, "Circle", "setVisible");
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
      cm.a(localRemoteException, "Circle", "setZIndex");
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
}
