package com.amap.api.maps2d;

import android.graphics.Bitmap;
import android.location.Location;
import android.os.RemoteException;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import com.amap.api.interfaces.IAMap;
import com.amap.api.mapcore2d.cm;
import com.amap.api.maps2d.model.CameraPosition;
import com.amap.api.maps2d.model.Circle;
import com.amap.api.maps2d.model.CircleOptions;
import com.amap.api.maps2d.model.GroundOverlay;
import com.amap.api.maps2d.model.GroundOverlayOptions;
import com.amap.api.maps2d.model.LatLng;
import com.amap.api.maps2d.model.Marker;
import com.amap.api.maps2d.model.MarkerOptions;
import com.amap.api.maps2d.model.MyLocationStyle;
import com.amap.api.maps2d.model.Polygon;
import com.amap.api.maps2d.model.PolygonOptions;
import com.amap.api.maps2d.model.Polyline;
import com.amap.api.maps2d.model.PolylineOptions;
import com.amap.api.maps2d.model.RuntimeRemoteException;
import com.amap.api.maps2d.model.Text;
import com.amap.api.maps2d.model.TextOptions;
import com.amap.api.maps2d.model.TileOverlay;
import com.amap.api.maps2d.model.TileOverlayOptions;
import java.util.List;

public final class AMap
{
  public static final String CHINESE = "zh_cn";
  public static final String ENGLISH = "en";
  public static final int MAP_TYPE_NORMAL = 1;
  public static final int MAP_TYPE_SATELLITE = 2;
  private final IAMap a;
  private UiSettings b;
  private Projection c;
  
  protected AMap(IAMap paramIAMap)
  {
    a = paramIAMap;
  }
  
  private IAMap a()
  {
    return a;
  }
  
  public static String getVersion()
  {
    return "5.2.0";
  }
  
  public final Circle addCircle(CircleOptions paramCircleOptions)
  {
    try
    {
      paramCircleOptions = a().addCircle(paramCircleOptions);
      return paramCircleOptions;
    }
    catch (Throwable paramCircleOptions)
    {
      cm.a(paramCircleOptions, "AMap", "addCircle");
    }
    return null;
  }
  
  public final GroundOverlay addGroundOverlay(GroundOverlayOptions paramGroundOverlayOptions)
  {
    try
    {
      paramGroundOverlayOptions = a().addGroundOverlay(paramGroundOverlayOptions);
      return paramGroundOverlayOptions;
    }
    catch (Throwable paramGroundOverlayOptions)
    {
      cm.a(paramGroundOverlayOptions, "AMap", "addGroundOverlay");
    }
    return null;
  }
  
  public final Marker addMarker(MarkerOptions paramMarkerOptions)
  {
    try
    {
      paramMarkerOptions = a().addMarker(paramMarkerOptions);
      return paramMarkerOptions;
    }
    catch (Throwable paramMarkerOptions)
    {
      cm.a(paramMarkerOptions, "AMap", "addMarker");
    }
    return null;
  }
  
  public final Polygon addPolygon(PolygonOptions paramPolygonOptions)
  {
    try
    {
      paramPolygonOptions = a().addPolygon(paramPolygonOptions);
      return paramPolygonOptions;
    }
    catch (Throwable paramPolygonOptions)
    {
      cm.a(paramPolygonOptions, "AMap", "addPolygon");
    }
    return null;
  }
  
  public final Polyline addPolyline(PolylineOptions paramPolylineOptions)
  {
    try
    {
      paramPolylineOptions = a().addPolyline(paramPolylineOptions);
      return paramPolylineOptions;
    }
    catch (Throwable paramPolylineOptions)
    {
      cm.a(paramPolylineOptions, "AMap", "addPolyline");
    }
    return null;
  }
  
  public final Text addText(TextOptions paramTextOptions)
  {
    try
    {
      paramTextOptions = a.addText(paramTextOptions);
      return paramTextOptions;
    }
    catch (Throwable paramTextOptions)
    {
      cm.a(paramTextOptions, "AMap", "addText");
    }
    return null;
  }
  
  public final TileOverlay addTileOverlay(TileOverlayOptions paramTileOverlayOptions)
  {
    try
    {
      paramTileOverlayOptions = a().addTileOverlay(paramTileOverlayOptions);
      return paramTileOverlayOptions;
    }
    catch (RemoteException paramTileOverlayOptions)
    {
      cm.a(paramTileOverlayOptions, "AMap", "addtileOverlay");
      throw new RuntimeRemoteException(paramTileOverlayOptions);
    }
  }
  
