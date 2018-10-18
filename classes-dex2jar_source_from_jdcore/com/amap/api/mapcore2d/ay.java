package com.amap.api.mapcore2d;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Point;
import android.graphics.Rect;
import android.os.RemoteException;
import android.util.Log;
import com.amap.api.interfaces.IMarker;
import com.amap.api.maps2d.Projection;
import com.amap.api.maps2d.model.BitmapDescriptor;
import com.amap.api.maps2d.model.BitmapDescriptorFactory;
import com.amap.api.maps2d.model.LatLng;
import com.amap.api.maps2d.model.MarkerOptions;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;

class ay
  implements ab
{
  private static int a;
  private int b = 0;
  private float c = 0.0F;
  private CopyOnWriteArrayList<BitmapDescriptor> d = null;
  private int e = 20;
  private String f;
  private LatLng g;
  private LatLng h;
  private String i;
  private String j;
  private float k = 0.5F;
  private float l = 1.0F;
  private boolean m = false;
  private boolean n = true;
  private at o;
  private Object p;
  private boolean q = false;
  private a r;
  private boolean s = false;
  private int t;
  private int u;
  private float v;
  private int w;
  
  public ay(MarkerOptions paramMarkerOptions, at paramAt)
  {
    o = paramAt;
    q = paramMarkerOptions.isGps();
    v = paramMarkerOptions.getZIndex();
    if (paramMarkerOptions.getPosition() != null)
    {
      if (q) {
        try
        {
          paramAt = fg.a(getPositionlongitude, getPositionlatitude);
          h = new LatLng(paramAt[1], paramAt[0]);
        }
        catch (Exception paramAt)
        {
          cm.a(paramAt, "MarkerDelegateImp", "MarkerDelegateImp");
          h = paramMarkerOptions.getPosition();
        }
      }
      g = paramMarkerOptions.getPosition();
    }
    k = paramMarkerOptions.getAnchorU();
    l = paramMarkerOptions.getAnchorV();
    n = paramMarkerOptions.isVisible();
    j = paramMarkerOptions.getSnippet();
    i = paramMarkerOptions.getTitle();
    m = paramMarkerOptions.isDraggable();
    e = paramMarkerOptions.getPeriod();
    f = getId();
    a(paramMarkerOptions.getIcons());
    if ((d != null) && (d.size() == 0)) {
      a(paramMarkerOptions.getIcon());
    }
  }
  
  private ae a(float paramFloat1, float paramFloat2)
  {
    float f1 = (float)(c * 3.141592653589793D / 180.0D);
    ae localAe = new ae();
    double d1 = paramFloat1;
    double d2 = f1;
    double d3 = Math.cos(d2);
    double d4 = paramFloat2;
    a = ((int)(d3 * d1 + Math.sin(d2) * d4));
    b = ((int)(d4 * Math.cos(d2) - d1 * Math.sin(d2)));
    return localAe;
  }
  
  private static String a(String paramString)
  {
    a += 1;
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(paramString);
    localStringBuilder.append(a);
    return localStringBuilder.toString();
  }
  
  private void a(BitmapDescriptor paramBitmapDescriptor)
  {
    if (paramBitmapDescriptor != null)
    {
      c();
      d.add(paramBitmapDescriptor.clone());
    }
    o.a().postInvalidate();
  }
  
  public Rect a()
  {
    ae localAe1 = e();
    if (localAe1 == null) {
      return new Rect(0, 0, 0, 0);
    }
    try
    {
      int i1 = getWidth();
      int i2 = getHeight();
      Rect localRect = new Rect();
      if (c == 0.0F)
      {
        f2 = b;
        f1 = i2;
        top = ((int)(f2 - l * f1));
        f2 = a;
        f3 = k;
        f4 = i1;
        left = ((int)(f2 - f3 * f4));
        bottom = ((int)(b + f1 * (1.0F - l)));
        right = ((int)(a + (1.0F - k) * f4));
        return localRect;
      }
      float f1 = -k;
      float f2 = i1;
      float f3 = l;
      float f4 = i2;
      ae localAe2 = a(f1 * f2, (f3 - 1.0F) * f4);
      ae localAe3 = a(-k * f2, l * f4);
      ae localAe4 = a((1.0F - k) * f2, l * f4);
      ae localAe5 = a((1.0F - k) * f2, (l - 1.0F) * f4);
      top = (b - Math.max(b, Math.max(b, Math.max(b, b))));
      left = (a + Math.min(a, Math.min(a, Math.min(a, a))));
      bottom = (b - Math.min(b, Math.min(b, Math.min(b, b))));
      right = (a + Math.max(a, Math.max(a, Math.max(a, a))));
      return localRect;
    }
    catch (Throwable localThrowable)
    {
      cm.a(localThrowable, "MarkerDelegateImp", "getRect");
    }
    return new Rect(0, 0, 0, 0);
  }
  
  public void a(Canvas paramCanvas, y paramY)
  {
    if ((n) && (getPosition() != null))
    {
      if (f() == null) {
        return;
      }
      ae localAe;
      if (isViewMode()) {
        localAe = new ae(t, u);
      } else {
        localAe = e();
      }
      paramY = getIcons();
      if (paramY == null) {
        return;
      }
      if (paramY.size() > 1) {
        paramY = ((BitmapDescriptor)paramY.get(b)).getBitmap();
      } else if (paramY.size() == 1) {
        paramY = ((BitmapDescriptor)paramY.get(0)).getBitmap();
      } else {
        paramY = null;
      }
      if ((paramY != null) && (!paramY.isRecycled()))
      {
        paramCanvas.save();
        paramCanvas.rotate(c, a, b);
        paramCanvas.drawBitmap(paramY, a - g() * paramY.getWidth(), b - h() * paramY.getHeight(), null);
        paramCanvas.restore();
      }
      return;
    }
  }
  
  public void a(LatLng paramLatLng)
  {
    if (q) {
      h = paramLatLng;
    } else {
      g = paramLatLng;
    }
    try
    {
      paramLatLng = o.a().getAMapProjection().toScreenLocation(paramLatLng);
      t = x;
      u = y;
      return;
    }
    catch (Throwable paramLatLng)
    {
      cm.a(paramLatLng, "MarkerDelegateImp", "setOffSetPosition");
    }
  }
  
  public void a(ArrayList<BitmapDescriptor> paramArrayList)
  {
    c();
    if (paramArrayList != null)
    {
      Iterator localIterator = paramArrayList.iterator();
      while (localIterator.hasNext())
      {
        BitmapDescriptor localBitmapDescriptor = (BitmapDescriptor)localIterator.next();
        if (localBitmapDescriptor != null) {
          d.add(localBitmapDescriptor.clone());
        }
      }
      if ((paramArrayList.size() > 1) && (r == null))
      {
        r = new a(null);
        r.start();
      }
    }
    o.a().postInvalidate();
  }
  
  public s b()
  {
    s localS = new s();
    if ((d != null) && (d.size() != 0))
    {
      a = (getWidth() * k);
      b = (getHeight() * l);
    }
    return localS;
  }
  
  void c()
  {
    if (d == null)
    {
      d = new CopyOnWriteArrayList();
      return;
    }
    d.clear();
  }
  
  public ae d()
  {
    if (getPosition() == null) {
      return null;
    }
    ae localAe = new ae();
    try
    {
      w localW;
      if (q) {
        localW = new w((int)(getRealPositionlatitude * 1000000.0D), (int)(getRealPositionlongitude * 1000000.0D));
      } else {
        localW = new w((int)(getPositionlatitude * 1000000.0D), (int)(getPositionlongitude * 1000000.0D));
      }
      Point localPoint = new Point();
      o.a().d().a(localW, localPoint);
      a = x;
      b = y;
      return localAe;
    }
    catch (Throwable localThrowable)
    {
      localThrowable.printStackTrace();
    }
    return localAe;
  }
  
  public void destroy()
  {
    try
    {
      if (d == null)
      {
        g = null;
        p = null;
        r = null;
        return;
      }
      Iterator localIterator = d.iterator();
      while (localIterator.hasNext())
      {
        Object localObject = (BitmapDescriptor)localIterator.next();
        if (localObject != null)
        {
          localObject = ((BitmapDescriptor)localObject).getBitmap();
          if (localObject != null) {
            ((Bitmap)localObject).recycle();
          }
        }
      }
      d = null;
      g = null;
      p = null;
    }
    catch (Exception localException)
    {
      cm.a(localException, "MarkerDelegateImp", "destroy");
      Log.d("destroy erro", "MarkerDelegateImp destroy");
    }
    r = null;
    if ((o != null) && (o.a != null)) {
      o.a.invalidate();
    }
  }
  
  public ae e()
  {
    ae localAe = d();
    if (localAe == null) {
      return null;
    }
    return localAe;
  }
  
  public boolean equalsRemote(IMarker paramIMarker)
  {
    return (paramIMarker != null) && ((equals(paramIMarker)) || (paramIMarker.getId().equals(getId())));
  }
  
  public BitmapDescriptor f()
  {
    if (d == null) {
      return null;
    }
    if (d.size() == 0)
    {
      c();
      d.add(BitmapDescriptorFactory.defaultMarker());
    }
    else if (d.get(0) == null)
    {
      d.clear();
      return f();
    }
    return (BitmapDescriptor)d.get(0);
  }
  
  public float g()
  {
    return k;
  }
  
  public int getAddIndex()
  {
    return w;
  }
  
  public int getHeight()
  {
    if (f() != null) {
      return f().getHeight();
    }
    return 0;
  }
  
  public ArrayList<BitmapDescriptor> getIcons()
  {
    if ((d != null) && (d.size() > 0))
    {
      ArrayList localArrayList = new ArrayList();
      Iterator localIterator = d.iterator();
      while (localIterator.hasNext())
      {
        BitmapDescriptor localBitmapDescriptor = (BitmapDescriptor)localIterator.next();
        if (localBitmapDescriptor != null) {
          localArrayList.add(localBitmapDescriptor);
        }
      }
      return localArrayList;
    }
    return null;
  }
  
  public String getId()
  {
    if (f == null) {
      f = a("Marker");
    }
    return f;
  }
  
  public Object getObject()
  {
    return p;
  }
  
  public int getPeriod()
    throws RemoteException
  {
    return e;
  }
  
  public LatLng getPosition()
  {
    if (s)
    {
      s localS = new s();
      o.a.a(t, u, localS);
      return new LatLng(b, a);
    }
    return g;
  }
  
  public LatLng getRealPosition()
  {
    if (s)
    {
      s localS = new s();
      o.a.a(t, u, localS);
      return new LatLng(b, a);
    }
    if (q) {
      return h;
    }
    return g;
  }
  
  public String getSnippet()
  {
    return j;
  }
  
  public String getTitle()
  {
    return i;
  }
  
  public int getWidth()
  {
    if (f() != null) {
      return f().getWidth();
    }
    return 0;
  }
  
  public float getZIndex()
  {
    return v;
  }
  
  public float h()
  {
    return l;
  }
  
  public int hashCodeRemote()
  {
    return super.hashCode();
  }
  
  public void hideInfoWindow()
  {
    if (isInfoWindowShown()) {
      o.e(this);
    }
  }
  
  public boolean isDraggable()
  {
    return m;
  }
  
  public boolean isInfoWindowShown()
  {
    return o.f(this);
  }
  
  public boolean isViewMode()
  {
    return s;
  }
  
  public boolean isVisible()
  {
    return n;
  }
  
  public boolean remove()
  {
    return o.b(this);
  }
  
  public void setAddIndex(int paramInt)
  {
    w = paramInt;
  }
  
  public void setAnchor(float paramFloat1, float paramFloat2)
  {
    if ((k == paramFloat1) && (l == paramFloat2)) {
      return;
    }
    k = paramFloat1;
    l = paramFloat2;
    if (isInfoWindowShown())
    {
      o.e(this);
      o.d(this);
    }
    o.a().postInvalidate();
  }
  
  public void setDraggable(boolean paramBoolean)
  {
    m = paramBoolean;
  }
  
  public void setIcon(BitmapDescriptor paramBitmapDescriptor)
  {
    if (paramBitmapDescriptor != null) {
      try
      {
        if (d == null) {
          return;
        }
        d.clear();
        d.add(paramBitmapDescriptor);
        if (isInfoWindowShown())
        {
          o.e(this);
          o.d(this);
        }
        o.a().postInvalidate();
        return;
      }
      catch (Throwable paramBitmapDescriptor)
      {
        cm.a(paramBitmapDescriptor, "MarkerDelegateImp", "setIcon");
        return;
      }
    }
  }
  
  public void setIcons(ArrayList<BitmapDescriptor> paramArrayList)
    throws RemoteException
  {
    if (paramArrayList == null) {
      return;
    }
    a(paramArrayList);
    if (r == null)
    {
      r = new a(null);
      r.start();
    }
    if (isInfoWindowShown())
    {
      o.e(this);
      o.d(this);
    }
    o.a().postInvalidate();
  }
  
  public void setObject(Object paramObject)
  {
    p = paramObject;
  }
  
  public void setPeriod(int paramInt)
    throws RemoteException
  {
    if (paramInt <= 1)
    {
      e = 1;
      return;
    }
    e = paramInt;
  }
  
  public void setPosition(LatLng paramLatLng)
  {
    if (paramLatLng == null) {
      return;
    }
    if (q) {
      try
      {
        double[] arrayOfDouble = fg.a(longitude, latitude);
        h = new LatLng(arrayOfDouble[1], arrayOfDouble[0]);
      }
      catch (Exception localException)
      {
        cm.a(localException, "MarkerDelegateImp", "setPosition");
        h = paramLatLng;
      }
    }
    s = false;
    g = paramLatLng;
    o.a().postInvalidate();
  }
  
  public void setPositionByPixels(int paramInt1, int paramInt2)
  {
    t = paramInt1;
    u = paramInt2;
    s = true;
    if (isInfoWindowShown()) {
      showInfoWindow();
    }
  }
  
  public void setRotateAngle(float paramFloat)
  {
    c = ((-paramFloat % 360.0F + 360.0F) % 360.0F);
    if (isInfoWindowShown())
    {
      o.e(this);
      o.d(this);
    }
    o.a().postInvalidate();
  }
  
  public void setSnippet(String paramString)
  {
    j = paramString;
  }
  
  public void setTitle(String paramString)
  {
    i = paramString;
  }
  
  public void setVisible(boolean paramBoolean)
  {
    n = paramBoolean;
    if ((!paramBoolean) && (isInfoWindowShown())) {
      o.e(this);
    }
    o.a().postInvalidate();
  }
  
  public void setZIndex(float paramFloat)
  {
    v = paramFloat;
    o.d();
  }
  
  public void showInfoWindow()
  {
    if (!isVisible()) {
      return;
    }
    o.d(this);
  }
  
  private class a
    extends Thread
  {
    private a() {}
    
    public void run()
    {
      try
      {
        setName("MarkerThread");
        while ((!Thread.currentThread().isInterrupted()) && (ay.a(ay.this) != null) && (ay.a(ay.this).size() > 1))
        {
          if (ay.b(ay.this) == ay.a(ay.this).size() - 1) {
            ay.a(ay.this, 0);
          } else {
            ay.c(ay.this);
          }
          ay.d(ay.this).a().postInvalidate();
          try
          {
            Thread.sleep(ay.e(ay.this) * 250);
          }
          catch (InterruptedException localInterruptedException)
          {
            cm.a(localInterruptedException, "MarkerDelegateImp", "run");
          }
          if (ay.a(ay.this) == null) {
            Thread.currentThread().interrupt();
          }
        }
        return;
      }
      catch (Throwable localThrowable)
      {
        localThrowable.printStackTrace();
      }
    }
  }
}
