package com.amap.api.mapcore2d;

import android.content.ContentResolver;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.location.Location;
import android.net.NetworkInfo;
import android.os.Build;
import android.os.Build.VERSION;
import android.os.SystemClock;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.SparseArray;
import java.text.SimpleDateFormat;
import java.util.Hashtable;
import java.util.Random;
import org.json.JSONObject;

public final class gf
{
  static String a = null;
  private static int b;
  private static String[] c;
  private static Hashtable<String, Long> d = new Hashtable();
  private static SparseArray<String> e = null;
  private static SimpleDateFormat f = null;
  private static String[] g = { "android.permission.ACCESS_COARSE_LOCATION", "android.permission.ACCESS_FINE_LOCATION" };
  
  public static double a(double paramDouble)
  {
    return (paramDouble * 1000000.0D) / 1000000.0D;
  }
  
  public static float a(float paramFloat)
  {
    return (float)((paramFloat * 100.0D) / 100.0D);
  }
  
  public static float a(double[] paramArrayOfDouble)
  {
    if (paramArrayOfDouble.length != 4) {
      return 0.0F;
    }
    float[] arrayOfFloat = new float[1];
    Location.distanceBetween(paramArrayOfDouble[0], paramArrayOfDouble[1], paramArrayOfDouble[2], paramArrayOfDouble[3], arrayOfFloat);
    return arrayOfFloat[0];
  }
  
  public static int a(int paramInt)
  {
    return paramInt * 2 - 113;
  }
  
  public static int a(NetworkInfo paramNetworkInfo)
  {
    if (paramNetworkInfo == null) {
      return -1;
    }
    if (!paramNetworkInfo.isAvailable()) {
      return -1;
    }
    if (!paramNetworkInfo.isConnected()) {
      return -1;
    }
    return paramNetworkInfo.getType();
  }
  
  public static long a()
  {
    return System.currentTimeMillis();
  }
  
  public static Object a(Context paramContext, String paramString)
  {
    if (paramContext == null) {
      return null;
    }
    try
    {
      paramContext = paramContext.getApplicationContext().getSystemService(paramString);
      return paramContext;
    }
    catch (Throwable paramContext)
    {
      gc.a(paramContext, "Utils", "getServ");
    }
    return null;
  }
  
  public static boolean a(Context paramContext)
  {
    if (paramContext == null) {
      return false;
    }
    try
    {
      if (c() < 17) {
        return b(paramContext, "android.provider.Settings$System");
      }
      boolean bool = b(paramContext, "android.provider.Settings$Global");
      return bool;
    }
    catch (Throwable paramContext) {}
    return false;
  }
  
  public static boolean a(String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {
      return false;
    }
    if (paramString.equals("00:00:00:00:00:00")) {
      return false;
    }
    return !paramString.contains(" :");
  }
  
  public static boolean a(JSONObject paramJSONObject, String paramString)
  {
    return cz.a(paramJSONObject, paramString);
  }
  
  public static byte[] a(int paramInt, byte[] paramArrayOfByte)
  {
    byte[] arrayOfByte;
    if (paramArrayOfByte != null)
    {
      arrayOfByte = paramArrayOfByte;
      if (paramArrayOfByte.length >= 2) {}
    }
    else
    {
      arrayOfByte = new byte[2];
    }
    arrayOfByte[0] = ((byte)(paramInt & 0xFF));
    arrayOfByte[1] = ((byte)((paramInt & 0xFF00) >> 8));
    return arrayOfByte;
  }
  
  public static byte[] a(long paramLong)
  {
    byte[] arrayOfByte = new byte[8];
    int i = 0;
    while (i < arrayOfByte.length)
    {
      arrayOfByte[i] = ((byte)(int)(paramLong >> i * 8 & 0xFF));
      i += 1;
    }
    return arrayOfByte;
  }
  
  public static byte[] a(byte[] paramArrayOfByte)
  {
    try
    {
      paramArrayOfByte = cz.b(paramArrayOfByte);
      return paramArrayOfByte;
    }
    catch (Throwable paramArrayOfByte)
    {
      gc.a(paramArrayOfByte, "Utils", "gz");
    }
    return null;
  }
  
