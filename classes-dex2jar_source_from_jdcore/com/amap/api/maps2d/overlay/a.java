package com.amap.api.maps2d.overlay;

import android.graphics.Bitmap;
import com.amap.api.maps2d.model.LatLng;
import com.amap.api.services.core.LatLonPoint;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

class a
{
  private static int a = 2048;
  
  public static Bitmap a(Bitmap paramBitmap, float paramFloat)
  {
    if (paramBitmap == null) {
      return null;
    }
    return Bitmap.createScaledBitmap(paramBitmap, (int)(paramBitmap.getWidth() * paramFloat), (int)(paramBitmap.getHeight() * paramFloat), true);
  }
  
  public static LatLng a(LatLonPoint paramLatLonPoint)
  {
    if (paramLatLonPoint == null) {
      return null;
    }
    return new LatLng(paramLatLonPoint.getLatitude(), paramLatLonPoint.getLongitude());
  }
  
  public static ArrayList<LatLng> a(List<LatLonPoint> paramList)
  {
    ArrayList localArrayList = new ArrayList();
    paramList = paramList.iterator();
    while (paramList.hasNext())
    {
      LatLonPoint localLatLonPoint = (LatLonPoint)paramList.next();
      if (localLatLonPoint != null) {
        localArrayList.add(a(localLatLonPoint));
      }
    }
    return localArrayList;
  }
}
