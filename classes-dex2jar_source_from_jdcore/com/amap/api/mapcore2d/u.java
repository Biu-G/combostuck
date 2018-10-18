package com.amap.api.mapcore2d;

import android.content.Context;
import android.os.Environment;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.util.Arrays;

class u
{
  private Context a;
  private ba b = null;
  private String c = "/sdcard/Amap/RMap";
  private final int d = 128;
  
  public u(Context paramContext, boolean paramBoolean, an paramAn)
  {
    a = paramContext;
    if (paramAn == null) {
      return;
    }
    if (paramBoolean == true)
    {
      c = paramContext.getFilesDir().getPath();
    }
    else
    {
      boolean bool = false;
      paramBoolean = bool;
      if (m != null)
      {
        paramBoolean = bool;
        if (!m.equals(""))
        {
          paramContext = new File(m);
          paramBoolean = paramContext.exists();
          if (!paramBoolean) {
            paramBoolean = paramContext.mkdirs();
          }
          c = m;
        }
      }
      if (!paramBoolean) {
        c = a(a, c, paramAn);
      }
    }
    bg.a().b("cache_path", c);
  }
  
  private int a(int paramInt1, int paramInt2)
  {
    return paramInt1 % 128 * 128 + paramInt2 % 128;
  }
  
  public static String a(Context paramContext, String paramString, an paramAn)
  {
    if (!Environment.getExternalStorageState().equals("mounted")) {
      return paramContext.getFilesDir().getPath();
    }
    paramContext = new File(cm.b(paramContext), b);
    if (!paramContext.exists()) {
      paramContext.mkdir();
    }
    paramString = new StringBuilder();
    paramString.append(paramContext.toString());
    paramString.append("/");
    return paramString.toString();
  }
  
  public static void a(String paramString)
  {
    new Thread(new Runnable()
    {
      public void run()
      {
        try
        {
          u.b(a);
          return;
        }
        catch (Throwable localThrowable)
        {
          localThrowable.printStackTrace();
        }
      }
    }).start();
  }
  
  private void a(byte[] paramArrayOfByte)
  {
    if (paramArrayOfByte != null)
    {
      if (paramArrayOfByte.length != 4) {
        return;
      }
      int i = paramArrayOfByte[0];
      paramArrayOfByte[0] = paramArrayOfByte[3];
      paramArrayOfByte[3] = i;
      i = paramArrayOfByte[1];
      paramArrayOfByte[1] = paramArrayOfByte[2];
      paramArrayOfByte[2] = i;
      return;
    }
  }
  
  private byte[] a(int paramInt)
  {
    return new byte[] { (byte)(paramInt & 0xFF), (byte)((0xFF00 & paramInt) >> 8), (byte)((0xFF0000 & paramInt) >> 16), (byte)((paramInt & 0xFF000000) >> 24) };
  }
  
