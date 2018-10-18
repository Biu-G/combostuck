package com.amap.api.maps2d.model;

import android.os.RemoteException;
import com.amap.api.interfaces.IMarker;
import com.amap.api.mapcore2d.cm;
import java.util.ArrayList;

public final class Marker
{
  IMarker a;
  
  public Marker(IMarker paramIMarker)
  {
    a = paramIMarker;
  }
  
  public Marker(MarkerOptions paramMarkerOptions) {}
  
  public void destroy()
  {
    try
    {
      if (a != null)
      {
        a.destroy();
        return;
      }
    }
    catch (Exception localException)
    {
      cm.a(localException, "Marker", "destroy");
    }
  }
  
  public boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof Marker)) {
      return false;
    }
    if (a == null) {
      return false;
    }
    return a.equalsRemote(a);
  }
  
  public ArrayList<BitmapDescriptor> getIcons()
  {
    try
    {
      ArrayList localArrayList = a.getIcons();
      return localArrayList;
    }
    catch (RemoteException localRemoteException)
    {
      cm.a(localRemoteException, "Marker", "getIcons");
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
  
  public String getId()
  {
    if (a == null) {
      return null;
    }
    return a.getId();
  }
  
  public Object getObject()
  {
    if (a != null) {
      return a.getObject();
    }
    return null;
  }
  
  public int getPeriod()
  {
    try
    {
      int i = a.getPeriod();
      return i;
    }
    catch (RemoteException localRemoteException)
    {
      cm.a(localRemoteException, "Marker", "getPeriod");
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
  
  public LatLng getPosition()
  {
    if (a == null) {
      return null;
    }
    return a.getPosition();
  }
  
  public String getSnippet()
  {
    if (a == null) {
      return null;
    }
    return a.getSnippet();
  }
  
  public String getTitle()
  {
    if (a == null) {
      return null;
    }
    return a.getTitle();
  }
  
  public float getZIndex()
  {
    if (a == null) {
      return 0.0F;
    }
    return a.getZIndex();
  }
  
  public int hashCode()
  {
    if (a == null) {
      return super.hashCode();
    }
    return a.hashCodeRemote();
  }
  
  public void hideInfoWindow()
  {
    if (a != null) {
      a.hideInfoWindow();
    }
  }
  
  public boolean isDraggable()
  {
    if (a == null) {
      return false;
    }
    return a.isDraggable();
  }
  
  public boolean isInfoWindowShown()
  {
    if (a == null) {
      return false;
    }
    return a.isInfoWindowShown();
  }
  
  public boolean isVisible()
  {
    if (a == null) {
      return false;
    }
    return a.isVisible();
  }
  
  public void remove()
  {
    try
    {
      if (a != null)
      {
        a.remove();
        return;
      }
    }
    catch (Exception localException)
    {
      cm.a(localException, "Marker", "remove");
    }
  }
  
  public void setAnchor(float paramFloat1, float paramFloat2)
  {
    if (a != null) {
      a.setAnchor(paramFloat1, paramFloat2);
    }
  }
  
  public void setDraggable(boolean paramBoolean)
  {
    if (a != null) {
      a.setDraggable(paramBoolean);
    }
  }
  
  public void setIcon(BitmapDescriptor paramBitmapDescriptor)
  {
    if ((a != null) && (paramBitmapDescriptor != null)) {
      a.setIcon(paramBitmapDescriptor);
    }
  }
  
  public void setIcons(ArrayList<BitmapDescriptor> paramArrayList)
  {
    try
    {
      a.setIcons(paramArrayList);
      return;
    }
    catch (RemoteException paramArrayList)
    {
      cm.a(paramArrayList, "Marker", "setIcons");
      throw new RuntimeRemoteException(paramArrayList);
    }
  }
  
  public void setObject(Object paramObject)
  {
    if (a != null) {
      a.setObject(paramObject);
    }
  }
  
  public void setPeriod(int paramInt)
  {
    try
    {
      if (a != null) {
        a.setPeriod(paramInt);
      }
      return;
    }
    catch (RemoteException localRemoteException)
    {
      cm.a(localRemoteException, "Marker", "setPeriod");
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
  
  public void setPosition(LatLng paramLatLng)
  {
    if (a != null) {
      a.setPosition(paramLatLng);
    }
  }
  
  public void setPositionByPixels(int paramInt1, int paramInt2)
  {
    try
    {
      if (a != null)
      {
        a.setPositionByPixels(paramInt1, paramInt2);
        return;
      }
    }
    catch (RemoteException localRemoteException)
    {
      cm.a(localRemoteException, "Marker", "setPositionByPixels");
      localRemoteException.printStackTrace();
    }
  }
  
  public void setRotateAngle(float paramFloat)
  {
    try
    {
      a.setRotateAngle(paramFloat);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      cm.a(localRemoteException, "Marker", "setRotateAngle");
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
  
  public void setSnippet(String paramString)
  {
    if (a != null) {
      a.setSnippet(paramString);
    }
  }
  
  public void setTitle(String paramString)
  {
    if (a != null) {
      a.setTitle(paramString);
    }
  }
  
  public void setVisible(boolean paramBoolean)
  {
    if (a != null) {
      a.setVisible(paramBoolean);
    }
  }
  
  public void setZIndex(float paramFloat)
  {
    if (a != null) {
      a.setZIndex(paramFloat);
    }
  }
  
  public void showInfoWindow()
  {
    if (a != null) {
      a.showInfoWindow();
    }
  }
}
