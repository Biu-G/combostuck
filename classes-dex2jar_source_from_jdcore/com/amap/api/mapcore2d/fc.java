package com.amap.api.mapcore2d;

import android.content.Context;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.UUID;
import java.util.concurrent.ExecutorService;

public class fc
{
  private static boolean a = true;
  
  public static void a(Context paramContext)
  {
    try
    {
      if (!e(paramContext)) {
        return;
      }
      Object localObject = new StringBuffer();
      ((StringBuffer)localObject).append(new SimpleDateFormat("yyyyMMdd HHmmss").format(new Date()));
      ((StringBuffer)localObject).append(" ");
      ((StringBuffer)localObject).append(UUID.randomUUID().toString());
      ((StringBuffer)localObject).append(" ");
      if (((StringBuffer)localObject).length() != 53) {
        return;
      }
      localObject = cz.a(((StringBuffer)localObject).toString());
      paramContext = b(paramContext);
      byte[] arrayOfByte = new byte[localObject.length + paramContext.length];
      System.arraycopy(localObject, 0, arrayOfByte, 0, localObject.length);
      System.arraycopy(paramContext, 0, arrayOfByte, localObject.length, paramContext.length);
      paramContext = new df(cz.c(arrayOfByte), "2");
      ep.a().a(paramContext);
      return;
    }
    catch (Throwable paramContext)
    {
      dd.a(paramContext, "StatisticsManager", "updateStaticsData");
    }
  }
  
  public static void a(final fb paramFb, Context paramContext)
  {
    try
    {
      dg.c().submit(new Runnable()
      {
        public void run()
        {
          fd.a(a, de.g, 307200, paramFb.a());
        }
      });
      return;
    }
    finally
    {
      paramFb = finally;
      throw paramFb;
    }
  }
  
  private static byte[] a(Context paramContext, byte[] paramArrayOfByte)
  {
    try
    {
      paramContext = cs.a(paramContext, paramArrayOfByte);
      return paramContext;
    }
    catch (Throwable paramContext)
    {
      paramContext.printStackTrace();
    }
    return null;
  }
  
  private static byte[] b(Context paramContext)
  {
    byte[] arrayOfByte1 = c(paramContext);
    byte[] arrayOfByte2 = d(paramContext);
    byte[] arrayOfByte3 = new byte[arrayOfByte1.length + arrayOfByte2.length];
    System.arraycopy(arrayOfByte1, 0, arrayOfByte3, 0, arrayOfByte1.length);
    System.arraycopy(arrayOfByte2, 0, arrayOfByte3, arrayOfByte1.length, arrayOfByte2.length);
    return a(paramContext, arrayOfByte3);
  }
  
