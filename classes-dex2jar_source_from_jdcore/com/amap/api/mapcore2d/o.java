package com.amap.api.mapcore2d;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.graphics.Point;
import android.os.RemoteException;
import com.amap.api.interfaces.IOverlay;
import com.amap.api.maps2d.AMapUtils;
import com.amap.api.maps2d.model.LatLng;

class o
  implements z
{
  private LatLng a = null;
  private double b = 0.0D;
  private float c = 10.0F;
  private int d = -16777216;
  private int e = 0;
  private float f = 0.0F;
  private boolean g = true;
  private String h;
  private y i;
  
  public o(y paramY)
  {
    i = paramY;
    try
    {
      h = getId();
      return;
    }
    catch (RemoteException paramY)
    {
      cm.a(paramY, "CircleDelegateImp", "CircleDelegateIme");
    }
  }
  
  public void a(Canvas paramCanvas)
    throws RemoteException
  {
    if ((getCenter() != null) && (b > 0.0D))
    {
      if (!isVisible()) {
        return;
      }
      try
      {
        float f1 = i.a().b.a((float)getRadius());
        Object localObject = new w((int)(a.latitude * 1000000.0D), (int)(a.longitude * 1000000.0D));
        Point localPoint = new Point();
        i.d().a((w)localObject, localPoint);
        localObject = new Paint();
        ((Paint)localObject).setColor(getFillColor());
        ((Paint)localObject).setAntiAlias(true);
        ((Paint)localObject).setStyle(Paint.Style.FILL);
        paramCanvas.drawCircle(x, y, f1, (Paint)localObject);
        ((Paint)localObject).setColor(getStrokeColor());
        ((Paint)localObject).setStyle(Paint.Style.STROKE);
        ((Paint)localObject).setStrokeWidth(getStrokeWidth());
        paramCanvas.drawCircle(x, y, f1, (Paint)localObject);
        return;
      }
      catch (Throwable paramCanvas)
      {
        cm.a(paramCanvas, "CircleDelegateImp", "draw");
        return;
      }
    }
  }
  
  public boolean a()
  {
    return true;
  }
  
  public boolean contains(LatLng paramLatLng)
    throws RemoteException
  {
    return b >= AMapUtils.calculateLineDistance(a, paramLatLng);
  }
  
  public void destroy()
  {
    a = null;
  }
  
  public boolean equalsRemote(IOverlay paramIOverlay)
    throws RemoteException
  {
    return (equals(paramIOverlay)) || (paramIOverlay.getId().equals(getId()));
  }
  
  public LatLng getCenter()
    throws RemoteException
  {
    return a;
  }
  
  public int getFillColor()
    throws RemoteException
  {
    return e;
  }
  
  public String getId()
    throws RemoteException
  {
    if (h == null) {
      h = v.a("Circle");
    }
    return h;
  }
  
  public double getRadius()
    throws RemoteException
  {
    return b;
  }
  
  public int getStrokeColor()
    throws RemoteException
  {
    return d;
  }
  
  public float getStrokeWidth()
    throws RemoteException
  {
    return c;
  }
  
  public float getZIndex()
    throws RemoteException
  {
    return f;
  }
  
  public int hashCodeRemote()
    throws RemoteException
  {
    return 0;
  }
  
  public boolean isVisible()
    throws RemoteException
  {
    return g;
  }
  
  public void remove()
    throws RemoteException
  {
    i.removeGLOverlay(getId());
    i.postInvalidate();
  }
  
  public void setCenter(LatLng paramLatLng)
    throws RemoteException
  {
    a = paramLatLng;
  }
  
  public void setFillColor(int paramInt)
    throws RemoteException
  {
    e = paramInt;
  }
  
  public void setRadius(double paramDouble)
    throws RemoteException
  {
    b = paramDouble;
  }
  
  public void setStrokeColor(int paramInt)
    throws RemoteException
  {
    d = paramInt;
  }
  
  public void setStrokeWidth(float paramFloat)
    throws RemoteException
  {
    c = paramFloat;
  }
  
  public void setVisible(boolean paramBoolean)
    throws RemoteException
  {
    g = paramBoolean;
    i.postInvalidate();
  }
  
  public void setZIndex(float paramFloat)
    throws RemoteException
  {
    f = paramFloat;
    i.invalidate();
  }
}
