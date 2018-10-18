package com.amap.api.mapcore2d;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Point;
import android.graphics.RectF;
import android.os.RemoteException;
import android.util.Log;
import com.amap.api.interfaces.IOverlay;
import com.amap.api.maps2d.model.BitmapDescriptor;
import com.amap.api.maps2d.model.LatLng;
import com.amap.api.maps2d.model.LatLngBounds;

class x
  implements aa
{
  private final double a = 0.01745329251994329D;
  private final double b = 6371000.79D;
  private y c;
  private BitmapDescriptor d;
  private LatLng e;
  private float f;
  private float g;
  private LatLngBounds h;
  private float i;
  private float j;
  private boolean k = true;
  private float l = 0.0F;
  private float m = 0.5F;
  private float n = 0.5F;
  private String o;
  private Bitmap p;
  
  x(y paramY)
  {
    c = paramY;
    try
    {
      o = getId();
      return;
    }
    catch (RemoteException paramY)
    {
      cm.a(paramY, "GroundOverlayDelegateImp", "GroundOverlayDelegateImp");
    }
  }
  
  private w a(LatLng paramLatLng)
  {
    if (paramLatLng == null) {
      return null;
    }
    return new w((int)(latitude * 1000000.0D), (int)(longitude * 1000000.0D));
  }
  
  private void c()
  {
    double d1 = f / (Math.cos(e.latitude * 0.01745329251994329D) * 6371000.79D * 0.01745329251994329D);
    double d2 = g / 111194.94043265979D;
    try
    {
      h = new LatLngBounds(new LatLng(e.latitude - (1.0F - n) * d2, e.longitude - m * d1), new LatLng(e.latitude + n * d2, e.longitude + (1.0F - m) * d1));
      return;
    }
    catch (Throwable localThrowable)
    {
      localThrowable.printStackTrace();
    }
  }
  
  private void d()
  {
    LatLng localLatLng1 = h.southwest;
    LatLng localLatLng2 = h.northeast;
    e = new LatLng(latitude + (1.0F - n) * (latitude - latitude), longitude + m * (longitude - longitude));
    f = ((float)(Math.cos(e.latitude * 0.01745329251994329D) * 6371000.79D * (longitude - longitude) * 0.01745329251994329D));
    g = ((float)((latitude - latitude) * 6371000.79D * 0.01745329251994329D));
  }
  
  public void a(Canvas paramCanvas)
    throws RemoteException
  {
    if ((k) && ((e != null) || (h != null)))
    {
      if (d == null) {
        return;
      }
      b();
      if ((f == 0.0F) && (g == 0.0F)) {
        return;
      }
      p = d.getBitmap();
      if ((p != null) && (!p.isRecycled()))
      {
        Object localObject1 = h.southwest;
        Object localObject3 = h.northeast;
        Object localObject2 = e;
        localObject1 = a((LatLng)localObject1);
        localObject3 = a((LatLng)localObject3);
        w localW = a((LatLng)localObject2);
        Point localPoint1 = new Point();
        Point localPoint2 = new Point();
        localObject2 = new Point();
        c.d().a((w)localObject1, localPoint1);
        c.d().a((w)localObject3, localPoint2);
        c.d().a(localW, (Point)localObject2);
        localObject1 = new Paint();
        localObject3 = new RectF(x, y, x, y);
        ((Paint)localObject1).setAlpha((int)(255.0F - l * 255.0F));
        ((Paint)localObject1).setFilterBitmap(true);
        paramCanvas.save();
        paramCanvas.rotate(i, x, y);
        paramCanvas.drawBitmap(p, null, (RectF)localObject3, (Paint)localObject1);
        paramCanvas.restore();
      }
      return;
    }
  }
  
  public boolean a()
  {
    LatLngBounds localLatLngBounds = h;
    boolean bool = false;
    if (localLatLngBounds == null) {
      return false;
    }
    localLatLngBounds = c.getMapBounds();
    if (localLatLngBounds == null) {
      return true;
    }
    if ((localLatLngBounds.contains(h)) || (h.intersects(localLatLngBounds))) {
      bool = true;
    }
    return bool;
  }
  
  public void b()
    throws RemoteException
  {
    if (e == null)
    {
      d();
      return;
    }
    if (h == null) {
      c();
    }
  }
  
  public void destroy()
  {
    try
    {
      remove();
      if (d != null)
      {
        Bitmap localBitmap = d.getBitmap();
        if (localBitmap != null)
        {
          localBitmap.recycle();
          d = null;
        }
      }
      e = null;
      h = null;
      return;
    }
    catch (Exception localException)
    {
      cm.a(localException, "GroundOverlayDelegateImp", "destroy");
      Log.d("destroy erro", "GroundOverlayDelegateImp destroy");
    }
  }
  
  public boolean equalsRemote(IOverlay paramIOverlay)
    throws RemoteException
  {
    return (equals(paramIOverlay)) || (paramIOverlay.getId().equals(getId()));
  }
  
  public float getBearing()
    throws RemoteException
  {
    return i;
  }
  
  public LatLngBounds getBounds()
    throws RemoteException
  {
    return h;
  }
  
  public float getHeight()
    throws RemoteException
  {
    return g;
  }
  
  public String getId()
    throws RemoteException
  {
    if (o == null) {
      o = v.a("GroundOverlay");
    }
    return o;
  }
  
  public LatLng getPosition()
    throws RemoteException
  {
    return e;
  }
  
  public float getTransparency()
    throws RemoteException
  {
    return l;
  }
  
  public float getWidth()
    throws RemoteException
  {
    return f;
  }
  
  public float getZIndex()
    throws RemoteException
  {
    return j;
  }
  
  public int hashCodeRemote()
    throws RemoteException
  {
    return super.hashCode();
  }
  
  public boolean isVisible()
    throws RemoteException
  {
    return k;
  }
  
  public void remove()
    throws RemoteException
  {
    c.removeGLOverlay(getId());
  }
  
  public void setAnchor(float paramFloat1, float paramFloat2)
    throws RemoteException
  {
    m = paramFloat1;
    n = paramFloat2;
  }
  
  public void setBearing(float paramFloat)
    throws RemoteException
  {
    paramFloat = (-paramFloat % 360.0F + 360.0F) % 360.0F;
    if (Double.doubleToLongBits(i) != Double.doubleToLongBits(paramFloat))
    {
      i = paramFloat;
      return;
    }
    i = paramFloat;
  }
  
  public void setDimensions(float paramFloat)
    throws RemoteException
  {
    if (paramFloat <= 0.0F) {
      Log.w("GroundOverlayDelegateImp", "Width must be non-negative");
    }
    if (f != paramFloat)
    {
      f = paramFloat;
      g = paramFloat;
      return;
    }
    f = paramFloat;
    g = paramFloat;
  }
  
  public void setDimensions(float paramFloat1, float paramFloat2)
    throws RemoteException
  {
    if ((paramFloat1 <= 0.0F) || (paramFloat2 <= 0.0F)) {
      Log.w("GroundOverlayDelegateImp", "Width and Height must be non-negative");
    }
    if ((f != paramFloat1) && (g != paramFloat2))
    {
      f = paramFloat1;
      g = paramFloat2;
      return;
    }
    f = paramFloat1;
    g = paramFloat2;
  }
  
  public void setImage(BitmapDescriptor paramBitmapDescriptor)
    throws RemoteException
  {
    d = paramBitmapDescriptor;
  }
  
  public void setPosition(LatLng paramLatLng)
    throws RemoteException
  {
    if ((e != null) && (!e.equals(paramLatLng)))
    {
      e = paramLatLng;
      c();
      return;
    }
    e = paramLatLng;
  }
  
  public void setPositionFromBounds(LatLngBounds paramLatLngBounds)
    throws RemoteException
  {
    if ((h != null) && (!h.equals(paramLatLngBounds)))
    {
      h = paramLatLngBounds;
      d();
      return;
    }
    h = paramLatLngBounds;
  }
  
  public void setTransparency(float paramFloat)
    throws RemoteException
  {
    if (paramFloat < 0.0F) {
      Log.w("GroundOverlayDelegateImp", "Transparency must be in the range [0..1]");
    }
    l = paramFloat;
  }
  
  public void setVisible(boolean paramBoolean)
    throws RemoteException
  {
    k = paramBoolean;
    c.postInvalidate();
  }
  
  public void setZIndex(float paramFloat)
    throws RemoteException
  {
    j = paramFloat;
    c.postInvalidate();
  }
}
