package com.amap.api.mapcore2d;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint.Cap;
import android.graphics.Paint.Join;
import android.graphics.Paint.Style;
import android.graphics.Path;
import android.graphics.PointF;
import java.util.List;

class ba
{
  protected final a[] a;
  protected final int b;
  protected final int c;
  protected final a[] d;
  private boolean e = false;
  private long f = 0L;
  private an g;
  private Paint h = null;
  private Path i = null;
  
  public ba(int paramInt1, int paramInt2, boolean paramBoolean, long paramLong, an paramAn)
  {
    b = paramInt1;
    c = paramInt2;
    g = paramAn;
    e = paramBoolean;
    f = (paramLong * 1000000L);
    if (b > 0)
    {
      a = new a[b];
      d = new a[c];
      return;
    }
    a = null;
    d = null;
  }
  
  private void a(Bitmap paramBitmap, final List<bx> paramList)
  {
    paramList = new j()
    {
      public void a(Canvas paramAnonymousCanvas)
      {
        if (ba.a(ba.this) == null)
        {
          ba.a(ba.this, new Paint());
          ba.a(ba.this).setStyle(Paint.Style.STROKE);
          ba.a(ba.this).setDither(true);
          ba.a(ba.this).setAntiAlias(true);
          ba.a(ba.this).setStrokeJoin(Paint.Join.ROUND);
          ba.a(ba.this).setStrokeCap(Paint.Cap.ROUND);
        }
        if (ba.b(ba.this) == null) {
          ba.a(ba.this, new Path());
        }
        int m = paramList.size();
        int i = 0;
        while (i < m)
        {
          Object localObject = (bx)paramList.get(i);
          if (localObject != null)
          {
            ba.a(ba.this).setStrokeWidth(3.0F);
            int j = ((bx)localObject).b();
            if (j == 1) {
              ba.a(ba.this).setColor(-65536);
            } else if (j == 2) {
              ba.a(ba.this).setColor(65280);
            } else if (j == 3) {
              ba.a(ba.this).setColor(-16711936);
            }
            localObject = ((bx)localObject).a();
            int n = ((List)localObject).size();
            j = 0;
            int k = 1;
            while (j < n)
            {
              PointF localPointF = (PointF)((List)localObject).get(j);
              if (localPointF != null) {
                if (k != 0)
                {
                  ba.b(ba.this).moveTo(x, y);
                  k = 0;
                }
                else
                {
                  ba.b(ba.this).lineTo(x, y);
                }
              }
              j += 1;
            }
            paramAnonymousCanvas.drawPath(ba.b(ba.this), ba.a(ba.this));
            ba.b(ba.this).reset();
          }
          i += 1;
        }
      }
    };
    i localI = new i(null);
    localI.a(paramBitmap);
    localI.a(paramList);
  }
  
  private long d()
  {
    return System.nanoTime();
  }
  
  protected int a()
  {
    int j = 0;
    while (j < c)
    {
      d[j] = null;
      j += 1;
    }
    j = 0;
    while (j < b)
    {
      Object localObject1 = a[j];
      k = 0;
      while (k < c)
      {
        if (d[k] == null)
        {
          d[k] = localObject1;
          break;
        }
        Object localObject2 = localObject1;
        if (d[k].d > d)
        {
          localObject2 = d[k];
          d[k] = localObject1;
        }
        k += 1;
        localObject1 = localObject2;
      }
      j += 1;
    }
    j = 0;
    int m;
    for (int k = -1; j < c; k = m)
    {
      m = k;
      if (d[j] != null)
      {
        d[j].c = false;
        m = k;
        if (k < 0) {
          m = d[j].e;
        }
      }
      j += 1;
    }
    return k;
  }
  
  protected int a(String paramString)
  {
    if (paramString != null)
    {
      if (paramString.equals("") == true) {
        return -1;
      }
      int j = 0;
      while (j < b)
      {
        if ((a[j] != null) && (a[j].b != null) && (a[j].b.equals(paramString)))
        {
          if (!a[j].c) {
            return -1;
          }
          if ((e == true) && (d() - a[j].f > f))
          {
            a[j].c = false;
            return -1;
          }
          if (a[j].a == null) {
            return -1;
          }
          a[j].d = d();
          return j;
        }
        j += 1;
      }
      return -1;
    }
    return -1;
  }
  