  public static String[] a(TelephonyManager paramTelephonyManager)
  {
    if (paramTelephonyManager != null) {
      paramTelephonyManager = paramTelephonyManager.getNetworkOperator();
    } else {
      paramTelephonyManager = null;
    }
    String[] arrayOfString = { "0", "0" };
    if (TextUtils.isEmpty(paramTelephonyManager)) {}
    while ((!TextUtils.isDigitsOnly(paramTelephonyManager)) || (paramTelephonyManager.length() <= 4))
    {
      i = 0;
      break;
    }
    int i = 1;
    if (i != 0)
    {
      arrayOfString[0] = paramTelephonyManager.substring(0, 3);
      char[] arrayOfChar = paramTelephonyManager.substring(3).toCharArray();
      i = 0;
      while ((i < arrayOfChar.length) && (Character.isDigit(arrayOfChar[i]))) {
        i += 1;
      }
      arrayOfString[1] = paramTelephonyManager.substring(3, i + 3);
    }
    try
    {
      i = Integer.parseInt(arrayOfString[0]);
    }
    catch (Throwable paramTelephonyManager)
    {
      gc.a(paramTelephonyManager, "Utils", "getMccMnc");
      i = 0;
    }
    if (i == 0) {
      arrayOfString[0] = "0";
    }
    if ((!arrayOfString[0].equals("0")) && (!arrayOfString[1].equals("0")))
    {
      c = arrayOfString;
      return arrayOfString;
    }
    paramTelephonyManager = arrayOfString;
    if (arrayOfString[0].equals("0"))
    {
      paramTelephonyManager = arrayOfString;
      if (arrayOfString[1].equals("0"))
      {
        paramTelephonyManager = arrayOfString;
        if (c != null) {
          paramTelephonyManager = c;
        }
      }
    }
    return paramTelephonyManager;
  }
  
  public static double b(double paramDouble)
  {
    return (paramDouble * 100.0D) / 100.0D;
  }
  
  public static long b()
  {
    return SystemClock.elapsedRealtime();
  }
  
