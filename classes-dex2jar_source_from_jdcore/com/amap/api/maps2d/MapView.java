package com.amap.api.maps2d;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import android.util.AttributeSet;
import android.view.ViewGroup.LayoutParams;
import android.widget.FrameLayout;
import com.amap.api.interfaces.IAMap;
import com.amap.api.interfaces.IMapFragmentDelegate;
import com.amap.api.mapcore2d.ar;
import com.amap.api.mapcore2d.cm;
import com.amap.api.mapcore2d.eb;
import com.amap.api.maps2d.model.RuntimeRemoteException;

public class MapView
  extends FrameLayout
{
  private IMapFragmentDelegate a;
  private AMap b;
  
  public MapView(Context paramContext)
  {
    super(paramContext);
    getMapFragmentDelegate().setContext(paramContext);
  }
  
  public MapView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    getMapFragmentDelegate().setContext(paramContext);
  }
  
  public MapView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    getMapFragmentDelegate().setContext(paramContext);
  }
  
  public MapView(Context paramContext, AMapOptions paramAMapOptions)
  {
    super(paramContext);
    getMapFragmentDelegate().setContext(paramContext);
    getMapFragmentDelegate().setOptions(paramAMapOptions);
  }
  
  public AMap getMap()
  {
    Object localObject = getMapFragmentDelegate();
    if (localObject == null) {
      return null;
    }
    try
    {
      localObject = ((IMapFragmentDelegate)localObject).getMap();
      if (localObject == null) {
        return null;
      }
      if (b == null) {
        b = new AMap((IAMap)localObject);
      }
      return b;
    }
    catch (RemoteException localRemoteException)
    {
      cm.a(localRemoteException, "MapView", "getMap");
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
  
  protected IMapFragmentDelegate getMapFragmentDelegate()
  {
    try
    {
      if (a == null) {
        a = ((IMapFragmentDelegate)eb.a(getContext(), cm.a(), "com.amap.api.wrapper.MapFragmentDelegateWrapper", ar.class, null, null));
      }
    }
    catch (Throwable localThrowable)
    {
      localThrowable.printStackTrace();
    }
    if (a == null) {
      a = new ar();
    }
    return a;
  }
  
  public final void onCreate(Bundle paramBundle)
  {
    try
    {
      addView(getMapFragmentDelegate().onCreateView(null, null, paramBundle), new ViewGroup.LayoutParams(-1, -1));
      return;
    }
    catch (Throwable paramBundle)
    {
      cm.a(paramBundle, "MapView", "onCreate");
      return;
    }
    catch (RemoteException paramBundle)
    {
      cm.a(paramBundle, "MapView", "onCreate");
    }
  }
  
  public final void onDestroy()
  {
    try
    {
      getMapFragmentDelegate().onDestroy();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      cm.a(localRemoteException, "MapView", "onDestroy");
    }
  }
  
  public final void onLowMemory()
  {
    try
    {
      getMapFragmentDelegate().onLowMemory();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      cm.a(localRemoteException, "MapView", "onLowMemory");
    }
  }
  
  public final void onPause()
  {
    try
    {
      getMapFragmentDelegate().onPause();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      cm.a(localRemoteException, "MapView", "onPause");
    }
  }
  
  public final void onResume()
  {
    try
    {
      getMapFragmentDelegate().onResume();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      cm.a(localRemoteException, "MapView", "onResume");
    }
  }
  
  public final void onSaveInstanceState(Bundle paramBundle)
  {
    try
    {
      getMapFragmentDelegate().onSaveInstanceState(paramBundle);
      return;
    }
    catch (RemoteException paramBundle)
    {
      cm.a(paramBundle, "MapView", "onSaveInstanceState");
    }
  }
}