  /* Error */
  protected int a(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2, boolean paramBoolean, List<bx> paramList, String paramString)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_1
    //   3: ifnonnull +16 -> 19
    //   6: aload_2
    //   7: ifnonnull +12 -> 19
    //   10: aload 4
    //   12: ifnonnull +7 -> 19
    //   15: aload_0
    //   16: monitorexit
    //   17: iconst_m1
    //   18: ireturn
    //   19: aload_0
    //   20: invokevirtual 109	com/amap/api/mapcore2d/ba:b	()I
    //   23: istore 7
    //   25: iload 7
    //   27: istore 6
    //   29: iload 7
    //   31: ifge +16 -> 47
    //   34: aload_0
    //   35: invokevirtual 111	com/amap/api/mapcore2d/ba:a	()I
    //   38: istore 6
    //   40: goto +7 -> 47
    //   43: astore_1
    //   44: goto +468 -> 512
    //   47: iload 6
    //   49: ifge +7 -> 56
    //   52: aload_0
    //   53: monitorexit
    //   54: iconst_m1
    //   55: ireturn
    //   56: iload 6
    //   58: istore 7
    //   60: aload_0
    //   61: getfield 47	com/amap/api/mapcore2d/ba:a	[Lcom/amap/api/mapcore2d/ba$a;
    //   64: astore 9
    //   66: aload 9
    //   68: ifnonnull +7 -> 75
    //   71: aload_0
    //   72: monitorexit
    //   73: iconst_m1
    //   74: ireturn
    //   75: iload 6
    //   77: istore 7
    //   79: aload_0
    //   80: getfield 47	com/amap/api/mapcore2d/ba:a	[Lcom/amap/api/mapcore2d/ba$a;
    //   83: iload 6
    //   85: aaload
    //   86: ifnull +72 -> 158
    //   89: iload 6
    //   91: istore 7
    //   93: aload_0
    //   94: getfield 47	com/amap/api/mapcore2d/ba:a	[Lcom/amap/api/mapcore2d/ba$a;
    //   97: iload 6
    //   99: aaload
    //   100: getfield 102	com/amap/api/mapcore2d/ba$a:a	Landroid/graphics/Bitmap;
    //   103: ifnull +55 -> 158
    //   106: iload 6
    //   108: istore 7
    //   110: aload_0
    //   111: getfield 47	com/amap/api/mapcore2d/ba:a	[Lcom/amap/api/mapcore2d/ba$a;
    //   114: iload 6
    //   116: aaload
    //   117: getfield 102	com/amap/api/mapcore2d/ba$a:a	Landroid/graphics/Bitmap;
    //   120: invokevirtual 117	android/graphics/Bitmap:isRecycled	()Z
    //   123: ifne +35 -> 158
    //   126: iload 6
    //   128: istore 7
    //   130: aload_0
    //   131: getfield 47	com/amap/api/mapcore2d/ba:a	[Lcom/amap/api/mapcore2d/ba$a;
    //   134: iload 6
    //   136: aaload
    //   137: getfield 102	com/amap/api/mapcore2d/ba$a:a	Landroid/graphics/Bitmap;
    //   140: invokevirtual 120	android/graphics/Bitmap:recycle	()V
    //   143: iload 6
    //   145: istore 7
    //   147: aload_0
    //   148: getfield 47	com/amap/api/mapcore2d/ba:a	[Lcom/amap/api/mapcore2d/ba$a;
    //   151: iload 6
    //   153: aaload
    //   154: aconst_null
    //   155: putfield 102	com/amap/api/mapcore2d/ba$a:a	Landroid/graphics/Bitmap;
    //   158: iload 6
    //   160: istore 7
    //   162: aload_0
    //   163: getfield 47	com/amap/api/mapcore2d/ba:a	[Lcom/amap/api/mapcore2d/ba$a;
    //   166: iload 6
    //   168: aaload
    //   169: getfield 123	com/amap/api/mapcore2d/ba$a:g	Ljava/util/List;
    //   172: ifnull +37 -> 209
    //   175: iload 6
    //   177: istore 7
    //   179: aload_0
    //   180: getfield 47	com/amap/api/mapcore2d/ba:a	[Lcom/amap/api/mapcore2d/ba$a;
    //   183: iload 6
    //   185: aaload
    //   186: getfield 123	com/amap/api/mapcore2d/ba$a:g	Ljava/util/List;
    //   189: invokeinterface 128 1 0
    //   194: iload 6
    //   196: istore 7
    //   198: aload_0
    //   199: getfield 47	com/amap/api/mapcore2d/ba:a	[Lcom/amap/api/mapcore2d/ba$a;
    //   202: iload 6
    //   204: aaload
    //   205: aconst_null
    //   206: putfield 123	com/amap/api/mapcore2d/ba$a:g	Ljava/util/List;
    //   209: iload_3
    //   210: iconst_1
    //   211: if_icmpne +43 -> 254
    //   214: aload_1
    //   215: ifnull +39 -> 254
    //   218: aload_0
    //   219: getfield 47	com/amap/api/mapcore2d/ba:a	[Lcom/amap/api/mapcore2d/ba$a;
    //   222: iload 6
    //   224: aaload
    //   225: aload_1
    //   226: iconst_0
    //   227: aload_1
    //   228: arraylength
    //   229: invokestatic 134	android/graphics/BitmapFactory:decodeByteArray	([BII)Landroid/graphics/Bitmap;
    //   232: putfield 102	com/amap/api/mapcore2d/ba$a:a	Landroid/graphics/Bitmap;
    //   235: goto +56 -> 291
    //   238: astore_1
    //   239: iload 6
    //   241: istore 7
    //   243: aload_1
    //   244: ldc -120
    //   246: ldc -118
    //   248: invokestatic 143	com/amap/api/mapcore2d/cm:a	(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    //   251: goto +40 -> 291
    //   254: aload_2
    //   255: ifnull +36 -> 291
    //   258: aload_0
    //   259: getfield 47	com/amap/api/mapcore2d/ba:a	[Lcom/amap/api/mapcore2d/ba$a;
    //   262: iload 6
    //   264: aaload
    //   265: aload_2
    //   266: iconst_0
    //   267: aload_2
    //   268: arraylength
    //   269: invokestatic 134	android/graphics/BitmapFactory:decodeByteArray	([BII)Landroid/graphics/Bitmap;
    //   272: putfield 102	com/amap/api/mapcore2d/ba$a:a	Landroid/graphics/Bitmap;
    //   275: goto +16 -> 291
    //   278: astore_1
    //   279: iload 6
    //   281: istore 7
    //   283: aload_1
    //   284: ldc -120
    //   286: ldc -118
    //   288: invokestatic 143	com/amap/api/mapcore2d/cm:a	(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    //   291: aload 4
    //   293: ifnull +63 -> 356
    //   296: iload 6
    //   298: istore 7
    //   300: aload_0
    //   301: getfield 47	com/amap/api/mapcore2d/ba:a	[Lcom/amap/api/mapcore2d/ba$a;
    //   304: iload 6
    //   306: aaload
    //   307: aload_0
    //   308: getfield 43	com/amap/api/mapcore2d/ba:g	Lcom/amap/api/mapcore2d/an;
    //   311: getfield 148	com/amap/api/mapcore2d/an:a	Lcom/amap/api/mapcore2d/av;
    //   314: getfield 152	com/amap/api/mapcore2d/av:a	I
    //   317: aload_0
    //   318: getfield 43	com/amap/api/mapcore2d/ba:g	Lcom/amap/api/mapcore2d/an;
    //   321: getfield 148	com/amap/api/mapcore2d/an:a	Lcom/amap/api/mapcore2d/av;
    //   324: getfield 152	com/amap/api/mapcore2d/av:a	I
    //   327: getstatic 158	android/graphics/Bitmap$Config:ARGB_4444	Landroid/graphics/Bitmap$Config;
    //   330: invokestatic 162	android/graphics/Bitmap:createBitmap	(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    //   333: putfield 102	com/amap/api/mapcore2d/ba$a:a	Landroid/graphics/Bitmap;
    //   336: iload 6
    //   338: istore 7
    //   340: aload_0
    //   341: aload_0
    //   342: getfield 47	com/amap/api/mapcore2d/ba:a	[Lcom/amap/api/mapcore2d/ba$a;
    //   345: iload 6
    //   347: aaload
    //   348: getfield 102	com/amap/api/mapcore2d/ba$a:a	Landroid/graphics/Bitmap;
    //   351: aload 4
    //   353: invokespecial 164	com/amap/api/mapcore2d/ba:a	(Landroid/graphics/Bitmap;Ljava/util/List;)V
    //   356: iload 6
    //   358: istore 7
    //   360: aload_0
    //   361: getfield 47	com/amap/api/mapcore2d/ba:a	[Lcom/amap/api/mapcore2d/ba$a;
    //   364: iload 6
    //   366: aaload
    //   367: getfield 102	com/amap/api/mapcore2d/ba$a:a	Landroid/graphics/Bitmap;
    //   370: ifnonnull +26 -> 396
    //   373: iload 6
    //   375: istore 7
    //   377: aload_0
    //   378: getfield 47	com/amap/api/mapcore2d/ba:a	[Lcom/amap/api/mapcore2d/ba$a;
    //   381: iload 6
    //   383: aaload
    //   384: getfield 123	com/amap/api/mapcore2d/ba$a:g	Ljava/util/List;
    //   387: astore_1
    //   388: aload_1
    //   389: ifnonnull +7 -> 396
    //   392: aload_0
    //   393: monitorexit
    //   394: iconst_m1
    //   395: ireturn
    //   396: iload 6
    //   398: istore 7
    //   400: iload 6
    //   402: istore 8
    //   404: aload_0
    //   405: getfield 47	com/amap/api/mapcore2d/ba:a	[Lcom/amap/api/mapcore2d/ba$a;
    //   408: iload 6
    //   410: aaload
    //   411: ifnull +113 -> 524
    //   414: iload 6
    //   416: istore 7
    //   418: aload_0
    //   419: getfield 47	com/amap/api/mapcore2d/ba:a	[Lcom/amap/api/mapcore2d/ba$a;
    //   422: iload 6
    //   424: aaload
    //   425: iconst_1
    //   426: putfield 82	com/amap/api/mapcore2d/ba$a:c	Z
    //   429: iload 6
    //   431: istore 7
    //   433: aload_0
    //   434: getfield 47	com/amap/api/mapcore2d/ba:a	[Lcom/amap/api/mapcore2d/ba$a;
    //   437: iload 6
    //   439: aaload
    //   440: aload 5
    //   442: putfield 96	com/amap/api/mapcore2d/ba$a:b	Ljava/lang/String;
    //   445: iload 6
    //   447: istore 7
    //   449: aload_0
    //   450: getfield 47	com/amap/api/mapcore2d/ba:a	[Lcom/amap/api/mapcore2d/ba$a;
    //   453: iload 6
    //   455: aaload
    //   456: aload_0
    //   457: invokespecial 98	com/amap/api/mapcore2d/ba:d	()J
    //   460: putfield 80	com/amap/api/mapcore2d/ba$a:d	J
    //   463: iload 6
    //   465: istore 7
    //   467: iload 6
    //   469: istore 8
    //   471: aload_0
    //   472: getfield 31	com/amap/api/mapcore2d/ba:e	Z
    //   475: iconst_1
    //   476: if_icmpne +48 -> 524
    //   479: iload 6
    //   481: istore 7
    //   483: aload_0
    //   484: getfield 47	com/amap/api/mapcore2d/ba:a	[Lcom/amap/api/mapcore2d/ba$a;
    //   487: iload 6
    //   489: aaload
    //   490: aload_0
    //   491: invokespecial 98	com/amap/api/mapcore2d/ba:d	()J
    //   494: putfield 99	com/amap/api/mapcore2d/ba$a:f	J
    //   497: iload 6
    //   499: istore 8
    //   501: goto +23 -> 524
    //   504: astore_1
    //   505: goto +24 -> 529
    //   508: astore_1
    //   509: iconst_m1
    //   510: istore 7
    //   512: aload_1
    //   513: ldc -120
    //   515: ldc -118
    //   517: invokestatic 143	com/amap/api/mapcore2d/cm:a	(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    //   520: iload 7
    //   522: istore 8
    //   524: aload_0
    //   525: monitorexit
    //   526: iload 8
    //   528: ireturn
    //   529: aload_0
    //   530: monitorexit
    //   531: aload_1
    //   532: athrow
    //   533: astore_1
    //   534: goto -243 -> 291
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	537	0	this	ba
    //   0	537	1	paramArrayOfByte1	byte[]
    //   0	537	2	paramArrayOfByte2	byte[]
    //   0	537	3	paramBoolean	boolean
    //   0	537	4	paramList	List<bx>
    //   0	537	5	paramString	String
    //   27	471	6	j	int
    //   23	498	7	k	int
    //   402	125	8	m	int
    //   64	3	9	arrayOfA	a[]
    // Exception table:
    //   from	to	target	type
    //   34	40	43	java/lang/Throwable
    //   60	66	43	java/lang/Throwable
    //   79	89	43	java/lang/Throwable
    //   93	106	43	java/lang/Throwable
    //   110	126	43	java/lang/Throwable
    //   130	143	43	java/lang/Throwable
    //   147	158	43	java/lang/Throwable
    //   162	175	43	java/lang/Throwable
    //   179	194	43	java/lang/Throwable
    //   198	209	43	java/lang/Throwable
    //   243	251	43	java/lang/Throwable
    //   283	291	43	java/lang/Throwable
    //   300	336	43	java/lang/Throwable
    //   340	356	43	java/lang/Throwable
    //   360	373	43	java/lang/Throwable
    //   377	388	43	java/lang/Throwable
    //   404	414	43	java/lang/Throwable
    //   418	429	43	java/lang/Throwable
    //   433	445	43	java/lang/Throwable
    //   449	463	43	java/lang/Throwable
    //   471	479	43	java/lang/Throwable
    //   483	497	43	java/lang/Throwable
    //   218	235	238	java/lang/Throwable
    //   258	275	278	java/lang/Throwable
    //   19	25	504	finally
    //   34	40	504	finally
    //   60	66	504	finally
    //   79	89	504	finally
    //   93	106	504	finally
    //   110	126	504	finally
    //   130	143	504	finally
    //   147	158	504	finally
    //   162	175	504	finally
    //   179	194	504	finally
    //   198	209	504	finally
    //   218	235	504	finally
    //   243	251	504	finally
    //   258	275	504	finally
    //   283	291	504	finally
    //   300	336	504	finally
    //   340	356	504	finally
    //   360	373	504	finally
    //   377	388	504	finally
    //   404	414	504	finally
    //   418	429	504	finally
    //   433	445	504	finally
    //   449	463	504	finally
    //   471	479	504	finally
    //   483	497	504	finally
    //   512	520	504	finally
    //   19	25	508	java/lang/Throwable
    //   218	235	533	java/lang/OutOfMemoryError
    //   258	275	533	java/lang/OutOfMemoryError
  }
  
  protected Bitmap a(int paramInt)
  {
    if (paramInt >= 0)
    {
      if (paramInt >= b) {
        return null;
      }
      if (a[paramInt] == null) {
        return null;
      }
      return a[paramInt].a;
    }
    return null;
  }
  
  protected int b()
  {
    int k = -1;
    int j = 0;
    while (j < b)
    {
      if (a[j] == null)
      {
        a[j] = new a();
        a[j].e = j;
        return j;
      }
      int m = k;
      if (!a[j].c)
      {
        m = k;
        if (k < 0) {
          m = j;
        }
      }
      j += 1;
      k = m;
    }
    return k;
  }
  
  protected void c()
  {
    int j = 0;
    while (j < b)
    {
      if (a[j] != null)
      {
        if ((a[j].a != null) && (!a[j].a.isRecycled())) {
          a[j].a.recycle();
        }
        a[j].a = null;
      }
      j += 1;
    }
  }
  
  private class a
  {
    Bitmap a = null;
    String b = "";
    boolean c = false;
    long d = 0L;
    int e = -1;
    long f = 0L;
    List<bx> g = null;
    
    public a() {}
  }
}