  public static String b(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      return "其他错误";
    case 15: 
      return "当前返回位置为模拟软件返回，请关闭模拟软件，或者在option中设置允许模拟";
    case 14: 
      return "GPS 定位失败，由于设备当前 GPS 状态差,建议持设备到相对开阔的露天场所再次尝试";
    case 13: 
      return "网络定位失败，请检查设备是否插入sim卡，是否开启移动网络或开启了wifi模块";
    case 12: 
      return "缺少定位权限";
    case 11: 
      return "错误的基站信息，请检查是否插入SIM卡";
    case 10: 
      return "定位服务启动失败";
    case 9: 
      return "初始化异常";
    case 8: 
      return "其他错误";
    case 7: 
      return "KEY错误";
    case 6: 
      return "定位结果错误";
    case 5: 
      return "解析数据异常";
    case 4: 
      return "网络连接异常";
    case 3: 
      return "请求参数获取出现异常";
    case 2: 
      return "WIFI信息不足";
    case 1: 
      return "重要参数为空";
    }
    return "success";
  }
  
  public static String b(Context paramContext)
  {
    if (!TextUtils.isEmpty(gc.f)) {
      return gc.f;
    }
    CharSequence localCharSequence = null;
    if (paramContext == null) {
      return null;
    }
    Object localObject1 = cp.c(paramContext);
    Object localObject2;
    try
    {
      localObject1 = paramContext.getPackageManager().getPackageInfo((String)localObject1, 64);
    }
    catch (Throwable localThrowable1)
    {
      gc.a(localThrowable1, "Utils", "getAppName part");
      localObject2 = null;
    }
    try
    {
      if (TextUtils.isEmpty(gc.g)) {
        gc.g = null;
      }
    }
    catch (Throwable localThrowable2)
    {
      gc.a(localThrowable2, "Utils", "getAppName");
    }
    StringBuilder localStringBuilder = new StringBuilder();
    if (localObject2 != null)
    {
      if (applicationInfo != null) {
        localCharSequence = applicationInfo.loadLabel(paramContext.getPackageManager());
      }
      if (localCharSequence != null) {
        localStringBuilder.append(localCharSequence.toString());
      }
      if (!TextUtils.isEmpty(versionName)) {
        localStringBuilder.append(versionName);
      }
    }
    paramContext = cp.c(paramContext);
    if (!TextUtils.isEmpty(paramContext))
    {
      localStringBuilder.append(",");
      localStringBuilder.append(paramContext);
    }
    if (!TextUtils.isEmpty(gc.g))
    {
      localStringBuilder.append(",");
      localStringBuilder.append(gc.g);
    }
    paramContext = localStringBuilder.toString();
    gc.f = paramContext;
    return paramContext;
  }
  
  public static String b(TelephonyManager paramTelephonyManager)
  {
    SparseArray localSparseArray = e;
    int i = 0;
    if (localSparseArray == null)
    {
      localSparseArray = new SparseArray();
      e = localSparseArray;
      localSparseArray.append(0, "UNKWN");
      e.append(1, "GPRS");
      e.append(2, "EDGE");
      e.append(3, "UMTS");
      e.append(4, "CDMA");
      e.append(5, "EVDO_0");
      e.append(6, "EVDO_A");
      e.append(7, "1xRTT");
      e.append(8, "HSDPA");
      e.append(9, "HSUPA");
      e.append(10, "HSPA");
      e.append(11, "IDEN");
      e.append(12, "EVDO_B");
      e.append(13, "LTE");
      e.append(14, "EHRPD");
      e.append(15, "HSPAP");
    }
    if (paramTelephonyManager != null) {
      i = paramTelephonyManager.getNetworkType();
    }
    return (String)e.get(i, "UNKWN");
  }
  
  private static boolean b(Context paramContext, String paramString)
    throws Throwable
  {
    return ((Integer)gd.a(paramString, "getInt", new Object[] { paramContext.getContentResolver(), ((String)gd.a(paramString, "AIRPLANE_MODE_ON")).toString() }, new Class[] { ContentResolver.class, String.class })).intValue() == 1;
  }
  
  public static byte[] b(int paramInt, byte[] paramArrayOfByte)
  {
    byte[] arrayOfByte;
    if (paramArrayOfByte != null)
    {
      arrayOfByte = paramArrayOfByte;
      if (paramArrayOfByte.length >= 4) {}
    }
    else
    {
      arrayOfByte = new byte[4];
    }
    int i = 0;
    while (i < arrayOfByte.length)
    {
      arrayOfByte[i] = ((byte)(paramInt >> i * 8 & 0xFF));
      i += 1;
    }
    return arrayOfByte;
  }
  
  public static byte[] b(String paramString)
  {
    return a(Integer.parseInt(paramString), null);
  }
  
  public static int c()
  {
    if (b > 0) {
      return b;
    }
    try
    {
      i = gd.b("android.os.Build$VERSION", "SDK_INT");
      return i;
    }
    catch (Throwable localThrowable1)
    {
      for (;;)
      {
        try
        {
          int i = Integer.parseInt(gd.a("android.os.Build$VERSION", "SDK").toString());
          return i;
        }
        catch (Throwable localThrowable2) {}
        localThrowable1 = localThrowable1;
      }
    }
    return 0;
  }
  
  public static NetworkInfo c(Context paramContext)
  {
    try
    {
      paramContext = ct.n(paramContext);
      return paramContext;
    }
    catch (Throwable paramContext)
    {
      gc.a(paramContext, "Utils", "getNetWorkInfo");
    }
    return null;
  }
  
  public static byte[] c(String paramString)
  {
    return b(Integer.parseInt(paramString), null);
  }
  
  public static String d()
  {
    return Build.MODEL;
  }
  
  public static String e()
  {
    return Build.VERSION.RELEASE;
  }
  
  public static int f()
  {
    return new Random().nextInt(65536) - 32768;
  }
}
