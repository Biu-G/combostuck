package com.amap.api.mapcore2d;

import android.graphics.Point;
import android.graphics.PointF;
import android.os.RemoteException;
import com.amap.api.maps2d.model.LatLng;

class bi
  implements ah
{
  private String a = "ProjectionDelegateImp";
  private y b;
  
  public bi(y paramY)
  {
    b = paramY;
  }
  
  public LatLng fromScreenLocation(Point paramPoint)
    throws RemoteException
  {
    s localS = new s();
    b.a(x, y, localS);
    return new LatLng(b, a);
  }
  
  /* Error */
  public com.amap.api.maps2d.model.VisibleRegion getVisibleRegion()
    throws RemoteException
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 21	com/amap/api/mapcore2d/bi:b	Lcom/amap/api/mapcore2d/y;
    //   4: invokeinterface 62 1 0
    //   9: istore_1
    //   10: aload_0
    //   11: getfield 21	com/amap/api/mapcore2d/bi:b	Lcom/amap/api/mapcore2d/y;
    //   14: invokeinterface 65 1 0
    //   19: istore_2
    //   20: aload_0
    //   21: new 31	android/graphics/Point
    //   24: dup
    //   25: iconst_0
    //   26: iconst_0
    //   27: invokespecial 68	android/graphics/Point:<init>	(II)V
    //   30: invokevirtual 70	com/amap/api/mapcore2d/bi:fromScreenLocation	(Landroid/graphics/Point;)Lcom/amap/api/maps2d/model/LatLng;
    //   33: astore 4
    //   35: aload_0
    //   36: new 31	android/graphics/Point
    //   39: dup
    //   40: iload_1
    //   41: iconst_0
    //   42: invokespecial 68	android/graphics/Point:<init>	(II)V
    //   45: invokevirtual 70	com/amap/api/mapcore2d/bi:fromScreenLocation	(Landroid/graphics/Point;)Lcom/amap/api/maps2d/model/LatLng;
    //   48: astore 7
    //   50: aload_0
    //   51: new 31	android/graphics/Point
    //   54: dup
    //   55: iconst_0
    //   56: iload_2
    //   57: invokespecial 68	android/graphics/Point:<init>	(II)V
    //   60: invokevirtual 70	com/amap/api/mapcore2d/bi:fromScreenLocation	(Landroid/graphics/Point;)Lcom/amap/api/maps2d/model/LatLng;
    //   63: astore 8
    //   65: aload_0
    //   66: new 31	android/graphics/Point
    //   69: dup
    //   70: iload_1
    //   71: iload_2
    //   72: invokespecial 68	android/graphics/Point:<init>	(II)V
    //   75: invokevirtual 70	com/amap/api/mapcore2d/bi:fromScreenLocation	(Landroid/graphics/Point;)Lcom/amap/api/maps2d/model/LatLng;
    //   78: astore_3
    //   79: invokestatic 76	com/amap/api/maps2d/model/LatLngBounds:builder	()Lcom/amap/api/maps2d/model/LatLngBounds$Builder;
    //   82: aload 8
    //   84: invokevirtual 82	com/amap/api/maps2d/model/LatLngBounds$Builder:include	(Lcom/amap/api/maps2d/model/LatLng;)Lcom/amap/api/maps2d/model/LatLngBounds$Builder;
    //   87: aload_3
    //   88: invokevirtual 82	com/amap/api/maps2d/model/LatLngBounds$Builder:include	(Lcom/amap/api/maps2d/model/LatLng;)Lcom/amap/api/maps2d/model/LatLngBounds$Builder;
    //   91: aload 4
    //   93: invokevirtual 82	com/amap/api/maps2d/model/LatLngBounds$Builder:include	(Lcom/amap/api/maps2d/model/LatLng;)Lcom/amap/api/maps2d/model/LatLngBounds$Builder;
    //   96: aload 7
    //   98: invokevirtual 82	com/amap/api/maps2d/model/LatLngBounds$Builder:include	(Lcom/amap/api/maps2d/model/LatLng;)Lcom/amap/api/maps2d/model/LatLngBounds$Builder;
    //   101: invokevirtual 86	com/amap/api/maps2d/model/LatLngBounds$Builder:build	()Lcom/amap/api/maps2d/model/LatLngBounds;
    //   104: astore 5
    //   106: goto +93 -> 199
    //   109: astore 5
    //   111: aload 4
    //   113: astore 6
    //   115: aload 8
    //   117: astore 4
    //   119: goto +58 -> 177
    //   122: astore 5
    //   124: aconst_null
    //   125: astore_3
    //   126: aload 4
    //   128: astore 6
    //   130: aload 8
    //   132: astore 4
    //   134: goto +43 -> 177
    //   137: astore 5
    //   139: aconst_null
    //   140: astore_3
    //   141: aload_3
    //   142: astore 8
    //   144: aload 4
    //   146: astore 6
    //   148: aload 8
    //   150: astore 4
    //   152: goto +25 -> 177
    //   155: astore 5
    //   157: aload 4
    //   159: astore 6
    //   161: goto +8 -> 169
    //   164: astore 5
    //   166: aconst_null
    //   167: astore 6
    //   169: aconst_null
    //   170: astore 4
    //   172: aconst_null
    //   173: astore_3
    //   174: aconst_null
    //   175: astore 7
    //   177: aload 5
    //   179: aload_0
    //   180: getfield 19	com/amap/api/mapcore2d/bi:a	Ljava/lang/String;
    //   183: ldc 87
    //   185: invokestatic 92	com/amap/api/mapcore2d/cm:a	(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    //   188: aconst_null
    //   189: astore 5
    //   191: aload 4
    //   193: astore 8
    //   195: aload 6
    //   197: astore 4
    //   199: new 94	com/amap/api/maps2d/model/VisibleRegion
    //   202: dup
    //   203: aload 8
    //   205: aload_3
    //   206: aload 4
    //   208: aload 7
    //   210: aload 5
    //   212: invokespecial 97	com/amap/api/maps2d/model/VisibleRegion:<init>	(Lcom/amap/api/maps2d/model/LatLng;Lcom/amap/api/maps2d/model/LatLng;Lcom/amap/api/maps2d/model/LatLng;Lcom/amap/api/maps2d/model/LatLng;Lcom/amap/api/maps2d/model/LatLngBounds;)V
    //   215: areturn
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	216	0	this	bi
    //   9	62	1	i	int
    //   19	53	2	j	int
    //   78	128	3	localLatLng1	LatLng
    //   33	174	4	localObject1	Object
    //   104	1	5	localLatLngBounds1	com.amap.api.maps2d.model.LatLngBounds
    //   109	1	5	localThrowable1	Throwable
    //   122	1	5	localThrowable2	Throwable
    //   137	1	5	localThrowable3	Throwable
    //   155	1	5	localThrowable4	Throwable
    //   164	14	5	localThrowable5	Throwable
    //   189	22	5	localLatLngBounds2	com.amap.api.maps2d.model.LatLngBounds
    //   113	83	6	localObject2	Object
    //   48	161	7	localLatLng2	LatLng
    //   63	141	8	localObject3	Object
    // Exception table:
    //   from	to	target	type
    //   79	106	109	java/lang/Throwable
    //   65	79	122	java/lang/Throwable
    //   50	65	137	java/lang/Throwable
    //   35	50	155	java/lang/Throwable
    //   0	35	164	java/lang/Throwable
  }
  
  public PointF toMapLocation(LatLng paramLatLng)
    throws RemoteException
  {
    s localS = new s();
    b.a(latitude, longitude, localS);
    return new PointF((float)a, (float)b);
  }
  
  public Point toScreenLocation(LatLng paramLatLng)
    throws RemoteException
  {
    if (paramLatLng == null) {
      return null;
    }
    ae localAe = new ae();
    b.b(latitude, longitude, localAe);
    return new Point(a, b);
  }
}
