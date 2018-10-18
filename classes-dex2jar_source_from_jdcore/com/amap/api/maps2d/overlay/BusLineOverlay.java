package com.amap.api.maps2d.overlay;

import android.content.Context;
import android.content.res.AssetManager;
import android.content.res.Resources;
import android.graphics.Color;
import com.amap.api.maps2d.AMap;
import com.amap.api.maps2d.CameraUpdateFactory;
import com.amap.api.maps2d.model.BitmapDescriptor;
import com.amap.api.maps2d.model.LatLng;
import com.amap.api.maps2d.model.LatLngBounds;
import com.amap.api.maps2d.model.LatLngBounds.Builder;
import com.amap.api.maps2d.model.Marker;
import com.amap.api.maps2d.model.MarkerOptions;
import com.amap.api.maps2d.model.Polyline;
import com.amap.api.maps2d.model.PolylineOptions;
import com.amap.api.services.busline.BusLineItem;
import com.amap.api.services.busline.BusStationItem;
import com.amap.api.services.core.LatLonPoint;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class BusLineOverlay
{
  private BusLineItem a;
  private AMap b;
  private ArrayList<Marker> c = new ArrayList();
  private Polyline d;
  private List<BusStationItem> e;
  private BitmapDescriptor f;
  private BitmapDescriptor g;
  private BitmapDescriptor h;
  private AssetManager i;
  private Context j;
  
  public BusLineOverlay(Context paramContext, AMap paramAMap, BusLineItem paramBusLineItem)
  {
    j = paramContext;
    a = paramBusLineItem;
    b = paramAMap;
    e = a.getBusStations();
    i = j.getResources().getAssets();
  }
  
  /* Error */
  private BitmapDescriptor a(String paramString)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 5
    //   3: aconst_null
    //   4: astore_3
    //   5: aload_0
    //   6: getfield 62	com/amap/api/maps2d/overlay/BusLineOverlay:i	Landroid/content/res/AssetManager;
    //   9: aload_1
    //   10: invokevirtual 72	android/content/res/AssetManager:open	(Ljava/lang/String;)Ljava/io/InputStream;
    //   13: astore_1
    //   14: aload_1
    //   15: invokestatic 78	android/graphics/BitmapFactory:decodeStream	(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    //   18: astore_2
    //   19: aload_2
    //   20: getstatic 83	com/amap/api/mapcore2d/q:a	F
    //   23: invokestatic 88	com/amap/api/mapcore2d/cm:a	(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
    //   26: astore_3
    //   27: aload_3
    //   28: astore_2
    //   29: aload_1
    //   30: ifnull +86 -> 116
    //   33: aload_1
    //   34: invokevirtual 93	java/io/InputStream:close	()V
    //   37: aload_3
    //   38: astore_2
    //   39: goto +77 -> 116
    //   42: astore_1
    //   43: aload_1
    //   44: ldc 95
    //   46: ldc 97
    //   48: invokestatic 100	com/amap/api/mapcore2d/cm:a	(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    //   51: aload_3
    //   52: astore_2
    //   53: goto +63 -> 116
    //   56: astore 4
    //   58: goto +27 -> 85
    //   61: astore_2
    //   62: aload_1
    //   63: astore_3
    //   64: goto +57 -> 121
    //   67: astore 4
    //   69: aconst_null
    //   70: astore_2
    //   71: goto +14 -> 85
    //   74: astore_2
    //   75: goto +46 -> 121
    //   78: astore 4
    //   80: aconst_null
    //   81: astore_2
    //   82: aload 5
    //   84: astore_1
    //   85: aload_1
    //   86: astore_3
    //   87: aload 4
    //   89: ldc 95
    //   91: ldc 97
    //   93: invokestatic 100	com/amap/api/mapcore2d/cm:a	(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    //   96: aload_1
    //   97: ifnull +19 -> 116
    //   100: aload_1
    //   101: invokevirtual 93	java/io/InputStream:close	()V
    //   104: goto +12 -> 116
    //   107: astore_1
    //   108: aload_1
    //   109: ldc 95
    //   111: ldc 97
    //   113: invokestatic 100	com/amap/api/mapcore2d/cm:a	(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    //   116: aload_2
    //   117: invokestatic 106	com/amap/api/maps2d/model/BitmapDescriptorFactory:fromBitmap	(Landroid/graphics/Bitmap;)Lcom/amap/api/maps2d/model/BitmapDescriptor;
    //   120: areturn
    //   121: aload_3
    //   122: ifnull +19 -> 141
    //   125: aload_3
    //   126: invokevirtual 93	java/io/InputStream:close	()V
    //   129: goto +12 -> 141
    //   132: astore_1
    //   133: aload_1
    //   134: ldc 95
    //   136: ldc 97
    //   138: invokestatic 100	com/amap/api/mapcore2d/cm:a	(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    //   141: aload_2
    //   142: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	143	0	this	BusLineOverlay
    //   0	143	1	paramString	String
    //   18	35	2	localObject1	Object
    //   61	1	2	localObject2	Object
    //   70	1	2	localObject3	Object
    //   74	1	2	localObject4	Object
    //   81	61	2	localBitmap	android.graphics.Bitmap
    //   4	122	3	localObject5	Object
    //   56	1	4	localIOException1	java.io.IOException
    //   67	1	4	localIOException2	java.io.IOException
    //   78	10	4	localIOException3	java.io.IOException
    //   1	82	5	localObject6	Object
    // Exception table:
    //   from	to	target	type
    //   33	37	42	java/io/IOException
    //   19	27	56	java/io/IOException
    //   14	19	61	finally
    //   19	27	61	finally
    //   14	19	67	java/io/IOException
    //   5	14	74	finally
    //   87	96	74	finally
    //   5	14	78	java/io/IOException
    //   100	104	107	java/io/IOException
    //   125	129	132	java/io/IOException
  }
  
  private LatLngBounds a(List<LatLonPoint> paramList)
  {
    LatLngBounds.Builder localBuilder = LatLngBounds.builder();
    int k = 0;
    while (k < paramList.size())
    {
      localBuilder.include(new LatLng(((LatLonPoint)paramList.get(k)).getLatitude(), ((LatLonPoint)paramList.get(k)).getLongitude()));
      k += 1;
    }
    return localBuilder.build();
  }
  
  private MarkerOptions a(int paramInt)
  {
    MarkerOptions localMarkerOptions = new MarkerOptions().position(new LatLng(((BusStationItem)e.get(paramInt)).getLatLonPoint().getLatitude(), ((BusStationItem)e.get(paramInt)).getLatLonPoint().getLongitude())).title(getTitle(paramInt)).snippet(getSnippet(paramInt));
    if (paramInt == 0)
    {
      localMarkerOptions.icon(getStartBitmapDescriptor());
      return localMarkerOptions;
    }
    if (paramInt == e.size() - 1)
    {
      localMarkerOptions.icon(getEndBitmapDescriptor());
      return localMarkerOptions;
    }
    localMarkerOptions.anchor(0.5F, 0.5F);
    localMarkerOptions.icon(getBusBitmapDescriptor());
    return localMarkerOptions;
  }
  
  private void a()
  {
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
  
  public void addToMap()
  {
    Object localObject = a.a(a.getDirectionsCoordinates());
    d = b.addPolyline(new PolylineOptions().addAll((Iterable)localObject).color(getBusColor()).width(getBuslineWidth()));
    if (e.size() < 1) {
      return;
    }
    int k = 1;
    while (k < e.size() - 1)
    {
      localObject = b.addMarker(a(k));
      c.add(localObject);
      k += 1;
    }
    localObject = b.addMarker(a(0));
    c.add(localObject);
    localObject = b.addMarker(a(e.size() - 1));
    c.add(localObject);
  }
  
  protected BitmapDescriptor getBusBitmapDescriptor()
  {
    h = a("amap_bus.png");
    return h;
  }
  
  protected int getBusColor()
  {
    return Color.parseColor("#537edc");
  }
  
  public int getBusStationIndex(Marker paramMarker)
  {
    int k = 0;
    while (k < c.size())
    {
      if (((Marker)c.get(k)).equals(paramMarker)) {
        return k;
      }
      k += 1;
    }
    return -1;
  }
  
  public BusStationItem getBusStationItem(int paramInt)
  {
    if ((paramInt >= 0) && (paramInt < e.size())) {
      return (BusStationItem)e.get(paramInt);
    }
    return null;
  }
  
  protected float getBuslineWidth()
  {
    return 18.0F;
  }
  
  protected BitmapDescriptor getEndBitmapDescriptor()
  {
    g = a("amap_end.png");
    return g;
  }
  
  protected String getSnippet(int paramInt)
  {
    return "";
  }
  
  protected BitmapDescriptor getStartBitmapDescriptor()
  {
    f = a("amap_start.png");
    return f;
  }
  
  protected String getTitle(int paramInt)
  {
    return ((BusStationItem)e.get(paramInt)).getBusStationName();
  }
  
  public void removeFromMap()
  {
    if (d != null) {
      d.remove();
    }
    Iterator localIterator = c.iterator();
    while (localIterator.hasNext()) {
      ((Marker)localIterator.next()).remove();
    }
    a();
  }
  
  public void zoomToSpan()
  {
    if (b == null) {
      return;
    }
    Object localObject = a.getDirectionsCoordinates();
    if ((localObject != null) && (((List)localObject).size() > 0))
    {
      localObject = a((List)localObject);
      b.moveCamera(CameraUpdateFactory.newLatLngBounds((LatLngBounds)localObject, 5));
    }
  }
}
