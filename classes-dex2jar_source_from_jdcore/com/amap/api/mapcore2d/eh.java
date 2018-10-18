package com.amap.api.mapcore2d;

import android.content.Context;
import android.text.TextUtils;
import dalvik.system.DexFile;
import java.io.File;
import java.security.PublicKey;
import java.security.cert.Certificate;
import java.util.Date;
import java.util.concurrent.ExecutorService;

class eh
  extends ec
{
  private PublicKey g = null;
  
  eh(Context paramContext, cy paramCy, boolean paramBoolean)
    throws Exception
  {
    super(paramContext, paramCy, paramBoolean);
    paramCy = ee.b(paramContext, paramCy.a(), paramCy.b());
    String str = ee.a(paramContext);
    b(paramCy, str);
    File localFile = new File(paramCy);
    if (paramBoolean)
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append(str);
      localStringBuilder.append(File.separator);
      localStringBuilder.append(ee.a(localFile.getName()));
      a(paramCy, localStringBuilder.toString());
      b(paramContext, paramCy, str);
    }
  }
  
  private void a(dm paramDm, File paramFile)
  {
    paramDm = ee.a.a(paramDm, paramFile.getName());
    if (paramDm != null) {
      f = paramDm.e();
    }
  }
  
  /* Error */
  private void a(java.util.jar.JarFile paramJarFile, java.util.jar.JarEntry paramJarEntry)
    throws java.io.IOException
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 5
    //   3: aconst_null
    //   4: astore 4
    //   6: aload_1
    //   7: aload_2
    //   8: invokevirtual 95	java/util/jar/JarFile:getInputStream	(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;
    //   11: astore_1
    //   12: sipush 8192
    //   15: newarray byte
    //   17: astore_2
    //   18: aload_1
    //   19: aload_2
    //   20: invokevirtual 101	java/io/InputStream:read	([B)I
    //   23: istore_3
    //   24: iload_3
    //   25: ifle +6 -> 31
    //   28: goto -10 -> 18
    //   31: aload_1
    //   32: invokestatic 106	com/amap/api/mapcore2d/ek:a	(Ljava/io/Closeable;)V
    //   35: return
    //   36: astore_2
    //   37: aload_1
    //   38: astore 4
    //   40: aload_2
    //   41: astore_1
    //   42: goto +37 -> 79
    //   45: astore_2
    //   46: goto +11 -> 57
    //   49: astore_1
    //   50: goto +29 -> 79
    //   53: astore_2
    //   54: aload 5
    //   56: astore_1
    //   57: aload_1
    //   58: astore 4
    //   60: aload_2
    //   61: ldc 108
    //   63: ldc 110
    //   65: invokestatic 113	com/amap/api/mapcore2d/ek:a	(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    //   68: aload_1
    //   69: invokestatic 106	com/amap/api/mapcore2d/ek:a	(Ljava/io/Closeable;)V
    //   72: return
    //   73: astore_1
    //   74: aload_1
    //   75: invokevirtual 116	java/lang/Throwable:printStackTrace	()V
    //   78: return
    //   79: aload 4
    //   81: invokestatic 106	com/amap/api/mapcore2d/ek:a	(Ljava/io/Closeable;)V
    //   84: goto +8 -> 92
    //   87: astore_2
    //   88: aload_2
    //   89: invokevirtual 116	java/lang/Throwable:printStackTrace	()V
    //   92: aload_1
    //   93: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	94	0	this	eh
    //   0	94	1	paramJarFile	java.util.jar.JarFile
    //   0	94	2	paramJarEntry	java.util.jar.JarEntry
    //   23	2	3	i	int
    //   4	76	4	localJarFile	java.util.jar.JarFile
    //   1	54	5	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   12	18	36	finally
    //   18	24	36	finally
    //   12	18	45	java/lang/Throwable
    //   18	24	45	java/lang/Throwable
    //   6	12	49	finally
    //   60	68	49	finally
    //   6	12	53	java/lang/Throwable
    //   31	35	73	java/lang/Throwable
    //   68	72	73	java/lang/Throwable
    //   79	84	87	java/lang/Throwable
  }
  
  private boolean a(dm paramDm, cy paramCy, String paramString)
  {
    if (a(new File(paramString))) {
      return ek.a(paramDm, ee.a(a, paramCy.a(), paramCy.b()), paramString, paramCy);
    }
    return false;
  }
  
  private boolean a(dm paramDm, String paramString1, String paramString2)
  {
    String str = ee.a(a, paramString1);
    if (ek.a(paramDm, paramString1, str, e)) {
      return true;
    }
    if (ee.a.a(paramDm, paramString1) != null) {
      return false;
    }
    if (!TextUtils.isEmpty(f)) {
      ee.a.a(paramDm, new ei.a(paramString1, cv.a(str), e.a(), e.b(), paramString2).a("useod").a(), ei.b(paramString1));
    }
    return true;
  }
  
  /* Error */
  private boolean a(File paramFile)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 5
    //   3: aconst_null
    //   4: astore 4
    //   6: aload 4
    //   8: astore_3
    //   9: aload_0
    //   10: invokespecial 165	com/amap/api/mapcore2d/eh:c	()V
    //   13: aload 4
    //   15: astore_3
    //   16: new 91	java/util/jar/JarFile
    //   19: dup
    //   20: aload_1
    //   21: invokespecial 168	java/util/jar/JarFile:<init>	(Ljava/io/File;)V
    //   24: astore 4
    //   26: aload 4
    //   28: ldc -86
    //   30: invokevirtual 174	java/util/jar/JarFile:getJarEntry	(Ljava/lang/String;)Ljava/util/jar/JarEntry;
    //   33: astore_3
    //   34: aload_3
    //   35: ifnonnull +10 -> 45
    //   38: aload 4
    //   40: invokevirtual 177	java/util/jar/JarFile:close	()V
    //   43: iconst_0
    //   44: ireturn
    //   45: aload_0
    //   46: aload 4
    //   48: aload_3
    //   49: invokespecial 179	com/amap/api/mapcore2d/eh:a	(Ljava/util/jar/JarFile;Ljava/util/jar/JarEntry;)V
    //   52: aload_3
    //   53: invokevirtual 185	java/util/jar/JarEntry:getCertificates	()[Ljava/security/cert/Certificate;
    //   56: astore_3
    //   57: aload_3
    //   58: ifnonnull +10 -> 68
    //   61: aload 4
    //   63: invokevirtual 177	java/util/jar/JarFile:close	()V
    //   66: iconst_0
    //   67: ireturn
    //   68: aload_0
    //   69: aload_1
    //   70: aload_3
    //   71: invokespecial 188	com/amap/api/mapcore2d/eh:a	(Ljava/io/File;[Ljava/security/cert/Certificate;)Z
    //   74: istore_2
    //   75: aload 4
    //   77: invokevirtual 177	java/util/jar/JarFile:close	()V
    //   80: iload_2
    //   81: ireturn
    //   82: astore_1
    //   83: aload 4
    //   85: astore_3
    //   86: goto +43 -> 129
    //   89: astore_3
    //   90: aload 4
    //   92: astore_1
    //   93: aload_3
    //   94: astore 4
    //   96: goto +12 -> 108
    //   99: astore_1
    //   100: goto +29 -> 129
    //   103: astore 4
    //   105: aload 5
    //   107: astore_1
    //   108: aload_1
    //   109: astore_3
    //   110: aload 4
    //   112: ldc 108
    //   114: ldc -66
    //   116: invokestatic 113	com/amap/api/mapcore2d/ek:a	(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    //   119: aload_1
    //   120: ifnull +7 -> 127
    //   123: aload_1
    //   124: invokevirtual 177	java/util/jar/JarFile:close	()V
    //   127: iconst_0
    //   128: ireturn
    //   129: aload_3
    //   130: ifnull +7 -> 137
    //   133: aload_3
    //   134: invokevirtual 177	java/util/jar/JarFile:close	()V
    //   137: aload_1
    //   138: athrow
    //   139: astore_1
    //   140: iconst_0
    //   141: ireturn
    //   142: astore_1
    //   143: iconst_0
    //   144: ireturn
    //   145: astore_1
    //   146: iload_2
    //   147: ireturn
    //   148: astore_1
    //   149: iconst_0
    //   150: ireturn
    //   151: astore_3
    //   152: goto -15 -> 137
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	155	0	this	eh
    //   0	155	1	paramFile	File
    //   74	73	2	bool	boolean
    //   8	78	3	localObject1	Object
    //   89	5	3	localThrowable1	Throwable
    //   109	25	3	localFile	File
    //   151	1	3	localThrowable2	Throwable
    //   4	91	4	localObject2	Object
    //   103	8	4	localThrowable3	Throwable
    //   1	105	5	localObject3	Object
    // Exception table:
    //   from	to	target	type
    //   26	34	82	finally
    //   45	57	82	finally
    //   68	75	82	finally
    //   26	34	89	java/lang/Throwable
    //   45	57	89	java/lang/Throwable
    //   68	75	89	java/lang/Throwable
    //   9	13	99	finally
    //   16	26	99	finally
    //   110	119	99	finally
    //   9	13	103	java/lang/Throwable
    //   16	26	103	java/lang/Throwable
    //   38	43	139	java/lang/Throwable
    //   61	66	142	java/lang/Throwable
    //   75	80	145	java/lang/Throwable
    //   123	127	148	java/lang/Throwable
    //   133	137	151	java/lang/Throwable
  }
  
  private boolean a(File paramFile, Certificate[] paramArrayOfCertificate)
  {
    try
    {
      if (paramArrayOfCertificate.length > 0)
      {
        int i = paramArrayOfCertificate.length - 1;
        if (i >= 0)
        {
          paramArrayOfCertificate[i].verify(g);
          return true;
        }
      }
    }
    catch (Exception paramFile)
    {
      ek.a(paramFile, "DyLoader", "check");
    }
    return false;
  }
  
  private void b(final Context paramContext, final String paramString1, final String paramString2)
  {
    dg.c().submit(new Runnable()
    {
      public void run()
      {
        try
        {
          a(paramContext, paramString1, paramString2);
          return;
        }
        catch (Throwable localThrowable)
        {
          ek.a(localThrowable, "dLoader", "run()");
        }
      }
    });
  }
  
  private void b(dm paramDm, File paramFile)
  {
    d = false;
    ee.a(a, paramDm, paramFile.getName());
    paramDm = ee.a(a, paramDm, e);
    if (!TextUtils.isEmpty(paramDm))
    {
      f = paramDm;
      ee.a(a, e);
    }
  }
  
  private void b(String paramString1, String paramString2)
    throws Exception
  {
    if ((!TextUtils.isEmpty(paramString1)) && (!TextUtils.isEmpty(paramString2))) {
      return;
    }
    throw new Exception("dexPath or dexOutputDir is null.");
  }
  
  private void c()
  {
    if (g != null) {
      return;
    }
    g = ek.a();
  }
  
  void a(Context paramContext, String paramString1, String paramString2)
    throws Exception
  {
    new Date().getTime();
    try
    {
      paramContext = new dm(paramContext, eg.c());
      paramString1 = new File(paramString1);
      a(paramContext, paramString1);
      if (!a(paramContext, e, paramString1.getAbsolutePath())) {
        b(paramContext, paramString1);
      }
      if (!paramString1.exists()) {
        return;
      }
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append(paramString2);
      localStringBuilder.append(File.separator);
      localStringBuilder.append(ee.a(paramString1.getName()));
      if ((new File(localStringBuilder.toString()).exists()) && (!a(paramContext, ee.a(paramString1.getName()), f))) {
        ee.a(a, e);
      }
    }
    catch (Throwable paramContext)
    {
      ek.a(paramContext, "dLoader", "verifyD()");
    }
    new Date().getTime();
  }
  
  void a(String paramString1, String paramString2)
    throws Exception
  {
    try
    {
      if (c != null) {
        return;
      }
      b();
      c = DexFile.loadDex(paramString1, paramString2, 0);
      return;
    }
    catch (Throwable paramString1)
    {
      ek.a(paramString1, "dLoader", "loadFile");
      throw new Exception("load file fail");
    }
  }
  
  /* Error */
  protected Class<?> findClass(String paramString)
    throws java.lang.ClassNotFoundException
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 269	com/amap/api/mapcore2d/eh:c	Ldalvik/system/DexFile;
    //   4: astore_2
    //   5: aload_2
    //   6: ifnull +142 -> 148
    //   9: aconst_null
    //   10: astore 4
    //   12: aconst_null
    //   13: astore_3
    //   14: aload 4
    //   16: astore_2
    //   17: aload_0
    //   18: getfield 288	com/amap/api/mapcore2d/eh:b	Ljava/util/Map;
    //   21: astore 5
    //   23: aload 4
    //   25: astore_2
    //   26: aload 5
    //   28: monitorenter
    //   29: aload_0
    //   30: getfield 288	com/amap/api/mapcore2d/eh:b	Ljava/util/Map;
    //   33: aload_1
    //   34: invokeinterface 294 2 0
    //   39: checkcast 296	java/lang/Class
    //   42: astore_2
    //   43: aload 5
    //   45: monitorexit
    //   46: goto +134 -> 180
    //   49: astore_3
    //   50: aload_3
    //   51: astore 4
    //   53: goto +7 -> 60
    //   56: astore 4
    //   58: aload_3
    //   59: astore_2
    //   60: aload_2
    //   61: astore_3
    //   62: aload 5
    //   64: monitorexit
    //   65: aload 4
    //   67: athrow
    //   68: astore_3
    //   69: aload_3
    //   70: ldc_w 264
    //   73: ldc_w 298
    //   76: invokestatic 113	com/amap/api/mapcore2d/ek:a	(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    //   79: goto +101 -> 180
    //   82: aload_0
    //   83: getfield 269	com/amap/api/mapcore2d/eh:c	Ldalvik/system/DexFile;
    //   86: aload_1
    //   87: aload_0
    //   88: invokevirtual 302	dalvik/system/DexFile:loadClass	(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;
    //   91: astore_2
    //   92: aload_2
    //   93: ifnull +46 -> 139
    //   96: aload_0
    //   97: getfield 288	com/amap/api/mapcore2d/eh:b	Ljava/util/Map;
    //   100: astore_3
    //   101: aload_3
    //   102: monitorenter
    //   103: aload_0
    //   104: getfield 288	com/amap/api/mapcore2d/eh:b	Ljava/util/Map;
    //   107: aload_1
    //   108: aload_2
    //   109: invokeinterface 306 3 0
    //   114: pop
    //   115: aload_3
    //   116: monitorexit
    //   117: aload_2
    //   118: areturn
    //   119: astore 4
    //   121: aload_3
    //   122: monitorexit
    //   123: aload 4
    //   125: athrow
    //   126: astore_3
    //   127: aload_3
    //   128: ldc_w 264
    //   131: ldc_w 298
    //   134: invokestatic 113	com/amap/api/mapcore2d/ek:a	(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    //   137: aload_2
    //   138: areturn
    //   139: new 285	java/lang/ClassNotFoundException
    //   142: dup
    //   143: aload_1
    //   144: invokespecial 307	java/lang/ClassNotFoundException:<init>	(Ljava/lang/String;)V
    //   147: athrow
    //   148: new 285	java/lang/ClassNotFoundException
    //   151: dup
    //   152: aload_1
    //   153: invokespecial 307	java/lang/ClassNotFoundException:<init>	(Ljava/lang/String;)V
    //   156: athrow
    //   157: astore_2
    //   158: aload_2
    //   159: ldc_w 264
    //   162: ldc_w 298
    //   165: invokestatic 113	com/amap/api/mapcore2d/ek:a	(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    //   168: new 285	java/lang/ClassNotFoundException
    //   171: dup
    //   172: aload_1
    //   173: invokespecial 307	java/lang/ClassNotFoundException:<init>	(Ljava/lang/String;)V
    //   176: athrow
    //   177: astore_1
    //   178: aload_1
    //   179: athrow
    //   180: aload_2
    //   181: ifnull -99 -> 82
    //   184: aload_2
    //   185: areturn
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	186	0	this	eh
    //   0	186	1	paramString	String
    //   4	134	2	localObject1	Object
    //   157	28	2	localThrowable1	Throwable
    //   13	1	3	localObject2	Object
    //   49	10	3	localObject3	Object
    //   61	1	3	localObject4	Object
    //   68	2	3	localThrowable2	Throwable
    //   126	2	3	localThrowable3	Throwable
    //   10	42	4	localObject5	Object
    //   56	10	4	localObject6	Object
    //   119	5	4	localObject7	Object
    //   21	42	5	localMap2	java.util.Map
    // Exception table:
    //   from	to	target	type
    //   43	46	49	finally
    //   29	43	56	finally
    //   62	65	56	finally
    //   17	23	68	java/lang/Throwable
    //   26	29	68	java/lang/Throwable
    //   65	68	68	java/lang/Throwable
    //   103	117	119	finally
    //   121	123	119	finally
    //   96	103	126	java/lang/Throwable
    //   123	126	126	java/lang/Throwable
    //   0	5	157	java/lang/Throwable
    //   69	79	157	java/lang/Throwable
    //   82	92	157	java/lang/Throwable
    //   127	137	157	java/lang/Throwable
    //   139	148	157	java/lang/Throwable
    //   148	157	157	java/lang/Throwable
    //   0	5	177	java/lang/ClassNotFoundException
    //   17	23	177	java/lang/ClassNotFoundException
    //   26	29	177	java/lang/ClassNotFoundException
    //   65	68	177	java/lang/ClassNotFoundException
    //   69	79	177	java/lang/ClassNotFoundException
    //   82	92	177	java/lang/ClassNotFoundException
    //   96	103	177	java/lang/ClassNotFoundException
    //   123	126	177	java/lang/ClassNotFoundException
    //   127	137	177	java/lang/ClassNotFoundException
    //   139	148	177	java/lang/ClassNotFoundException
    //   148	157	177	java/lang/ClassNotFoundException
  }
}
