package com.amap.api.mapcore2d;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Environment;
import android.util.Log;
import com.amap.api.maps2d.MapsInitializer;
import com.amap.api.maps2d.model.BitmapDescriptorFactory;
import com.amap.api.maps2d.model.LatLng;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.Arrays;
import java.util.List;

public class cm
{
  public static double[] a = { 7453.642D, 3742.9905D, 1873.333D, 936.89026D, 468.472D, 234.239D, 117.12D, 58.56D, 29.28D, 14.64D, 7.32D, 3.66D, 1.829D, 0.915D, 0.4575D, 0.228D, 0.1144D };
  
  public static double a(double paramDouble1, double paramDouble2, double paramDouble3, double paramDouble4, double paramDouble5, double paramDouble6)
  {
    return (paramDouble3 - paramDouble1) * (paramDouble6 - paramDouble2) - (paramDouble5 - paramDouble1) * (paramDouble4 - paramDouble2);
  }
  
  public static double a(LatLng paramLatLng1, LatLng paramLatLng2)
  {
    double d4 = longitude;
    double d3 = latitude;
    double d2 = longitude;
    double d1 = latitude;
    double d5 = d4 * 0.01745329251994329D;
    double d6 = d3 * 0.01745329251994329D;
    d3 = d2 * 0.01745329251994329D;
    d4 = d1 * 0.01745329251994329D;
    d1 = Math.sin(d5);
    d2 = Math.sin(d6);
    d5 = Math.cos(d5);
    d6 = Math.cos(d6);
    double d7 = Math.sin(d3);
    double d8 = Math.sin(d4);
    d3 = Math.cos(d3);
    d4 = Math.cos(d4);
    paramLatLng1 = new double[3];
    paramLatLng2 = new double[3];
    paramLatLng1[0] = (d5 * d6);
    paramLatLng1[1] = (d6 * d1);
    paramLatLng1[2] = d2;
    paramLatLng2[0] = (d3 * d4);
    paramLatLng2[1] = (d4 * d7);
    paramLatLng2[2] = d8;
    return Math.asin(Math.sqrt((paramLatLng1[0] - paramLatLng2[0]) * (paramLatLng1[0] - paramLatLng2[0]) + (paramLatLng1[1] - paramLatLng2[1]) * (paramLatLng1[1] - paramLatLng2[1]) + (paramLatLng1[2] - paramLatLng2[2]) * (paramLatLng1[2] - paramLatLng2[2])) / 2.0D) * 1.27420015798544E7D;
  }
  
  public static float a(float paramFloat)
  {
    if (paramFloat < 0.0F) {
      return 0.0F;
    }
    float f = paramFloat;
    if (paramFloat > 45.0F) {
      f = 45.0F;
    }
    return f;
  }
  
  public static int a(Object[] paramArrayOfObject)
  {
    return Arrays.hashCode(paramArrayOfObject);
  }
  
  public static Bitmap a(Bitmap paramBitmap, float paramFloat)
  {
    if (paramBitmap == null) {
      return null;
    }
    try
    {
      paramBitmap = Bitmap.createScaledBitmap(paramBitmap, (int)(paramBitmap.getWidth() * paramFloat), (int)(paramBitmap.getHeight() * paramFloat), true);
      return paramBitmap;
    }
    catch (Throwable paramBitmap)
    {
      a(paramBitmap, "Util", "zoomBitmap");
    }
    return null;
  }
  
  public static Bitmap a(String paramString)
  {
    try
    {
      Object localObject = new StringBuilder();
      ((StringBuilder)localObject).append("/assets/");
      ((StringBuilder)localObject).append(paramString);
      paramString = BitmapDescriptorFactory.class.getResourceAsStream(((StringBuilder)localObject).toString());
      localObject = BitmapFactory.decodeStream(paramString);
      paramString.close();
      return localObject;
    }
    catch (Throwable paramString)
    {
      a(paramString, "Util", "fromAsset");
    }
    return null;
  }
  
  public static cy a()
  {
    try
    {
      if (q.p == null)
      {
        cy localCy = new cy.a("2dmap", "5.2.0", "AMAP_SDK_Android_2DMap_5.2.0").a(new String[] { "com.amap.api.maps2d", "com.amap.api.mapcore2d" }).a("5.2.0").a();
        return localCy;
      }
      return q.p;
    }
    catch (Throwable localThrowable)
    {
      for (;;) {}
    }
    return null;
  }
  
  public static w a(LatLng paramLatLng)
  {
    if (paramLatLng == null) {
      return null;
    }
    return new w((int)(latitude * 1000000.0D), (int)(longitude * 1000000.0D));
  }
  
