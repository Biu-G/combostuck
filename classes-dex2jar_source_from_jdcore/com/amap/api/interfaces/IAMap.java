package com.amap.api.interfaces;

import android.location.Location;
import android.os.Handler;
import android.os.RemoteException;
import android.view.View;
import com.amap.api.maps2d.AMap.CancelableCallback;
import com.amap.api.maps2d.AMap.InfoWindowAdapter;
import com.amap.api.maps2d.AMap.OnCacheRemoveListener;
import com.amap.api.maps2d.AMap.OnCameraChangeListener;
import com.amap.api.maps2d.AMap.OnInfoWindowClickListener;
import com.amap.api.maps2d.AMap.OnMapClickListener;
import com.amap.api.maps2d.AMap.OnMapLoadedListener;
import com.amap.api.maps2d.AMap.OnMapLongClickListener;
import com.amap.api.maps2d.AMap.OnMapScreenShotListener;
import com.amap.api.maps2d.AMap.OnMapTouchListener;
import com.amap.api.maps2d.AMap.OnMarkerClickListener;
import com.amap.api.maps2d.AMap.OnMarkerDragListener;
import com.amap.api.maps2d.AMap.OnMyLocationChangeListener;
import com.amap.api.maps2d.CameraUpdate;
import com.amap.api.maps2d.LocationSource;
import com.amap.api.maps2d.Projection;
import com.amap.api.maps2d.UiSettings;
import com.amap.api.maps2d.model.CameraPosition;
import com.amap.api.maps2d.model.Circle;
import com.amap.api.maps2d.model.CircleOptions;
import com.amap.api.maps2d.model.GroundOverlay;
import com.amap.api.maps2d.model.GroundOverlayOptions;
import com.amap.api.maps2d.model.LatLngBounds;
import com.amap.api.maps2d.model.Marker;
import com.amap.api.maps2d.model.MarkerOptions;
import com.amap.api.maps2d.model.MyLocationStyle;
import com.amap.api.maps2d.model.Polygon;
import com.amap.api.maps2d.model.PolygonOptions;
import com.amap.api.maps2d.model.Polyline;
import com.amap.api.maps2d.model.PolylineOptions;
import com.amap.api.maps2d.model.Text;
import com.amap.api.maps2d.model.TextOptions;
import com.amap.api.maps2d.model.TileOverlay;
import com.amap.api.maps2d.model.TileOverlayOptions;
import java.util.List;

public abstract interface IAMap
{
  public abstract void AMapInvalidate();
  
  public abstract Circle addCircle(CircleOptions paramCircleOptions)
    throws RemoteException;
  
  public abstract GroundOverlay addGroundOverlay(GroundOverlayOptions paramGroundOverlayOptions)
    throws RemoteException;
  
  public abstract Marker addMarker(MarkerOptions paramMarkerOptions)
    throws RemoteException;
  
  public abstract Polygon addPolygon(PolygonOptions paramPolygonOptions)
    throws RemoteException;
  
  public abstract Polyline addPolyline(PolylineOptions paramPolylineOptions)
    throws RemoteException;
  
  public abstract Text addText(TextOptions paramTextOptions)
    throws RemoteException;
  
  public abstract TileOverlay addTileOverlay(TileOverlayOptions paramTileOverlayOptions)
    throws RemoteException;
  
  public abstract void animateCamera(CameraUpdate paramCameraUpdate)
    throws RemoteException;
  
  public abstract void animateCameraWithCallback(CameraUpdate paramCameraUpdate, AMap.CancelableCallback paramCancelableCallback)
    throws RemoteException;
  
  public abstract void animateCameraWithDurationAndCallback(CameraUpdate paramCameraUpdate, long paramLong, AMap.CancelableCallback paramCancelableCallback)
    throws RemoteException;
  
  public abstract void clear()
    throws RemoteException;
  
  public abstract void destroy();
  
  public abstract Projection getAMapProjection()
    throws RemoteException;
  
  public abstract UiSettings getAMapUiSettings()
    throws RemoteException;
  
  public abstract CameraPosition getCameraPosition()
    throws RemoteException;
  
  public abstract int getLogoPosition();
  
  public abstract Handler getMainHandler();
  
  public abstract LatLngBounds getMapBounds();
  
  public abstract int getMapHeight();
  
