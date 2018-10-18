package com.amap.api.mapcore2d;

import android.content.Context;
import android.os.Build;
import android.os.Build.VERSION;
import android.os.Looper;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

public abstract class dk
{
  static final List<b> a = Collections.synchronizedList(new ArrayList());
  private cy b;
  private int c;
  private em d;
  private el e;
  
  protected dk(int paramInt)
  {
    c = paramInt;
  }
  
  public static String a(Context paramContext, cy paramCy)
  {
    return fd.a(paramContext, paramCy);
  }
  
  private String a(Context paramContext, String paramString)
  {
    try
    {
      paramContext = cs.e(paramContext, cz.a(paramString));
      return paramContext;
    }
    catch (Throwable paramContext)
    {
      paramContext.printStackTrace();
    }
    return null;
  }
  
  private String a(List<? extends dv> paramList, Context paramContext)
  {
    StringBuilder localStringBuilder1 = new StringBuilder();
    localStringBuilder1.append("{\"pinfo\":\"");
    localStringBuilder1.append(e(paramContext));
    localStringBuilder1.append("\",\"els\":[");
    paramList = paramList.iterator();
    int i = 1;
    while (paramList.hasNext())
    {
      paramContext = (dv)paramList.next();
      String str = d(paramContext.b());
      if ((str != null) && (!"".equals(str)))
      {
        StringBuilder localStringBuilder2 = new StringBuilder();
        localStringBuilder2.append(str);
        localStringBuilder2.append("||");
        localStringBuilder2.append(paramContext.c());
        paramContext = localStringBuilder2.toString();
        if (i != 0) {
          i = 0;
        } else {
          localStringBuilder1.append(",");
        }
        localStringBuilder1.append("{\"log\":\"");
        localStringBuilder1.append(paramContext);
        localStringBuilder1.append("\"}");
      }
    }
    if (i != 0) {
      return null;
    }
    localStringBuilder1.append("]}");
    return localStringBuilder1.toString();
  }
  
  public static List<b> a()
  {
    return a;
  }
  
  private void a(du paramDu, int paramInt)
  {
    try
    {
      a(paramDu.a(2, de.a(paramInt)), paramDu, paramInt);
      return;
    }
    catch (Throwable paramDu)
    {
      dd.a(paramDu, "LogProcessor", "processDeleteFail");
    }
  }
  
  private void a(du paramDu, String paramString1, String paramString2, int paramInt, boolean paramBoolean)
  {
    dv localDv = de.b(paramInt);
    localDv.a(0);
    localDv.b(paramString1);
    localDv.a(paramString2);
    paramDu.a(localDv);
  }
  
  private void a(List<? extends dv> paramList, du paramDu, int paramInt)
  {
    if ((paramList != null) && (paramList.size() > 0))
    {
      paramList = paramList.iterator();
      while (paramList.hasNext())
      {
        dv localDv = (dv)paramList.next();
        if (c(localDv.b()))
        {
          paramDu.a(localDv.b(), localDv.getClass());
        }
        else
        {
          localDv.a(2);
          paramDu.b(localDv);
        }
      }
    }
  }
  
