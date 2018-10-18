package com.amap.api.maps2d;

import android.graphics.Point;
import com.amap.api.mapcore2d.m;
import com.amap.api.maps2d.model.CameraPosition;
import com.amap.api.maps2d.model.LatLng;
import com.amap.api.maps2d.model.LatLngBounds;

public final class CameraUpdateFactory
{
  public CameraUpdateFactory() {}
  
  public static CameraUpdate changeLatLng(LatLng paramLatLng)
  {
    return new CameraUpdate(m.a(paramLatLng));
  }
  
  public static CameraUpdate newCameraPosition(CameraPosition paramCameraPosition)
  {
    return new CameraUpdate(m.a(paramCameraPosition));
  }
  
  public static CameraUpdate newLatLng(LatLng paramLatLng)
  {
    return new CameraUpdate(m.b(paramLatLng));
  }
  
  public static CameraUpdate newLatLngBounds(LatLngBounds paramLatLngBounds, int paramInt)
  {
    return new CameraUpdate(m.a(paramLatLngBounds, paramInt));
  }
  
  public static CameraUpdate newLatLngBounds(LatLngBounds paramLatLngBounds, int paramInt1, int paramInt2, int paramInt3)
  {
    return new CameraUpdate(m.a(paramLatLngBounds, paramInt1, paramInt2, paramInt3));
  }
  
  public static CameraUpdate newLatLngZoom(LatLng paramLatLng, float paramFloat)
  {
    return new CameraUpdate(m.a(paramLatLng, paramFloat));
  }
  
  public static CameraUpdate scrollBy(float paramFloat1, float paramFloat2)
  {
    return new CameraUpdate(m.a(paramFloat1, paramFloat2));
  }
  
  public static CameraUpdate zoomBy(float paramFloat)
  {
    return new CameraUpdate(m.b(paramFloat));
  }
  
  public static CameraUpdate zoomBy(float paramFloat, Point paramPoint)
  {
    return new CameraUpdate(m.a(paramFloat, paramPoint));
  }
  
  public static CameraUpdate zoomIn()
  {
    return new CameraUpdate(m.b());
  }
  
  public static CameraUpdate zoomOut()
  {
    return new CameraUpdate(m.c());
  }
  
  public static CameraUpdate zoomTo(float paramFloat)
  {
    return new CameraUpdate(m.a(paramFloat));
  }
}
