package com.amap.api.maps2d;

import android.app.Activity;
import android.os.Bundle;
import android.os.Parcel;
import android.os.RemoteException;
import android.support.v4.app.Fragment;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.amap.api.interfaces.IAMap;
import com.amap.api.interfaces.IMapFragmentDelegate;
import com.amap.api.mapcore2d.ar;
import com.amap.api.mapcore2d.cm;
import com.amap.api.maps2d.model.RuntimeRemoteException;

public class SupportMapFragment
  extends Fragment
{
  private AMap a;
  private IMapFragmentDelegate b;
  
  public SupportMapFragment() {}
  
  public static SupportMapFragment newInstance()
  {
    return newInstance(new AMapOptions());
  }
  
  public static SupportMapFragment newInstance(AMapOptions paramAMapOptions)
  {
    SupportMapFragment localSupportMapFragment = new SupportMapFragment();
    Bundle localBundle = new Bundle();
    try
    {
      Parcel localParcel = Parcel.obtain();
      paramAMapOptions.writeToParcel(localParcel, 0);
      localBundle.putByteArray("MapOptions", localParcel.marshall());
    }
    catch (Throwable paramAMapOptions)
    {
      paramAMapOptions.printStackTrace();
    }
    localSupportMapFragment.setArguments(localBundle);
    return localSupportMapFragment;
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
      if (a == null) {
        a = new AMap((IAMap)localObject);
      }
      return a;
    }
    catch (RemoteException localRemoteException)
    {
      cm.a(localRemoteException, "SupportMapFragment", "getMap");
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
  
  protected IMapFragmentDelegate getMapFragmentDelegate()
  {
    if (b == null) {
      b = new ar();
    }
    b.setContext(getActivity());
    return b;
  }
  
  public void onAttach(Activity paramActivity)
  {
    super.onAttach(paramActivity);
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    Bundle localBundle = paramBundle;
    if (paramBundle == null) {}
    try
    {
      localBundle = getArguments();
      paramLayoutInflater = getMapFragmentDelegate().onCreateView(paramLayoutInflater, paramViewGroup, localBundle);
      return paramLayoutInflater;
    }
    catch (RemoteException paramLayoutInflater)
    {
      for (;;) {}
    }
    cm.a(paramLayoutInflater, "SupportMapFragment", "onCreateView");
    return null;
  }
  
  public void onDestroy()
  {
    try
    {
      getMapFragmentDelegate().onDestroy();
    }
    catch (RemoteException localRemoteException)
    {
      cm.a(localRemoteException, "SupportMapFragment", "onDestroy");
    }
    super.onDestroy();
  }
  
  public void onDestroyView()
  {
    try
    {
      getMapFragmentDelegate().onDestroyView();
    }
    catch (RemoteException localRemoteException)
    {
      cm.a(localRemoteException, "SupportMapFragment", "onDestroyView");
    }
    super.onDestroyView();
  }
  
  public void onInflate(Activity paramActivity, AttributeSet paramAttributeSet, Bundle paramBundle)
  {
    super.onInflate(paramActivity, paramAttributeSet, paramBundle);
    try
    {
      getMapFragmentDelegate().onInflate(paramActivity, new AMapOptions(), paramBundle);
      return;
    }
    catch (RemoteException paramActivity)
    {
      cm.a(paramActivity, "SupportMapFragment", "onInflate");
    }
  }
  
  public void onLowMemory()
  {
    super.onLowMemory();
    try
    {
      getMapFragmentDelegate().onLowMemory();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      cm.a(localRemoteException, "SupportMapFragment", "onLowMemory");
    }
  }
  
  public void onPause()
  {
    super.onPause();
    try
    {
      getMapFragmentDelegate().onPause();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      cm.a(localRemoteException, "SupportMapFragment", "onPause");
    }
  }
  
  public void onResume()
  {
    super.onResume();
    try
    {
      getMapFragmentDelegate().onResume();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      cm.a(localRemoteException, "SupportMapFragment", "onResume");
    }
  }
  
  public void onSaveInstanceState(Bundle paramBundle)
  {
    try
    {
      getMapFragmentDelegate().onSaveInstanceState(paramBundle);
    }
    catch (RemoteException localRemoteException)
    {
      cm.a(localRemoteException, "SupportMapFragment", "onSaveInstanceState");
    }
    super.onSaveInstanceState(paramBundle);
  }
  
  public void setArguments(Bundle paramBundle)
  {
    super.setArguments(paramBundle);
  }
}