  /* Error */
  private boolean a(Context paramContext, String paramString1, String paramString2, String paramString3, du paramDu)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 9
    //   3: aconst_null
    //   4: astore 10
    //   6: aconst_null
    //   7: astore 6
    //   9: aconst_null
    //   10: astore 8
    //   12: new 188	java/io/File
    //   15: dup
    //   16: aload_1
    //   17: aload_3
    //   18: invokestatic 190	com/amap/api/mapcore2d/de:a	(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    //   21: invokespecial 192	java/io/File:<init>	(Ljava/lang/String;)V
    //   24: astore_1
    //   25: aload_1
    //   26: invokevirtual 195	java/io/File:exists	()Z
    //   29: ifne +12 -> 41
    //   32: aload_1
    //   33: invokevirtual 198	java/io/File:mkdirs	()Z
    //   36: ifne +5 -> 41
    //   39: iconst_0
    //   40: ireturn
    //   41: aload_1
    //   42: iconst_1
    //   43: iconst_1
    //   44: ldc2_w 199
    //   47: invokestatic 205	com/amap/api/mapcore2d/el:a	(Ljava/io/File;IIJ)Lcom/amap/api/mapcore2d/el;
    //   50: astore_1
    //   51: aload_1
    //   52: aload_0
    //   53: aload 5
    //   55: invokevirtual 208	com/amap/api/mapcore2d/dk:a	(Lcom/amap/api/mapcore2d/du;)Lcom/amap/api/mapcore2d/em;
    //   58: invokevirtual 211	com/amap/api/mapcore2d/el:a	(Lcom/amap/api/mapcore2d/em;)V
    //   61: aload_1
    //   62: aload_2
    //   63: invokevirtual 214	com/amap/api/mapcore2d/el:a	(Ljava/lang/String;)Lcom/amap/api/mapcore2d/el$b;
    //   66: astore_3
    //   67: aload_3
    //   68: ifnull +43 -> 111
    //   71: aload_3
    //   72: ifnull +15 -> 87
    //   75: aload_3
    //   76: invokevirtual 219	com/amap/api/mapcore2d/el$b:close	()V
    //   79: goto +8 -> 87
    //   82: astore_2
    //   83: aload_2
    //   84: invokevirtual 60	java/lang/Throwable:printStackTrace	()V
    //   87: aload_1
    //   88: ifnull +21 -> 109
    //   91: aload_1
    //   92: invokevirtual 221	com/amap/api/mapcore2d/el:d	()Z
    //   95: ifne +14 -> 109
    //   98: aload_1
    //   99: invokevirtual 222	com/amap/api/mapcore2d/el:close	()V
    //   102: iconst_0
    //   103: ireturn
    //   104: astore_1
    //   105: aload_1
    //   106: invokevirtual 60	java/lang/Throwable:printStackTrace	()V
    //   109: iconst_0
    //   110: ireturn
    //   111: aload 10
    //   113: astore 5
    //   115: aload_1
    //   116: astore 6
    //   118: aload_3
    //   119: astore 7
    //   121: aload 4
    //   123: invokestatic 52	com/amap/api/mapcore2d/cz:a	(Ljava/lang/String;)[B
    //   126: astore 4
    //   128: aload 10
    //   130: astore 5
    //   132: aload_1
    //   133: astore 6
    //   135: aload_3
    //   136: astore 7
    //   138: aload_1
    //   139: aload_2
    //   140: invokevirtual 225	com/amap/api/mapcore2d/el:b	(Ljava/lang/String;)Lcom/amap/api/mapcore2d/el$a;
    //   143: astore 11
    //   145: aload 10
    //   147: astore 5
    //   149: aload_1
    //   150: astore 6
    //   152: aload_3
    //   153: astore 7
    //   155: aload 11
    //   157: iconst_0
    //   158: invokevirtual 230	com/amap/api/mapcore2d/el$a:a	(I)Ljava/io/OutputStream;
    //   161: astore_2
    //   162: aload_2
    //   163: aload 4
    //   165: invokevirtual 236	java/io/OutputStream:write	([B)V
    //   168: aload 11
    //   170: invokevirtual 238	com/amap/api/mapcore2d/el$a:a	()V
    //   173: aload_1
    //   174: invokevirtual 240	com/amap/api/mapcore2d/el:e	()V
    //   177: aload_2
    //   178: ifnull +15 -> 193
    //   181: aload_2
    //   182: invokevirtual 241	java/io/OutputStream:close	()V
    //   185: goto +8 -> 193
    //   188: astore_2
    //   189: aload_2
    //   190: invokevirtual 60	java/lang/Throwable:printStackTrace	()V
    //   193: aload_3
    //   194: ifnull +15 -> 209
    //   197: aload_3
    //   198: invokevirtual 219	com/amap/api/mapcore2d/el$b:close	()V
    //   201: goto +8 -> 209
    //   204: astore_2
    //   205: aload_2
    //   206: invokevirtual 60	java/lang/Throwable:printStackTrace	()V
    //   209: aload_1
    //   210: ifnull +21 -> 231
    //   213: aload_1
    //   214: invokevirtual 221	com/amap/api/mapcore2d/el:d	()Z
    //   217: ifne +14 -> 231
    //   220: aload_1
    //   221: invokevirtual 222	com/amap/api/mapcore2d/el:close	()V
    //   224: iconst_1
    //   225: ireturn
    //   226: astore_1
    //   227: aload_1
    //   228: invokevirtual 60	java/lang/Throwable:printStackTrace	()V
    //   231: iconst_1
    //   232: ireturn
    //   233: astore 4
    //   235: aload_2
    //   236: astore 5
    //   238: aload 4
    //   240: astore_2
    //   241: goto +245 -> 486
    //   244: astore 5
    //   246: aload_2
    //   247: astore 4
    //   249: aload 5
    //   251: astore_2
    //   252: goto +81 -> 333
    //   255: astore 5
    //   257: aload_2
    //   258: astore 4
    //   260: aload 5
    //   262: astore_2
    //   263: goto +144 -> 407
    //   266: astore_2
    //   267: aload 8
    //   269: astore 4
    //   271: goto +62 -> 333
    //   274: astore_2
    //   275: aload 9
    //   277: astore 4
    //   279: goto +128 -> 407
    //   282: astore_2
    //   283: aconst_null
    //   284: astore_3
    //   285: aload 6
    //   287: astore 5
    //   289: goto +197 -> 486
    //   292: astore_2
    //   293: aconst_null
    //   294: astore_3
    //   295: aload 8
    //   297: astore 4
    //   299: goto +34 -> 333
    //   302: astore_2
    //   303: aconst_null
    //   304: astore_3
    //   305: aload 9
    //   307: astore 4
    //   309: goto +98 -> 407
    //   312: astore_2
    //   313: aconst_null
    //   314: astore_1
    //   315: aload_1
    //   316: astore_3
    //   317: aload 6
    //   319: astore 5
    //   321: goto +165 -> 486
    //   324: astore_2
    //   325: aconst_null
    //   326: astore_1
    //   327: aload_1
    //   328: astore_3
    //   329: aload 8
    //   331: astore 4
    //   333: aload 4
    //   335: astore 5
    //   337: aload_1
    //   338: astore 6
    //   340: aload_3
    //   341: astore 7
    //   343: aload_2
    //   344: invokevirtual 60	java/lang/Throwable:printStackTrace	()V
    //   347: aload 4
    //   349: ifnull +16 -> 365
    //   352: aload 4
    //   354: invokevirtual 241	java/io/OutputStream:close	()V
    //   357: goto +8 -> 365
    //   360: astore_2
    //   361: aload_2
    //   362: invokevirtual 60	java/lang/Throwable:printStackTrace	()V
    //   365: aload_3
    //   366: ifnull +15 -> 381
    //   369: aload_3
    //   370: invokevirtual 219	com/amap/api/mapcore2d/el$b:close	()V
    //   373: goto +8 -> 381
    //   376: astore_2
    //   377: aload_2
    //   378: invokevirtual 60	java/lang/Throwable:printStackTrace	()V
    //   381: aload_1
    //   382: ifnull +95 -> 477
    //   385: aload_1
    //   386: invokevirtual 221	com/amap/api/mapcore2d/el:d	()Z
    //   389: ifne +88 -> 477
    //   392: aload_1
    //   393: invokevirtual 222	com/amap/api/mapcore2d/el:close	()V
    //   396: iconst_0
    //   397: ireturn
    //   398: astore_2
    //   399: aconst_null
    //   400: astore_1
    //   401: aload_1
    //   402: astore_3
    //   403: aload 9
    //   405: astore 4
    //   407: aload 4
    //   409: astore 5
    //   411: aload_1
    //   412: astore 6
    //   414: aload_3
    //   415: astore 7
    //   417: aload_2
    //   418: invokevirtual 242	java/io/IOException:printStackTrace	()V
    //   421: aload 4
    //   423: ifnull +16 -> 439
    //   426: aload 4
    //   428: invokevirtual 241	java/io/OutputStream:close	()V
    //   431: goto +8 -> 439
    //   434: astore_2
    //   435: aload_2
    //   436: invokevirtual 60	java/lang/Throwable:printStackTrace	()V
    //   439: aload_3
    //   440: ifnull +15 -> 455
    //   443: aload_3
    //   444: invokevirtual 219	com/amap/api/mapcore2d/el$b:close	()V
    //   447: goto +8 -> 455
    //   450: astore_2
    //   451: aload_2
    //   452: invokevirtual 60	java/lang/Throwable:printStackTrace	()V
    //   455: aload_1
    //   456: ifnull +21 -> 477
    //   459: aload_1
    //   460: invokevirtual 221	com/amap/api/mapcore2d/el:d	()Z
    //   463: ifne +14 -> 477
    //   466: aload_1
    //   467: invokevirtual 222	com/amap/api/mapcore2d/el:close	()V
    //   470: iconst_0
    //   471: ireturn
    //   472: astore_1
    //   473: aload_1
    //   474: invokevirtual 60	java/lang/Throwable:printStackTrace	()V
    //   477: iconst_0
    //   478: ireturn
    //   479: astore_2
    //   480: aload 7
    //   482: astore_3
    //   483: aload 6
    //   485: astore_1
    //   486: aload 5
    //   488: ifnull +18 -> 506
    //   491: aload 5
    //   493: invokevirtual 241	java/io/OutputStream:close	()V
    //   496: goto +10 -> 506
    //   499: astore 4
    //   501: aload 4
    //   503: invokevirtual 60	java/lang/Throwable:printStackTrace	()V
    //   506: aload_3
    //   507: ifnull +15 -> 522
    //   510: aload_3
    //   511: invokevirtual 219	com/amap/api/mapcore2d/el$b:close	()V
    //   514: goto +8 -> 522
    //   517: astore_3
    //   518: aload_3
    //   519: invokevirtual 60	java/lang/Throwable:printStackTrace	()V
    //   522: aload_1
    //   523: ifnull +22 -> 545
    //   526: aload_1
    //   527: invokevirtual 221	com/amap/api/mapcore2d/el:d	()Z
    //   530: ifne +15 -> 545
    //   533: aload_1
    //   534: invokevirtual 222	com/amap/api/mapcore2d/el:close	()V
    //   537: goto +8 -> 545
    //   540: astore_1
    //   541: aload_1
    //   542: invokevirtual 60	java/lang/Throwable:printStackTrace	()V
    //   545: aload_2
    //   546: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	547	0	this	dk
    //   0	547	1	paramContext	Context
    //   0	547	2	paramString1	String
    //   0	547	3	paramString2	String
    //   0	547	4	paramString3	String
    //   0	547	5	paramDu	du
    //   7	477	6	localContext	Context
    //   119	362	7	str	String
    //   10	320	8	localObject1	Object
    //   1	403	9	localObject2	Object
    //   4	142	10	localObject3	Object
    //   143	26	11	localA	el.a
    // Exception table:
    //   from	to	target	type
    //   75	79	82	java/lang/Throwable
    //   98	102	104	java/lang/Throwable
    //   181	185	188	java/lang/Throwable
    //   197	201	204	java/lang/Throwable
    //   220	224	226	java/lang/Throwable
    //   162	177	233	finally
    //   162	177	244	java/lang/Throwable
    //   162	177	255	java/io/IOException
    //   121	128	266	java/lang/Throwable
    //   138	145	266	java/lang/Throwable
    //   155	162	266	java/lang/Throwable
    //   121	128	274	java/io/IOException
    //   138	145	274	java/io/IOException
    //   155	162	274	java/io/IOException
    //   51	67	282	finally
    //   51	67	292	java/lang/Throwable
    //   51	67	302	java/io/IOException
    //   12	39	312	finally
    //   41	51	312	finally
    //   12	39	324	java/lang/Throwable
    //   41	51	324	java/lang/Throwable
    //   352	357	360	java/lang/Throwable
    //   369	373	376	java/lang/Throwable
    //   12	39	398	java/io/IOException
    //   41	51	398	java/io/IOException
    //   426	431	434	java/lang/Throwable
    //   443	447	450	java/lang/Throwable
    //   392	396	472	java/lang/Throwable
    //   466	470	472	java/lang/Throwable
    //   121	128	479	finally
    //   138	145	479	finally
    //   155	162	479	finally
    //   343	347	479	finally
    //   417	421	479	finally
    //   491	496	499	java/lang/Throwable
    //   510	514	517	java/lang/Throwable
    //   533	537	540	java/lang/Throwable
  }
  
  public static boolean a(String[] paramArrayOfString, String paramString)
  {
    if (paramArrayOfString != null)
    {
      if (paramString == null) {
        return false;
      }
      try
      {
        paramString = paramString.split("\n");
        int j = paramString.length;
        int i = 0;
        while (i < j)
        {
          boolean bool = b(paramArrayOfString, paramString[i].trim());
          if (bool) {
            return true;
          }
          i += 1;
        }
        return false;
      }
      catch (Throwable paramArrayOfString)
      {
        paramArrayOfString.printStackTrace();
      }
    }
    return false;
  }
  
  public static int b(String paramString)
  {
    paramString = new df(cz.c(cz.a(paramString)));
    i = 1;
    try
    {
      paramString = ep.a().a(paramString);
      if (paramString == null) {
        return 0;
      }
      paramString = cz.a(paramString);
      try
      {
        paramString = new JSONObject(paramString);
        if (paramString.has("code"))
        {
          int j = paramString.getInt("code");
          return j;
        }
        return 0;
      }
      catch (JSONException paramString)
      {
        dd.a(paramString, "LogProcessor", "processUpdate");
        return 1;
      }
      return i;
    }
    catch (co paramString)
    {
      if (paramString.e() == 27) {
        i = 0;
      }
      dd.a(paramString, "LogProcessor", "processUpdate");
    }
  }
  
  private el b(Context paramContext, String paramString)
  {
    try
    {
      paramContext = new File(de.a(paramContext, paramString));
      if ((!paramContext.exists()) && (!paramContext.mkdirs())) {
        return null;
      }
      paramContext = el.a(paramContext, 1, 1, 20480L);
      return paramContext;
    }
    catch (Throwable paramContext)
    {
      dd.a(paramContext, "LogProcessor", "initDiskLru");
    }
    catch (IOException paramContext)
    {
      dd.a(paramContext, "LogProcessor", "initDiskLru");
    }
    return null;
  }
  
  public static String b(Throwable paramThrowable)
  {
    return cz.a(paramThrowable);
  }
  
  public static boolean b(String[] paramArrayOfString, String paramString)
  {
    if (paramArrayOfString != null)
    {
      if (paramString == null) {
        return false;
      }
      try
      {
        int j = paramArrayOfString.length;
        int i = 0;
        while (i < j)
        {
          String str = paramArrayOfString[i];
          paramString = paramString.trim();
          if (paramString.startsWith("at "))
          {
            StringBuilder localStringBuilder = new StringBuilder();
            localStringBuilder.append(str);
            localStringBuilder.append(".");
            if (paramString.contains(localStringBuilder.toString()))
            {
              boolean bool = paramString.endsWith(")");
              if (bool) {
                return true;
              }
            }
          }
          i += 1;
        }
        return false;
      }
      catch (Throwable paramArrayOfString)
      {
        paramArrayOfString.printStackTrace();
      }
    }
    return false;
  }
  
  private String c(Throwable paramThrowable)
  {
    return paramThrowable.toString();
  }
  
  private boolean c(String paramString)
  {
    if (e == null) {
      return false;
    }
    try
    {
      boolean bool = e.c(paramString);
      return bool;
    }
    catch (Throwable localThrowable)
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("deleteLogData-");
      localStringBuilder.append(paramString);
      dd.a(localThrowable, "LogUpdateProcessor", localStringBuilder.toString());
    }
    return false;
  }
  
  public static String d(Context paramContext)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    try
    {
      localStringBuilder.append("\"key\":\"");
      localStringBuilder.append(cp.f(paramContext));
      localStringBuilder.append("\",\"platform\":\"android\",\"diu\":\"");
      localStringBuilder.append(ct.q(paramContext));
      localStringBuilder.append("\",\"pkg\":\"");
      localStringBuilder.append(cp.c(paramContext));
      localStringBuilder.append("\",\"model\":\"");
      localStringBuilder.append(Build.MODEL);
      localStringBuilder.append("\",\"appname\":\"");
      localStringBuilder.append(cp.b(paramContext));
      localStringBuilder.append("\",\"appversion\":\"");
      localStringBuilder.append(cp.d(paramContext));
      localStringBuilder.append("\",\"sysversion\":\"");
      localStringBuilder.append(Build.VERSION.RELEASE);
      localStringBuilder.append("\",");
    }
    catch (Throwable paramContext)
    {
      dd.a(paramContext, "CInfo", "getPublicJSONInfo");
    }
    return localStringBuilder.toString();
  }
  
  /* Error */
  private String d(String paramString)
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 317	com/amap/api/mapcore2d/dk:e	Lcom/amap/api/mapcore2d/el;
    //   4: ifnonnull +5 -> 9
    //   7: aconst_null
    //   8: areturn
    //   9: aload_0
    //   10: getfield 317	com/amap/api/mapcore2d/dk:e	Lcom/amap/api/mapcore2d/el;
    //   13: aload_1
    //   14: invokevirtual 214	com/amap/api/mapcore2d/el:a	(Ljava/lang/String;)Lcom/amap/api/mapcore2d/el$b;
    //   17: astore_1
    //   18: aload_1
    //   19: ifnonnull +5 -> 24
    //   22: aconst_null
    //   23: areturn
    //   24: aload_1
    //   25: iconst_0
    //   26: invokevirtual 372	com/amap/api/mapcore2d/el$b:a	(I)Ljava/io/InputStream;
    //   29: astore_3
    //   30: new 374	java/io/ByteArrayOutputStream
    //   33: dup
    //   34: invokespecial 375	java/io/ByteArrayOutputStream:<init>	()V
    //   37: astore_1
    //   38: aload_1
    //   39: astore 4
    //   41: aload_3
    //   42: astore 5
    //   44: sipush 1024
    //   47: newarray byte
    //   49: astore 6
    //   51: aload_1
    //   52: astore 4
    //   54: aload_3
    //   55: astore 5
    //   57: aload_3
    //   58: aload 6
    //   60: invokevirtual 381	java/io/InputStream:read	([B)I
    //   63: istore_2
    //   64: iload_2
    //   65: iconst_m1
    //   66: if_icmpeq +20 -> 86
    //   69: aload_1
    //   70: astore 4
    //   72: aload_3
    //   73: astore 5
    //   75: aload_1
    //   76: aload 6
    //   78: iconst_0
    //   79: iload_2
    //   80: invokevirtual 384	java/io/ByteArrayOutputStream:write	([BII)V
    //   83: goto -32 -> 51
    //   86: aload_1
    //   87: astore 4
    //   89: aload_3
    //   90: astore 5
    //   92: aload_1
    //   93: invokevirtual 388	java/io/ByteArrayOutputStream:toByteArray	()[B
    //   96: invokestatic 277	com/amap/api/mapcore2d/cz:a	([B)Ljava/lang/String;
    //   99: astore 6
    //   101: aload_1
    //   102: invokevirtual 389	java/io/ByteArrayOutputStream:close	()V
    //   105: goto +13 -> 118
    //   108: astore_1
    //   109: aload_1
    //   110: ldc -110
    //   112: ldc_w 391
    //   115: invokestatic 153	com/amap/api/mapcore2d/dd:a	(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    //   118: aload_3
    //   119: ifnull +20 -> 139
    //   122: aload_3
    //   123: invokevirtual 392	java/io/InputStream:close	()V
    //   126: aload 6
    //   128: areturn
    //   129: astore_1
    //   130: aload_1
    //   131: ldc -110
    //   133: ldc_w 394
    //   136: invokestatic 153	com/amap/api/mapcore2d/dd:a	(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    //   139: aload 6
    //   141: areturn
    //   142: astore 6
    //   144: goto +33 -> 177
    //   147: astore_1
    //   148: aconst_null
    //   149: astore 4
    //   151: goto +89 -> 240
    //   154: astore 6
    //   156: aconst_null
    //   157: astore_1
    //   158: goto +19 -> 177
    //   161: astore_1
    //   162: aconst_null
    //   163: astore 4
    //   165: aload 4
    //   167: astore_3
    //   168: goto +72 -> 240
    //   171: astore 6
    //   173: aconst_null
    //   174: astore_3
    //   175: aload_3
    //   176: astore_1
    //   177: aload_1
    //   178: astore 4
    //   180: aload_3
    //   181: astore 5
    //   183: aload 6
    //   185: ldc -110
    //   187: ldc_w 396
    //   190: invokestatic 153	com/amap/api/mapcore2d/dd:a	(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    //   193: aload_1
    //   194: ifnull +20 -> 214
    //   197: aload_1
    //   198: invokevirtual 389	java/io/ByteArrayOutputStream:close	()V
    //   201: goto +13 -> 214
    //   204: astore_1
    //   205: aload_1
    //   206: ldc -110
    //   208: ldc_w 391
    //   211: invokestatic 153	com/amap/api/mapcore2d/dd:a	(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    //   214: aload_3
    //   215: ifnull +19 -> 234
    //   218: aload_3
    //   219: invokevirtual 392	java/io/InputStream:close	()V
    //   222: aconst_null
    //   223: areturn
    //   224: astore_1
    //   225: aload_1
    //   226: ldc -110
    //   228: ldc_w 394
    //   231: invokestatic 153	com/amap/api/mapcore2d/dd:a	(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    //   234: aconst_null
    //   235: areturn
    //   236: astore_1
    //   237: aload 5
    //   239: astore_3
    //   240: aload 4
    //   242: ifnull +23 -> 265
    //   245: aload 4
    //   247: invokevirtual 389	java/io/ByteArrayOutputStream:close	()V
    //   250: goto +15 -> 265
    //   253: astore 4
    //   255: aload 4
    //   257: ldc -110
    //   259: ldc_w 391
    //   262: invokestatic 153	com/amap/api/mapcore2d/dd:a	(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    //   265: aload_3
    //   266: ifnull +20 -> 286
    //   269: aload_3
    //   270: invokevirtual 392	java/io/InputStream:close	()V
    //   273: goto +13 -> 286
    //   276: astore_3
    //   277: aload_3
    //   278: ldc -110
    //   280: ldc_w 394
    //   283: invokestatic 153	com/amap/api/mapcore2d/dd:a	(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    //   286: aload_1
    //   287: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	288	0	this	dk
    //   0	288	1	paramString	String
    //   63	17	2	i	int
    //   29	241	3	localObject1	Object
    //   276	2	3	localIOException1	IOException
    //   39	207	4	str	String
    //   253	3	4	localIOException2	IOException
    //   42	196	5	localObject2	Object
    //   49	91	6	localObject3	Object
    //   142	1	6	localThrowable1	Throwable
    //   154	1	6	localThrowable2	Throwable
    //   171	13	6	localThrowable3	Throwable
    // Exception table:
    //   from	to	target	type
    //   101	105	108	java/io/IOException
    //   122	126	129	java/io/IOException
    //   44	51	142	java/lang/Throwable
    //   57	64	142	java/lang/Throwable
    //   75	83	142	java/lang/Throwable
    //   92	101	142	java/lang/Throwable
    //   30	38	147	finally
    //   30	38	154	java/lang/Throwable
    //   0	7	161	finally
    //   9	18	161	finally
    //   24	30	161	finally
    //   0	7	171	java/lang/Throwable
    //   9	18	171	java/lang/Throwable
    //   24	30	171	java/lang/Throwable
    //   197	201	204	java/io/IOException
    //   218	222	224	java/io/IOException
    //   44	51	236	finally
    //   57	64	236	finally
    //   75	83	236	finally
    //   92	101	236	finally
    //   183	193	236	finally
    //   245	250	253	java/io/IOException
    //   269	273	276	java/io/IOException
  }
  
  public static String e(Context paramContext)
  {
    try
    {
      String str = d(paramContext);
      if ("".equals(str)) {
        return null;
      }
      paramContext = cs.b(paramContext, cz.a(str));
      return paramContext;
    }
    catch (Throwable paramContext)
    {
      dd.a(paramContext, "LogProcessor", "getPublicInfo");
    }
    return null;
  }
  
  private void f(Context paramContext)
  {
    try
    {
      e = b(paramContext, b());
      return;
    }
    catch (Throwable paramContext)
    {
      dd.a(paramContext, "LogProcessor", "LogUpDateProcessor");
    }
  }
  
  /* Error */
  private List<cy> g(Context paramContext)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 4
    //   3: aconst_null
    //   4: astore_3
    //   5: aload 4
    //   7: astore_2
    //   8: invokestatic 415	android/os/Looper:getMainLooper	()Landroid/os/Looper;
    //   11: astore 5
    //   13: aload 4
    //   15: astore_2
    //   16: aload 5
    //   18: monitorenter
    //   19: aload_3
    //   20: astore_2
    //   21: new 417	com/amap/api/mapcore2d/dw
    //   24: dup
    //   25: aload_1
    //   26: iconst_0
    //   27: invokespecial 420	com/amap/api/mapcore2d/dw:<init>	(Landroid/content/Context;Z)V
    //   30: invokevirtual 422	com/amap/api/mapcore2d/dw:a	()Ljava/util/List;
    //   33: astore_1
    //   34: aload 5
    //   36: monitorexit
    //   37: aload_1
    //   38: areturn
    //   39: astore_3
    //   40: goto +6 -> 46
    //   43: astore_3
    //   44: aload_2
    //   45: astore_1
    //   46: aload_1
    //   47: astore_2
    //   48: aload 5
    //   50: monitorexit
    //   51: aload_1
    //   52: astore_2
    //   53: aload_3
    //   54: athrow
    //   55: astore_1
    //   56: aload_1
    //   57: invokevirtual 60	java/lang/Throwable:printStackTrace	()V
    //   60: aload_2
    //   61: areturn
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	62	0	this	dk
    //   0	62	1	paramContext	Context
    //   7	54	2	localObject1	Object
    //   4	16	3	localObject2	Object
    //   39	1	3	localObject3	Object
    //   43	11	3	localObject4	Object
    //   1	13	4	localObject5	Object
    //   11	38	5	localLooper	Looper
    // Exception table:
    //   from	to	target	type
    //   34	37	39	finally
    //   21	34	43	finally
    //   48	51	43	finally
    //   8	13	55	java/lang/Throwable
    //   16	19	55	java/lang/Throwable
    //   53	55	55	java/lang/Throwable
  }
  
  protected em a(du paramDu)
  {
    try
    {
      if (d == null) {
        d = new a(paramDu);
      }
    }
    catch (Throwable paramDu)
    {
      paramDu.printStackTrace();
    }
    return d;
  }
  
  protected String a(String paramString)
  {
    return cv.c(paramString);
  }
  
  protected String a(Throwable paramThrowable)
  {
    try
    {
      paramThrowable = b(paramThrowable);
      return paramThrowable;
    }
    catch (Throwable paramThrowable)
    {
      paramThrowable.printStackTrace();
    }
    return null;
  }
  
  protected abstract String a(List<cy> paramList);
  
  void a(Context paramContext, Throwable paramThrowable, String paramString1, String paramString2)
  {
    Object localObject = g(paramContext);
    if (localObject != null)
    {
      if (((List)localObject).size() == 0) {
        return;
      }
      String str = a(paramThrowable);
      if (str != null)
      {
        if ("".equals(str)) {
          return;
        }
        localObject = ((List)localObject).iterator();
        while (((Iterator)localObject).hasNext())
        {
          cy localCy = (cy)((Iterator)localObject).next();
          if (a(localCy.g(), str))
          {
            a(localCy, paramContext, paramThrowable, str.replaceAll("\n", "<br/>"), paramString1, paramString2);
            return;
          }
        }
        if (str.contains("com.amap.api.col")) {
          try
          {
            a(cz.a(), paramContext, paramThrowable, str, paramString1, paramString2);
            return;
          }
          catch (co paramContext)
          {
            paramContext.printStackTrace();
          }
        }
        return;
      }
      return;
    }
  }
  
  protected void a(cy paramCy)
  {
    b = paramCy;
  }
  
  void a(cy paramCy, Context paramContext, String arg3, String paramString2, String paramString3, String paramString4)
  {
    a(paramCy);
    Object localObject = fd.a();
    String str1 = a(paramContext, paramCy);
    String str2 = cp.a(paramContext);
    if (??? != null)
    {
      if ("".equals(???)) {
        return;
      }
      int i = c();
      StringBuilder localStringBuilder = new StringBuilder();
      if (paramString3 != null)
      {
        localStringBuilder.append("class:");
        localStringBuilder.append(paramString3);
      }
      if (paramString4 != null)
      {
        localStringBuilder.append(" method:");
        localStringBuilder.append(paramString4);
        localStringBuilder.append("$");
        localStringBuilder.append("<br/>");
      }
      localStringBuilder.append(paramString2);
      paramString2 = a(paramString2);
      ??? = fd.a(str2, str1, (String)localObject, i, ???, localStringBuilder.toString());
      if (??? != null)
      {
        if ("".equals(???)) {
          return;
        }
        paramString3 = a(paramContext, ???);
        paramString4 = b();
        synchronized (Looper.getMainLooper())
        {
          localObject = new du(paramContext);
          boolean bool = a(paramContext, paramString2, paramString4, paramString3, (du)localObject);
          a((du)localObject, paramCy.a(), paramString2, i, bool);
          return;
        }
      }
      return;
    }
  }
  
  void a(cy paramCy, Context paramContext, Throwable paramThrowable, String paramString1, String paramString2, String paramString3)
  {
    a(paramCy, paramContext, c(paramThrowable), paramString1, paramString2, paramString3);
  }
  
  protected abstract boolean a(Context paramContext);
  
  protected String b()
  {
    return de.c(c);
  }
  
  void b(Context paramContext)
  {
    Object localObject1 = g(paramContext);
    if (localObject1 != null)
    {
      if (((List)localObject1).size() == 0) {
        return;
      }
      localObject1 = a((List)localObject1);
      if (localObject1 != null)
      {
        if ("".equals(localObject1)) {
          return;
        }
        ??? = fd.a();
        String str1 = fd.a(paramContext, b);
        String str2 = cp.a(paramContext);
        int i = c();
        ??? = fd.a(str2, str1, (String)???, i, "ANR", (String)localObject1);
        if (??? != null)
        {
          if ("".equals(???)) {
            return;
          }
          localObject1 = a((String)localObject1);
          str1 = a(paramContext, (String)???);
          str2 = b();
          synchronized (Looper.getMainLooper())
          {
            du localDu = new du(paramContext);
            boolean bool = a(paramContext, (String)localObject1, str2, str1, localDu);
            a(localDu, b.a(), (String)localObject1, i, bool);
            return;
          }
        }
        return;
      }
      return;
    }
  }
  
  protected int c()
  {
    return c;
  }
  
  void c(Context paramContext)
  {
    try
    {
      if (!a(paramContext)) {
        return;
      }
      synchronized (Looper.getMainLooper())
      {
        f(paramContext);
        du localDu = new du(paramContext);
        a(localDu, c());
        List localList = localDu.a(0, de.a(c()));
        if ((localList != null) && (localList.size() != 0))
        {
          paramContext = a(localList, paramContext);
          if (paramContext == null) {
            return;
          }
          if (b(paramContext) == 1) {
            a(localList, localDu, c());
          }
          return;
        }
        return;
      }
      return;
    }
    catch (Throwable paramContext)
    {
      dd.a(paramContext, "LogProcessor", "processUpdateLog");
    }
  }
  
  void d()
  {
    try
    {
      if ((e != null) && (!e.d()))
      {
        e.close();
        return;
      }
    }
    catch (Throwable localThrowable)
    {
      dd.a(localThrowable, "LogProcessor", "closeDiskLru");
      return;
    }
    catch (IOException localIOException)
    {
      dd.a(localIOException, "LogProcessor", "closeDiskLru");
    }
  }
  
  class a
    implements em
  {
    private du b;
    
    a(du paramDu)
    {
      b = paramDu;
    }
    
    public void a(String paramString)
    {
      try
      {
        b.b(paramString, de.a(c()));
        return;
      }
      catch (Throwable paramString)
      {
        paramString.printStackTrace();
      }
    }
  }
  
  public static abstract interface b
  {
    public abstract void a(Context paramContext);
  }
}