  public final void animateCamera(CameraUpdate paramCameraUpdate)
  {
    try
    {
      a().animateCamera(paramCameraUpdate);
      return;
    }
    catch (Throwable paramCameraUpdate)
    {
      cm.a(paramCameraUpdate, "AMap", "animateCamera");
    }
  }
  
  public final void animateCamera(CameraUpdate paramCameraUpdate, long paramLong, CancelableCallback paramCancelableCallback)
  {
    if (paramLong <= 0L) {}
    try
    {
      Log.w("AMap", "durationMs must be positive");
      a().animateCameraWithDurationAndCallback(paramCameraUpdate, paramLong, paramCancelableCallback);
      return;
    }
    catch (Throwable paramCameraUpdate)
    {
      for (;;) {}
    }
    cm.a(paramCameraUpdate, "AMap", "animateCamera");
  }
  
  public final void animateCamera(CameraUpdate paramCameraUpdate, CancelableCallback paramCancelableCallback)
  {
    try
    {
      a().animateCameraWithCallback(paramCameraUpdate, paramCancelableCallback);
      return;
    }
    catch (Throwable paramCameraUpdate)
    {
      cm.a(paramCameraUpdate, "AMap", "animateCamera");
    }
  }
  
  public final void clear()
  {
    try
    {
      if (a() != null)
      {
        a().clear();
        return;
      }
    }
    catch (Throwable localThrowable)
    {
      cm.a(localThrowable, "AMap", "clear");
      return;
    }
    catch (RemoteException localRemoteException)
    {
      cm.a(localRemoteException, "AMap", "clear");
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
  
  public final CameraPosition getCameraPosition()
  {
    try
    {
      CameraPosition localCameraPosition = a().getCameraPosition();
      return localCameraPosition;
    }
    catch (RemoteException localRemoteException)
    {
      cm.a(localRemoteException, "AMap", "getCameraPosition");
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
  
  public final List<Marker> getMapScreenMarkers()
  {
    try
    {
      List localList = a.getMapScreenMarkers();
      return localList;
    }
    catch (Throwable localThrowable)
    {
      cm.a(localThrowable, "AMap", "getMapScreenaMarkers");
    }
    return null;
  }
  
  public void getMapScreenShot(OnMapScreenShotListener paramOnMapScreenShotListener)
  {
    a().getMapScreenShot(paramOnMapScreenShotListener);
    invalidate();
  }
  
  public final int getMapType()
  {
    try
    {
      int i = a().getMapType();
      return i;
    }
    catch (RemoteException localRemoteException)
    {
      cm.a(localRemoteException, "AMap", "getMapType");
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
  
  public final float getMaxZoomLevel()
  {
    return a().getMaxZoomLevel();
  }
  
  public final float getMinZoomLevel()
  {
    return a().getMinZoomLevel();
  }
  
  public final Location getMyLocation()
  {
    try
    {
      Location localLocation = a().getMyLocation();
      return localLocation;
    }
    catch (Throwable localThrowable)
    {
      cm.a(localThrowable, "AMap", "getMyLocation");
    }
    return null;
  }
  
  public final Projection getProjection()
  {
    try
    {
      if (c == null) {
        c = a().getAMapProjection();
      }
      Projection localProjection = c;
      return localProjection;
    }
    catch (Throwable localThrowable)
    {
      cm.a(localThrowable, "AMap", "getProjection");
    }
    return null;
  }
  
  public float getScalePerPixel()
  {
    return a().getScalePerPixel();
  }
  
  public final UiSettings getUiSettings()
  {
    try
    {
      if (b == null) {
        b = a().getAMapUiSettings();
      }
      UiSettings localUiSettings = b;
      return localUiSettings;
    }
    catch (Throwable localThrowable)
    {
      cm.a(localThrowable, "AMap", "getUiSettings");
    }
    return null;
  }
  
  public void invalidate()
  {
    postInvalidate();
  }
  
  public final boolean isMyLocationEnabled()
  {
    try
    {
      boolean bool = a().isMyLocationEnabled();
      return bool;
    }
    catch (Throwable localThrowable)
    {
      cm.a(localThrowable, "AMap", "isMyLocationEnabled");
    }
    return false;
  }
  
  public final boolean isTrafficEnabled()
  {
    try
    {
      boolean bool = a().isTrafficEnabled();
      return bool;
    }
    catch (RemoteException localRemoteException)
    {
      cm.a(localRemoteException, "AMap", "isTrafficEnable");
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
  
  public final void moveCamera(CameraUpdate paramCameraUpdate)
  {
    try
    {
      a().moveCamera(paramCameraUpdate);
      return;
    }
    catch (Throwable paramCameraUpdate)
    {
      cm.a(paramCameraUpdate, "AMap", "moveCamera");
    }
  }
  
  public void postInvalidate()
  {
    a().AMapInvalidate();
  }
  
  public void removecache()
  {
    try
    {
      a.removecache();
      return;
    }
    catch (Throwable localThrowable)
    {
      cm.a(localThrowable, "AMap", "removecache");
    }
  }
  
  public void removecache(OnCacheRemoveListener paramOnCacheRemoveListener)
  {
    try
    {
      a.removecache(paramOnCacheRemoveListener);
      return;
    }
    catch (Throwable paramOnCacheRemoveListener)
    {
      cm.a(paramOnCacheRemoveListener, "AMap", "removecache");
    }
  }
  
  public final void setInfoWindowAdapter(InfoWindowAdapter paramInfoWindowAdapter)
  {
    try
    {
      a().setInfoWindowAdapter(paramInfoWindowAdapter);
      return;
    }
    catch (Throwable paramInfoWindowAdapter)
    {
      cm.a(paramInfoWindowAdapter, "AMap", "setInfoWindowAdapter");
    }
  }
  
  public final void setLocationSource(LocationSource paramLocationSource)
  {
    try
    {
      a().setLocationSource(paramLocationSource);
      return;
    }
    catch (Throwable paramLocationSource)
    {
      cm.a(paramLocationSource, "AMap", "setLocationSource");
    }
  }
  
  public void setMapLanguage(String paramString)
  {
    try
    {
      a.setMapLanguage(paramString);
      return;
    }
    catch (Throwable paramString)
    {
      cm.a(paramString, "AMap", "setMapLanguage");
    }
  }
  
  public final void setMapType(int paramInt)
  {
    try
    {
      a().setMapType(paramInt);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      cm.a(localRemoteException, "AMap", "setMapType");
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
  
  public final void setMyLocationEnabled(boolean paramBoolean)
  {
    try
    {
      a().setMyLocationEnabled(paramBoolean);
      return;
    }
    catch (Throwable localThrowable)
    {
      cm.a(localThrowable, "AMap", "setMyLocationEnabled");
    }
  }
  
  public final void setMyLocationRotateAngle(float paramFloat)
  {
    try
    {
      a.setMyLocationRotateAngle(paramFloat);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      cm.a(localRemoteException, "AMap", "setMyLocationRoteteAngle");
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
  
  public final void setMyLocationStyle(MyLocationStyle paramMyLocationStyle)
  {
    try
    {
      a().setMyLocationStyle(paramMyLocationStyle);
      return;
    }
    catch (Throwable paramMyLocationStyle)
    {
      cm.a(paramMyLocationStyle, "AMap", "setMyLocationStyle");
    }
  }
  
  public final void setMyLocationType(int paramInt)
  {
    try
    {
      a().setMyLocationType(paramInt);
      return;
    }
    catch (Throwable localThrowable)
    {
      localThrowable.printStackTrace();
    }
  }
  
  public final void setOnCameraChangeListener(OnCameraChangeListener paramOnCameraChangeListener)
  {
    try
    {
      a().setOnCameraChangeListener(paramOnCameraChangeListener);
      return;
    }
    catch (Throwable paramOnCameraChangeListener)
    {
      cm.a(paramOnCameraChangeListener, "AMap", "setOnCameraChangeListener");
    }
  }
  
  public final void setOnInfoWindowClickListener(OnInfoWindowClickListener paramOnInfoWindowClickListener)
  {
    try
    {
      a().setOnInfoWindowClickListener(paramOnInfoWindowClickListener);
      return;
    }
    catch (Throwable paramOnInfoWindowClickListener)
    {
      cm.a(paramOnInfoWindowClickListener, "AMap", "setOnInfoWindowClickListener");
    }
  }
  
  public final void setOnMapClickListener(OnMapClickListener paramOnMapClickListener)
  {
    try
    {
      a().setOnMapClickListener(paramOnMapClickListener);
      return;
    }
    catch (Throwable paramOnMapClickListener)
    {
      cm.a(paramOnMapClickListener, "AMap", "setOnMapClickListener");
    }
  }
  
  public final void setOnMapLoadedListener(OnMapLoadedListener paramOnMapLoadedListener)
  {
    try
    {
      a().setOnMaploadedListener(paramOnMapLoadedListener);
      return;
    }
    catch (Throwable paramOnMapLoadedListener)
    {
      cm.a(paramOnMapLoadedListener, "AMap", "setOnMapLoadedListener");
    }
  }
  
  public final void setOnMapLongClickListener(OnMapLongClickListener paramOnMapLongClickListener)
  {
    try
    {
      a().setOnMapLongClickListener(paramOnMapLongClickListener);
      return;
    }
    catch (Throwable paramOnMapLongClickListener)
    {
      cm.a(paramOnMapLongClickListener, "AMap", "setOnMapLongClickListener");
    }
  }
  
  public final void setOnMapTouchListener(OnMapTouchListener paramOnMapTouchListener)
  {
    try
    {
      a.setOnMapTouchListener(paramOnMapTouchListener);
      return;
    }
    catch (Throwable paramOnMapTouchListener)
    {
      cm.a(paramOnMapTouchListener, "AMap", "setOnMapTouchListener");
    }
  }
  
  public final void setOnMarkerClickListener(OnMarkerClickListener paramOnMarkerClickListener)
  {
    try
    {
      a().setOnMarkerClickListener(paramOnMarkerClickListener);
      return;
    }
    catch (Throwable paramOnMarkerClickListener)
    {
      cm.a(paramOnMarkerClickListener, "AMap", "setOnMarkerClickListener");
    }
  }
  
  public final void setOnMarkerDragListener(OnMarkerDragListener paramOnMarkerDragListener)
  {
    try
    {
      a().setOnMarkerDragListener(paramOnMarkerDragListener);
      return;
    }
    catch (Throwable paramOnMarkerDragListener)
    {
      cm.a(paramOnMarkerDragListener, "AMap", "setOnMarkerDragListener");
    }
  }
  
  public final void setOnMyLocationChangeListener(OnMyLocationChangeListener paramOnMyLocationChangeListener)
  {
    try
    {
      a().setOnMyLocationChangeListener(paramOnMyLocationChangeListener);
      return;
    }
    catch (Throwable paramOnMyLocationChangeListener)
    {
      cm.a(paramOnMyLocationChangeListener, "AMap", "setOnMyLocaitonChangeListener");
    }
  }
  
  public void setTrafficEnabled(boolean paramBoolean)
  {
    try
    {
      a().setTrafficEnabled(paramBoolean);
      return;
    }
    catch (Throwable localThrowable)
    {
      cm.a(localThrowable, "AMap", "setTradficEnabled");
    }
  }
  
  public final void stopAnimation()
  {
    try
    {
      a().stopAnimation();
      return;
    }
    catch (Throwable localThrowable)
    {
      cm.a(localThrowable, "AMap", "stopAnimation");
    }
  }
  
  public static abstract interface CancelableCallback
  {
    public abstract void onCancel();
    
    public abstract void onFinish();
  }
  
  public static abstract interface InfoWindowAdapter
  {
    public abstract View getInfoContents(Marker paramMarker);
    
    public abstract View getInfoWindow(Marker paramMarker);
  }
  
  public static abstract interface OnCacheRemoveListener
  {
    public abstract void onRemoveCacheFinish(boolean paramBoolean);
  }
  
  public static abstract interface OnCameraChangeListener
  {
    public abstract void onCameraChange(CameraPosition paramCameraPosition);
    
    public abstract void onCameraChangeFinish(CameraPosition paramCameraPosition);
  }
  
  public static abstract interface OnInfoWindowClickListener
  {
    public abstract void onInfoWindowClick(Marker paramMarker);
  }
  
  public static abstract interface OnMapClickListener
  {
    public abstract void onMapClick(LatLng paramLatLng);
  }
  
  public static abstract interface OnMapLoadedListener
  {
    public abstract void onMapLoaded();
  }
  
  public static abstract interface OnMapLongClickListener
  {
    public abstract void onMapLongClick(LatLng paramLatLng);
  }
  
  public static abstract interface OnMapScreenShotListener
  {
    public abstract void onMapScreenShot(Bitmap paramBitmap);
  }
  
  public static abstract interface OnMapTouchListener
  {
    public abstract void onTouch(MotionEvent paramMotionEvent);
  }
  
  public static abstract interface OnMarkerClickListener
  {
    public abstract boolean onMarkerClick(Marker paramMarker);
  }
  
  public static abstract interface OnMarkerDragListener
  {
    public abstract void onMarkerDrag(Marker paramMarker);
    
    public abstract void onMarkerDragEnd(Marker paramMarker);
    
    public abstract void onMarkerDragStart(Marker paramMarker);
  }
  
  public static abstract interface OnMyLocationChangeListener
  {
    public abstract void onMyLocationChange(Location paramLocation);
  }
}
