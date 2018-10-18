package com.amap.api.maps2d;

import android.os.RemoteException;
import com.amap.api.interfaces.IUiSettings;
import com.amap.api.mapcore2d.cm;

public final class UiSettings
{
  private final IUiSettings a;
  
  public UiSettings(IUiSettings paramIUiSettings)
  {
    a = paramIUiSettings;
  }
  
  public int getLogoPosition()
  {
    try
    {
      int i = a.getLogoPosition();
      return i;
    }
    catch (RemoteException localRemoteException)
    {
      cm.a(localRemoteException, "UiSettings", "getLogoPosition");
      localRemoteException.printStackTrace();
    }
    return 0;
  }
  
  public int getZoomPosition()
  {
    try
    {
      int i = a.getZoomPosition();
      return i;
    }
    catch (Throwable localThrowable)
    {
      cm.a(localThrowable, "UiSettings", "getZoomPosition");
      localThrowable.printStackTrace();
    }
    return 0;
  }
  
  public boolean isCompassEnabled()
  {
    try
    {
      boolean bool = a.isCompassEnabled();
      return bool;
    }
    catch (RemoteException localRemoteException)
    {
      cm.a(localRemoteException, "UiSettings", "isCompassEnabled");
      localRemoteException.printStackTrace();
    }
    return false;
  }
  
  public boolean isMyLocationButtonEnabled()
  {
    try
    {
      boolean bool = a.isMyLocationButtonEnabled();
      return bool;
    }
    catch (RemoteException localRemoteException)
    {
      cm.a(localRemoteException, "UiSettings", "isMyLocationButtonEnabled");
      localRemoteException.printStackTrace();
    }
    return false;
  }
  
  public boolean isScaleControlsEnabled()
  {
    try
    {
      boolean bool = a.isScaleControlsEnabled();
      return bool;
    }
    catch (RemoteException localRemoteException)
    {
      cm.a(localRemoteException, "UiSettings", "isScaleControlsEnabled");
      localRemoteException.printStackTrace();
    }
    return false;
  }
  
  public boolean isScrollGesturesEnabled()
  {
    try
    {
      boolean bool = a.isScrollGesturesEnabled();
      return bool;
    }
    catch (RemoteException localRemoteException)
    {
      cm.a(localRemoteException, "UiSettings", "isScrollGestureEnabled");
      localRemoteException.printStackTrace();
    }
    return false;
  }
  
  public boolean isZoomControlsEnabled()
  {
    try
    {
      boolean bool = a.isZoomControlsEnabled();
      return bool;
    }
    catch (RemoteException localRemoteException)
    {
      cm.a(localRemoteException, "UiSettings", "isZoomControlsEnabled");
      localRemoteException.printStackTrace();
    }
    return false;
  }
  
  public boolean isZoomGesturesEnabled()
  {
    try
    {
      boolean bool = a.isZoomGesturesEnabled();
      return bool;
    }
    catch (RemoteException localRemoteException)
    {
      cm.a(localRemoteException, "UiSettings", "isZoomGesturesEnabled");
      localRemoteException.printStackTrace();
    }
    return false;
  }
  
  public void setAllGesturesEnabled(boolean paramBoolean)
  {
    try
    {
      a.setAllGesturesEnabled(paramBoolean);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      cm.a(localRemoteException, "UiSettings", "setAllGesturesEnabled");
      localRemoteException.printStackTrace();
    }
  }
  
  public void setCompassEnabled(boolean paramBoolean)
  {
    try
    {
      a.setCompassEnabled(paramBoolean);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      cm.a(localRemoteException, "UiSettings", "setCompassEnabled");
      localRemoteException.printStackTrace();
    }
  }
  
  public void setLogoPosition(int paramInt)
  {
    try
    {
      a.setLogoPosition(paramInt);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      cm.a(localRemoteException, "UiSettings", "setLogoPosition");
      localRemoteException.printStackTrace();
    }
  }
  
  public void setMyLocationButtonEnabled(boolean paramBoolean)
  {
    try
    {
      a.setMyLocationButtonEnabled(paramBoolean);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      cm.a(localRemoteException, "UiSettings", "setMyLocationButtonEnabled");
      localRemoteException.printStackTrace();
    }
  }
  
  public void setScaleControlsEnabled(boolean paramBoolean)
  {
    try
    {
      a.setScaleControlsEnabled(paramBoolean);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      cm.a(localRemoteException, "UiSettings", "setScaleControlsEnabled");
      localRemoteException.printStackTrace();
    }
  }
  
  public void setScrollGesturesEnabled(boolean paramBoolean)
  {
    try
    {
      a.setScrollGesturesEnabled(paramBoolean);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      cm.a(localRemoteException, "UiSettings", "setScrollGesturesEnabled");
      localRemoteException.printStackTrace();
    }
  }
  
  public void setZoomControlsEnabled(boolean paramBoolean)
  {
    try
    {
      a.setZoomControlsEnabled(paramBoolean);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      cm.a(localRemoteException, "UiSettings", "setZoomControlsEnabled");
      localRemoteException.printStackTrace();
    }
  }
  
  public void setZoomGesturesEnabled(boolean paramBoolean)
  {
    try
    {
      a.setZoomGesturesEnabled(paramBoolean);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      cm.a(localRemoteException, "UiSettings", "setZoomGesturesEnabled");
      localRemoteException.printStackTrace();
    }
  }
  
  public void setZoomInByScreenCenter(boolean paramBoolean)
  {
    try
    {
      a.setZoomInByScreenCenter(paramBoolean);
      return;
    }
    catch (Throwable localThrowable)
    {
      localThrowable.printStackTrace();
    }
  }
  
  public void setZoomPosition(int paramInt)
  {
    try
    {
      a.setZoomPosition(paramInt);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      cm.a(localRemoteException, "UiSettings", "setZoomPosition");
      localRemoteException.printStackTrace();
    }
  }
}