  public abstract List<Marker> getMapScreenMarkers()
    throws RemoteException;
  
  public abstract void getMapScreenShot(AMap.OnMapScreenShotListener paramOnMapScreenShotListener);
  
  public abstract int getMapType()
    throws RemoteException;
  
  public abstract int getMapWidth();
  
  public abstract float getMaxZoomLevel();
  
  public abstract float getMinZoomLevel();
  
  public abstract Location getMyLocation()
    throws RemoteException;
  
  public abstract AMap.OnCameraChangeListener getOnCameraChangeListener()
    throws RemoteException;
  
  public abstract float getScalePerPixel();
  
  public abstract View getView()
    throws RemoteException;
  
  public abstract float getZoomLevel();
  
  public abstract boolean isMyLocationEnabled()
    throws RemoteException;
  
  public abstract boolean isTrafficEnabled()
    throws RemoteException;
  
  public abstract void moveCamera(CameraUpdate paramCameraUpdate)
    throws RemoteException;
  
  public abstract void onPause();
  
  public abstract void onResume();
  
  public abstract void redrawInfoWindow();
  
  public abstract boolean removeGLOverlay(String paramString)
    throws RemoteException;
  
  public abstract boolean removeMarker(String paramString);
  
  public abstract void removecache()
    throws RemoteException;
  
  public abstract void removecache(AMap.OnCacheRemoveListener paramOnCacheRemoveListener)
    throws RemoteException;
  
  public abstract void setInfoWindowAdapter(AMap.InfoWindowAdapter paramInfoWindowAdapter)
    throws RemoteException;
  
  public abstract void setLocationSource(LocationSource paramLocationSource)
    throws RemoteException;
  
  public abstract void setLogoPosition(int paramInt);
  
  public abstract void setMapLanguage(String paramString)
    throws RemoteException;
  
  public abstract void setMapType(int paramInt)
    throws RemoteException;
  
  public abstract void setMyLocationEnabled(boolean paramBoolean)
    throws RemoteException;
  
  public abstract void setMyLocationRotateAngle(float paramFloat)
    throws RemoteException;
  
  public abstract void setMyLocationStyle(MyLocationStyle paramMyLocationStyle)
    throws RemoteException;
  
  public abstract void setMyLocationType(int paramInt);
  
  public abstract void setOnCameraChangeListener(AMap.OnCameraChangeListener paramOnCameraChangeListener)
    throws RemoteException;
  
  public abstract void setOnInfoWindowClickListener(AMap.OnInfoWindowClickListener paramOnInfoWindowClickListener)
    throws RemoteException;
  
  public abstract void setOnMapClickListener(AMap.OnMapClickListener paramOnMapClickListener)
    throws RemoteException;
  
  public abstract void setOnMapLongClickListener(AMap.OnMapLongClickListener paramOnMapLongClickListener)
    throws RemoteException;
  
  public abstract void setOnMapTouchListener(AMap.OnMapTouchListener paramOnMapTouchListener)
    throws RemoteException;
  
  public abstract void setOnMaploadedListener(AMap.OnMapLoadedListener paramOnMapLoadedListener)
    throws RemoteException;
  
  public abstract void setOnMarkerClickListener(AMap.OnMarkerClickListener paramOnMarkerClickListener)
    throws RemoteException;
  
  public abstract void setOnMarkerDragListener(AMap.OnMarkerDragListener paramOnMarkerDragListener)
    throws RemoteException;
  
  public abstract void setOnMyLocationChangeListener(AMap.OnMyLocationChangeListener paramOnMyLocationChangeListener)
    throws RemoteException;
  
  public abstract void setTrafficEnabled(boolean paramBoolean)
    throws RemoteException;
  
  public abstract void setZOrderOnTop(boolean paramBoolean)
    throws RemoteException;
  
  public abstract void setZoomPosition(int paramInt);
  
  public abstract void showCompassEnabled(boolean paramBoolean);
  
  public abstract void showMyLocationButtonEnabled(boolean paramBoolean);
  
  public abstract void showMyLocationOverlay(Location paramLocation);
  
  public abstract void showScaleEnabled(boolean paramBoolean);
  
  public abstract void showZoomControlsEnabled(boolean paramBoolean);
  
  public abstract void stopAnimation()
    throws RemoteException;
}
