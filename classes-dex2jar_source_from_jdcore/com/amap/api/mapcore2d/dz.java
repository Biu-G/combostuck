package com.amap.api.mapcore2d;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.os.Build.VERSION;
import android.text.TextUtils;
import java.io.File;
import java.io.RandomAccessFile;
import java.util.List;

public class dz
  extends Thread
  implements er.a
{
  private ea a;
  private er b;
  private cy c;
  private String d;
  private RandomAccessFile e;
  private Context f;
  
  public dz(Context paramContext, ea paramEa, cy paramCy)
  {
    try
    {
      f = paramContext.getApplicationContext();
      c = paramCy;
      if (paramEa == null) {
        return;
      }
      a = paramEa;
      b = new er(new ed(a));
      d = ee.a(paramContext, a.a);
      return;
    }
    catch (Throwable paramContext)
    {
      ek.a(paramContext, "dDownLoad", "DexDownLoad()");
    }
  }
  
  private void a(Context paramContext, String paramString)
  {
    try
    {
      paramContext = paramContext.getSharedPreferences(paramString, 0).edit();
      paramContext.clear();
      paramContext.commit();
      return;
    }
    catch (Throwable paramContext)
    {
      ek.a(paramContext, "dDownLoad", "clearMarker()");
    }
  }
  
  private void a(String paramString)
  {
    String str = a.c();
    dm localDm = new dm(f, eg.c());
    ee.a.a(localDm, new ei.a(a.a, paramString, a.b, str, a.d).a("copy").a(), ei.a(a.a, a.b, str, a.d));
    a(f, a.b);
    try
    {
      ee.a(f, localDm, c, d, a.d);
      ee.a(f, c);
      return;
    }
    catch (Throwable paramString)
    {
      ek.a(paramString, "dDownLoad", "onFinish1");
    }
  }
  
  private boolean a(Context paramContext)
  {
    return ct.m(paramContext) == 1;
  }
  
  private boolean a(dm paramDm)
  {
    try
    {
      paramDm = ee.a.a(paramDm, a.b, "used");
      if ((paramDm != null) && (paramDm.size() > 0))
      {
        int i = ek.a(((ei)paramDm.get(0)).e(), a.d);
        if (i > 0) {
          return true;
        }
      }
    }
    catch (Throwable paramDm)
    {
      ek.a(paramDm, "dDownLoad", "isUsed()");
    }
    return false;
  }
  
  private boolean a(dm paramDm, ei paramEi, ea paramEa)
  {
    String str1 = b;
    String str3 = c;
    String str2 = d;
    paramEa = e;
    if ("errorstatus".equals(paramEi.f()))
    {
      b(paramDm);
      return true;
    }
    if (!new File(d).exists()) {
      return false;
    }
    paramEi = paramDm.b(ei.a(ee.a(f, str1, str3), str1, str3, str2), ei.class);
    if ((paramEi != null) && (paramEi.size() > 0)) {
      return true;
    }
    try
    {
      ee.a(f, str1, c.b());
      ee.a(f, paramDm, c, d, str2);
      ee.a(f, c);
      return true;
    }
    catch (Throwable paramDm)
    {
      ek.a(paramDm, "dDownLoad", "processDownloadedFile()");
    }
    return true;
  }
  
  private void b(dm paramDm)
  {
    if (!new File(ee.b(f, c.a(), c.b())).exists())
    {
      if (TextUtils.isEmpty(ee.a(f, paramDm, c))) {
        return;
      }
      try
      {
        ee.a(f, c);
        return;
      }
      catch (Throwable paramDm)
      {
        paramDm.printStackTrace();
      }
    }
  }
  
  private boolean f()
  {
    dm localDm = new dm(f, eg.c());
    if (a(localDm)) {
      return true;
    }
    ei localEi = ee.a.a(localDm, a.a);
    if (localEi != null) {
      return a(localDm, localEi, a);
    }
    return false;
  }
  
  private boolean g()
  {
    return (Build.VERSION.SDK_INT >= a.g) && (Build.VERSION.SDK_INT <= a.f);
  }
  
  public void a()
  {
    try
    {
      start();
      return;
    }
    catch (Throwable localThrowable)
    {
      ek.a(localThrowable, "dDownLoad", "startDownload()");
    }
  }
  
  public void a(Throwable paramThrowable)
  {
    try
    {
      ek.a(e);
      return;
    }
    catch (Throwable paramThrowable)
    {
      paramThrowable.printStackTrace();
    }
  }
  
  public void a(byte[] paramArrayOfByte, long paramLong)
  {
    try
    {
      if (e == null)
      {
        File localFile1 = new File(d);
        File localFile2 = localFile1.getParentFile();
        if (!localFile2.exists()) {
          localFile2.mkdirs();
        }
        e = new RandomAccessFile(localFile1, "rw");
      }
      e.seek(paramLong);
      e.write(paramArrayOfByte);
      return;
    }
    catch (Throwable paramArrayOfByte)
    {
      ek.a(paramArrayOfByte, "dDownLoad", "onDownload()");
    }
  }
  
  public void b() {}
  
  public void c()
  {
    try
    {
      if (e == null) {
        return;
      }
      ek.a(e);
      Object localObject = a.b();
      if (ek.b(d, (String)localObject))
      {
        a((String)localObject);
        localObject = new fb(f, c.a(), c.b(), "O008");
        ((fb)localObject).a("{\"param_int_first\":1}");
        fc.a((fb)localObject, f);
        return;
      }
      try
      {
        new File(d).delete();
        return;
      }
      catch (Throwable localThrowable1)
      {
        ek.a(localThrowable1, "dDownLoad", "onFinish");
        return;
      }
      return;
    }
    catch (Throwable localThrowable2)
    {
      ek.a(localThrowable2, "dDownLoad", "onFinish()");
    }
  }
  
  boolean d()
  {
    cy localCy = c;
    boolean bool2 = false;
    if (localCy == null) {
      return false;
    }
    boolean bool1 = bool2;
    if (c.a().equals(a.b))
    {
      bool1 = bool2;
      if (c.b().equals(a.c)) {
        bool1 = true;
      }
    }
    return bool1;
  }
  
  boolean e()
  {
    try
    {
      if ((d()) && (g()) && (a(f)) && (!f()))
      {
        ee.b(f, c.a());
        return true;
      }
      return false;
    }
    catch (Throwable localThrowable)
    {
      ek.a(localThrowable, "dDownLoad", "isNeedDownload()");
    }
    return false;
  }
  
  public void run()
  {
    try
    {
      if (e())
      {
        fb localFb = new fb(f, c.a(), c.b(), "O008");
        localFb.a("{\"param_int_first\":0}");
        fc.a(localFb, f);
        b.a(this);
        return;
      }
    }
    catch (Throwable localThrowable)
    {
      ek.a(localThrowable, "dDownLoad", "run()");
    }
  }
}
