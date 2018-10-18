package com.amap.api.mapcore2d;

import android.content.Context;
import android.graphics.Canvas;
import android.view.View;
import java.util.Arrays;
import java.util.Comparator;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;

class bu
  extends View
{
  CopyOnWriteArrayList<Integer> a = new CopyOnWriteArrayList();
  private y b;
  private CopyOnWriteArrayList<ak> c = new CopyOnWriteArrayList();
  private a d = new a(null);
  
  public bu(Context paramContext, y paramY)
  {
    super(paramContext);
    b = paramY;
  }
  
  protected void a(Canvas paramCanvas)
  {
    Iterator localIterator = c.iterator();
    while (localIterator.hasNext())
    {
      ak localAk = (ak)localIterator.next();
      if (localAk.isVisible()) {
        localAk.a(paramCanvas);
      }
    }
  }
  
  public void a(ak paramAk)
  {
    if (paramAk != null)
    {
      b(paramAk);
      c.add(paramAk);
      c();
    }
  }
  
  public void a(boolean paramBoolean)
  {
    Iterator localIterator = c.iterator();
    while (localIterator.hasNext())
    {
      ak localAk = (ak)localIterator.next();
      if ((localAk != null) && (localAk.isVisible())) {
        localAk.a(paramBoolean);
      }
    }
  }
  
  protected boolean a()
  {
    return c.size() > 0;
  }
  
  public void b()
  {
    Iterator localIterator = c.iterator();
    while (localIterator.hasNext())
    {
      ak localAk = (ak)localIterator.next();
      if (localAk != null) {
        localAk.remove();
      }
    }
    c.clear();
  }
  
  public boolean b(ak paramAk)
  {
    return c.remove(paramAk);
  }
  
  void c()
  {
    Object[] arrayOfObject = c.toArray();
    Arrays.sort(arrayOfObject, d);
    c.clear();
    int j = arrayOfObject.length;
    int i = 0;
    while (i < j)
    {
      Object localObject = arrayOfObject[i];
      if (localObject != null) {
        c.add((ak)localObject);
      }
      i += 1;
    }
  }
  
  public void d()
  {
    Iterator localIterator = c.iterator();
    while (localIterator.hasNext())
    {
      ak localAk = (ak)localIterator.next();
      if (localAk != null) {
        localAk.a();
      }
    }
  }
  
  public void e()
  {
    Iterator localIterator = c.iterator();
    while (localIterator.hasNext())
    {
      ak localAk = (ak)localIterator.next();
      if (localAk != null) {
        localAk.b();
      }
    }
  }
  
  public void f()
  {
    Iterator localIterator = c.iterator();
    while (localIterator.hasNext())
    {
      ak localAk = (ak)localIterator.next();
      if (localAk != null) {
        localAk.c();
      }
    }
  }
  
  private class a
    implements Comparator<Object>
  {
    private a() {}
    
    public int compare(Object paramObject1, Object paramObject2)
    {
      paramObject1 = (ak)paramObject1;
      paramObject2 = (ak)paramObject2;
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
          cm.a(paramObject1, "TileOverlayView", "compare");
        }
      }
      return 0;
    }
  }
}