  public static String a(int paramInt)
  {
    if (paramInt < 1000)
    {
      localStringBuilder = new StringBuilder();
      localStringBuilder.append(paramInt);
      localStringBuilder.append("m");
      return localStringBuilder.toString();
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(paramInt / 1000);
    localStringBuilder.append("km");
    return localStringBuilder.toString();
  }
  
  public static String a(String paramString, Object paramObject)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(paramString);
    localStringBuilder.append("=");
    localStringBuilder.append(String.valueOf(paramObject));
    return localStringBuilder.toString();
  }
  
  public static String a(String... paramVarArgs)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    int k = paramVarArgs.length;
    int i = 0;
    int j = 0;
    while (i < k)
    {
      localStringBuilder.append(paramVarArgs[i]);
      if (j != paramVarArgs.length - 1) {
        localStringBuilder.append(",");
      }
      j += 1;
      i += 1;
    }
    return localStringBuilder.toString();
  }
  
  public static void a(Throwable paramThrowable, String paramString1, String paramString2)
  {
    try
    {
      dg localDg = dg.a();
      if (localDg != null) {
        localDg.c(paramThrowable, paramString1, paramString2);
      }
      paramThrowable.printStackTrace();
      return;
    }
    catch (Throwable paramThrowable) {}
  }
  
  public static boolean a(double paramDouble1, double paramDouble2, double paramDouble3, double paramDouble4, double paramDouble5, double paramDouble6, double paramDouble7, double paramDouble8)
  {
    paramDouble3 -= paramDouble1;
    paramDouble8 -= paramDouble6;
    paramDouble4 -= paramDouble2;
    double d = paramDouble7 - paramDouble5;
    paramDouble7 = paramDouble3 * paramDouble8 - paramDouble4 * d;
    if (paramDouble7 != 0.0D)
    {
      paramDouble2 -= paramDouble6;
      paramDouble1 -= paramDouble5;
      paramDouble5 = (d * paramDouble2 - paramDouble8 * paramDouble1) / paramDouble7;
      paramDouble1 = (paramDouble2 * paramDouble3 - paramDouble1 * paramDouble4) / paramDouble7;
      if ((paramDouble5 >= 0.0D) && (paramDouble5 <= 1.0D) && (paramDouble1 >= 0.0D) && (paramDouble1 <= 1.0D)) {
        return true;
      }
    }
    return false;
  }
  
  public static boolean a(int paramInt1, int paramInt2)
  {
    if ((paramInt1 > 0) && (paramInt2 > 0)) {
      return true;
    }
    Log.w("2dmap", "the map must have a size");
    return false;
  }
  
  /* Error */
  public static boolean a(Context paramContext)
  {
    // Byte code:
    //   0: ldc 2
    //   2: monitorenter
    //   3: aload_0
    //   4: ifnonnull +8 -> 12
    //   7: ldc 2
    //   9: monitorexit
    //   10: iconst_0
    //   11: ireturn
    //   12: aload_0
    //   13: ldc -29
    //   15: invokevirtual 233	android/content/Context:getSystemService	(Ljava/lang/String;)Ljava/lang/Object;
    //   18: checkcast 235	android/net/ConnectivityManager
    //   21: astore_0
    //   22: aload_0
    //   23: ifnonnull +8 -> 31
    //   26: ldc 2
    //   28: monitorexit
    //   29: iconst_0
    //   30: ireturn
    //   31: aload_0
    //   32: invokevirtual 239	android/net/ConnectivityManager:getActiveNetworkInfo	()Landroid/net/NetworkInfo;
    //   35: astore_0
    //   36: aload_0
    //   37: ifnonnull +8 -> 45
    //   40: ldc 2
    //   42: monitorexit
    //   43: iconst_0
    //   44: ireturn
    //   45: aload_0
    //   46: invokevirtual 245	android/net/NetworkInfo:getState	()Landroid/net/NetworkInfo$State;
    //   49: astore_0
    //   50: aload_0
    //   51: ifnull +19 -> 70
    //   54: aload_0
    //   55: getstatic 251	android/net/NetworkInfo$State:DISCONNECTED	Landroid/net/NetworkInfo$State;
    //   58: if_acmpeq +12 -> 70
    //   61: getstatic 254	android/net/NetworkInfo$State:DISCONNECTING	Landroid/net/NetworkInfo$State;
    //   64: astore_1
    //   65: aload_0
    //   66: aload_1
    //   67: if_acmpne +14 -> 81
    //   70: ldc 2
    //   72: monitorexit
    //   73: iconst_0
    //   74: ireturn
    //   75: astore_0
    //   76: ldc 2
    //   78: monitorexit
    //   79: aload_0
    //   80: athrow
    //   81: ldc 2
    //   83: monitorexit
    //   84: iconst_1
    //   85: ireturn
    //   86: astore_0
    //   87: goto -6 -> 81
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	90	0	paramContext	Context
    //   64	3	1	localState	android.net.NetworkInfo.State
    // Exception table:
    //   from	to	target	type
    //   12	22	75	finally
    //   31	36	75	finally
    //   45	50	75	finally
    //   54	65	75	finally
    //   12	22	86	java/lang/Throwable
    //   31	36	86	java/lang/Throwable
    //   45	50	86	java/lang/Throwable
    //   54	65	86	java/lang/Throwable
  }
  
  public static boolean a(LatLng paramLatLng, List<LatLng> paramList)
  {
    List<LatLng> localList = paramList;
    double d3 = longitude;
    double d1 = latitude;
    double d2 = latitude;
    if (paramList.size() < 3) {
      return false;
    }
    if (!((LatLng)localList.get(0)).equals(localList.get(paramList.size() - 1))) {
      localList.add(localList.get(0));
    }
    int k = 0;
    int i;
    for (int j = 0;; j = i)
    {
      paramLatLng = paramList;
      if (k >= paramList.size() - 1) {
        break;
      }
      double d4 = getlongitude;
      double d5 = getlatitude;
      k += 1;
      double d6 = getlongitude;
      double d7 = getlatitude;
      if (b(d3, d1, d4, d5, d6, d7)) {
        return true;
      }
      if (Math.abs(d7 - d5) < 1.0E-9D)
      {
        i = j;
      }
      else
      {
        if (!b(d4, d5, d3, d1, 180.0D, d2)) {
          break label251;
        }
        i = j;
        if (d5 > d7) {
          i = j + 1;
        }
      }
      for (;;)
      {
        break;
        label251:
        if (b(d6, d7, d3, d1, 180.0D, d2))
        {
          i = j;
          if (d7 > d5) {
            i = j + 1;
          }
        }
        else
        {
          i = j;
          if (a(d4, d5, d6, d7, d3, d1, 180.0D, d2)) {
            i = j + 1;
          }
        }
      }
    }
    return j % 2 != 0;
  }
  
  public static boolean a(File paramFile)
    throws IOException, Exception
  {
    if (paramFile != null)
    {
      if (!paramFile.exists()) {
        return false;
      }
      paramFile = paramFile.listFiles();
      if (paramFile != null)
      {
        int i = 0;
        while (i < paramFile.length)
        {
          if (paramFile[i].isFile())
          {
            if (!paramFile[i].delete()) {
              return false;
            }
          }
          else
          {
            if (!a(paramFile[i])) {
              return false;
            }
            paramFile[i].delete();
          }
          i += 1;
        }
      }
      return true;
    }
    return false;
  }
  
  public static float b(float paramFloat)
  {
    if (paramFloat > q.c) {
      return q.c;
    }
    float f = paramFloat;
    if (paramFloat < q.d) {
      f = q.d;
    }
    return f;
  }
  
  public static String b(Context paramContext)
  {
    if (!Environment.getExternalStorageState().equals("mounted")) {
      return paramContext.getFilesDir().getPath();
    }
    if ((MapsInitializer.sdcardDir != null) && (!MapsInitializer.sdcardDir.equals("")))
    {
      paramContext = new File(MapsInitializer.sdcardDir);
      if (!paramContext.exists()) {
        paramContext.mkdirs();
      }
      paramContext = new File(paramContext, "Amap");
      if (!paramContext.exists()) {
        paramContext.mkdir();
      }
      localStringBuilder = new StringBuilder();
      localStringBuilder.append(paramContext.toString());
      localStringBuilder.append("/");
      return localStringBuilder.toString();
    }
    paramContext = new File(Environment.getExternalStorageDirectory(), "AMap");
    if (!paramContext.exists()) {
      paramContext.mkdir();
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(paramContext.toString());
    localStringBuilder.append("/");
    return localStringBuilder.toString();
  }
  
  public static boolean b(double paramDouble1, double paramDouble2, double paramDouble3, double paramDouble4, double paramDouble5, double paramDouble6)
  {
    return (Math.abs(a(paramDouble1, paramDouble2, paramDouble3, paramDouble4, paramDouble5, paramDouble6)) < 1.0E-9D) && ((paramDouble1 - paramDouble3) * (paramDouble1 - paramDouble5) <= 0.0D) && ((paramDouble2 - paramDouble4) * (paramDouble2 - paramDouble6) <= 0.0D);
  }
}
