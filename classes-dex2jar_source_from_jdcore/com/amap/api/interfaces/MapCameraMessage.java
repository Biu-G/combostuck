package com.amap.api.interfaces;

import android.graphics.Point;
import com.amap.api.maps2d.model.CameraPosition;
import com.amap.api.maps2d.model.LatLngBounds;

public abstract class MapCameraMessage
{
  public float amount;
  public LatLngBounds bounds;
  public CameraPosition cameraPosition;
  public Point focus = null;
  public int height;
  public boolean isChangeFinished = false;
  public Type nowType = Type.none;
  public int padding;
  public int width;
  public float xPixel;
  public float yPixel;
  public float zoom;
  
  public MapCameraMessage() {}
  
  public static enum Type
  {
    static
    {
      changeCenter = new Type("changeCenter", 2);
      changeGeoCenterZoom = new Type("changeGeoCenterZoom", 3);
      zoomOut = new Type("zoomOut", 4);
      zoomTo = new Type("zoomTo", 5);
      zoomBy = new Type("zoomBy", 6);
      scrollBy = new Type("scrollBy", 7);
      newCameraPosition = new Type("newCameraPosition", 8);
      newLatLngBounds = new Type("newLatLngBounds", 9);
      newLatLngBoundsWithSize = new Type("newLatLngBoundsWithSize", 10);
      changeGeoCenterZoomTiltBearing = new Type("changeGeoCenterZoomTiltBearing", 11);
    }
    
    private Type() {}
  }
}
