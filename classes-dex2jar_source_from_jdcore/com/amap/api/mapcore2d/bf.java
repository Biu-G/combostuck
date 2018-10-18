package com.amap.api.mapcore2d;

import android.graphics.Canvas;
import android.graphics.DashPathEffect;
import android.graphics.Paint;
import android.graphics.Paint.Join;
import android.graphics.Paint.Style;
import android.graphics.Path;
import android.graphics.Point;
import android.os.RemoteException;
import com.amap.api.interfaces.IOverlay;
import com.amap.api.maps2d.model.LatLng;
import com.amap.api.maps2d.model.LatLngBounds;
import com.amap.api.maps2d.model.LatLngBounds.Builder;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

class bf
  implements ag
{
  private y a;
  private float b = 10.0F;
  private int c = -16777216;
  private float d = 0.0F;
  private boolean e = true;
  private boolean f = false;
  private boolean g = false;
  private String h;
  private List<ae> i = new ArrayList();
  private List<LatLng> j = new ArrayList();
  private LatLngBounds k = null;
  
  public bf(y paramY)
  {
    a = paramY;
    try
    {
      h = getId();
      return;
    }
    catch (RemoteException paramY)
    {
      cm.a(paramY, "PolylineDelegateImp", "PolylineDelegateImp");
    }
  }
  
  private List<LatLng> b()
    throws RemoteException
  {
    if (i != null)
    {
      ArrayList localArrayList = new ArrayList();
      Iterator localIterator = i.iterator();
      while (localIterator.hasNext())
      {
        ae localAe = (ae)localIterator.next();
        if (localAe != null)
        {
          s localS = new s();
          a.b(a, b, localS);
          localArrayList.add(new LatLng(b, a));
        }
      }
      return localArrayList;
    }
    return null;
  }
  
  ae a(ae paramAe1, ae paramAe2, ae paramAe3, double paramDouble, int paramInt)
  {
    ae localAe = new ae();
    double d1 = a - a;
    double d2 = b - b;
    double d3 = d2 * d2 / (d1 * d1);
    b = ((int)(paramInt * paramDouble / Math.sqrt(d3 + 1.0D) + b));
    a = ((int)((b - b) * d2 / d1 + a));
    return localAe;
  }
  
  public void a(Canvas paramCanvas)
    throws RemoteException
  {
    if ((i != null) && (i.size() != 0))
    {
      if (b <= 0.0F) {
        return;
      }
      try
      {
        Path localPath = new Path();
        Object localObject = new w(i.get(0)).b, i.get(0)).a);
        Point localPoint = new Point();
        localObject = a.d().a((w)localObject, localPoint);
        localPath.moveTo(x, y);
        int m = 1;
        while (m < i.size())
        {
          localObject = new w(i.get(m)).b, i.get(m)).a);
          localPoint = new Point();
          localObject = a.d().a((w)localObject, localPoint);
          localPath.lineTo(x, y);
          m += 1;
        }
        localObject = new Paint();
        ((Paint)localObject).setColor(getColor());
        ((Paint)localObject).setAntiAlias(true);
        ((Paint)localObject).setStrokeWidth(getWidth());
        ((Paint)localObject).setStyle(Paint.Style.STROKE);
        ((Paint)localObject).setStrokeJoin(Paint.Join.ROUND);
        if (f)
        {
          m = (int)getWidth();
          float f1 = m * 3;
          float f2 = m;
          ((Paint)localObject).setPathEffect(new DashPathEffect(new float[] { f1, f2, f1, f2 }, 1.0F));
        }
        paramCanvas.drawPath(localPath, (Paint)localObject);
        return;
      }
      catch (Throwable paramCanvas)
      {
        cm.a(paramCanvas, "PolylineDelegateImp", "draw");
        return;
      }
    }
  }
  
  void a(LatLng paramLatLng1, LatLng paramLatLng2, List<ae> paramList, LatLngBounds.Builder paramBuilder)
  {
    double d1 = Math.abs(longitude - longitude) * 3.141592653589793D / 180.0D;
    Object localObject = new LatLng((latitude + latitude) / 2.0D, (longitude + longitude) / 2.0D);
    paramBuilder.include(paramLatLng1).include((LatLng)localObject).include(paramLatLng2);
    int m;
    if (latitude > 0.0D) {
      m = 1;
    } else {
      m = -1;
    }
    paramBuilder = new ae();
    a.a(latitude, longitude, paramBuilder);
    paramLatLng1 = new ae();
    a.a(latitude, longitude, paramLatLng1);
    paramLatLng2 = new ae();
    a.a(latitude, longitude, paramLatLng2);
    d1 *= 0.5D;
    double d2 = Math.cos(d1);
    paramLatLng2 = a(paramBuilder, paramLatLng1, paramLatLng2, Math.hypot(a - a, b - b) * 0.5D * Math.tan(d1), m);
    localObject = new ArrayList();
    ((List)localObject).add(paramBuilder);
    ((List)localObject).add(paramLatLng2);
    ((List)localObject).add(paramLatLng1);
    a((List)localObject, paramList, d2);
  }
  
  void a(List<LatLng> paramList)
    throws RemoteException
  {
    if (paramList != null) {}
    for (;;)
    {
      int m;
      LatLng localLatLng;
      try
      {
        if (paramList.size() == 0) {
          return;
        }
        LatLngBounds.Builder localBuilder = LatLngBounds.builder();
        i.clear();
        if (paramList != null)
        {
          localObject1 = null;
          m = 0;
          if (m < paramList.size())
          {
            localLatLng = (LatLng)paramList.get(m);
            localObject2 = localObject1;
            if (localLatLng == null) {
              break label313;
            }
            if (localLatLng.equals(localObject1))
            {
              localObject2 = localObject1;
              break label313;
            }
            if (!g)
            {
              localObject1 = new ae();
              a.a(latitude, longitude, (ae)localObject1);
              i.add(localObject1);
              localBuilder.include(localLatLng);
              break label309;
            }
            if (localObject1 == null) {
              break label309;
            }
            if (Math.abs(longitude - longitude) < 0.01D)
            {
              localObject2 = new ae();
              a.a(latitude, longitude, (ae)localObject2);
              i.add(localObject2);
              localBuilder.include((LatLng)localObject1);
              localObject1 = new ae();
              a.a(latitude, longitude, (ae)localObject1);
              i.add(localObject1);
              localBuilder.include(localLatLng);
              break label309;
            }
            a((LatLng)localObject1, localLatLng, i, localBuilder);
            break label309;
          }
        }
        if (i.size() > 0)
        {
          k = localBuilder.build();
          return;
        }
      }
      catch (Throwable paramList)
      {
        cm.a(paramList, "PolylineDelegateImp", "calLatLng2Geo");
      }
      return;
      return;
      label309:
      Object localObject2 = localLatLng;
      label313:
      m += 1;
      Object localObject1 = localObject2;
    }
  }
  
  void a(List<ae> paramList1, List<ae> paramList2, double paramDouble)
  {
    if (paramList1.size() != 3) {
      return;
    }
    float f1;
    for (int m = 0; m <= 10; m = (int)(f1 + 1.0F))
    {
      f1 = m;
      float f2 = f1 / 10.0F;
      ae localAe = new ae();
      double d3 = 1.0D - f2;
      double d1 = d3 * d3;
      double d2 = get0a;
      d3 = 2.0F * f2 * d3;
      double d4 = get1a;
      f2 *= f2;
      double d5 = get2a * f2;
      double d6 = get0b;
      double d7 = get1b;
      double d8 = get2b * f2;
      double d9 = d1 + d3 * paramDouble + f2;
      a = ((int)((d2 * d1 + d4 * d3 * paramDouble + d5) / d9));
      b = ((int)((d6 * d1 + d7 * d3 * paramDouble + d8) / d9));
      paramList2.add(localAe);
    }
  }
  
  public boolean a()
  {
    LatLngBounds localLatLngBounds = k;
    boolean bool = false;
    if (localLatLngBounds == null) {
      return false;
    }
    localLatLngBounds = a.getMapBounds();
    if (localLatLngBounds == null) {
      return true;
    }
    if ((localLatLngBounds.contains(k)) || (k.intersects(localLatLngBounds))) {
      bool = true;
    }
    return bool;
  }
  
  public void destroy() {}
  
  public boolean equalsRemote(IOverlay paramIOverlay)
    throws RemoteException
  {
    return (equals(paramIOverlay)) || (paramIOverlay.getId().equals(getId()));
  }
  
  public int getColor()
    throws RemoteException
  {
    return c;
  }
  
  public String getId()
    throws RemoteException
  {
    if (h == null) {
      h = v.a("Polyline");
    }
    return h;
  }
  
  public List<LatLng> getPoints()
    throws RemoteException
  {
    if ((!g) && (!f)) {
      return b();
    }
    return j;
  }
  
  public float getWidth()
    throws RemoteException
  {
    return b;
  }
  
  public float getZIndex()
    throws RemoteException
  {
    return d;
  }
  
  public int hashCodeRemote()
    throws RemoteException
  {
    return super.hashCode();
  }
  
  public boolean isDottedLine()
  {
    return f;
  }
  
  public boolean isGeodesic()
  {
    return g;
  }
  
  public boolean isVisible()
    throws RemoteException
  {
    return e;
  }
  
  public void remove()
    throws RemoteException
  {
    a.removeGLOverlay(getId());
  }
  
  public void setColor(int paramInt)
    throws RemoteException
  {
    c = paramInt;
  }
  
  public void setDottedLine(boolean paramBoolean)
  {
    f = paramBoolean;
  }
  
  public void setGeodesic(boolean paramBoolean)
    throws RemoteException
  {
    if (g != paramBoolean) {
      g = paramBoolean;
    }
  }
  
  public void setPoints(List<LatLng> paramList)
    throws RemoteException
  {
    if ((g) || (f)) {
      j = paramList;
    }
    a(paramList);
  }
  
  public void setVisible(boolean paramBoolean)
    throws RemoteException
  {
    e = paramBoolean;
  }
  
  public void setWidth(float paramFloat)
    throws RemoteException
  {
    b = paramFloat;
  }
  
  public void setZIndex(float paramFloat)
    throws RemoteException
  {
    d = paramFloat;
    a.invalidate();
  }
}
