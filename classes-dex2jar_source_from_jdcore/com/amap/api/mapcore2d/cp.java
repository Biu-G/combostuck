package com.amap.api.mapcore2d;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.pm.Signature;
import android.os.Bundle;
import android.text.TextUtils;
import java.security.MessageDigest;
import java.util.Locale;

public class cp
{
  static String a;
  static boolean b = false;
  private static String c = "";
  private static String d = "";
  private static String e = "";
  private static String f = "";
  
  public static String a(Context paramContext)
  {
    try
    {
      paramContext = h(paramContext);
      return paramContext;
    }
    catch (Throwable paramContext)
    {
      paramContext.printStackTrace();
    }
    return f;
  }
  
  static void a(String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {
      return;
    }
    f = paramString;
  }
  
  static boolean a()
  {
    try
    {
      if (b) {
        return true;
      }
      if (b(a))
      {
        b = true;
        return true;
      }
      if (!TextUtils.isEmpty(a))
      {
        b = false;
        a = null;
        return false;
      }
      if (b(d))
      {
        b = true;
        return true;
      }
      if (!TextUtils.isEmpty(d))
      {
        b = false;
        d = null;
        return false;
      }
      return true;
    }
    catch (Throwable localThrowable) {}
    return true;
  }
  
  public static String b(Context paramContext)
  {
    try
    {
      if (!"".equals(c)) {
        return c;
      }
      PackageManager localPackageManager = paramContext.getPackageManager();
      c = (String)localPackageManager.getApplicationLabel(localPackageManager.getApplicationInfo(paramContext.getPackageName(), 0));
    }
    catch (Throwable paramContext)
    {
      dd.a(paramContext, "AppInfo", "getApplicationName");
    }
    return c;
  }
  
  private static boolean b(String paramString)
  {
    if (!TextUtils.isEmpty(paramString))
    {
      paramString.toCharArray();
      char[] arrayOfChar = paramString.toCharArray();
      int j = arrayOfChar.length;
      int i = 0;
      for (;;)
      {
        if (i >= j) {
          break label82;
        }
        int k = arrayOfChar[i];
        if (((65 > k) || (k > 122)) && ((48 > k) || (k > 58)) && (k != 46)) {
          break;
        }
        i += 1;
      }
    }
    label82:
    try
    {
      dg.b(cz.a(), paramString, "errorPackage");
      return false;
    }
    catch (Throwable paramString) {}
    return true;
    return false;
    return false;
  }
  
  public static String c(Context paramContext)
  {
    try
    {
      if ((d != null) && (!"".equals(d))) {
        return d;
      }
      d = paramContext.getPackageName();
      if (!b(d)) {
        d = paramContext.getPackageName();
      }
    }
    catch (Throwable paramContext)
    {
      dd.a(paramContext, "AppInfo", "getpckn");
    }
    return d;
  }
  
  public static String d(Context paramContext)
  {
    try
    {
      if (!"".equals(e)) {
        return e;
      }
      e = getPackageManagergetPackageInfogetPackageName0versionName;
    }
    catch (Throwable paramContext)
    {
      dd.a(paramContext, "AppInfo", "getApplicationVersion");
    }
    if (e == null) {
      return "";
    }
    return e;
  }
  
  public static String e(Context paramContext)
  {
    try
    {
      PackageInfo localPackageInfo = paramContext.getPackageManager().getPackageInfo(paramContext.getPackageName(), 64);
      Object localObject = signatures;
      int i = 0;
      localObject = localObject[0].toByteArray();
      localObject = MessageDigest.getInstance("SHA1").digest((byte[])localObject);
      StringBuffer localStringBuffer = new StringBuffer();
      while (i < localObject.length)
      {
        str = Integer.toHexString(localObject[i] & 0xFF).toUpperCase(Locale.US);
        if (str.length() == 1) {
          localStringBuffer.append("0");
        }
        localStringBuffer.append(str);
        localStringBuffer.append(":");
        i += 1;
      }
      String str = packageName;
      localObject = str;
      if (b(str)) {
        localObject = packageName;
      }
      if (!TextUtils.isEmpty(d)) {
        localObject = c(paramContext);
      }
      localStringBuffer.append((String)localObject);
      a = localStringBuffer.toString();
      paramContext = a;
      return paramContext;
    }
    catch (Throwable paramContext)
    {
      dd.a(paramContext, "AppInfo", "getpck");
    }
    return a;
  }
  
  public static String f(Context paramContext)
  {
    try
    {
      paramContext = h(paramContext);
      return paramContext;
    }
    catch (Throwable paramContext)
    {
      dd.a(paramContext, "AppInfo", "getKey");
    }
    return f;
  }
  
