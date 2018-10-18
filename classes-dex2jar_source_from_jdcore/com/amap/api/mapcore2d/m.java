package com.amap.api.mapcore2d;

import android.graphics.Point;
import com.amap.api.interfaces.MapCameraMessage;
import com.amap.api.interfaces.MapCameraMessage.Type;
import com.amap.api.maps2d.model.CameraPosition;
import com.amap.api.maps2d.model.CameraPosition.Builder;
import com.amap.api.maps2d.model.LatLng;
import com.amap.api.maps2d.model.LatLngBounds;

public class m
  extends MapCameraMessage
{
  private float a;
  private float b;
  private ae c;
  
  private m() {}
  
  public static m a()
  {
    return new m();
  }
  
  public static m a(float paramFloat)
  {
    m localM = a();
    nowType = MapCameraMessage.Type.zoomTo;
    zoom = paramFloat;
    return localM;
  }
  
  public static m a(float paramFloat1, float paramFloat2)
  {
    m localM = a();
    nowType = MapCameraMessage.Type.scrollBy;
    xPixel = paramFloat1;
    yPixel = paramFloat2;
    return localM;
  }
  
  public static m a(float paramFloat, Point paramPoint)
  {
    m localM = a();
    nowType = MapCameraMessage.Type.zoomBy;
    amount = paramFloat;
    focus = paramPoint;
    return localM;
  }
  
  static m a(ae paramAe, float paramFloat1, float paramFloat2, float paramFloat3)
  {
    m localM = a();
    nowType = MapCameraMessage.Type.changeGeoCenterZoomTiltBearing;
    c = paramAe;
    zoom = paramFloat1;
    b = paramFloat2;
    a = paramFloat3;
    return localM;
  }
  
  public static m a(CameraPosition paramCameraPosition)
  {
    m localM = a();
    nowType = MapCameraMessage.Type.newCameraPosition;
    cameraPosition = paramCameraPosition;
    return localM;
  }
  
  public static m a(LatLng paramLatLng)
  {
    m localM = a();
    nowType = MapCameraMessage.Type.changeCenter;
    cameraPosition = new CameraPosition(paramLatLng, 0.0F, 0.0F, 0.0F);
    return localM;
  }
  
  public static m a(LatLng paramLatLng, float paramFloat)
  {
    return a(CameraPosition.builder().target(paramLatLng).zoom(paramFloat).build());
  }
  
  public static m a(LatLng paramLatLng, float paramFloat1, float paramFloat2, float paramFloat3)
  {
    return a(CameraPosition.builder().target(paramLatLng).zoom(paramFloat1).bearing(paramFloat2).tilt(paramFloat3).build());
  }
  
  public static m a(LatLngBounds paramLatLngBounds, int paramInt)
  {
    m localM = a();
    nowType = MapCameraMessage.Type.newLatLngBounds;
    bounds = paramLatLngBounds;
    padding = paramInt;
    return localM;
  }
  
  public static m a(LatLngBounds paramLatLngBounds, int paramInt1, int paramInt2, int paramInt3)
  {
    m localM = a();
    nowType = MapCameraMessage.Type.newLatLngBoundsWithSize;
    bounds = paramLatLngBounds;
    padding = paramInt3;
    width = paramInt1;
    height = paramInt2;
    return localM;
  }
  
  public static m b()
  {
    m localM = a();
    nowType = MapCameraMessage.Type.zoomIn;
    return localM;
  }
  
  public static m b(float paramFloat)
  {
    return a(paramFloat, null);
  }
  
  public static m b(LatLng paramLatLng)
  {
    return a(CameraPosition.builder().target(paramLatLng).build());
  }
  
  public static m c()
  {
    m localM = a();
    nowType = MapCameraMessage.Type.zoomOut;
    return localM;
  }
}