  /* Error */
  private static byte[] c(Context paramContext)
  {
    // Byte code:
    //   0: new 133	java/io/ByteArrayOutputStream
    //   3: dup
    //   4: invokespecial 134	java/io/ByteArrayOutputStream:<init>	()V
    //   7: astore_1
    //   8: aload_1
    //   9: ldc -120
    //   11: invokestatic 139	com/amap/api/mapcore2d/cz:a	(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V
    //   14: aload_1
    //   15: ldc -115
    //   17: invokestatic 139	com/amap/api/mapcore2d/cz:a	(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V
    //   20: aload_1
    //   21: aload_0
    //   22: invokestatic 147	com/amap/api/mapcore2d/ct:q	(Landroid/content/Context;)Ljava/lang/String;
    //   25: invokestatic 139	com/amap/api/mapcore2d/cz:a	(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V
    //   28: aload_1
    //   29: aload_0
    //   30: invokestatic 150	com/amap/api/mapcore2d/ct:i	(Landroid/content/Context;)Ljava/lang/String;
    //   33: invokestatic 139	com/amap/api/mapcore2d/cz:a	(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V
    //   36: aload_1
    //   37: aload_0
    //   38: invokestatic 153	com/amap/api/mapcore2d/ct:f	(Landroid/content/Context;)Ljava/lang/String;
    //   41: invokestatic 139	com/amap/api/mapcore2d/cz:a	(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V
    //   44: aload_1
    //   45: getstatic 159	android/os/Build:MANUFACTURER	Ljava/lang/String;
    //   48: invokestatic 139	com/amap/api/mapcore2d/cz:a	(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V
    //   51: aload_1
    //   52: getstatic 162	android/os/Build:MODEL	Ljava/lang/String;
    //   55: invokestatic 139	com/amap/api/mapcore2d/cz:a	(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V
    //   58: aload_1
    //   59: getstatic 165	android/os/Build:DEVICE	Ljava/lang/String;
    //   62: invokestatic 139	com/amap/api/mapcore2d/cz:a	(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V
    //   65: aload_1
    //   66: aload_0
    //   67: invokestatic 168	com/amap/api/mapcore2d/ct:r	(Landroid/content/Context;)Ljava/lang/String;
    //   70: invokestatic 139	com/amap/api/mapcore2d/cz:a	(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V
    //   73: aload_1
    //   74: aload_0
    //   75: invokestatic 172	com/amap/api/mapcore2d/cp:c	(Landroid/content/Context;)Ljava/lang/String;
    //   78: invokestatic 139	com/amap/api/mapcore2d/cz:a	(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V
    //   81: aload_1
    //   82: aload_0
    //   83: invokestatic 174	com/amap/api/mapcore2d/cp:d	(Landroid/content/Context;)Ljava/lang/String;
    //   86: invokestatic 139	com/amap/api/mapcore2d/cz:a	(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V
    //   89: aload_1
    //   90: aload_0
    //   91: invokestatic 175	com/amap/api/mapcore2d/cp:f	(Landroid/content/Context;)Ljava/lang/String;
    //   94: invokestatic 139	com/amap/api/mapcore2d/cz:a	(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V
    //   97: aload_1
    //   98: iconst_1
    //   99: newarray byte
    //   101: dup
    //   102: iconst_0
    //   103: iconst_0
    //   104: bastore
    //   105: invokevirtual 179	java/io/ByteArrayOutputStream:write	([B)V
    //   108: aload_1
    //   109: invokevirtual 183	java/io/ByteArrayOutputStream:toByteArray	()[B
    //   112: astore_0
    //   113: aload_1
    //   114: invokevirtual 186	java/io/ByteArrayOutputStream:close	()V
    //   117: aload_0
    //   118: areturn
    //   119: astore_1
    //   120: aload_1
    //   121: invokevirtual 125	java/lang/Throwable:printStackTrace	()V
    //   124: aload_0
    //   125: areturn
    //   126: astore_0
    //   127: goto +28 -> 155
    //   130: astore_0
    //   131: aload_0
    //   132: ldc 95
    //   134: ldc -68
    //   136: invokestatic 102	com/amap/api/mapcore2d/dd:a	(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    //   139: aload_1
    //   140: invokevirtual 186	java/io/ByteArrayOutputStream:close	()V
    //   143: goto +8 -> 151
    //   146: astore_0
    //   147: aload_0
    //   148: invokevirtual 125	java/lang/Throwable:printStackTrace	()V
    //   151: iconst_0
    //   152: newarray byte
    //   154: areturn
    //   155: aload_1
    //   156: invokevirtual 186	java/io/ByteArrayOutputStream:close	()V
    //   159: goto +8 -> 167
    //   162: astore_1
    //   163: aload_1
    //   164: invokevirtual 125	java/lang/Throwable:printStackTrace	()V
    //   167: aload_0
    //   168: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	169	0	paramContext	Context
    //   7	107	1	localByteArrayOutputStream	java.io.ByteArrayOutputStream
    //   119	37	1	localThrowable1	Throwable
    //   162	2	1	localThrowable2	Throwable
    // Exception table:
    //   from	to	target	type
    //   113	117	119	java/lang/Throwable
    //   8	113	126	finally
    //   131	139	126	finally
    //   8	113	130	java/lang/Throwable
    //   139	143	146	java/lang/Throwable
    //   155	159	162	java/lang/Throwable
  }
  
  private static byte[] d(Context paramContext)
  {
    return fd.a(paramContext, de.g, 307200);
  }
  
  private static boolean e(Context paramContext)
  {
    try
    {
      if ((ct.m(paramContext) == 1) && (a))
      {
        if (fd.a(paramContext, de.g) < 30) {
          return false;
        }
        long l1 = fd.b(paramContext, "c.log");
        long l2 = new Date().getTime();
        if (l2 - l1 < 3600000L) {
          return false;
        }
        fd.a(paramContext, l2, "c.log");
        a = false;
        return true;
      }
    }
    catch (Throwable paramContext)
    {
      dd.a(paramContext, "StatisticsManager", "isUpdate");
    }
    return false;
  }
}
