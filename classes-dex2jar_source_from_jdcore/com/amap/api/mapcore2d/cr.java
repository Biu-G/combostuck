package com.amap.api.mapcore2d;

import android.content.Context;
import android.util.Log;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

@Deprecated
public class cr
{
  public static int a = -1;
  public static String b = "";
  private static cy c;
  private static String d = "http://apiinit.amap.com/v3/log/init";
  private static String e;
  
  private static String a()
  {
    return d;
  }
  
  private static Map<String, String> a(Context paramContext)
  {
    HashMap localHashMap = new HashMap();
    try
    {
      localHashMap.put("resType", "json");
      localHashMap.put("encode", "UTF-8");
      String str = cs.a();
      localHashMap.put("ts", str);
      localHashMap.put("key", cp.f(paramContext));
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("resType=json&encode=UTF-8&key=");
      localStringBuilder.append(cp.f(paramContext));
      localHashMap.put("scode", cs.a(paramContext, str, cz.d(localStringBuilder.toString())));
      return localHashMap;
    }
    catch (Throwable paramContext)
    {
      dd.a(paramContext, "Auth", "gParams");
    }
    return localHashMap;
  }
  
  public static void a(String paramString)
  {
    cp.a(paramString);
  }
  
  @Deprecated
  public static boolean a(Context paramContext, cy paramCy)
  {
    try
    {
      boolean bool = a(paramContext, paramCy, false);
      return bool;
    }
    finally
    {
      paramContext = finally;
      throw paramContext;
    }
  }
  
  private static boolean a(Context paramContext, cy paramCy, boolean paramBoolean)
  {
    c = paramCy;
    try
    {
      paramCy = a();
      HashMap localHashMap = new HashMap();
      localHashMap.put("Content-Type", "application/x-www-form-urlencoded");
      localHashMap.put("Accept-Encoding", "gzip");
      localHashMap.put("Connection", "Keep-Alive");
      localHashMap.put("User-Agent", c.d());
      localHashMap.put("X-INFO", cs.a(paramContext, c, null, paramBoolean));
      localHashMap.put("logversion", "2.1");
      localHashMap.put("platinfo", String.format("platform=Android&sdkversion=%s&product=%s", new Object[] { c.b(), c.a() }));
      ep localEp = ep.a();
      da localDa = new da();
      localDa.a(cw.a(paramContext));
      localDa.a(localHashMap);
      localDa.b(a(paramContext));
      localDa.a(paramCy);
      paramBoolean = a(localEp.a(localDa));
      return paramBoolean;
    }
    catch (Throwable paramContext)
    {
      dd.a(paramContext, "Auth", "getAuth");
    }
    return true;
  }
  
  private static boolean a(byte[] paramArrayOfByte)
  {
    if (paramArrayOfByte == null) {
      return true;
    }
    try
    {
      paramArrayOfByte = new JSONObject(cz.a(paramArrayOfByte));
      if (paramArrayOfByte.has("status"))
      {
        i = paramArrayOfByte.getInt("status");
        if (i == 1) {
          a = 1;
        } else if (i == 0) {
          a = 0;
        }
      }
      if (paramArrayOfByte.has("info")) {
        b = paramArrayOfByte.getString("info");
      }
      if (a == 0) {
        Log.i("AuthFailure", b);
      }
      int i = a;
      return i == 1;
    }
    catch (Throwable paramArrayOfByte)
    {
      dd.a(paramArrayOfByte, "Auth", "lData");
      return false;
    }
    catch (JSONException paramArrayOfByte)
    {
      dd.a(paramArrayOfByte, "Auth", "lData");
    }
    return false;
  }
}
