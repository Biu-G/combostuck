package com.amap.api.mapcore2d;

import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Parcel;
import android.os.RemoteException;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.amap.api.interfaces.IAMap;
import com.amap.api.interfaces.IMapFragmentDelegate;
import com.amap.api.maps2d.AMapOptions;
import com.amap.api.maps2d.AMapOptionsCreator;
import com.amap.api.maps2d.CameraUpdate;
import com.amap.api.maps2d.UiSettings;
import com.amap.api.maps2d.model.CameraPosition;

public class ar
  implements IMapFragmentDelegate
{
  public static volatile Context a;
  private IAMap b;
  private AMapOptions c;
  
  public ar() {}
  
  private void a(Context paramContext)
  {
    if (paramContext != null) {
      a = paramContext.getApplicationContext();
    }
  }
  
  void a()
  {
    int i = agetResourcesgetDisplayMetricsdensityDpi;
    q.l = i;
    if (i > 320)
    {
      if (i <= 480) {
        q.j = 384;
      } else {
        q.j = 512;
      }
    }
    else {
      q.j = 256;
    }
    if (i <= 120)
    {
      q.a = 0.5F;
    }
    else if (i <= 160)
    {
      q.a = 0.6F;
      q.a(18);
    }
    else if (i <= 240)
    {
      q.a = 0.87F;
    }
    else if (i <= 320)
    {
      q.a = 1.0F;
    }
    else if (i <= 480)
    {
      q.a = 1.5F;
    }
    else
    {
      q.a = 1.8F;
    }
    if (q.a <= 0.6F) {
      q.c = 18;
    }
  }
  
  void a(AMapOptions paramAMapOptions)
    throws RemoteException
  {
    if ((paramAMapOptions != null) && (b != null))
    {
      Object localObject = paramAMapOptions.getCamera();
      if (localObject != null) {
        b.moveCamera(new CameraUpdate(m.a(target, zoom, bearing, tilt)));
      }
      localObject = b.getAMapUiSettings();
      ((UiSettings)localObject).setScrollGesturesEnabled(paramAMapOptions.getScrollGesturesEnabled().booleanValue());
      ((UiSettings)localObject).setZoomControlsEnabled(paramAMapOptions.getZoomControlsEnabled().booleanValue());
      ((UiSettings)localObject).setZoomGesturesEnabled(paramAMapOptions.getZoomGesturesEnabled().booleanValue());
      ((UiSettings)localObject).setCompassEnabled(paramAMapOptions.getCompassEnabled().booleanValue());
      ((UiSettings)localObject).setScaleControlsEnabled(paramAMapOptions.getScaleControlsEnabled().booleanValue());
      ((UiSettings)localObject).setLogoPosition(paramAMapOptions.getLogoPosition());
      b.setMapType(paramAMapOptions.getMapType());
      b.setZOrderOnTop(paramAMapOptions.getZOrderOnTop().booleanValue());
    }
  }
  
  public IAMap getMap()
    throws RemoteException
  {
    if (b == null) {
      if (a != null)
      {
        a();
        b = new b(a);
      }
      else
      {
        throw new NullPointerException("Context 为 null 请在地图调用之前 使用 MapsInitializer.initialize(Context paramContext) 来设置Context");
      }
    }
    return b;
  }
  
  public boolean isReady()
    throws RemoteException
  {
    return false;
  }
  
  public void onCreate(Bundle paramBundle)
    throws RemoteException
  {
    ck.a("MapFragmentDelegateImp", "onCreate", 113);
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
    throws RemoteException
  {
    if (b == null)
    {
      if ((a == null) && (paramLayoutInflater != null)) {
        setContext(paramLayoutInflater.getContext().getApplicationContext());
      }
      if (a != null)
      {
        a();
        b = new b(a);
      }
      else
      {
        throw new NullPointerException("Context 为 null 请在地图调用之前 使用 MapsInitializer.initialize(Context paramContext) 来设置Context");
      }
    }
    try
    {
      if ((c == null) && (paramBundle != null))
      {
        paramLayoutInflater = paramBundle.getByteArray("MapOptions");
        if (paramLayoutInflater != null)
        {
          paramViewGroup = Parcel.obtain();
          paramViewGroup.unmarshall(paramLayoutInflater, 0, paramLayoutInflater.length);
          paramViewGroup.setDataPosition(0);
          c = AMapOptions.CREATOR.createFromParcel(paramViewGroup);
        }
      }
      a(c);
      ck.a("MapFragmentDelegateImp", "onCreateView", 113);
    }
    catch (Throwable paramLayoutInflater)
    {
      paramLayoutInflater.printStackTrace();
    }
    return b.getView();
  }
  
  public void onDestroy()
    throws RemoteException
  {
    if (getMap() != null)
    {
      getMap().clear();
      getMap().destroy();
    }
    setContext(null);
  }
  
  public void onDestroyView()
    throws RemoteException
  {}
  
  public void onInflate(Activity paramActivity, AMapOptions paramAMapOptions, Bundle paramBundle)
    throws RemoteException
  {
    setContext(paramActivity);
    c = paramAMapOptions;
  }
  
  public void onLowMemory()
    throws RemoteException
  {
    Log.d("onLowMemory", "onLowMemory run");
  }
  
  public void onPause()
    throws RemoteException
  {
    if (b != null) {
      b.onPause();
    }
  }
  
  public void onResume()
    throws RemoteException
  {
    if (b != null) {
      b.onResume();
    }
  }
  
  public void onSaveInstanceState(Bundle paramBundle)
    throws RemoteException
  {
    if (b != null)
    {
      if (c == null) {
        c = new AMapOptions();
      }
      c = c.camera(getMap().getCameraPosition());
      if (paramBundle != null) {
        try
        {
          Parcel localParcel = Parcel.obtain();
          c.writeToParcel(localParcel, 0);
          paramBundle.putByteArray("MapOptions", localParcel.marshall());
          return;
        }
        catch (Throwable paramBundle)
        {
          paramBundle.printStackTrace();
        }
      }
    }
  }
  
  public void setContext(Context paramContext)
  {
    a(paramContext);
  }
  
  public void setOptions(AMapOptions paramAMapOptions)
  {
    c = paramAMapOptions;
  }
}
