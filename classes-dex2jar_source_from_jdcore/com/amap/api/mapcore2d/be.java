package com.amap.api.mapcore2d;

import android.graphics.Canvas;
import android.graphics.Paint;
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

class be
  implements af
{
  private y a;
  private float b = 0.0F;
  private boolean c = true;
  private String d;
  private float e;
  private int f;
  private int g;
  private List<LatLng> h;
  private List<ae> i = new ArrayList();
  private LatLngBounds j = null;
  
  public be(y paramY)
  {
    a = paramY;
    try
    {
      d = getId();
      return;
    }
    catch (RemoteException paramY)
    {
      cm.a(paramY, "PolygonDelegateImp", "PolygonDelegateImp");
    }
  }
  
  public void a(Canvas paramCanvas)
    throws RemoteException
  {
    if (i != null)
    {
      if (i.size() == 0) {
        return;
      }
      Path localPath = new Path();
      Object localObject = new w(i.get(0)).b, i.get(0)).a);
      Point localPoint = new Point();
      localObject = a.d().a((w)localObject, localPoint);
      localPath.moveTo(x, y);
      int k = 1;
      while (k < i.size())
      {
        localObject = new w(i.get(k)).b, i.get(k)).a);
        localPoint = new Point();
        localObject = a.d().a((w)localObject, localPoint);
        localPath.lineTo(x, y);
        k += 1;
      }
      localObject = new Paint();
      ((Paint)localObject).setColor(getFillColor());
      ((Paint)localObject).setAntiAlias(true);
      localPath.close();
      ((Paint)localObject).setStyle(Paint.Style.FILL);
      paramCanvas.drawPath(localPath, (Paint)localObject);
      ((Paint)localObject).setStyle(Paint.Style.STROKE);
      ((Paint)localObject).setColor(getStrokeColor());
      ((Paint)localObject).setStrokeWidth(getStrokeWidth());
      paramCanvas.drawPath(localPath, (Paint)localObject);
      return;
    }
  }
  
  void a(List<LatLng> paramList)
    throws RemoteException
  {
    LatLngBounds.Builder localBuilder = LatLngBounds.builder();
    i.clear();
    if (paramList != null)
    {
      Object localObject = null;
      Iterator localIterator = paramList.iterator();
      for (paramList = (List<LatLng>)localObject; localIterator.hasNext(); paramList = (List<LatLng>)localObject)
      {
        label30:
        localObject = (LatLng)localIterator.next();
        if ((localObject == null) || (((LatLng)localObject).equals(paramList))) {
          break label30;
        }
        paramList = new ae();
        a.a(latitude, longitude, paramList);
        i.add(paramList);
        localBuilder.include((LatLng)localObject);
      }
      int k = i.size();
      if (k > 1)
      {
        paramList = (ae)i.get(0);
        localObject = i;
        k -= 1;
        localObject = (ae)((List)localObject).get(k);
        if ((a == a) && (b == b)) {
          i.remove(k);
        }
      }
    }
    j = localBuilder.build();
  }
  
  public boolean a()
  {
    LatLngBounds localLatLngBounds = j;
    boolean bool = false;
    if (localLatLngBounds == null) {
      return false;
    }
    localLatLngBounds = a.getMapBounds();
    if (localLatLngBounds == null) {
      return true;
    }
    if ((j.contains(localLatLngBounds)) || (j.intersects(localLatLngBounds))) {
      bool = true;
    }
    return bool;
  }
  
  List<LatLng> b()
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
  
  public boolean contains(LatLng paramLatLng)
    throws RemoteException
  {
    return cm.a(paramLatLng, getPoints());
  }
  
  public void destroy() {}
  
  public boolean equalsRemote(IOverlay paramIOverlay)
    throws RemoteException
  {
    return (equals(paramIOverlay)) || (paramIOverlay.getId().equals(getId()));
  }
  
  public int getFillColor()
    throws RemoteException
  {
    return f;
  }
  
  public String getId()
    throws RemoteException
  {
    if (d == null) {
      d = v.a("Polygon");
    }
    return d;
  }
  
  public List<LatLng> getPoints()
    throws RemoteException
  {
    return b();
  }
  
  public int getStrokeColor()
    throws RemoteException
  {
    return g;
  }
  
  public float getStrokeWidth()
    throws RemoteException
  {
    return e;
  }
  
  public float getZIndex()
    throws RemoteException
  {
    return b;
  }
  
  public int hashCodeRemote()
    throws RemoteException
  {
    return super.hashCode();
  }
  
  public boolean isVisible()
    throws RemoteException
  {
    return c;
  }
  
  public void remove()
    throws RemoteException
  {
    a.removeGLOverlay(getId());
  }
  
  public void setFillColor(int paramInt)
    throws RemoteException
  {
    f = paramInt;
  }
  
  public void setPoints(List<LatLng> paramList)
    throws RemoteException
  {
    h = paramList;
    a(paramList);
  }
  
  public void setStrokeColor(int paramInt)
    throws RemoteException
  {
    g = paramInt;
  }
  
  public void setStrokeWidth(float paramFloat)
    throws RemoteException
  {
    e = paramFloat;
  }
  
  public void setVisible(boolean paramBoolean)
    throws RemoteException
  {
    c = paramBoolean;
  }
  
  public void setZIndex(float paramFloat)
    throws RemoteException
  {
    b = paramFloat;
    a.invalidate();
  }
}
