package com.amap.api.mapcore2d;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.PointF;
import android.graphics.RectF;
import com.amap.api.maps2d.model.TileProvider;
import java.util.Iterator;

class an
  extends ao
{
  av a;
  public String b = "";
  public int c = 19;
  public int d = 3;
  public boolean e = true;
  public boolean f = false;
  public boolean g = false;
  public boolean h = true;
  public long i = 0L;
  public cb j = null;
  TileProvider k = null;
  public int l = -1;
  public String m = "";
  ba n = null;
  u o = null;
  bn<bs> p = null;
  private String r = "LayerPropertys";
  private boolean s = false;
  
  public an(av paramAv)
  {
    a = paramAv;
  }
  
  protected void a(Canvas paramCanvas)
  {
    try
    {
      if (p == null) {
        return;
      }
      Iterator localIterator = p.iterator();
      while (localIterator.hasNext())
      {
        Object localObject = (bs)localIterator.next();
        if (localObject != null) {
          if (h < 0)
          {
            boolean bool = e;
          }
          else
          {
            Bitmap localBitmap = n.a(h);
            localObject = a.a(b, c);
            if ((localBitmap != null) && (localObject != null))
            {
              float f1 = x;
              float f2 = a.a;
              float f3 = y;
              float f4 = a.a;
              paramCanvas.drawBitmap(localBitmap, null, new RectF(x, y, f1 + f2, f3 + f4), null);
            }
          }
        }
      }
      return;
    }
    catch (Throwable paramCanvas)
    {
      cm.a(paramCanvas, r, "drawLayer");
    }
  }
  
  void a(boolean paramBoolean)
  {
    s = paramBoolean;
    if (paramBoolean)
    {
      q.d();
      return;
    }
    n.c();
    q.c();
  }
  
  boolean a()
  {
    return s;
  }
  
  protected void b()
  {
    q.e();
    o.a(null);
    n.c();
    p.clear();
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {
      return true;
    }
    if (!(paramObject instanceof an)) {
      return false;
    }
    paramObject = (an)paramObject;
    return b.equals(b);
  }
  
  public int hashCode()
  {
    return l;
  }
  
  public String toString()
  {
    return b;
  }
}
