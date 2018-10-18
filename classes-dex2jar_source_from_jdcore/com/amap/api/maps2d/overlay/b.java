package com.amap.api.maps2d.overlay;

import android.content.Context;
import android.content.res.AssetManager;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Color;
import com.amap.api.mapcore2d.cm;
import com.amap.api.mapcore2d.q;
import com.amap.api.maps2d.AMap;
import com.amap.api.maps2d.CameraUpdateFactory;
import com.amap.api.maps2d.model.BitmapDescriptor;
import com.amap.api.maps2d.model.BitmapDescriptorFactory;
import com.amap.api.maps2d.model.LatLng;
import com.amap.api.maps2d.model.LatLngBounds;
import com.amap.api.maps2d.model.LatLngBounds.Builder;
import com.amap.api.maps2d.model.Marker;
import com.amap.api.maps2d.model.MarkerOptions;
import com.amap.api.maps2d.model.Polyline;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

class b
{
  private Marker a;
  protected List<Polyline> allPolyLines = new ArrayList();
  private Marker b;
  private Context c;
  private Bitmap d;
  private Bitmap e;
  protected LatLng endPoint;
  private Bitmap f;
  private Bitmap g;
  private Bitmap h;
  private AssetManager i;
  protected AMap mAMap;
  protected boolean mNodeIconVisible = true;
  protected LatLng startPoint;
  protected List<Marker> stationMarkers = new ArrayList();
  
  public b(Context paramContext)
  {
    c = paramContext;
    i = c.getResources().getAssets();
  }
  
  private void a()
  {
    if (d != null)
    {
      d.recycle();
      d = null;
    }
    if (e != null)
    {
      e.recycle();
      e = null;
    }
    if (f != null)
    {
      f.recycle();
      f = null;
    }
    if (g != null)
    {
      g.recycle();
      g = null;
    }
    if (h != null)
    {
      h.recycle();
      h = null;
    }
  }
  
  protected void addStartAndEndMarker()
  {
    a = mAMap.addMarker(new MarkerOptions().position(startPoint).icon(getStartBitmapDescriptor()).title("起点"));
    b = mAMap.addMarker(new MarkerOptions().position(endPoint).icon(getEndBitmapDescriptor()).title("终点"));
  }
  
  protected BitmapDescriptor getBitDes(Bitmap paramBitmap, String paramString)
  {
    Object localObject1 = paramBitmap;
    Object localObject2 = paramBitmap;
    try
    {
      InputStream localInputStream = i.open(paramString);
      localObject1 = paramBitmap;
      localObject2 = paramBitmap;
      paramString = BitmapFactory.decodeStream(localInputStream);
      try
      {
        paramBitmap = a.a(paramString, q.a);
        localObject1 = paramBitmap;
        localObject2 = paramBitmap;
        localInputStream.close();
      }
      catch (Throwable paramBitmap)
      {
        localObject1 = paramString;
      }
      catch (IOException paramBitmap)
      {
        localObject2 = paramString;
      }
      cm.a(paramBitmap, "RouteOverlay", "getBitDes");
    }
    catch (Throwable paramBitmap)
    {
      cm.a(paramBitmap, "RouteOverlay", "getBitDes");
      paramBitmap = (Bitmap)localObject1;
    }
    catch (IOException paramBitmap) {}
    paramBitmap = (Bitmap)localObject2;
    return BitmapDescriptorFactory.fromBitmap(paramBitmap);
  }
  
  protected BitmapDescriptor getBusBitmapDescriptor()
  {
    return getBitDes(f, "amap_bus.png");
  }
  
  protected int getBusColor()
  {
    return Color.parseColor("#537edc");
  }
  
  protected BitmapDescriptor getDriveBitmapDescriptor()
  {
    return getBitDes(h, "amap_car.png");
  }
  
  protected int getDriveColor()
  {
    return Color.parseColor("#537edc");
  }
  
  protected BitmapDescriptor getEndBitmapDescriptor()
  {
    return getBitDes(e, "amap_end.png");
  }
  
  protected LatLngBounds getLatLngBounds()
  {
    LatLngBounds.Builder localBuilder = LatLngBounds.builder();
    localBuilder.include(new LatLng(startPoint.latitude, startPoint.longitude));
    localBuilder.include(new LatLng(endPoint.latitude, endPoint.longitude));
    return localBuilder.build();
  }
  
  protected BitmapDescriptor getStartBitmapDescriptor()
  {
    return getBitDes(d, "amap_start.png");
  }
  
  protected BitmapDescriptor getWalkBitmapDescriptor()
  {
    return getBitDes(g, "amap_man.png");
  }
  
  protected int getWalkColor()
  {
    return Color.parseColor("#6db74d");
  }
  
  public void removeFromMap()
  {
    if (a != null) {
      a.remove();
    }
    if (b != null) {
      b.remove();
    }
    Iterator localIterator = stationMarkers.iterator();
    while (localIterator.hasNext()) {
      ((Marker)localIterator.next()).remove();
    }
    localIterator = allPolyLines.iterator();
    while (localIterator.hasNext()) {
      ((Polyline)localIterator.next()).remove();
    }
    a();
  }
  
  public void setNodeIconVisibility(boolean paramBoolean)
  {
    mNodeIconVisible = paramBoolean;
    Iterator localIterator = stationMarkers.iterator();
    while (localIterator.hasNext()) {
      ((Marker)localIterator.next()).setVisible(paramBoolean);
    }
    mAMap.postInvalidate();
  }
  
  public void zoomToSpan()
  {
    if ((startPoint != null) && (endPoint != null))
    {
      if (mAMap == null) {
        return;
      }
      LatLngBounds localLatLngBounds = getLatLngBounds();
      mAMap.moveCamera(CameraUpdateFactory.newLatLngBounds(localLatLngBounds, 50));
    }
  }
}
