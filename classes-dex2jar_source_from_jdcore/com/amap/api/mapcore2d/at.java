package com.amap.api.mapcore2d;

import android.content.Context;
import android.graphics.Rect;
import android.os.Handler;
import android.os.RemoteException;
import android.util.AttributeSet;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import com.amap.api.maps2d.model.LatLng;
import com.amap.api.maps2d.model.Marker;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

class at
  extends View
{
  b a;
  a b = new a();
  private ArrayList<aj> c = new ArrayList(8);
  private ArrayList<ab> d = new ArrayList(8);
  private volatile int e = 0;
  private Handler f = new Handler();
  private Runnable g = new Runnable()
  {
    /* Error */
    public void run()
    {
      // Byte code:
      //   0: aload_0
      //   1: monitorenter
      //   2: aload_0
      //   3: getfield 14	com/amap/api/mapcore2d/at$1:a	Lcom/amap/api/mapcore2d/at;
      //   6: invokestatic 24	com/amap/api/mapcore2d/at:a	(Lcom/amap/api/mapcore2d/at;)Ljava/util/ArrayList;
      //   9: aload_0
      //   10: getfield 14	com/amap/api/mapcore2d/at$1:a	Lcom/amap/api/mapcore2d/at;
      //   13: getfield 28	com/amap/api/mapcore2d/at:b	Lcom/amap/api/mapcore2d/at$a;
      //   16: invokestatic 34	java/util/Collections:sort	(Ljava/util/List;Ljava/util/Comparator;)V
      //   19: aload_0
      //   20: getfield 14	com/amap/api/mapcore2d/at$1:a	Lcom/amap/api/mapcore2d/at;
      //   23: invokestatic 36	com/amap/api/mapcore2d/at:b	(Lcom/amap/api/mapcore2d/at;)Ljava/util/ArrayList;
      //   26: aload_0
      //   27: getfield 14	com/amap/api/mapcore2d/at$1:a	Lcom/amap/api/mapcore2d/at;
      //   30: getfield 28	com/amap/api/mapcore2d/at:b	Lcom/amap/api/mapcore2d/at$a;
      //   33: invokestatic 34	java/util/Collections:sort	(Ljava/util/List;Ljava/util/Comparator;)V
      //   36: aload_0
      //   37: getfield 14	com/amap/api/mapcore2d/at$1:a	Lcom/amap/api/mapcore2d/at;
      //   40: invokevirtual 39	com/amap/api/mapcore2d/at:invalidate	()V
      //   43: goto +23 -> 66
      //   46: astore_1
      //   47: goto +15 -> 62
      //   50: astore_1
      //   51: aload_1
      //   52: ldc 41
      //   54: ldc 43
      //   56: invokestatic 48	com/amap/api/mapcore2d/dg:b	(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
      //   59: goto +7 -> 66
      //   62: aload_0
      //   63: monitorexit
      //   64: aload_1
      //   65: athrow
      //   66: aload_0
      //   67: monitorexit
      //   68: return
      //   69: astore_1
      //   70: goto -4 -> 66
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	73	0	this	1
      //   46	1	1	localObject	Object
      //   50	15	1	localThrowable1	Throwable
      //   69	1	1	localThrowable2	Throwable
      // Exception table:
      //   from	to	target	type
      //   2	43	46	finally
      //   51	59	46	finally
      //   2	43	50	java/lang/Throwable
      //   51	59	69	java/lang/Throwable
    }
  };
  private ae h;
  private ab i;
  private ab j = null;
  private float k = 0.0F;
  private CopyOnWriteArrayList<Integer> l = new CopyOnWriteArrayList();
  
  public at(Context paramContext, AttributeSet paramAttributeSet, b paramB)
  {
    super(paramContext, paramAttributeSet);
    a = paramB;
  }
  
  private aj a(Iterator<aj> paramIterator, Rect paramRect, ae paramAe)
  {
    while (paramIterator.hasNext())
    {
      aj localAj = (aj)paramIterator.next();
      LatLng localLatLng = localAj.getPosition();
      if (localLatLng != null)
      {
        a.b(latitude, longitude, paramAe);
        if (a(paramRect, a, b)) {
          return localAj;
        }
      }
    }
    return null;
  }
  
  private ab b(Iterator<ab> paramIterator, Rect paramRect, ae paramAe)
  {
    while (paramIterator.hasNext())
    {
      ab localAb = (ab)paramIterator.next();
      LatLng localLatLng = localAb.getRealPosition();
      if (localLatLng != null)
      {
        a.b(latitude, longitude, paramAe);
        if (a(paramRect, a, b)) {
          return localAb;
        }
      }
    }
    return null;
  }
  
  private int h()
  {
    int m = e;
    e = (m + 1);
    return m;
  }
  
  private void i()
  {
    Iterator localIterator = d.iterator();
    while (localIterator.hasNext())
    {
      ab localAb = (ab)localIterator.next();
      if ((localAb != null) && (i != null) && (i.getId().equals(localAb.getId()))) {
        try
        {
          boolean bool = i.isViewMode();
          if (bool) {
            return;
          }
        }
        catch (RemoteException localRemoteException)
        {
          cm.a(localRemoteException, "MapOverlayImageView", "redrawInfoWindow");
          Rect localRect = localAb.a();
          h = new ae(left + localAb.getWidth() / 2, top);
          a.redrawInfoWindow();
        }
      }
    }
  }
  
  public ab a(MotionEvent paramMotionEvent)
  {
    try
    {
      int m = d.size() - 1;
      while (m >= 0)
      {
        ab localAb = (ab)d.get(m);
        if (localAb != null)
        {
          boolean bool = a(localAb.a(), (int)paramMotionEvent.getX(), (int)paramMotionEvent.getY());
          if (bool) {
            return localAb;
          }
        }
        m -= 1;
      }
      return null;
    }
    finally {}
  }
  
  public ab a(String paramString)
    throws RemoteException
  {
    try
    {
      Iterator localIterator = d.iterator();
      while (localIterator.hasNext())
      {
        ab localAb = (ab)localIterator.next();
        if (localAb != null)
        {
          boolean bool = localAb.getId().equals(paramString);
          if (bool) {
            return localAb;
          }
        }
      }
      return null;
    }
    finally {}
  }
  
  public b a()
  {
    return a;
  }
  
  /* Error */
  public void a(android.graphics.Canvas paramCanvas)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: invokespecial 201	com/amap/api/mapcore2d/at:i	()V
    //   6: new 162	android/graphics/Rect
    //   9: dup
    //   10: iconst_0
    //   11: iconst_0
    //   12: aload_0
    //   13: getfield 75	com/amap/api/mapcore2d/at:a	Lcom/amap/api/mapcore2d/b;
    //   16: invokevirtual 204	com/amap/api/mapcore2d/b:getMapWidth	()I
    //   19: aload_0
    //   20: getfield 75	com/amap/api/mapcore2d/at:a	Lcom/amap/api/mapcore2d/b;
    //   23: invokevirtual 207	com/amap/api/mapcore2d/b:getMapHeight	()I
    //   26: invokespecial 210	android/graphics/Rect:<init>	(IIII)V
    //   29: astore 4
    //   31: new 109	com/amap/api/mapcore2d/ae
    //   34: dup
    //   35: invokespecial 211	com/amap/api/mapcore2d/ae:<init>	()V
    //   38: astore 5
    //   40: aload_0
    //   41: getfield 47	com/amap/api/mapcore2d/at:d	Ljava/util/ArrayList;
    //   44: invokevirtual 133	java/util/ArrayList:iterator	()Ljava/util/Iterator;
    //   47: astore 6
    //   49: aload_0
    //   50: getfield 45	com/amap/api/mapcore2d/at:c	Ljava/util/ArrayList;
    //   53: invokevirtual 133	java/util/ArrayList:iterator	()Ljava/util/Iterator;
    //   56: astore 7
    //   58: aload_0
    //   59: aload 6
    //   61: aload 4
    //   63: aload 5
    //   65: invokespecial 213	com/amap/api/mapcore2d/at:b	(Ljava/util/Iterator;Landroid/graphics/Rect;Lcom/amap/api/mapcore2d/ae;)Lcom/amap/api/mapcore2d/ab;
    //   68: astore_3
    //   69: aload_0
    //   70: aload 7
    //   72: aload 4
    //   74: aload 5
    //   76: invokespecial 215	com/amap/api/mapcore2d/at:a	(Ljava/util/Iterator;Landroid/graphics/Rect;Lcom/amap/api/mapcore2d/ae;)Lcom/amap/api/mapcore2d/aj;
    //   79: astore_2
    //   80: aload_3
    //   81: ifnonnull +13 -> 94
    //   84: aload_2
    //   85: ifnull +6 -> 91
    //   88: goto +6 -> 94
    //   91: aload_0
    //   92: monitorexit
    //   93: return
    //   94: aload_3
    //   95: ifnonnull +24 -> 119
    //   98: aload_2
    //   99: aload_1
    //   100: invokeinterface 218 2 0
    //   105: aload_0
    //   106: aload 7
    //   108: aload 4
    //   110: aload 5
    //   112: invokespecial 215	com/amap/api/mapcore2d/at:a	(Ljava/util/Iterator;Landroid/graphics/Rect;Lcom/amap/api/mapcore2d/ae;)Lcom/amap/api/mapcore2d/aj;
    //   115: astore_2
    //   116: goto -36 -> 80
    //   119: aload_2
    //   120: ifnonnull +28 -> 148
    //   123: aload_3
    //   124: aload_1
    //   125: aload_0
    //   126: getfield 75	com/amap/api/mapcore2d/at:a	Lcom/amap/api/mapcore2d/b;
    //   129: invokeinterface 221 3 0
    //   134: aload_0
    //   135: aload 6
    //   137: aload 4
    //   139: aload 5
    //   141: invokespecial 213	com/amap/api/mapcore2d/at:b	(Ljava/util/Iterator;Landroid/graphics/Rect;Lcom/amap/api/mapcore2d/ae;)Lcom/amap/api/mapcore2d/ab;
    //   144: astore_3
    //   145: goto -65 -> 80
    //   148: aload_3
    //   149: invokeinterface 224 1 0
    //   154: aload_2
    //   155: invokeinterface 225 1 0
    //   160: fcmpg
    //   161: iflt +58 -> 219
    //   164: aload_3
    //   165: invokeinterface 224 1 0
    //   170: aload_2
    //   171: invokeinterface 225 1 0
    //   176: fcmpl
    //   177: ifne +21 -> 198
    //   180: aload_3
    //   181: invokeinterface 228 1 0
    //   186: aload_2
    //   187: invokeinterface 229 1 0
    //   192: if_icmpge +6 -> 198
    //   195: goto +24 -> 219
    //   198: aload_2
    //   199: aload_1
    //   200: invokeinterface 218 2 0
    //   205: aload_0
    //   206: aload 7
    //   208: aload 4
    //   210: aload 5
    //   212: invokespecial 215	com/amap/api/mapcore2d/at:a	(Ljava/util/Iterator;Landroid/graphics/Rect;Lcom/amap/api/mapcore2d/ae;)Lcom/amap/api/mapcore2d/aj;
    //   215: astore_2
    //   216: goto -136 -> 80
    //   219: aload_3
    //   220: aload_1
    //   221: aload_0
    //   222: getfield 75	com/amap/api/mapcore2d/at:a	Lcom/amap/api/mapcore2d/b;
    //   225: invokeinterface 221 3 0
    //   230: aload_0
    //   231: aload 6
    //   233: aload 4
    //   235: aload 5
    //   237: invokespecial 213	com/amap/api/mapcore2d/at:b	(Ljava/util/Iterator;Landroid/graphics/Rect;Lcom/amap/api/mapcore2d/ae;)Lcom/amap/api/mapcore2d/ab;
    //   240: astore_3
    //   241: goto -161 -> 80
    //   244: astore_1
    //   245: aload_0
    //   246: monitorexit
    //   247: aload_1
    //   248: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	249	0	this	at
    //   0	249	1	paramCanvas	android.graphics.Canvas
    //   79	137	2	localAj	aj
    //   68	173	3	localAb	ab
    //   29	205	4	localRect	Rect
    //   38	198	5	localAe	ae
    //   47	185	6	localIterator1	Iterator
    //   56	151	7	localIterator2	Iterator
    // Exception table:
    //   from	to	target	type
    //   2	80	244	finally
    //   98	116	244	finally
    //   123	145	244	finally
    //   148	195	244	finally
    //   198	216	244	finally
    //   219	241	244	finally
  }
  
  public void a(ab paramAb)
  {
    try
    {
      try
      {
        e(paramAb);
        paramAb.setAddIndex(h());
        d.remove(paramAb);
        d.add(paramAb);
        d();
      }
      catch (Throwable paramAb)
      {
        cm.a(paramAb, "MapOverlayImageView", "addMarker");
      }
      return;
    }
    finally {}
  }
  
  public void a(aj paramAj)
    throws RemoteException
  {
    try
    {
      c.remove(paramAj);
      paramAj.setAddIndex(h());
      c.add(paramAj);
      d();
      return;
    }
    finally
    {
      paramAj = finally;
      throw paramAj;
    }
  }
  
  public boolean a(Rect paramRect, int paramInt1, int paramInt2)
  {
    return paramRect.contains(paramInt1, paramInt2);
  }
  
  protected int b()
  {
    return d.size();
  }
  
  public void b(aj paramAj)
  {
    try
    {
      c.remove(paramAj);
      postInvalidate();
      return;
    }
    finally
    {
      paramAj = finally;
      throw paramAj;
    }
  }
  
  public boolean b(MotionEvent paramMotionEvent)
  {
    boolean bool2 = false;
    try
    {
      int m = d.size() - 1;
      boolean bool1;
      for (;;)
      {
        bool1 = bool2;
        if (m < 0) {
          break;
        }
        ab localAb = (ab)d.get(m);
        if (localAb != null)
        {
          Rect localRect = localAb.a();
          bool1 = a(localRect, (int)paramMotionEvent.getX(), (int)paramMotionEvent.getY());
          if (bool1)
          {
            h = new ae(left + localAb.getWidth() / 2, top);
            i = localAb;
            break;
          }
        }
        m -= 1;
      }
      return bool1;
    }
    finally {}
  }
  
  public boolean b(ab paramAb)
  {
    try
    {
      e(paramAb);
      boolean bool = d.remove(paramAb);
      postInvalidate();
      a.invalidate();
      return bool;
    }
    finally
    {
      paramAb = finally;
      throw paramAb;
    }
  }
  
  public void c()
  {
    try
    {
      try
      {
        if (d != null)
        {
          Iterator localIterator = d.iterator();
          while (localIterator.hasNext()) {
            ((ab)localIterator.next()).destroy();
          }
          d.clear();
        }
        if (c != null) {
          c.clear();
        }
        a.invalidate();
      }
      catch (Throwable localThrowable)
      {
        cm.a(localThrowable, "MapOverlayImageView", "clear");
      }
      return;
    }
    finally {}
  }
  
  public void c(ab paramAb)
  {
    if (paramAb != null) {
      try
      {
        if (j != paramAb)
        {
          if ((j != null) && (j.getZIndex() == 2.14748365E9F)) {
            j.setZIndex(k);
          }
          k = paramAb.getZIndex();
          j = paramAb;
          paramAb.setZIndex(2.14748365E9F);
          d();
          return;
        }
      }
      finally {}
    }
  }
  
  void d()
  {
    f.removeCallbacks(g);
    f.postDelayed(g, 5L);
  }
  
  public void d(ab paramAb)
  {
    if (paramAb == null) {
      return;
    }
    if (h == null) {
      h = new ae();
    }
    Rect localRect = paramAb.a();
    h = new ae(left + paramAb.getWidth() / 2, top);
    i = paramAb;
    try
    {
      a.a(e());
      return;
    }
    catch (Throwable paramAb)
    {
      cm.a(paramAb, "MapOverlayImageView", "showInfoWindow");
    }
  }
  
  public ab e()
  {
    return i;
  }
  
  public void e(ab paramAb)
  {
    if (f(paramAb)) {
      a.e();
    }
  }
  
  public void f()
  {
    try
    {
      if (f != null) {
        f.removeCallbacksAndMessages(null);
      }
      c();
      return;
    }
    catch (Exception localException)
    {
      cm.a(localException, "MapOverlayImageView", "destory");
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("MapOverlayImageView clear erro");
      localStringBuilder.append(localException.getMessage());
      Log.d("amapApi", localStringBuilder.toString());
    }
  }
  
  public boolean f(ab paramAb)
  {
    return a.b(paramAb);
  }
  
  public List<Marker> g()
  {
    try
    {
      ArrayList localArrayList = new ArrayList();
      Rect localRect = new Rect(0, 0, a.getMapWidth(), a.getMapHeight());
      ae localAe = new ae();
      Iterator localIterator = d.iterator();
      while (localIterator.hasNext())
      {
        ab localAb = (ab)localIterator.next();
        LatLng localLatLng = localAb.getRealPosition();
        if (localLatLng == null) {
          break;
        }
        a.b(latitude, longitude, localAe);
        if (a(localRect, a, b)) {
          localArrayList.add(new Marker(localAb));
        }
      }
      return localArrayList;
    }
    finally {}
  }
  
  static class a
    implements Serializable, Comparator<ac>
  {
    a() {}
    
    public int a(ac paramAc1, ac paramAc2)
    {
      if ((paramAc1 != null) && (paramAc2 != null)) {
        try
        {
          if (paramAc1.getZIndex() > paramAc2.getZIndex()) {
            return 1;
          }
          float f1 = paramAc1.getZIndex();
          float f2 = paramAc2.getZIndex();
          if (f1 < f2) {
            return -1;
          }
        }
        catch (Throwable paramAc1)
        {
          cm.a(paramAc1, "MapOverlayImageView", "compare");
        }
      }
      return 0;
    }
  }
}
