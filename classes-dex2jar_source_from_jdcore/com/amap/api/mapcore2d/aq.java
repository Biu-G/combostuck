package com.amap.api.mapcore2d;

import android.graphics.Point;
import android.graphics.PointF;
import android.os.Handler;
import android.os.Message;
import android.os.RemoteException;
import android.view.KeyEvent;
import android.view.View;
import android.view.View.OnKeyListener;
import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;
import java.util.LinkedList;

final class aq
  implements View.OnKeyListener
{
  private float a = 0.0F;
  private float b = 0.0F;
  private az c;
  private boolean d;
  private b e;
  private a f;
  
  aq(az paramAz)
  {
    c = paramAz;
    d = false;
    e = new b(null);
    f = new a(null);
  }
  
  private boolean a(int paramInt1, int paramInt2, boolean paramBoolean1, boolean paramBoolean2)
  {
    return a(paramInt1, paramInt2, paramBoolean1, paramBoolean2, 1, 0);
  }
  
  private boolean a(int paramInt1, int paramInt2, boolean paramBoolean1, boolean paramBoolean2, int paramInt3, int paramInt4)
  {
    az localAz = c;
    boolean bool = false;
    if (localAz != null)
    {
      if (c.c == null) {
        return false;
      }
      c.c.g().r();
      if (paramBoolean1) {
        f1 = c.c.e() + paramInt3;
      } else {
        f1 = c.c.e() - paramInt3;
      }
      float f1 = c.c.g().a(f1);
      if (f1 != c.c.e())
      {
        a(paramInt1, paramInt2, f1, paramBoolean1, paramBoolean2, paramInt4);
        bool = true;
      }
      try
      {
        if (c.g.c().isScaleControlsEnabled())
        {
          c.g.s();
          return bool;
        }
      }
      catch (RemoteException localRemoteException)
      {
        cm.a(localRemoteException, "MapController", "zoomWithAnimation");
      }
      return bool;
    }
    return false;
  }
  
  private boolean b(w paramW)
  {
    if ((paramW != null) && (c != null))
    {
      if (c.c == null) {
        return false;
      }
      w localW = c.c.f();
      if (localW == null) {
        return false;
      }
      return (paramW.b() != localW.b()) || (paramW.a() != localW.a());
    }
    return false;
  }
  
  private void c(w paramW)
  {
    if ((c != null) && (c.g != null)) {
      c.g.r();
    }
    if ((c != null) && (c.c != null)) {
      c.c.a(paramW);
    }
  }
  
  private float e(float paramFloat)
  {
    if (c != null)
    {
      if (c.c == null) {
        return paramFloat;
      }
      b localB = c.c.g();
      localB.r();
      paramFloat = localB.a(paramFloat);
      c.c.a(paramFloat);
      try
      {
        if (c.g.c().isScaleControlsEnabled())
        {
          c.g.s();
          return paramFloat;
        }
      }
      catch (RemoteException localRemoteException)
      {
        cm.a(localRemoteException, "MapController", "setZoom");
      }
      return paramFloat;
    }
    return paramFloat;
  }
  
  private boolean f(float paramFloat)
  {
    if (c != null)
    {
      if (c.c == null) {
        return false;
      }
      return paramFloat != c.c.e();
    }
    return false;
  }
  
  public float a()
  {
    return a;
  }
  
  public float a(float paramFloat, int paramInt)
  {
    float f1 = paramFloat;
    if (paramFloat >= q.c) {
      f1 = q.c;
    }
    paramFloat = f1;
    if (f1 <= q.d) {
      paramFloat = q.d;
    }
    if (!f(paramFloat)) {
      return paramFloat;
    }
    b(paramFloat, paramInt);
    return paramFloat;
  }
  
  public void a(float paramFloat)
  {
    a = paramFloat;
  }
  
  public void a(float paramFloat1, float paramFloat2)
  {
    a(paramFloat1, paramFloat2, 0, 0, 0);
  }
  
  /* Error */
  public void a(float paramFloat1, float paramFloat2, int paramInt1, int paramInt2, int paramInt3)
  {
    // Byte code:
    //   0: fconst_0
    //   1: fstore 11
    //   3: fload_1
    //   4: fconst_0
    //   5: fcmpg
    //   6: ifle +391 -> 397
    //   9: fload_2
    //   10: fconst_0
    //   11: fcmpg
    //   12: ifgt +4 -> 16
    //   15: return
    //   16: aload_0
    //   17: getfield 34	com/amap/api/mapcore2d/aq:c	Lcom/amap/api/mapcore2d/az;
    //   20: ifnull +376 -> 396
    //   23: aload_0
    //   24: getfield 34	com/amap/api/mapcore2d/aq:c	Lcom/amap/api/mapcore2d/az;
    //   27: getfield 57	com/amap/api/mapcore2d/az:c	Lcom/amap/api/mapcore2d/az$c;
    //   30: ifnull +366 -> 396
    //   33: aload_0
    //   34: getfield 34	com/amap/api/mapcore2d/aq:c	Lcom/amap/api/mapcore2d/az;
    //   37: getfield 143	com/amap/api/mapcore2d/az:b	Lcom/amap/api/mapcore2d/az$d;
    //   40: ifnonnull +4 -> 44
    //   43: return
    //   44: fload 11
    //   46: fstore 10
    //   48: aload_0
    //   49: getfield 34	com/amap/api/mapcore2d/aq:c	Lcom/amap/api/mapcore2d/az;
    //   52: getfield 57	com/amap/api/mapcore2d/az:c	Lcom/amap/api/mapcore2d/az$c;
    //   55: invokevirtual 71	com/amap/api/mapcore2d/az$c:e	()F
    //   58: fstore 12
    //   60: fload 11
    //   62: fstore 10
    //   64: aload_0
    //   65: getfield 34	com/amap/api/mapcore2d/aq:c	Lcom/amap/api/mapcore2d/az;
    //   68: getfield 143	com/amap/api/mapcore2d/az:b	Lcom/amap/api/mapcore2d/az$d;
    //   71: iload_3
    //   72: iload 4
    //   74: iload 5
    //   76: invokevirtual 148	com/amap/api/mapcore2d/az$d:b	(III)I
    //   79: istore 13
    //   81: fload 11
    //   83: fstore 10
    //   85: aload_0
    //   86: getfield 34	com/amap/api/mapcore2d/aq:c	Lcom/amap/api/mapcore2d/az;
    //   89: getfield 143	com/amap/api/mapcore2d/az:b	Lcom/amap/api/mapcore2d/az$d;
    //   92: iload_3
    //   93: iload 4
    //   95: iload 5
    //   97: invokevirtual 150	com/amap/api/mapcore2d/az$d:a	(III)I
    //   100: istore_3
    //   101: iload 13
    //   103: ifne +26 -> 129
    //   106: iload_3
    //   107: ifne +22 -> 129
    //   110: fload 11
    //   112: fstore 10
    //   114: aload_0
    //   115: fload_1
    //   116: putfield 30	com/amap/api/mapcore2d/aq:a	F
    //   119: fload 11
    //   121: fstore 10
    //   123: aload_0
    //   124: fload_2
    //   125: putfield 32	com/amap/api/mapcore2d/aq:b	F
    //   128: return
    //   129: iload_3
    //   130: i2f
    //   131: fload_1
    //   132: fdiv
    //   133: f2d
    //   134: dstore 6
    //   136: iload 13
    //   138: i2f
    //   139: fload_2
    //   140: fdiv
    //   141: f2d
    //   142: dstore 8
    //   144: dload 6
    //   146: dload 8
    //   148: invokestatic 156	java/lang/Math:min	(DD)D
    //   151: dstore 6
    //   153: aload_0
    //   154: getfield 34	com/amap/api/mapcore2d/aq:c	Lcom/amap/api/mapcore2d/az;
    //   157: getfield 160	com/amap/api/mapcore2d/az:h	Lcom/amap/api/mapcore2d/av;
    //   160: getfield 166	com/amap/api/mapcore2d/av:k	D
    //   163: dload 6
    //   165: ddiv
    //   166: dstore 8
    //   168: iconst_0
    //   169: istore_3
    //   170: aload_0
    //   171: getfield 34	com/amap/api/mapcore2d/aq:c	Lcom/amap/api/mapcore2d/az;
    //   174: getfield 160	com/amap/api/mapcore2d/az:h	Lcom/amap/api/mapcore2d/av;
    //   177: getfield 168	com/amap/api/mapcore2d/av:d	D
    //   180: dstore 6
    //   182: dload 6
    //   184: ldc2_w 169
    //   187: ddiv
    //   188: dstore 6
    //   190: dload 6
    //   192: dload 8
    //   194: dcmpl
    //   195: ifle +10 -> 205
    //   198: iload_3
    //   199: iconst_1
    //   200: iadd
    //   201: istore_3
    //   202: goto -20 -> 182
    //   205: aload_0
    //   206: getfield 34	com/amap/api/mapcore2d/aq:c	Lcom/amap/api/mapcore2d/az;
    //   209: getfield 160	com/amap/api/mapcore2d/az:h	Lcom/amap/api/mapcore2d/av;
    //   212: getfield 168	com/amap/api/mapcore2d/av:d	D
    //   215: iconst_1
    //   216: iload_3
    //   217: ishl
    //   218: i2d
    //   219: ddiv
    //   220: dload 8
    //   222: ddiv
    //   223: invokestatic 174	java/lang/Math:log	(D)D
    //   226: dstore 6
    //   228: ldc2_w 169
    //   231: invokestatic 174	java/lang/Math:log	(D)D
    //   234: dstore 8
    //   236: dload 6
    //   238: dload 8
    //   240: ddiv
    //   241: dstore 6
    //   243: iload_3
    //   244: i2d
    //   245: dload 6
    //   247: dadd
    //   248: d2f
    //   249: fstore_1
    //   250: fload_1
    //   251: fstore 10
    //   253: aload_0
    //   254: fload_1
    //   255: invokevirtual 176	com/amap/api/mapcore2d/aq:d	(F)F
    //   258: fstore_2
    //   259: fload_2
    //   260: f2i
    //   261: i2f
    //   262: fstore 10
    //   264: fload_2
    //   265: fload 10
    //   267: fsub
    //   268: f2d
    //   269: dstore 6
    //   271: dload 6
    //   273: dconst_1
    //   274: dconst_1
    //   275: getstatic 178	com/amap/api/mapcore2d/az:a	D
    //   278: dsub
    //   279: ldc2_w 179
    //   282: dmul
    //   283: dsub
    //   284: dcmpl
    //   285: ifle +14 -> 299
    //   288: getstatic 178	com/amap/api/mapcore2d/az:a	D
    //   291: d2f
    //   292: fload 10
    //   294: fadd
    //   295: fstore_1
    //   296: goto +93 -> 389
    //   299: dload 6
    //   301: getstatic 178	com/amap/api/mapcore2d/az:a	D
    //   304: dcmpl
    //   305: ifle +18 -> 323
    //   308: getstatic 178	com/amap/api/mapcore2d/az:a	D
    //   311: ldc2_w 181
    //   314: dsub
    //   315: d2f
    //   316: fload 10
    //   318: fadd
    //   319: fstore_1
    //   320: goto +69 -> 389
    //   323: fload_2
    //   324: fstore_1
    //   325: dload 6
    //   327: getstatic 178	com/amap/api/mapcore2d/az:a	D
    //   330: dsub
    //   331: invokestatic 185	java/lang/Math:abs	(D)D
    //   334: ldc2_w 181
    //   337: dcmpg
    //   338: ifgt +51 -> 389
    //   341: getstatic 178	com/amap/api/mapcore2d/az:a	D
    //   344: dstore 6
    //   346: dload 6
    //   348: ldc2_w 181
    //   351: dsub
    //   352: d2f
    //   353: fload 10
    //   355: fadd
    //   356: fstore_1
    //   357: goto +32 -> 389
    //   360: astore 14
    //   362: fload_2
    //   363: fstore_1
    //   364: goto +16 -> 380
    //   367: astore 14
    //   369: fload 12
    //   371: fstore_1
    //   372: goto +8 -> 380
    //   375: astore 14
    //   377: fload 10
    //   379: fstore_1
    //   380: aload 14
    //   382: ldc 94
    //   384: ldc -69
    //   386: invokestatic 101	com/amap/api/mapcore2d/cm:a	(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    //   389: aload_0
    //   390: fload_1
    //   391: invokevirtual 189	com/amap/api/mapcore2d/aq:c	(F)F
    //   394: pop
    //   395: return
    //   396: return
    //   397: return
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	398	0	this	aq
    //   0	398	1	paramFloat1	float
    //   0	398	2	paramFloat2	float
    //   0	398	3	paramInt1	int
    //   0	398	4	paramInt2	int
    //   0	398	5	paramInt3	int
    //   134	213	6	d1	double
    //   142	97	8	d2	double
    //   46	332	10	f1	float
    //   1	119	11	f2	float
    //   58	312	12	f3	float
    //   79	58	13	i	int
    //   360	1	14	localException1	Exception
    //   367	1	14	localException2	Exception
    //   375	6	14	localException3	Exception
    // Exception table:
    //   from	to	target	type
    //   271	296	360	java/lang/Exception
    //   299	320	360	java/lang/Exception
    //   325	346	360	java/lang/Exception
    //   144	168	367	java/lang/Exception
    //   170	182	367	java/lang/Exception
    //   182	190	367	java/lang/Exception
    //   205	236	367	java/lang/Exception
    //   48	60	375	java/lang/Exception
    //   64	81	375	java/lang/Exception
    //   85	101	375	java/lang/Exception
    //   114	119	375	java/lang/Exception
    //   123	128	375	java/lang/Exception
    //   253	259	375	java/lang/Exception
  }
  
  public void a(int paramInt1, int paramInt2, float paramFloat, boolean paramBoolean1, boolean paramBoolean2, int paramInt3)
  {
    e.a(paramInt1, paramInt2, paramFloat, paramBoolean1, paramBoolean2, paramInt3);
  }
  
  public void a(int paramInt1, int paramInt2, int paramInt3)
  {
    if (d)
    {
      d = false;
      return;
    }
    if ((paramInt1 == 0) && (paramInt2 == 0)) {
      return;
    }
    if (c == null) {
      return;
    }
    try
    {
      if (q.s == true)
      {
        PointF localPointF1 = new PointF(0.0F, 0.0F);
        PointF localPointF2 = new PointF(paramInt1, paramInt2);
        a(c.h.a(localPointF1, localPointF2), paramInt3);
      }
      c.c.a(false, false);
      return;
    }
    catch (Throwable localThrowable)
    {
      cm.a(localThrowable, "MapController", "scrollBy");
    }
  }
  
  public void a(w paramW)
  {
    if (b(paramW)) {
      c(paramW);
    }
  }
  
  public void a(w paramW, float paramFloat)
  {
    if ((!b(paramW)) && (!f(paramFloat))) {
      return;
    }
    c(paramW);
    e(paramFloat);
  }
  
  public void a(w paramW, int paramInt)
  {
    f.a(paramW, null, null, paramInt);
  }
  
  public void a(boolean paramBoolean)
  {
    c.c.g().r();
    if (paramBoolean) {
      f1 = c.c.e() + 1;
    } else {
      f1 = c.c.e() - 1;
    }
    float f1 = c.c.g().a(f1);
    if (f1 != c.c.e()) {
      c(f1);
    }
  }
  
  public boolean a(float paramFloat, int paramInt1, int paramInt2, int paramInt3)
  {
    return a(paramInt1, paramInt2, paramFloat, paramInt3);
  }
  
  public boolean a(int paramInt)
  {
    return a(1, paramInt);
  }
  
  boolean a(int paramInt1, int paramInt2)
  {
    if ((c != null) && (c.c != null)) {
      return a(c.c.c() / 2, c.c.d() / 2, true, false, paramInt1, paramInt2);
    }
    return false;
  }
  
  public boolean a(int paramInt1, int paramInt2, float paramFloat, int paramInt3)
  {
    az localAz = c;
    boolean bool = false;
    if (localAz != null)
    {
      if (c.c == null) {
        return false;
      }
      c.c.g().r();
      float f1 = c.c.e();
      if (paramFloat != f1)
      {
        e.a(paramInt1, paramInt2, paramFloat, f1, paramInt3);
        bool = true;
      }
      try
      {
        if (c.g.c().isScaleControlsEnabled())
        {
          c.g.s();
          return bool;
        }
      }
      catch (RemoteException localRemoteException)
      {
        cm.a(localRemoteException, "MapController", "zoomToAnimation");
      }
      return bool;
    }
    return false;
  }
  
  public float b()
  {
    return b;
  }
  
  public void b(float paramFloat)
  {
    b = paramFloat;
  }
  
  public void b(boolean paramBoolean)
  {
    e.a();
    f.b();
  }
  
  public boolean b(float paramFloat, int paramInt)
  {
    return a(c.c.c() / 2, c.c.d() / 2, paramFloat, paramInt);
  }
  
  public boolean b(int paramInt)
  {
    return b(1, paramInt);
  }
  
  boolean b(int paramInt1, int paramInt2)
  {
    if ((c != null) && (c.c != null)) {
      return a(c.c.c() / 2, c.c.d() / 2, false, false, paramInt1, paramInt2);
    }
    return false;
  }
  
  public float c(float paramFloat)
  {
    if (!f(paramFloat)) {
      return paramFloat;
    }
    e(paramFloat);
    return paramFloat;
  }
  
  public boolean c()
  {
    return a(0);
  }
  
  public boolean c(int paramInt1, int paramInt2)
  {
    return a(paramInt1, paramInt2, true, true);
  }
  
  public float d(float paramFloat)
  {
    if (c != null)
    {
      if (c.c == null) {
        return paramFloat;
      }
      float f1 = paramFloat;
      if (paramFloat < c.c.b()) {
        f1 = c.c.b();
      }
      paramFloat = f1;
      if (f1 > c.c.a()) {
        paramFloat = c.c.a();
      }
      return paramFloat;
    }
    return paramFloat;
  }
  
  public void d(int paramInt1, int paramInt2)
  {
    if (d)
    {
      d = false;
      return;
    }
    if ((paramInt1 == 0) && (paramInt2 == 0)) {
      return;
    }
    if (c == null) {
      return;
    }
    try
    {
      if (q.s == true)
      {
        PointF localPointF1 = new PointF(0.0F, 0.0F);
        PointF localPointF2 = new PointF(paramInt1, paramInt2);
        c.h.a(localPointF1, localPointF2, c.c.e());
      }
      c.c.a(false, false);
      return;
    }
    catch (Throwable localThrowable)
    {
      cm.a(localThrowable, "MapController", "scrollBy");
    }
  }
  
  public boolean d()
  {
    return b(0);
  }
  
  public void e()
  {
    d = true;
  }
  
  public boolean f()
  {
    return f.a();
  }
  
  public void g()
  {
    f.b();
  }
  
  public boolean onKey(View paramView, int paramInt, KeyEvent paramKeyEvent)
  {
    if (paramKeyEvent.getAction() != 0) {
      return false;
    }
    switch (paramInt)
    {
    default: 
      return false;
    case 22: 
      d(10, 0);
      return true;
    case 21: 
      d(-10, 0);
      return true;
    case 20: 
      d(0, 10);
      return true;
    }
    d(0, -10);
    return true;
  }
  
  private class a
    implements bz
  {
    private by b = null;
    private Message c = null;
    private Runnable d = null;
    
    private a() {}
    
    private by a(w paramW, int paramInt)
    {
      if (paramInt < 500) {
        paramInt = 500;
      }
      try
      {
        paramW = new by(paramInt, 10, ah.l, paramW, paramInt, this);
        return paramW;
      }
      catch (Throwable paramW)
      {
        cm.a(paramW, "MapController", "makeTransTool");
      }
      return null;
    }
    
    private void d()
    {
      b = null;
      c = null;
      d = null;
    }
    
    public void a(w paramW)
    {
      if (paramW != null)
      {
        if (aq.a(aq.this) == null) {
          return;
        }
        if ((paramW.d() != Long.MIN_VALUE) && (paramW.c() != Long.MIN_VALUE))
        {
          aq.this.a(paramW);
          return;
        }
        paramW = ah.b(paramW);
        aq.this.a(paramW);
        return;
      }
    }
    
    public void a(w paramW, Message paramMessage, Runnable paramRunnable, int paramInt)
    {
      if (aq.a(aq.this) != null)
      {
        ad.a = true;
        ah.m = paramW.g();
      }
      b = a(paramW, paramInt);
      c = paramMessage;
      d = paramRunnable;
      if (b != null) {
        b.d();
      }
    }
    
    public boolean a()
    {
      if (b != null) {
        return b.f();
      }
      return false;
    }
    
    public void b()
    {
      if (b != null) {
        b.e();
      }
    }
    
    public void c()
    {
      if (c != null) {
        c.getTarget().sendMessage(c);
      }
      if (d != null) {
        d.run();
      }
      d();
      if ((aq.a(aq.this) != null) && (ad != null)) {
        ad.a = false;
      }
    }
  }
  
  private class b
    implements Animation.AnimationListener
  {
    private LinkedList<Animation> b = new LinkedList();
    private cf c = null;
    
    private b() {}
    
    private void a(float paramFloat, int paramInt1, int paramInt2, boolean paramBoolean, int paramInt3)
    {
      try
      {
        if ((c == null) && (aq.a(aq.this) != null) && (ac != null))
        {
          c = new cf(ac.g(), this, paramInt3);
        }
        else
        {
          cf localCf = c;
          int i = paramInt3;
          if (paramInt3 <= 160) {
            i = 160;
          }
          localCf.a(i);
        }
        if (c != null)
        {
          c.d = paramBoolean;
          c.c = paramFloat;
          c.a(paramFloat, false, paramInt1, paramInt2);
          return;
        }
      }
      catch (Throwable localThrowable)
      {
        cm.a(localThrowable, "MapController", "doZoomOut");
      }
    }
    
    private void b(float paramFloat, int paramInt1, int paramInt2, boolean paramBoolean, int paramInt3)
    {
      try
      {
        Object localObject;
        if (c == null)
        {
          c = new cf(ac.g(), this, paramInt3);
        }
        else
        {
          localObject = c;
          int i = paramInt3;
          if (paramInt3 <= 160) {
            i = 160;
          }
          ((cf)localObject).a(i);
        }
        c.c = paramFloat;
        c.d = paramBoolean;
        if (c.d == true)
        {
          localObject = new Point(paramInt1, paramInt2);
          w localW = ac.g().d().a(paramInt1, paramInt2);
          ah.l = ah.a(localW);
          ah.a((Point)localObject);
        }
        c.a(paramFloat, true, paramInt1, paramInt2);
        return;
      }
      catch (Throwable localThrowable)
      {
        cm.a(localThrowable, "MapController", "doZoomIn");
      }
    }
    
    public void a()
    {
      b.clear();
    }
    
    public void a(int paramInt1, int paramInt2, float paramFloat1, float paramFloat2, int paramInt3)
    {
      for (;;)
      {
        try
        {
          if (c == null)
          {
            c = new cf(ac.g(), this, paramInt3);
          }
          else
          {
            cf localCf = c;
            int i = paramInt3;
            if (paramInt3 <= 160) {
              i = 160;
            }
            localCf.a(i);
          }
          c.c = paramFloat1;
          if (paramFloat1 > paramFloat2)
          {
            bool = true;
            c.a(paramFloat1, bool, paramInt1, paramInt2);
            return;
          }
        }
        catch (Throwable localThrowable)
        {
          cm.a(localThrowable, "MapController", "zoomTo");
          return;
        }
        boolean bool = false;
      }
    }
    
    public void a(int paramInt1, int paramInt2, float paramFloat, boolean paramBoolean1, boolean paramBoolean2, int paramInt3)
    {
      if (!paramBoolean1)
      {
        a(paramFloat, paramInt1, paramInt2, paramBoolean2, paramInt3);
        return;
      }
      b(paramFloat, paramInt1, paramInt2, paramBoolean2, paramInt3);
    }
    
    public void onAnimationEnd(Animation paramAnimation)
    {
      if (aq.a(aq.this) == null) {
        return;
      }
      if (b.size() == 0)
      {
        ae.b();
        return;
      }
      ac.g().startAnimation((Animation)b.remove());
    }
    
    public void onAnimationRepeat(Animation paramAnimation) {}
    
    public void onAnimationStart(Animation paramAnimation) {}
  }
}
