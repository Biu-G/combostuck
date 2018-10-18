package com.amap.api.mapcore2d;

import android.graphics.Canvas;
import android.os.Handler;
import android.os.RemoteException;
import android.util.Log;
import com.amap.api.maps2d.model.CircleOptions;
import com.amap.api.maps2d.model.GroundOverlayOptions;
import com.amap.api.maps2d.model.PolygonOptions;
import com.amap.api.maps2d.model.PolylineOptions;
import java.util.Arrays;
import java.util.Comparator;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;

class v
{
  private static int b;
  y a;
  private CopyOnWriteArrayList<ad> c = new CopyOnWriteArrayList();
  private a d = new a(null);
  private Handler e = new Handler();
  private Runnable f = new Runnable()
  {
    /* Error */
    public void run()
    {
      // Byte code:
      //   0: aload_0
      //   1: monitorenter
      //   2: aload_0
      //   3: getfield 14	com/amap/api/mapcore2d/v$1:a	Lcom/amap/api/mapcore2d/v;
      //   6: invokestatic 24	com/amap/api/mapcore2d/v:a	(Lcom/amap/api/mapcore2d/v;)Ljava/util/concurrent/CopyOnWriteArrayList;
      //   9: invokevirtual 30	java/util/concurrent/CopyOnWriteArrayList:toArray	()[Ljava/lang/Object;
      //   12: astore_3
      //   13: aload_3
      //   14: aload_0
      //   15: getfield 14	com/amap/api/mapcore2d/v$1:a	Lcom/amap/api/mapcore2d/v;
      //   18: invokestatic 34	com/amap/api/mapcore2d/v:b	(Lcom/amap/api/mapcore2d/v;)Lcom/amap/api/mapcore2d/v$a;
      //   21: invokestatic 40	java/util/Arrays:sort	([Ljava/lang/Object;Ljava/util/Comparator;)V
      //   24: aload_0
      //   25: getfield 14	com/amap/api/mapcore2d/v$1:a	Lcom/amap/api/mapcore2d/v;
      //   28: invokestatic 24	com/amap/api/mapcore2d/v:a	(Lcom/amap/api/mapcore2d/v;)Ljava/util/concurrent/CopyOnWriteArrayList;
      //   31: invokevirtual 43	java/util/concurrent/CopyOnWriteArrayList:clear	()V
      //   34: aload_3
      //   35: arraylength
      //   36: istore_2
      //   37: iconst_0
      //   38: istore_1
      //   39: iload_1
      //   40: iload_2
      //   41: if_icmpge +44 -> 85
      //   44: aload_3
      //   45: iload_1
      //   46: aaload
      //   47: astore 4
      //   49: aload_0
      //   50: getfield 14	com/amap/api/mapcore2d/v$1:a	Lcom/amap/api/mapcore2d/v;
      //   53: invokestatic 24	com/amap/api/mapcore2d/v:a	(Lcom/amap/api/mapcore2d/v;)Ljava/util/concurrent/CopyOnWriteArrayList;
      //   56: aload 4
      //   58: checkcast 45	com/amap/api/mapcore2d/ad
      //   61: invokevirtual 49	java/util/concurrent/CopyOnWriteArrayList:add	(Ljava/lang/Object;)Z
      //   64: pop
      //   65: iload_1
      //   66: iconst_1
      //   67: iadd
      //   68: istore_1
      //   69: goto -30 -> 39
      //   72: astore_3
      //   73: goto +15 -> 88
      //   76: astore_3
      //   77: aload_3
      //   78: ldc 51
      //   80: ldc 53
      //   82: invokestatic 58	com/amap/api/mapcore2d/dg:b	(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
      //   85: aload_0
      //   86: monitorexit
      //   87: return
      //   88: aload_0
      //   89: monitorexit
      //   90: aload_3
      //   91: athrow
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	92	0	this	1
      //   38	31	1	i	int
      //   36	6	2	j	int
      //   12	33	3	arrayOfObject	Object[]
      //   72	1	3	localObject1	Object
      //   76	15	3	localThrowable	Throwable
      //   47	10	4	localObject2	Object
      // Exception table:
      //   from	to	target	type
      //   2	37	72	finally
      //   49	65	72	finally
      //   77	85	72	finally
      //   2	37	76	java/lang/Throwable
      //   49	65	76	java/lang/Throwable
    }
  };
  
