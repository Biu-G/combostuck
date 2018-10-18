package com.amap.api.mapcore2d;

import android.content.Context;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

public final class fz
{
  private static fz b;
  ep a = null;
  private Context c = null;
  private int d = 0;
  private int e = gc.e;
  private boolean f = false;
  
  private fz(Context paramContext)
  {
    c = paramContext;
    a = ep.a();
  }
  
  public static fz a(Context paramContext)
  {
    if (b == null) {
      b = new fz(paramContext);
    }
    return b;
  }
  
  public final ex a(ga paramGa)
    throws Throwable
  {
    if (gf.a(gf.c(c)) == -1) {
      return null;
    }
    long l = gf.b();
    paramGa = a.a(paramGa, f);
    d = Long.valueOf(gf.b() - l).intValue();
    return paramGa;
  }
  
  public final ga a(Context paramContext, byte[] paramArrayOfByte, String paramString)
  {
    try
    {
      HashMap localHashMap = new HashMap();
      ga localGa = new ga(paramContext, gc.b());
      String str;
      Object localObject;
      return localGa;
    }
    catch (Throwable paramContext)
    {
      for (;;)
      {
        try
        {
          localHashMap.put("Content-Type", "application/octet-stream");
          localHashMap.put("Accept-Encoding", "gzip");
          localHashMap.put("gzipped", "1");
          localHashMap.put("Connection", "Keep-Alive");
          localHashMap.put("User-Agent", "AMAP_Location_SDK_Android 3.4.0");
          localHashMap.put("KEY", cp.f(paramContext));
          localHashMap.put("enginever", "4.7");
          str = cs.a();
          localObject = new StringBuilder("key=");
          ((StringBuilder)localObject).append(cp.f(paramContext));
          localObject = cs.a(paramContext, str, ((StringBuilder)localObject).toString());
          localHashMap.put("ts", str);
          localHashMap.put("scode", localObject);
          localHashMap.put("encr", "1");
          localGa.b(localHashMap);
          localGa.o();
          localGa.a(String.format(Locale.US, "platform=Android&sdkversion=%s&product=%s&loc_channel=%s", new Object[] { "3.4.0", "loc", Integer.valueOf(3) }));
          localGa.n();
          localGa.b(paramString);
          localGa.b(gf.a(paramArrayOfByte));
          localGa.a(cw.a(paramContext));
          paramContext = new HashMap();
          paramContext.put("output", "bin");
          paramContext.put("policy", "3103");
          localGa.a(paramContext);
          localGa.a(e);
          localGa.b(e);
          paramContext = localGa;
          if (f)
          {
            localGa.b(localGa.g().replace("http", "https"));
            return localGa;
            paramContext = null;
          }
          return paramContext;
        }
        catch (Throwable paramContext) {}
        paramContext = paramContext;
      }
    }
  }
  
  public final void a(long paramLong, boolean paramBoolean)
  {
    try
    {
      f = paramBoolean;
      e = Long.valueOf(paramLong).intValue();
      return;
    }
    catch (Throwable localThrowable)
    {
      gc.a(localThrowable, "netmanager", "setOption");
    }
  }
}