  /* Error */
  private static String g(Context paramContext)
  {
    // Byte code:
    //   0: new 184	java/io/File
    //   3: dup
    //   4: aload_0
    //   5: ldc -70
    //   7: invokestatic 191	com/amap/api/mapcore2d/de:a	(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    //   10: invokespecial 193	java/io/File:<init>	(Ljava/lang/String;)V
    //   13: astore_3
    //   14: aload_3
    //   15: invokevirtual 196	java/io/File:exists	()Z
    //   18: ifne +6 -> 24
    //   21: ldc 12
    //   23: areturn
    //   24: new 198	java/io/FileInputStream
    //   27: dup
    //   28: aload_3
    //   29: invokespecial 201	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   32: astore_1
    //   33: aload_1
    //   34: astore_0
    //   35: aload_1
    //   36: invokevirtual 204	java/io/FileInputStream:available	()I
    //   39: newarray byte
    //   41: astore_2
    //   42: aload_1
    //   43: astore_0
    //   44: aload_1
    //   45: aload_2
    //   46: invokevirtual 208	java/io/FileInputStream:read	([B)I
    //   49: pop
    //   50: aload_1
    //   51: astore_0
    //   52: aload_2
    //   53: invokestatic 211	com/amap/api/mapcore2d/cz:a	([B)Ljava/lang/String;
    //   56: astore_2
    //   57: aload_1
    //   58: astore_0
    //   59: aload_2
    //   60: invokevirtual 161	java/lang/String:length	()I
    //   63: bipush 32
    //   65: if_icmpne +8 -> 73
    //   68: aload_2
    //   69: astore_0
    //   70: goto +6 -> 76
    //   73: ldc 12
    //   75: astore_0
    //   76: aload_1
    //   77: invokevirtual 214	java/io/FileInputStream:close	()V
    //   80: aload_0
    //   81: areturn
    //   82: astore_1
    //   83: aload_1
    //   84: invokevirtual 27	java/lang/Throwable:printStackTrace	()V
    //   87: aload_0
    //   88: areturn
    //   89: astore_2
    //   90: goto +12 -> 102
    //   93: astore_1
    //   94: aconst_null
    //   95: astore_0
    //   96: goto +62 -> 158
    //   99: astore_2
    //   100: aconst_null
    //   101: astore_1
    //   102: aload_1
    //   103: astore_0
    //   104: aload_2
    //   105: ldc 76
    //   107: ldc -40
    //   109: invokestatic 83	com/amap/api/mapcore2d/dd:a	(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    //   112: aload_1
    //   113: astore_0
    //   114: aload_3
    //   115: invokevirtual 196	java/io/File:exists	()Z
    //   118: ifeq +20 -> 138
    //   121: aload_1
    //   122: astore_0
    //   123: aload_3
    //   124: invokevirtual 219	java/io/File:delete	()Z
    //   127: pop
    //   128: goto +10 -> 138
    //   131: astore_2
    //   132: aload_1
    //   133: astore_0
    //   134: aload_2
    //   135: invokevirtual 27	java/lang/Throwable:printStackTrace	()V
    //   138: aload_1
    //   139: ifnull +15 -> 154
    //   142: aload_1
    //   143: invokevirtual 214	java/io/FileInputStream:close	()V
    //   146: goto +8 -> 154
    //   149: astore_0
    //   150: aload_0
    //   151: invokevirtual 27	java/lang/Throwable:printStackTrace	()V
    //   154: ldc 12
    //   156: areturn
    //   157: astore_1
    //   158: aload_0
    //   159: ifnull +15 -> 174
    //   162: aload_0
    //   163: invokevirtual 214	java/io/FileInputStream:close	()V
    //   166: goto +8 -> 174
    //   169: astore_0
    //   170: aload_0
    //   171: invokevirtual 27	java/lang/Throwable:printStackTrace	()V
    //   174: aload_1
    //   175: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	176	0	paramContext	Context
    //   32	45	1	localFileInputStream	java.io.FileInputStream
    //   82	2	1	localThrowable1	Throwable
    //   93	1	1	localObject1	Object
    //   101	42	1	localObject2	Object
    //   157	18	1	localObject3	Object
    //   41	28	2	localObject4	Object
    //   89	1	2	localThrowable2	Throwable
    //   99	6	2	localThrowable3	Throwable
    //   131	4	2	localThrowable4	Throwable
    //   13	111	3	localFile	java.io.File
    // Exception table:
    //   from	to	target	type
    //   76	80	82	java/lang/Throwable
    //   35	42	89	java/lang/Throwable
    //   44	50	89	java/lang/Throwable
    //   52	57	89	java/lang/Throwable
    //   59	68	89	java/lang/Throwable
    //   24	33	93	finally
    //   24	33	99	java/lang/Throwable
    //   114	121	131	java/lang/Throwable
    //   123	128	131	java/lang/Throwable
    //   142	146	149	java/lang/Throwable
    //   35	42	157	finally
    //   44	50	157	finally
    //   52	57	157	finally
    //   59	68	157	finally
    //   104	112	157	finally
    //   114	121	157	finally
    //   123	128	157	finally
    //   134	138	157	finally
    //   162	166	169	java/lang/Throwable
  }
  
  private static String h(Context paramContext)
    throws PackageManager.NameNotFoundException
  {
    if ((f == null) || (f.equals("")))
    {
      ApplicationInfo localApplicationInfo = paramContext.getPackageManager().getApplicationInfo(paramContext.getPackageName(), 128);
      if ((localApplicationInfo == null) || (metaData == null)) {
        break label75;
      }
      f = metaData.getString("com.amap.api.v2.apikey");
      if (f == null) {
        f = g(paramContext);
      }
    }
    return f;
    label75:
    return f;
  }
}