  public v(y paramY)
  {
    a = paramY;
  }
  
  public static String a(String paramString)
  {
    try
    {
      b += 1;
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append(paramString);
      localStringBuilder.append(b);
      paramString = localStringBuilder.toString();
      return paramString;
    }
    finally
    {
      paramString = finally;
      throw paramString;
    }
  }
  
  private ad c(String paramString)
    throws RemoteException
  {
    Iterator localIterator = c.iterator();
    while (localIterator.hasNext())
    {
      ad localAd = (ad)localIterator.next();
      if ((localAd != null) && (localAd.getId().equals(paramString))) {
        return localAd;
      }
    }
    return null;
  }
  
  private void c()
  {
    e.removeCallbacks(f);
    e.postDelayed(f, 10L);
  }
  
  public aa a(GroundOverlayOptions paramGroundOverlayOptions)
    throws RemoteException
  {
    if (paramGroundOverlayOptions == null) {
      return null;
    }
    try
    {
      x localX = new x(a);
      localX.setAnchor(paramGroundOverlayOptions.getAnchorU(), paramGroundOverlayOptions.getAnchorV());
      localX.setDimensions(paramGroundOverlayOptions.getWidth(), paramGroundOverlayOptions.getHeight());
      localX.setImage(paramGroundOverlayOptions.getImage());
      localX.setPosition(paramGroundOverlayOptions.getLocation());
      localX.setPositionFromBounds(paramGroundOverlayOptions.getBounds());
      localX.setBearing(paramGroundOverlayOptions.getBearing());
      localX.setTransparency(paramGroundOverlayOptions.getTransparency());
      localX.setVisible(paramGroundOverlayOptions.isVisible());
      localX.setZIndex(paramGroundOverlayOptions.getZIndex());
      a(localX);
      return localX;
    }
    finally
    {
      paramGroundOverlayOptions = finally;
      throw paramGroundOverlayOptions;
    }
  }
  
  public af a(PolygonOptions paramPolygonOptions)
    throws RemoteException
  {
    if (paramPolygonOptions == null) {
      return null;
    }
    try
    {
      be localBe = new be(a);
      localBe.setFillColor(paramPolygonOptions.getFillColor());
      localBe.setPoints(paramPolygonOptions.getPoints());
      localBe.setVisible(paramPolygonOptions.isVisible());
      localBe.setStrokeWidth(paramPolygonOptions.getStrokeWidth());
      localBe.setZIndex(paramPolygonOptions.getZIndex());
      localBe.setStrokeColor(paramPolygonOptions.getStrokeColor());
      a(localBe);
      return localBe;
    }
    finally
    {
      paramPolygonOptions = finally;
      throw paramPolygonOptions;
    }
  }
  
  public ag a(PolylineOptions paramPolylineOptions)
    throws RemoteException
  {
    if (paramPolylineOptions == null) {
      return null;
    }
    try
    {
      bf localBf = new bf(a);
      localBf.setColor(paramPolylineOptions.getColor());
      localBf.setDottedLine(paramPolylineOptions.isDottedLine());
      localBf.setGeodesic(paramPolylineOptions.isGeodesic());
      localBf.setPoints(paramPolylineOptions.getPoints());
      localBf.setVisible(paramPolylineOptions.isVisible());
      localBf.setWidth(paramPolylineOptions.getWidth());
      localBf.setZIndex(paramPolylineOptions.getZIndex());
      a(localBf);
      return localBf;
    }
    finally
    {
      paramPolylineOptions = finally;
      throw paramPolylineOptions;
    }
  }
  
