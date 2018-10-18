package com.amap.api.mapcore2d;

import android.content.Context;
import android.text.TextUtils;
import dalvik.system.DexFile;
import java.io.File;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ExecutorService;

public class ee
{
  static String a(Context paramContext)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(paramContext.getFilesDir().getAbsolutePath());
    localStringBuilder.append(File.separator);
    localStringBuilder.append("pngex");
    return localStringBuilder.toString();
  }
  
  static String a(Context paramContext, dm paramDm, cy paramCy)
  {
    List localList = paramDm.b(ei.b(paramCy.a(), "copy"), ei.class);
    if (localList != null)
    {
      if (localList.size() == 0) {
        return null;
      }
      ek.a(localList);
      int i = 0;
      while (i < localList.size())
      {
        Object localObject = (ei)localList.get(i);
        if (ek.a(paramContext, paramDm, ((ei)localObject).a(), paramCy)) {
          try
          {
            a(paramContext, paramDm, paramCy, a(paramContext, ((ei)localObject).a()), ((ei)localObject).e());
            localObject = ((ei)localObject).e();
            return localObject;
          }
          catch (Throwable localThrowable)
          {
            ek.a(localThrowable, "FileManager", "loadAvailableD");
          }
        } else {
          c(paramContext, paramDm, localThrowable.a());
        }
        i += 1;
      }
      return null;
    }
    return null;
  }
  
  static String a(Context paramContext, String paramString)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(a(paramContext));
    localStringBuilder.append(File.separator);
    localStringBuilder.append(paramString);
    return localStringBuilder.toString();
  }
  
  static String a(Context paramContext, String paramString1, String paramString2)
  {
    paramContext = ct.q(paramContext);
    StringBuilder localStringBuilder1 = new StringBuilder();
    StringBuilder localStringBuilder2 = new StringBuilder();
    localStringBuilder2.append(paramString1);
    localStringBuilder2.append(paramString2);
    localStringBuilder2.append(paramContext);
    localStringBuilder1.append(cv.b(localStringBuilder2.toString()));
    localStringBuilder1.append(".jar");
    return localStringBuilder1.toString();
  }
  
  static String a(String paramString)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(paramString);
    localStringBuilder.append(".o");
    return localStringBuilder.toString();
  }
  
  static void a(Context paramContext, cy paramCy)
  {
    try
    {
      Object localObject1 = b(paramContext, paramCy.a(), paramCy.b());
      if (TextUtils.isEmpty((CharSequence)localObject1)) {
        return;
      }
      File localFile = new File((String)localObject1);
      Object localObject2 = localFile.getParentFile();
      if (!localFile.exists())
      {
        if ((localObject2 == null) || (!((File)localObject2).exists())) {
          return;
        }
        c(paramContext, paramCy.a(), paramCy.b());
        return;
      }
      localObject2 = a(paramContext, a(localFile.getName()));
      localObject1 = DexFile.loadDex((String)localObject1, (String)localObject2, 0);
      if (localObject1 != null)
      {
        ((DexFile)localObject1).close();
        a(paramContext, localFile, (String)localObject2, paramCy);
        return;
      }
    }
    catch (Throwable paramContext)
    {
      ek.a(paramContext, "BaseLoader", "getInstanceByThread()");
    }
    return;
  }
  
  /* Error */
  static void a(Context paramContext, dm paramDm, cy paramCy, String paramString1, String paramString2)
    throws Throwable
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 7
    //   3: aload_2
    //   4: invokevirtual 49	com/amap/api/mapcore2d/cy:a	()Ljava/lang/String;
    //   7: astore 8
    //   9: aload_0
    //   10: aload 8
    //   12: aload_2
    //   13: invokevirtual 121	com/amap/api/mapcore2d/cy:b	()Ljava/lang/String;
    //   16: invokestatic 165	com/amap/api/mapcore2d/ee:a	(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   19: astore 9
    //   21: aload_0
    //   22: aload_1
    //   23: aload 9
    //   25: invokestatic 167	com/amap/api/mapcore2d/ee:a	(Landroid/content/Context;Lcom/amap/api/mapcore2d/dm;Ljava/lang/String;)V
    //   28: new 169	java/io/FileInputStream
    //   31: dup
    //   32: new 24	java/io/File
    //   35: dup
    //   36: aload_3
    //   37: invokespecial 132	java/io/File:<init>	(Ljava/lang/String;)V
    //   40: invokespecial 172	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   43: astore_3
    //   44: aload_3
    //   45: bipush 32
    //   47: newarray byte
    //   49: invokevirtual 178	java/io/InputStream:read	([B)I
    //   52: pop
    //   53: new 24	java/io/File
    //   56: dup
    //   57: aload_0
    //   58: aload 8
    //   60: aload_2
    //   61: invokevirtual 121	com/amap/api/mapcore2d/cy:b	()Ljava/lang/String;
    //   64: invokestatic 123	com/amap/api/mapcore2d/ee:b	(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   67: invokespecial 132	java/io/File:<init>	(Ljava/lang/String;)V
    //   70: astore 7
    //   72: new 180	java/io/RandomAccessFile
    //   75: dup
    //   76: aload 7
    //   78: ldc -74
    //   80: invokespecial 185	java/io/RandomAccessFile:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   83: astore_0
    //   84: sipush 1024
    //   87: newarray byte
    //   89: astore 10
    //   91: iconst_0
    //   92: istore 5
    //   94: aload_3
    //   95: aload 10
    //   97: invokevirtual 178	java/io/InputStream:read	([B)I
    //   100: istore 6
    //   102: iload 6
    //   104: ifle +60 -> 164
    //   107: iload 6
    //   109: sipush 1024
    //   112: if_icmpne +19 -> 131
    //   115: aload_0
    //   116: iload 5
    //   118: i2l
    //   119: invokevirtual 189	java/io/RandomAccessFile:seek	(J)V
    //   122: aload_0
    //   123: aload 10
    //   125: invokevirtual 193	java/io/RandomAccessFile:write	([B)V
    //   128: goto +174 -> 302
    //   131: iload 6
    //   133: newarray byte
    //   135: astore 11
    //   137: aload 10
    //   139: iconst_0
    //   140: aload 11
    //   142: iconst_0
    //   143: iload 6
    //   145: invokestatic 199	java/lang/System:arraycopy	(Ljava/lang/Object;ILjava/lang/Object;II)V
    //   148: aload_0
    //   149: iload 5
    //   151: i2l
    //   152: invokevirtual 189	java/io/RandomAccessFile:seek	(J)V
    //   155: aload_0
    //   156: aload 11
    //   158: invokevirtual 193	java/io/RandomAccessFile:write	([B)V
    //   161: goto +141 -> 302
    //   164: new 201	com/amap/api/mapcore2d/ei$a
    //   167: dup
    //   168: aload 9
    //   170: aload 7
    //   172: invokevirtual 28	java/io/File:getAbsolutePath	()Ljava/lang/String;
    //   175: invokestatic 202	com/amap/api/mapcore2d/cv:a	(Ljava/lang/String;)Ljava/lang/String;
    //   178: aload 8
    //   180: aload_2
    //   181: invokevirtual 121	com/amap/api/mapcore2d/cy:b	()Ljava/lang/String;
    //   184: aload 4
    //   186: invokespecial 205	com/amap/api/mapcore2d/ei$a:<init>	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    //   189: ldc -49
    //   191: invokevirtual 210	com/amap/api/mapcore2d/ei$a:a	(Ljava/lang/String;)Lcom/amap/api/mapcore2d/ei$a;
    //   194: invokevirtual 213	com/amap/api/mapcore2d/ei$a:a	()Lcom/amap/api/mapcore2d/ei;
    //   197: astore_2
    //   198: aload_1
    //   199: aload_2
    //   200: aload_2
    //   201: invokevirtual 78	com/amap/api/mapcore2d/ei:a	()Ljava/lang/String;
    //   204: invokestatic 214	com/amap/api/mapcore2d/ei:b	(Ljava/lang/String;)Ljava/lang/String;
    //   207: invokestatic 217	com/amap/api/mapcore2d/ee$a:a	(Lcom/amap/api/mapcore2d/dm;Lcom/amap/api/mapcore2d/ei;Ljava/lang/String;)V
    //   210: aload_3
    //   211: invokestatic 220	com/amap/api/mapcore2d/ek:a	(Ljava/io/Closeable;)V
    //   214: goto +8 -> 222
    //   217: astore_1
    //   218: aload_1
    //   219: invokevirtual 223	java/lang/Throwable:printStackTrace	()V
    //   222: aload_0
    //   223: invokestatic 220	com/amap/api/mapcore2d/ek:a	(Ljava/io/Closeable;)V
    //   226: return
    //   227: astore_0
    //   228: aload_0
    //   229: invokevirtual 223	java/lang/Throwable:printStackTrace	()V
    //   232: return
    //   233: astore_1
    //   234: aload_3
    //   235: astore_2
    //   236: goto +40 -> 276
    //   239: astore_1
    //   240: goto +14 -> 254
    //   243: astore_1
    //   244: aconst_null
    //   245: astore_0
    //   246: aload_3
    //   247: astore_2
    //   248: goto +28 -> 276
    //   251: astore_1
    //   252: aconst_null
    //   253: astore_0
    //   254: aload_3
    //   255: astore_2
    //   256: goto +17 -> 273
    //   259: astore_1
    //   260: aconst_null
    //   261: astore_0
    //   262: aload_0
    //   263: astore_2
    //   264: goto +12 -> 276
    //   267: astore_1
    //   268: aconst_null
    //   269: astore_0
    //   270: aload 7
    //   272: astore_2
    //   273: aload_1
    //   274: athrow
    //   275: astore_1
    //   276: aload_2
    //   277: invokestatic 220	com/amap/api/mapcore2d/ek:a	(Ljava/io/Closeable;)V
    //   280: goto +8 -> 288
    //   283: astore_2
    //   284: aload_2
    //   285: invokevirtual 223	java/lang/Throwable:printStackTrace	()V
    //   288: aload_0
    //   289: invokestatic 220	com/amap/api/mapcore2d/ek:a	(Ljava/io/Closeable;)V
    //   292: goto +8 -> 300
    //   295: astore_0
    //   296: aload_0
    //   297: invokevirtual 223	java/lang/Throwable:printStackTrace	()V
    //   300: aload_1
    //   301: athrow
    //   302: iload 5
    //   304: iload 6
    //   306: iadd
    //   307: istore 5
    //   309: goto -215 -> 94
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	312	0	paramContext	Context
    //   0	312	1	paramDm	dm
    //   0	312	2	paramCy	cy
    //   0	312	3	paramString1	String
    //   0	312	4	paramString2	String
    //   92	216	5	i	int
    //   100	207	6	j	int
    //   1	270	7	localFile	File
    //   7	172	8	str1	String
    //   19	150	9	str2	String
    //   89	49	10	arrayOfByte1	byte[]
    //   135	22	11	arrayOfByte2	byte[]
    // Exception table:
    //   from	to	target	type
    //   210	214	217	java/lang/Throwable
    //   222	226	227	java/lang/Throwable
    //   84	91	233	finally
    //   94	102	233	finally
    //   115	128	233	finally
    //   131	161	233	finally
    //   164	210	233	finally
    //   84	91	239	java/lang/Throwable
    //   94	102	239	java/lang/Throwable
    //   115	128	239	java/lang/Throwable
    //   131	161	239	java/lang/Throwable
    //   164	210	239	java/lang/Throwable
    //   44	84	243	finally
    //   44	84	251	java/lang/Throwable
    //   3	44	259	finally
    //   3	44	267	java/lang/Throwable
    //   273	275	275	finally
    //   276	280	283	java/lang/Throwable
    //   288	292	295	java/lang/Throwable
  }
  
  static void a(Context paramContext, dm paramDm, String paramString)
  {
    c(paramContext, paramDm, paramString);
    c(paramContext, paramDm, a(paramString));
  }
  
  static void a(Context paramContext, File paramFile, cy paramCy)
  {
    File localFile = paramFile.getParentFile();
    if ((!paramFile.exists()) && (localFile != null) && (localFile.exists())) {
      c(paramContext, paramCy.a(), paramCy.b());
    }
  }
  
  private static void a(Context paramContext, File paramFile, String paramString, cy paramCy)
  {
    dm localDm = new dm(paramContext, eg.c());
    paramContext = a.a(localDm, paramFile.getName());
    if (paramContext != null) {
      paramContext = paramContext.e();
    } else {
      paramContext = null;
    }
    paramFile = new File(paramString);
    if ((!TextUtils.isEmpty(paramContext)) && (paramFile.exists()))
    {
      paramString = cv.a(paramString);
      paramFile = paramFile.getName();
      a.a(localDm, new ei.a(paramFile, paramString, paramCy.a(), paramCy.b(), paramContext).a("useod").a(), ei.b(paramFile));
    }
  }
  
  static void a(dm paramDm, Context paramContext, String paramString)
  {
    Object localObject1 = a.a(paramDm, paramString, "used");
    if ((localObject1 != null) && (((List)localObject1).size() > 0))
    {
      localObject1 = ((List)localObject1).iterator();
      while (((Iterator)localObject1).hasNext())
      {
        Object localObject2 = (ei)((Iterator)localObject1).next();
        if ((localObject2 != null) && (((ei)localObject2).c().equals(paramString)))
        {
          a(paramContext, paramDm, ((ei)localObject2).a());
          localObject2 = paramDm.b(ei.a(paramString, ((ei)localObject2).e()), ei.class);
          if ((localObject2 != null) && (((List)localObject2).size() > 0))
          {
            localObject2 = (ei)((List)localObject2).get(0);
            ((ei)localObject2).c("errorstatus");
            a.a(paramDm, (ei)localObject2, ei.b(((ei)localObject2).a()));
            localObject2 = new File(a(paramContext, ((ei)localObject2).a()));
            if (((File)localObject2).exists()) {
              ((File)localObject2).delete();
            }
          }
        }
      }
    }
  }
  
  static String b(Context paramContext, String paramString1, String paramString2)
  {
    return a(paramContext, a(paramContext, paramString1, paramString2));
  }
  
  static void b(Context paramContext, String paramString)
  {
    dm localDm = new dm(paramContext, eg.c());
    paramString = a.a(localDm, paramString, "copy");
    ek.a(paramString);
    if (paramString != null)
    {
      int j = paramString.size();
      int i = 1;
      if (j > 1)
      {
        j = paramString.size();
        while (i < j)
        {
          c(paramContext, localDm, ((ei)paramString.get(i)).a());
          i += 1;
        }
      }
    }
  }
  
  private static void c(Context paramContext, dm paramDm, String paramString)
  {
    paramContext = new File(a(paramContext, paramString));
    if (paramContext.exists()) {
      paramContext.delete();
    }
    paramDm.a(ei.b(paramString), ei.class);
  }
  
  static void c(Context paramContext, final String paramString1, final String paramString2)
  {
    dg.c().submit(new Runnable()
    {
      public void run()
      {
        try
        {
          dm localDm = new dm(a, eg.c());
          Object localObject1 = localDm.b(ei.a(paramString1), ei.class);
          if ((localObject1 != null) && (((List)localObject1).size() > 0))
          {
            localObject1 = ((List)localObject1).iterator();
            while (((Iterator)localObject1).hasNext())
            {
              Object localObject2 = (ei)((Iterator)localObject1).next();
              String str = ((ei)localObject2).d();
              if (!paramString2.equalsIgnoreCase(str))
              {
                localObject2 = ((ei)localObject2).a();
                ee.b(a, localDm, (String)localObject2);
              }
            }
          }
          return;
        }
        catch (Throwable localThrowable)
        {
          ek.a(localThrowable, "FileManager", "clearUnSuitableV");
        }
      }
    });
  }
  
  public static class a
  {
    public static ei a(dm paramDm, String paramString)
    {
      paramDm = paramDm.b(ei.b(paramString), ei.class);
      if ((paramDm != null) && (paramDm.size() > 0)) {
        return (ei)paramDm.get(0);
      }
      return null;
    }
    
    public static List<ei> a(dm paramDm, String paramString1, String paramString2)
    {
      return paramDm.b(ei.b(paramString1, paramString2), ei.class);
    }
    
    public static void a(dm paramDm, ei paramEi, String paramString)
    {
      paramDm.a(paramEi, paramString);
    }
  }
}
