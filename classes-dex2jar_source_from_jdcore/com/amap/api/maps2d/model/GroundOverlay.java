package com.amap.api.maps2d.model;

import android.os.RemoteException;
import com.amap.api.mapcore2d.aa;
import com.amap.api.mapcore2d.cm;

public final class GroundOverlay
{
  private aa a;
  
  public GroundOverlay(aa paramAa)
  {
    a = paramAa;
  }
  
  public boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof GroundOverlay)) {
      return false;
    }
    try
    {
      throw new RemoteException();
    }
    catch (RemoteException paramObject)
    {
      cm.a(paramObject, "GroundOverlay", "equals");
      throw new RuntimeRemoteException(paramObject);
    }
  }
  
  public float getBearing()
  {
    try
    {
      if (a == null) {
        return 0.0F;
      }
      float f = a.getBearing();
      return f;
    }
    catch (RemoteException localRemoteException)
    {
      cm.a(localRemoteException, "GroundOverlay", "getBearing");
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
  
  public LatLngBounds getBounds()
  {
    try
    {
      if (a == null) {
        return null;
      }
      LatLngBounds localLatLngBounds = a.getBounds();
      return localLatLngBounds;
    }
    catch (RemoteException localRemoteException)
    {
      cm.a(localRemoteException, "GroundOverlay", "getBounds");
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
  
  public float getHeight()
  {
    try
    {
      if (a == null) {
        return 0.0F;
      }
      float f = a.getHeight();
      return f;
    }
    catch (RemoteException localRemoteException)
    {
      cm.a(localRemoteException, "GroundOverlay", "getHeight");
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
      cm.a(localRemoteException, "GroundOverlay", "getId");
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
  
  public LatLng getPosition()
  {
    try
    {
      if (a == null) {
        return null;
      }
      LatLng localLatLng = a.getPosition();
      return localLatLng;
    }
    catch (RemoteException localRemoteException)
    {
      cm.a(localRemoteException, "GroundOverlay", "getPosition");
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
  
  public float getTransparency()
  {
    try
    {
      if (a == null) {
        return 0.0F;
      }
      float f = a.getTransparency();
      return f;
    }
    catch (RemoteException localRemoteException)
    {
      cm.a(localRemoteException, "GroundOverlay", "getTransparency");
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
      cm.a(localRemoteException, "GroundOverlay", "getWidth");
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
      cm.a(localRemoteException, "GroundOverlay", "getZIndex");
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
  
  public int hashCode()
  {
    if (a == null) {
      return 0;
    }
    return a.hashCode();
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
      cm.a(localRemoteException, "GroundOverlay", "isVisible");
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
      cm.a(localRemoteException, "GroundOverlay", "remove");
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
  
  public void setBearing(float paramFloat)
  {
    try
    {
      if (a == null) {
        return;
      }
      a.setBearing(paramFloat);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      cm.a(localRemoteException, "GroundOverlay", "setBearing");
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
  
  public void setDimensions(float paramFloat)
  {
    try
    {
      if (a == null) {
        return;
      }
      a.setDimensions(paramFloat);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      cm.a(localRemoteException, "GroundOverlay", "setDimensions");
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
  
  public void setDimensions(float paramFloat1, float paramFloat2)
  {
    try
    {
      if (a == null) {
        return;
      }
      a.setDimensions(paramFloat1, paramFloat2);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      cm.a(localRemoteException, "GroundOverlay", "setDimensions");
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
  
  public void setImage(BitmapDescriptor paramBitmapDescriptor)
  {
    try
    {
      if (a == null) {
        return;
      }
      a.setImage(paramBitmapDescriptor);
      return;
    }
    catch (RemoteException paramBitmapDescriptor)
    {
      cm.a(paramBitmapDescriptor, "GroundOverlay", "setImage");
      throw new RuntimeRemoteException(paramBitmapDescriptor);
    }
  }
  
  public void setPosition(LatLng paramLatLng)
  {
    try
    {
      if (a == null) {
        return;
      }
      a.setPosition(paramLatLng);
      return;
    }
    catch (RemoteException paramLatLng)
    {
      cm.a(paramLatLng, "GroundOverlay", "setPosition");
      throw new RuntimeRemoteException(paramLatLng);
    }
  }
  
  public void setPositionFromBounds(LatLngBounds paramLatLngBounds)
  {
    try
    {
      if (a == null) {
        return;
      }
      a.setPositionFromBounds(paramLatLngBounds);
      return;
    }
    catch (RemoteException paramLatLngBounds)
    {
      cm.a(paramLatLngBounds, "GroundOverlay", "setPositionFromBounds");
      throw new RuntimeRemoteException(paramLatLngBounds);
    }
  }
  
  public void setTransparency(float paramFloat)
  {
    try
    {
      if (a == null) {
        return;
      }
      a.setTransparency(paramFloat);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      cm.a(localRemoteException, "GroundOverlay", "setTransparency");
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
      cm.a(localRemoteException, "GroundOverlay", "setVisible");
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
      cm.a(localRemoteException, "GroundOverlay", "setZIndex");
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
}
