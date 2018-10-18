package com.amap.api.interfaces;

import android.os.RemoteException;
import com.amap.api.maps2d.model.BitmapDescriptor;
import com.amap.api.maps2d.model.LatLng;
import java.util.ArrayList;

public abstract interface IMarker
{
  public abstract void destroy();
  
  public abstract boolean equalsRemote(IMarker paramIMarker);
  
  public abstract int getHeight();
  
  public abstract ArrayList<BitmapDescriptor> getIcons()
    throws RemoteException;
  
  public abstract String getId();
  
  public abstract Object getObject();
  
  public abstract int getPeriod()
    throws RemoteException;
  
  public abstract LatLng getPosition();
  
  public abstract LatLng getRealPosition();
  
  public abstract String getSnippet();
  
  public abstract String getTitle();
  
  public abstract int getWidth();
  
  public abstract float getZIndex();
  
  public abstract int hashCodeRemote();
  
  public abstract void hideInfoWindow();
  
  public abstract boolean isDraggable();
  
  public abstract boolean isInfoWindowShown();
  
  public abstract boolean isViewMode()
    throws RemoteException;
  
  public abstract boolean isVisible();
  
  public abstract boolean remove()
    throws RemoteException;
  
  public abstract void setAnchor(float paramFloat1, float paramFloat2);
  
  public abstract void setDraggable(boolean paramBoolean);
  
  public abstract void setIcon(BitmapDescriptor paramBitmapDescriptor);
  
  public abstract void setIcons(ArrayList<BitmapDescriptor> paramArrayList)
    throws RemoteException;
  
  public abstract void setObject(Object paramObject);
  
  public abstract void setPeriod(int paramInt)
    throws RemoteException;
  
  public abstract void setPosition(LatLng paramLatLng);
  
  public abstract void setPositionByPixels(int paramInt1, int paramInt2)
    throws RemoteException;
  
  public abstract void setRotateAngle(float paramFloat)
    throws RemoteException;
  
  public abstract void setSnippet(String paramString);
  
  public abstract void setTitle(String paramString);
  
  public abstract void setVisible(boolean paramBoolean);
  
  public abstract void setZIndex(float paramFloat);
  
  public abstract void showInfoWindow();
}