  private String[] a(bs paramBs, boolean paramBoolean)
  {
    int j = b / 128;
    int i = c / 128;
    j /= 10;
    i /= 10;
    String[] arrayOfString = new String[2];
    try
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append(c);
      localStringBuilder.append("/");
      localStringBuilder.append(d);
      localStringBuilder.append("/");
      localStringBuilder.append(j);
      localStringBuilder.append("/");
      localStringBuilder.append(i);
      localStringBuilder.append("/");
      if (!paramBoolean)
      {
        File localFile = new File(localStringBuilder.toString());
        if (!localFile.exists()) {
          localFile.mkdirs();
        }
      }
      localStringBuilder.append(paramBs.c());
      paramBs = new StringBuilder();
      paramBs.append(localStringBuilder.toString());
      paramBs.append(".idx");
      arrayOfString[0] = paramBs.toString();
      paramBs = new StringBuilder();
      paramBs.append(localStringBuilder.toString());
      paramBs.append(".dat");
      arrayOfString[1] = paramBs.toString();
      return arrayOfString;
    }
    catch (Throwable paramBs)
    {
      cm.a(paramBs, "CachManager", "getCachFileName");
    }
    return arrayOfString;
  }
  
  private int b(byte[] paramArrayOfByte)
  {
    int i = paramArrayOfByte[0];
    int j = paramArrayOfByte[1];
    int k = paramArrayOfByte[2];
    return paramArrayOfByte[3] << 24 & 0xFF000000 | i & 0xFF | j << 8 & 0xFF00 | k << 16 & 0xFF0000;
  }
  
  public static boolean b(String paramString)
  {
    File localFile = new File(paramString);
    if (!localFile.exists()) {
      return false;
    }
    if (localFile.isFile()) {
      return c(paramString);
    }
    return d(paramString);
  }
  
  public static boolean c(String paramString)
  {
    paramString = new File(paramString);
    if ((paramString.isFile()) && (paramString.exists()))
    {
      paramString.delete();
      return true;
    }
    return false;
  }
  
  public static boolean d(String paramString)
  {
    Object localObject = paramString;
    if (!paramString.endsWith(File.separator))
    {
      localObject = new StringBuilder();
      ((StringBuilder)localObject).append(paramString);
      ((StringBuilder)localObject).append(File.separator);
      localObject = ((StringBuilder)localObject).toString();
    }
    paramString = new File((String)localObject);
    if (paramString.exists())
    {
      if (!paramString.isDirectory()) {
        return false;
      }
      localObject = paramString.listFiles();
      int i = 0;
      int j = 1;
      while (i < localObject.length)
      {
        boolean bool;
        if (localObject[i].isFile())
        {
          bool = c(localObject[i].getAbsolutePath());
          j = bool;
          if (!bool)
          {
            j = bool;
            break;
          }
        }
        else
        {
          bool = d(localObject[i].getAbsolutePath());
          j = bool;
          if (!bool)
          {
            j = bool;
            break;
          }
        }
        i += 1;
      }
      if (j == 0) {
        return false;
      }
      return paramString.delete();
    }
    return false;
  }
  
  public int a(bs paramBs)
  {
    int i;
    do
    {
      try
      {
        Object localObject3 = a(paramBs, true);
        if ((localObject3 != null) && (localObject3.length == 2) && (!localObject3[0].equals("")))
        {
          if (Arrays.equals((Object[])localObject3, new String[localObject3.length])) {
            return -1;
          }
          Object localObject1 = new File(localObject3[0]);
          if (!((File)localObject1).exists()) {
            return -1;
          }
          i = a(b, c);
          if (i < 0) {
            return -1;
          }
          Object localObject2;
          try
          {
            localObject1 = new RandomAccessFile((File)localObject1, "r");
          }
          catch (FileNotFoundException localFileNotFoundException1)
          {
            cm.a(localFileNotFoundException1, "CachManager", "getTileFromCach");
            localObject2 = null;
          }
          if (localObject2 == null) {
            return -1;
          }
          long l = i * 4;
          try
          {
            localObject2.seek(l);
          }
          catch (IOException localIOException4)
          {
            cm.a(localIOException4, "CachManager", "getTileFromCach");
          }
          byte[] arrayOfByte2 = new byte[4];
          try
          {
            localObject2.read(arrayOfByte2, 0, 4);
          }
          catch (IOException localIOException5)
          {
            cm.a(localIOException5, "CachManager", "getTileFromCach");
          }
          a(arrayOfByte2);
          i = b(arrayOfByte2);
          try
          {
            localObject2.close();
          }
          catch (Throwable localThrowable1)
          {
            cm.a(localThrowable1, "CachManager", "getTileFromCach");
          }
          File localFile = new File(localObject3[1]);
          boolean bool = localFile.exists();
          if (!bool) {
            return -1;
          }
          try
          {
            localObject3 = new RandomAccessFile(localFile, "r");
          }
          catch (FileNotFoundException localFileNotFoundException2)
          {
            cm.a(localFileNotFoundException2, "CachManager", "getTileFromCach");
            localObject3 = null;
          }
          if (localObject3 == null) {
            return -1;
          }
          l = i;
          try
          {
            ((RandomAccessFile)localObject3).seek(l);
          }
          catch (IOException localIOException1)
          {
            cm.a(localIOException1, "CachManager", "getTileFromCach");
          }
          try
          {
            ((RandomAccessFile)localObject3).read(arrayOfByte2, 0, 4);
          }
          catch (IOException localIOException2)
          {
            cm.a(localIOException2, "CachManager", "getTileFromCach");
          }
          a(arrayOfByte2);
          i = b(arrayOfByte2);
          if ((i > 0) && (i <= 204800))
          {
            byte[] arrayOfByte1;
            for (;;)
            {
              try
              {
                arrayOfByte1 = new byte[i];
                try
                {
                  ((RandomAccessFile)localObject3).read(arrayOfByte1, 0, i);
                }
                catch (Throwable localThrowable2) {}
                cm.a(localThrowable3, "CachManager", "getTileFromCach");
              }
              catch (Throwable localThrowable3)
              {
                arrayOfByte1 = null;
              }
            }
            try
            {
              ((RandomAccessFile)localObject3).close();
            }
            catch (IOException localIOException3)
            {
              cm.a(localIOException3, "CachManager", "getTileFromCach");
            }
            if (b == null) {
              return -1;
            }
            i = b.a(arrayOfByte1, null, true, null, paramBs.c());
            return i;
          }
          try
          {
            localIOException3.close();
            return -1;
          }
          catch (IOException paramBs)
          {
            cm.a(paramBs, "CachManager", "getTileFromCach");
            return -1;
          }
        }
        return -1;
      }
      catch (Throwable paramBs)
      {
        cm.a(paramBs, "CachManager", "getTileFromCach");
        return -1;
      }
    } while (i >= 0);
    return -1;
  }
  
  public void a(ba paramBa)
  {
    b = paramBa;
  }
  
  /* Error */
  public boolean a(byte[] paramArrayOfByte, bs paramBs)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_1
    //   3: ifnonnull +7 -> 10
    //   6: aload_0
    //   7: monitorexit
    //   8: iconst_0
    //   9: ireturn
    //   10: aload_1
    //   11: arraylength
    //   12: istore_3
    //   13: iload_3
    //   14: ifgt +7 -> 21
    //   17: aload_0
    //   18: monitorexit
    //   19: iconst_0
    //   20: ireturn
    //   21: aload_0
    //   22: aload_2
    //   23: iconst_0
    //   24: invokespecial 186	com/amap/api/mapcore2d/u:a	(Lcom/amap/api/mapcore2d/bs;Z)[Ljava/lang/String;
    //   27: astore 10
    //   29: aload 10
    //   31: ifnull +510 -> 541
    //   34: aload 10
    //   36: arraylength
    //   37: iconst_2
    //   38: if_icmpne +503 -> 541
    //   41: aload 10
    //   43: iconst_0
    //   44: aaload
    //   45: ldc 48
    //   47: invokevirtual 54	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   50: ifne +491 -> 541
    //   53: aload 10
    //   55: aload 10
    //   57: arraylength
    //   58: anewarray 50	java/lang/String
    //   61: invokestatic 191	java/util/Arrays:equals	([Ljava/lang/Object;[Ljava/lang/Object;)Z
    //   64: ifeq +6 -> 70
    //   67: goto +474 -> 541
    //   70: new 37	java/io/File
    //   73: dup
    //   74: aload 10
    //   76: iconst_1
    //   77: aaload
    //   78: invokespecial 57	java/io/File:<init>	(Ljava/lang/String;)V
    //   81: astore 9
    //   83: aload 9
    //   85: invokevirtual 61	java/io/File:exists	()Z
    //   88: istore 4
    //   90: iload 4
    //   92: ifne +36 -> 128
    //   95: aload 9
    //   97: invokevirtual 228	java/io/File:createNewFile	()Z
    //   100: istore 4
    //   102: goto +17 -> 119
    //   105: astore 11
    //   107: aload 11
    //   109: ldc -110
    //   111: ldc -26
    //   113: invokestatic 151	com/amap/api/mapcore2d/cm:a	(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    //   116: iconst_0
    //   117: istore 4
    //   119: iload 4
    //   121: ifne +7 -> 128
    //   124: aload_0
    //   125: monitorexit
    //   126: iconst_0
    //   127: ireturn
    //   128: new 195	java/io/RandomAccessFile
    //   131: dup
    //   132: aload 9
    //   134: ldc -24
    //   136: invokespecial 200	java/io/RandomAccessFile:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   139: astore 9
    //   141: goto +17 -> 158
    //   144: astore 9
    //   146: aload 9
    //   148: ldc -110
    //   150: ldc -26
    //   152: invokestatic 151	com/amap/api/mapcore2d/cm:a	(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    //   155: aconst_null
    //   156: astore 9
    //   158: aload 9
    //   160: ifnonnull +7 -> 167
    //   163: aload_0
    //   164: monitorexit
    //   165: iconst_0
    //   166: ireturn
    //   167: aload_0
    //   168: iload_3
    //   169: invokespecial 234	com/amap/api/mapcore2d/u:a	(I)[B
    //   172: astore 11
    //   174: aload_0
    //   175: aload 11
    //   177: invokespecial 212	com/amap/api/mapcore2d/u:a	([B)V
    //   180: aload 9
    //   182: invokevirtual 238	java/io/RandomAccessFile:length	()J
    //   185: lstore 5
    //   187: goto +17 -> 204
    //   190: astore 12
    //   192: aload 12
    //   194: ldc -110
    //   196: ldc -26
    //   198: invokestatic 151	com/amap/api/mapcore2d/cm:a	(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    //   201: lconst_0
    //   202: lstore 5
    //   204: aload 9
    //   206: lload 5
    //   208: invokevirtual 206	java/io/RandomAccessFile:seek	(J)V
    //   211: goto +14 -> 225
    //   214: astore 12
    //   216: aload 12
    //   218: ldc -110
    //   220: ldc -26
    //   222: invokestatic 151	com/amap/api/mapcore2d/cm:a	(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    //   225: aload 9
    //   227: aload 11
    //   229: invokevirtual 241	java/io/RandomAccessFile:write	([B)V
    //   232: goto +14 -> 246
    //   235: astore 11
    //   237: aload 11
    //   239: ldc -110
    //   241: ldc -26
    //   243: invokestatic 151	com/amap/api/mapcore2d/cm:a	(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    //   246: aload 9
    //   248: aload_1
    //   249: invokevirtual 241	java/io/RandomAccessFile:write	([B)V
    //   252: goto +12 -> 264
    //   255: astore_1
    //   256: aload_1
    //   257: ldc -110
    //   259: ldc -26
    //   261: invokestatic 151	com/amap/api/mapcore2d/cm:a	(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    //   264: aload 9
    //   266: invokevirtual 217	java/io/RandomAccessFile:close	()V
    //   269: goto +12 -> 281
    //   272: astore_1
    //   273: aload_1
    //   274: ldc -110
    //   276: ldc -26
    //   278: invokestatic 151	com/amap/api/mapcore2d/cm:a	(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    //   281: new 37	java/io/File
    //   284: dup
    //   285: aload 10
    //   287: iconst_0
    //   288: aaload
    //   289: invokespecial 57	java/io/File:<init>	(Ljava/lang/String;)V
    //   292: astore_1
    //   293: aload_1
    //   294: invokevirtual 61	java/io/File:exists	()Z
    //   297: istore 4
    //   299: iload 4
    //   301: ifne +35 -> 336
    //   304: aload_1
    //   305: invokevirtual 228	java/io/File:createNewFile	()Z
    //   308: istore 4
    //   310: goto +17 -> 327
    //   313: astore 9
    //   315: aload 9
    //   317: ldc -110
    //   319: ldc -26
    //   321: invokestatic 151	com/amap/api/mapcore2d/cm:a	(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    //   324: iconst_0
    //   325: istore 4
    //   327: iload 4
    //   329: ifne +7 -> 336
    //   332: aload_0
    //   333: monitorexit
    //   334: iconst_0
    //   335: ireturn
    //   336: new 195	java/io/RandomAccessFile
    //   339: dup
    //   340: aload_1
    //   341: ldc -24
    //   343: invokespecial 200	java/io/RandomAccessFile:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   346: astore_1
    //   347: goto +14 -> 361
    //   350: astore_1
    //   351: aload_1
    //   352: ldc -110
    //   354: ldc -26
    //   356: invokestatic 151	com/amap/api/mapcore2d/cm:a	(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    //   359: aconst_null
    //   360: astore_1
    //   361: aload_1
    //   362: ifnonnull +7 -> 369
    //   365: aload_0
    //   366: monitorexit
    //   367: iconst_0
    //   368: ireturn
    //   369: aload_1
    //   370: invokevirtual 238	java/io/RandomAccessFile:length	()J
    //   373: lstore 7
    //   375: goto +17 -> 392
    //   378: astore 9
    //   380: aload 9
    //   382: ldc -110
    //   384: ldc -26
    //   386: invokestatic 151	com/amap/api/mapcore2d/cm:a	(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    //   389: lconst_0
    //   390: lstore 7
    //   392: lload 7
    //   394: lconst_0
    //   395: lcmp
    //   396: ifne +35 -> 431
    //   399: ldc -14
    //   401: newarray byte
    //   403: astore 9
    //   405: aload 9
    //   407: iconst_m1
    //   408: invokestatic 246	java/util/Arrays:fill	([BB)V
    //   411: aload_1
    //   412: aload 9
    //   414: invokevirtual 241	java/io/RandomAccessFile:write	([B)V
    //   417: goto +14 -> 431
    //   420: astore 9
    //   422: aload 9
    //   424: ldc -110
    //   426: ldc -26
    //   428: invokestatic 151	com/amap/api/mapcore2d/cm:a	(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    //   431: aload_0
    //   432: aload_2
    //   433: getfield 132	com/amap/api/mapcore2d/bs:b	I
    //   436: aload_2
    //   437: getfield 134	com/amap/api/mapcore2d/bs:c	I
    //   440: invokespecial 193	com/amap/api/mapcore2d/u:a	(II)I
    //   443: istore_3
    //   444: iload_3
    //   445: ifge +23 -> 468
    //   448: aload_1
    //   449: invokevirtual 217	java/io/RandomAccessFile:close	()V
    //   452: goto +12 -> 464
    //   455: astore_1
    //   456: aload_1
    //   457: ldc -110
    //   459: ldc -26
    //   461: invokestatic 151	com/amap/api/mapcore2d/cm:a	(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    //   464: aload_0
    //   465: monitorexit
    //   466: iconst_0
    //   467: ireturn
    //   468: iload_3
    //   469: iconst_4
    //   470: imul
    //   471: i2l
    //   472: lstore 7
    //   474: aload_1
    //   475: lload 7
    //   477: invokevirtual 206	java/io/RandomAccessFile:seek	(J)V
    //   480: goto +12 -> 492
    //   483: astore_2
    //   484: aload_2
    //   485: ldc -110
    //   487: ldc -26
    //   489: invokestatic 151	com/amap/api/mapcore2d/cm:a	(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    //   492: aload_0
    //   493: lload 5
    //   495: l2i
    //   496: invokespecial 234	com/amap/api/mapcore2d/u:a	(I)[B
    //   499: astore_2
    //   500: aload_0
    //   501: aload_2
    //   502: invokespecial 212	com/amap/api/mapcore2d/u:a	([B)V
    //   505: aload_1
    //   506: aload_2
    //   507: invokevirtual 241	java/io/RandomAccessFile:write	([B)V
    //   510: goto +12 -> 522
    //   513: astore_2
    //   514: aload_2
    //   515: ldc -110
    //   517: ldc -26
    //   519: invokestatic 151	com/amap/api/mapcore2d/cm:a	(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    //   522: aload_1
    //   523: invokevirtual 217	java/io/RandomAccessFile:close	()V
    //   526: goto +28 -> 554
    //   529: astore_1
    //   530: aload_1
    //   531: ldc -110
    //   533: ldc -26
    //   535: invokestatic 151	com/amap/api/mapcore2d/cm:a	(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    //   538: goto +16 -> 554
    //   541: aload_0
    //   542: monitorexit
    //   543: iconst_0
    //   544: ireturn
    //   545: astore_1
    //   546: aload_1
    //   547: ldc -110
    //   549: ldc -26
    //   551: invokestatic 151	com/amap/api/mapcore2d/cm:a	(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    //   554: aload_0
    //   555: monitorexit
    //   556: iconst_1
    //   557: ireturn
    //   558: astore_1
    //   559: aload_0
    //   560: monitorexit
    //   561: aload_1
    //   562: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	563	0	this	u
    //   0	563	1	paramArrayOfByte	byte[]
    //   0	563	2	paramBs	bs
    //   12	459	3	i	int
    //   88	240	4	bool	boolean
    //   185	309	5	l1	long
    //   373	103	7	l2	long
    //   81	59	9	localObject1	Object
    //   144	3	9	localThrowable1	Throwable
    //   156	109	9	localObject2	Object
    //   313	3	9	localIOException	IOException
    //   378	3	9	localThrowable2	Throwable
    //   403	10	9	arrayOfByte1	byte[]
    //   420	3	9	localThrowable3	Throwable
    //   27	259	10	arrayOfString	String[]
    //   105	3	11	localThrowable4	Throwable
    //   172	56	11	arrayOfByte2	byte[]
    //   235	3	11	localThrowable5	Throwable
    //   190	3	12	localThrowable6	Throwable
    //   214	3	12	localThrowable7	Throwable
    // Exception table:
    //   from	to	target	type
    //   95	102	105	java/lang/Throwable
    //   128	141	144	java/lang/Throwable
    //   180	187	190	java/lang/Throwable
    //   204	211	214	java/lang/Throwable
    //   225	232	235	java/lang/Throwable
    //   246	252	255	java/lang/Throwable
    //   264	269	272	java/lang/Throwable
    //   304	310	313	java/io/IOException
    //   336	347	350	java/lang/Throwable
    //   369	375	378	java/lang/Throwable
    //   399	417	420	java/lang/Throwable
    //   448	452	455	java/lang/Throwable
    //   474	480	483	java/lang/Throwable
    //   505	510	513	java/lang/Throwable
    //   522	526	529	java/lang/Throwable
    //   21	29	545	java/lang/Throwable
    //   34	67	545	java/lang/Throwable
    //   70	90	545	java/lang/Throwable
    //   107	116	545	java/lang/Throwable
    //   146	155	545	java/lang/Throwable
    //   167	180	545	java/lang/Throwable
    //   192	201	545	java/lang/Throwable
    //   216	225	545	java/lang/Throwable
    //   237	246	545	java/lang/Throwable
    //   256	264	545	java/lang/Throwable
    //   273	281	545	java/lang/Throwable
    //   281	299	545	java/lang/Throwable
    //   304	310	545	java/lang/Throwable
    //   315	324	545	java/lang/Throwable
    //   351	359	545	java/lang/Throwable
    //   380	389	545	java/lang/Throwable
    //   422	431	545	java/lang/Throwable
    //   431	444	545	java/lang/Throwable
    //   456	464	545	java/lang/Throwable
    //   484	492	545	java/lang/Throwable
    //   492	505	545	java/lang/Throwable
    //   514	522	545	java/lang/Throwable
    //   530	538	545	java/lang/Throwable
    //   10	13	558	finally
    //   21	29	558	finally
    //   34	67	558	finally
    //   70	90	558	finally
    //   95	102	558	finally
    //   107	116	558	finally
    //   128	141	558	finally
    //   146	155	558	finally
    //   167	180	558	finally
    //   180	187	558	finally
    //   192	201	558	finally
    //   204	211	558	finally
    //   216	225	558	finally
    //   225	232	558	finally
    //   237	246	558	finally
    //   246	252	558	finally
    //   256	264	558	finally
    //   264	269	558	finally
    //   273	281	558	finally
    //   281	299	558	finally
    //   304	310	558	finally
    //   315	324	558	finally
    //   336	347	558	finally
    //   351	359	558	finally
    //   369	375	558	finally
    //   380	389	558	finally
    //   399	417	558	finally
    //   422	431	558	finally
    //   431	444	558	finally
    //   448	452	558	finally
    //   456	464	558	finally
    //   474	480	558	finally
    //   484	492	558	finally
    //   492	505	558	finally
    //   505	510	558	finally
    //   514	522	558	finally
    //   522	526	558	finally
    //   530	538	558	finally
    //   546	554	558	finally
  }
}
