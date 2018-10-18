package com.amap.api.mapcore2d;

import android.graphics.Canvas;
import android.graphics.Rect;
import com.amap.api.interfaces.IMarker;
import com.amap.api.maps2d.model.LatLng;

public abstract interface ab
  extends IMarker, ac
{
  public abstract Rect a();
  
  public abstract void a(Canvas paramCanvas, y paramY);
  
  public abstract void a(LatLng paramLatLng);
  
  public abstract s b();
}