  public z a(CircleOptions paramCircleOptions)
    throws RemoteException
  {
    if (paramCircleOptions == null) {
      return null;
    }
    try
    {
      o localO = new o(a);
      localO.setFillColor(paramCircleOptions.getFillColor());
      localO.setCenter(paramCircleOptions.getCenter());
      localO.setVisible(paramCircleOptions.isVisible());
      localO.setStrokeWidth(paramCircleOptions.getStrokeWidth());
      localO.setZIndex(paramCircleOptions.getZIndex());
      localO.setStrokeColor(paramCircleOptions.getStrokeColor());
      localO.setRadius(paramCircleOptions.getRadius());
      a(localO);
      return localO;
    }
    finally
    {
      paramCircleOptions = finally;
      throw paramCircleOptions;
    }
  }
  
  public void a()
  {
    Iterator localIterator = c.iterator();
    while (localIterator.hasNext()) {
      ((ad)localIterator.next()).destroy();
    }
    try
    {
      localIterator = c.iterator();
      while (localIterator.hasNext()) {
        ((ad)localIterator.next()).destroy();
      }
      c.clear();
      return;
    }
    catch (Exception localException)
    {
      cm.a(localException, "GLOverlayLayer", "clear");
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("GLOverlayLayer clear erro");
      localStringBuilder.append(localException.getMessage());
      Log.d("amapApi", localStringBuilder.toString());
    }
  }
  
  public void a(Canvas paramCanvas)
  {
    Object localObject1 = c.toArray();
    Arrays.sort((Object[])localObject1, d);
    c.clear();
    int j = localObject1.length;
    int i = 0;
    while (i < j)
    {
      Object localObject2 = localObject1[i];
      try
      {
        c.add((ad)localObject2);
      }
      catch (Throwable localThrowable)
      {
        cm.a(localThrowable, "GLOverlayLayer", "draw");
      }
      i += 1;
    }
    i = c.size();
    localObject1 = c.iterator();
    while (((Iterator)localObject1).hasNext())
    {
      ad localAd = (ad)((Iterator)localObject1).next();
      try
      {
        if (localAd.isVisible()) {
          if (i > 20)
          {
            if (localAd.a()) {
              localAd.a(paramCanvas);
            }
          }
          else {
            localAd.a(paramCanvas);
          }
        }
      }
      catch (RemoteException localRemoteException)
      {
        cm.a(localRemoteException, "GLOverlayLayer", "draw");
      }
    }
  }
  
  public void a(ad paramAd)
    throws RemoteException
  {
    try
    {
      b(paramAd.getId());
      c.add(paramAd);
      c();
      return;
    }
    catch (Throwable paramAd)
    {
      cm.a(paramAd, "GLOverlayLayer", "addOverlay");
    }
  }
  
  public void b()
  {
    try
    {
      Iterator localIterator = c.iterator();
      while (localIterator.hasNext()) {
        ((ad)localIterator.next()).destroy();
      }
      a();
      return;
    }
    catch (Exception localException)
    {
      cm.a(localException, "GLOverlayLayer", "destory");
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("GLOverlayLayer destory erro");
      localStringBuilder.append(localException.getMessage());
      Log.d("amapApi", localStringBuilder.toString());
    }
  }
  
  public boolean b(String paramString)
    throws RemoteException
  {
    paramString = c(paramString);
    if (paramString != null) {
      return c.remove(paramString);
    }
    return false;
  }
  
  private class a
    implements Comparator<Object>
  {
    private a() {}
    
    public int compare(Object paramObject1, Object paramObject2)
    {
      paramObject1 = (ad)paramObject1;
      paramObject2 = (ad)paramObject2;
      if ((paramObject1 != null) && (paramObject2 != null)) {
        try
        {
          if (paramObject1.getZIndex() > paramObject2.getZIndex()) {
            return 1;
          }
          float f1 = paramObject1.getZIndex();
          float f2 = paramObject2.getZIndex();
          if (f1 < f2) {
            return -1;
          }
        }
        catch (Exception paramObject1)
        {
          cm.a(paramObject1, "GLOverlayLayer", "compare");
        }
      }
      return 0;
    }
  }
}
