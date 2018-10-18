package com.amap.api.mapcore2d;

import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Date;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import org.json.JSONObject;

public class cz
{
  static String a;
  
  static
  {
    StringBuilder localStringBuilder = new StringBuilder();
    int i = 0;
    while (i < 80)
    {
      localStringBuilder.append("=");
      i += 1;
    }
    a = localStringBuilder.toString();
  }
  
  public static cy a()
    throws co
  {
    return new cy.a("collection", "1.0", "AMap_collection_1.0").a(new String[] { "com.amap.api.collection" }).a();
  }
  
  public static String a(long paramLong)
  {
    try
    {
      String str = new SimpleDateFormat("yyyyMMdd HH:mm:ss:SSS", Locale.CHINA).format(new Date(paramLong));
      return str;
    }
    catch (Throwable localThrowable)
    {
      localThrowable.printStackTrace();
    }
    return null;
  }
  
  /* Error */
  public static String a(Throwable paramThrowable)
  {
    // Byte code:
    //   0: new 81	java/io/StringWriter
    //   3: dup
    //   4: invokespecial 82	java/io/StringWriter:<init>	()V
    //   7: astore_2
    //   8: new 84	java/io/PrintWriter
    //   11: dup
    //   12: aload_2
    //   13: invokespecial 87	java/io/PrintWriter:<init>	(Ljava/io/Writer;)V
    //   16: astore 4
    //   18: aload_2
    //   19: astore_1
    //   20: aload 4
    //   22: astore_3
    //   23: aload_0
    //   24: aload 4
    //   26: invokevirtual 90	java/lang/Throwable:printStackTrace	(Ljava/io/PrintWriter;)V
    //   29: aload_2
    //   30: astore_1
    //   31: aload 4
    //   33: astore_3
    //   34: aload_0
    //   35: invokevirtual 94	java/lang/Throwable:getCause	()Ljava/lang/Throwable;
    //   38: astore_0
    //   39: aload_0
    //   40: ifnull +27 -> 67
    //   43: aload_2
    //   44: astore_1
    //   45: aload 4
    //   47: astore_3
    //   48: aload_0
    //   49: aload 4
    //   51: invokevirtual 90	java/lang/Throwable:printStackTrace	(Ljava/io/PrintWriter;)V
    //   54: aload_2
    //   55: astore_1
    //   56: aload 4
    //   58: astore_3
    //   59: aload_0
    //   60: invokevirtual 94	java/lang/Throwable:getCause	()Ljava/lang/Throwable;
    //   63: astore_0
    //   64: goto -25 -> 39
    //   67: aload_2
    //   68: astore_1
    //   69: aload 4
    //   71: astore_3
    //   72: aload_2
    //   73: invokevirtual 95	java/lang/Object:toString	()Ljava/lang/String;
    //   76: astore_0
    //   77: aload_2
    //   78: invokevirtual 100	java/io/Writer:close	()V
    //   81: goto +8 -> 89
    //   84: astore_1
    //   85: aload_1
    //   86: invokevirtual 78	java/lang/Throwable:printStackTrace	()V
    //   89: aload 4
    //   91: invokevirtual 101	java/io/PrintWriter:close	()V
    //   94: aload_0
    //   95: areturn
    //   96: astore_1
    //   97: aload_1
    //   98: invokevirtual 78	java/lang/Throwable:printStackTrace	()V
    //   101: aload_0
    //   102: areturn
    //   103: astore_1
    //   104: aload 4
    //   106: astore_0
    //   107: aload_1
    //   108: astore 4
    //   110: goto +32 -> 142
    //   113: astore_0
    //   114: aconst_null
    //   115: astore_3
    //   116: aload_2
    //   117: astore_1
    //   118: goto +67 -> 185
    //   121: astore 4
    //   123: aconst_null
    //   124: astore_0
    //   125: goto +17 -> 142
    //   128: astore_0
    //   129: aconst_null
    //   130: astore_1
    //   131: aload_1
    //   132: astore_3
    //   133: goto +52 -> 185
    //   136: astore 4
    //   138: aconst_null
    //   139: astore_2
    //   140: aload_2
    //   141: astore_0
    //   142: aload_2
    //   143: astore_1
    //   144: aload_0
    //   145: astore_3
    //   146: aload 4
    //   148: invokevirtual 78	java/lang/Throwable:printStackTrace	()V
    //   151: aload_2
    //   152: ifnull +15 -> 167
    //   155: aload_2
    //   156: invokevirtual 100	java/io/Writer:close	()V
    //   159: goto +8 -> 167
    //   162: astore_1
    //   163: aload_1
    //   164: invokevirtual 78	java/lang/Throwable:printStackTrace	()V
    //   167: aload_0
    //   168: ifnull +14 -> 182
    //   171: aload_0
    //   172: invokevirtual 101	java/io/PrintWriter:close	()V
    //   175: aconst_null
    //   176: areturn
    //   177: astore_0
    //   178: aload_0
    //   179: invokevirtual 78	java/lang/Throwable:printStackTrace	()V
    //   182: aconst_null
    //   183: areturn
    //   184: astore_0
    //   185: aload_1
    //   186: ifnull +15 -> 201
    //   189: aload_1
    //   190: invokevirtual 100	java/io/Writer:close	()V
    //   193: goto +8 -> 201
    //   196: astore_1
    //   197: aload_1
    //   198: invokevirtual 78	java/lang/Throwable:printStackTrace	()V
    //   201: aload_3
    //   202: ifnull +15 -> 217
    //   205: aload_3
    //   206: invokevirtual 101	java/io/PrintWriter:close	()V
    //   209: goto +8 -> 217
    //   212: astore_1
    //   213: aload_1
    //   214: invokevirtual 78	java/lang/Throwable:printStackTrace	()V
    //   217: aload_0
    //   218: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	219	0	paramThrowable	Throwable
    //   19	50	1	localStringWriter1	java.io.StringWriter
    //   84	2	1	localThrowable1	Throwable
    //   96	2	1	localThrowable2	Throwable
    //   103	5	1	localThrowable3	Throwable
    //   117	27	1	localStringWriter2	java.io.StringWriter
    //   162	28	1	localThrowable4	Throwable
    //   196	2	1	localThrowable5	Throwable
    //   212	2	1	localThrowable6	Throwable
    //   7	149	2	localStringWriter3	java.io.StringWriter
    //   22	184	3	localObject1	Object
    //   16	93	4	localObject2	Object
    //   121	1	4	localThrowable7	Throwable
    //   136	11	4	localThrowable8	Throwable
    // Exception table:
    //   from	to	target	type
    //   77	81	84	java/lang/Throwable
    //   89	94	96	java/lang/Throwable
    //   23	29	103	java/lang/Throwable
    //   34	39	103	java/lang/Throwable
    //   48	54	103	java/lang/Throwable
    //   59	64	103	java/lang/Throwable
    //   72	77	103	java/lang/Throwable
    //   8	18	113	finally
    //   8	18	121	java/lang/Throwable
    //   0	8	128	finally
    //   0	8	136	java/lang/Throwable
    //   155	159	162	java/lang/Throwable
    //   171	175	177	java/lang/Throwable
    //   23	29	184	finally
    //   34	39	184	finally
    //   48	54	184	finally
    //   59	64	184	finally
    //   72	77	184	finally
    //   146	151	184	finally
    //   189	193	196	java/lang/Throwable
    //   205	209	212	java/lang/Throwable
  }
  
  public static String a(Map<String, String> paramMap)
  {
    StringBuffer localStringBuffer;
    if ((paramMap != null) && (paramMap.size() != 0))
    {
      localStringBuffer = new StringBuffer();
      int i = 1;
      try
      {
        paramMap = paramMap.entrySet().iterator();
        while (paramMap.hasNext())
        {
          Map.Entry localEntry = (Map.Entry)paramMap.next();
          if (i != 0)
          {
            i = 0;
            localStringBuffer.append((String)localEntry.getKey());
            localStringBuffer.append("=");
            localStringBuffer.append((String)localEntry.getValue());
          }
          else
          {
            localStringBuffer.append("&");
            localStringBuffer.append((String)localEntry.getKey());
            localStringBuffer.append("=");
            localStringBuffer.append((String)localEntry.getValue());
          }
        }
        return localStringBuffer.toString();
      }
      catch (Throwable paramMap)
      {
        dd.a(paramMap, "Utils", "assembleParams");
      }
    }
    return null;
  }
  
  public static String a(byte[] paramArrayOfByte)
  {
    if ((paramArrayOfByte != null) && (paramArrayOfByte.length != 0)) {}
    try
    {
      String str = new String(paramArrayOfByte, "UTF-8");
      return str;
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException)
    {
      for (;;) {}
    }
    return new String(paramArrayOfByte);
    return "";
  }
  
  /* Error */
  static java.security.PublicKey a(Context paramContext)
    throws java.security.cert.CertificateException, java.security.spec.InvalidKeySpecException, java.security.NoSuchAlgorithmException, java.lang.NullPointerException, IOException
  {
    // Byte code:
    //   0: new 182	java/io/ByteArrayInputStream
    //   3: dup
    //   4: ldc -72
    //   6: invokestatic 190	com/amap/api/mapcore2d/cu:b	(Ljava/lang/String;)[B
    //   9: invokespecial 191	java/io/ByteArrayInputStream:<init>	([B)V
    //   12: astore_1
    //   13: aload_1
    //   14: astore_0
    //   15: ldc -63
    //   17: invokestatic 199	java/security/cert/CertificateFactory:getInstance	(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;
    //   20: astore_3
    //   21: aload_1
    //   22: astore_0
    //   23: ldc -55
    //   25: invokestatic 206	java/security/KeyFactory:getInstance	(Ljava/lang/String;)Ljava/security/KeyFactory;
    //   28: astore_2
    //   29: aload_1
    //   30: astore_0
    //   31: aload_3
    //   32: aload_1
    //   33: invokevirtual 210	java/security/cert/CertificateFactory:generateCertificate	(Ljava/io/InputStream;)Ljava/security/cert/Certificate;
    //   36: astore_3
    //   37: aload_3
    //   38: ifnull +46 -> 84
    //   41: aload_2
    //   42: ifnonnull +6 -> 48
    //   45: goto +39 -> 84
    //   48: aload_1
    //   49: astore_0
    //   50: aload_2
    //   51: new 212	java/security/spec/X509EncodedKeySpec
    //   54: dup
    //   55: aload_3
    //   56: invokevirtual 218	java/security/cert/Certificate:getPublicKey	()Ljava/security/PublicKey;
    //   59: invokeinterface 224 1 0
    //   64: invokespecial 225	java/security/spec/X509EncodedKeySpec:<init>	([B)V
    //   67: invokevirtual 229	java/security/KeyFactory:generatePublic	(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    //   70: astore_2
    //   71: aload_1
    //   72: invokevirtual 232	java/io/InputStream:close	()V
    //   75: aload_2
    //   76: areturn
    //   77: astore_0
    //   78: aload_0
    //   79: invokevirtual 78	java/lang/Throwable:printStackTrace	()V
    //   82: aload_2
    //   83: areturn
    //   84: aload_1
    //   85: invokevirtual 232	java/io/InputStream:close	()V
    //   88: aconst_null
    //   89: areturn
    //   90: astore_0
    //   91: aload_0
    //   92: invokevirtual 78	java/lang/Throwable:printStackTrace	()V
    //   95: aconst_null
    //   96: areturn
    //   97: astore_2
    //   98: goto +12 -> 110
    //   101: astore_1
    //   102: aconst_null
    //   103: astore_0
    //   104: goto +30 -> 134
    //   107: astore_2
    //   108: aconst_null
    //   109: astore_1
    //   110: aload_1
    //   111: astore_0
    //   112: aload_2
    //   113: invokevirtual 78	java/lang/Throwable:printStackTrace	()V
    //   116: aload_1
    //   117: ifnull +14 -> 131
    //   120: aload_1
    //   121: invokevirtual 232	java/io/InputStream:close	()V
    //   124: aconst_null
    //   125: areturn
    //   126: astore_0
    //   127: aload_0
    //   128: invokevirtual 78	java/lang/Throwable:printStackTrace	()V
    //   131: aconst_null
    //   132: areturn
    //   133: astore_1
    //   134: aload_0
    //   135: ifnull +15 -> 150
    //   138: aload_0
    //   139: invokevirtual 232	java/io/InputStream:close	()V
    //   142: goto +8 -> 150
    //   145: astore_0
    //   146: aload_0
    //   147: invokevirtual 78	java/lang/Throwable:printStackTrace	()V
    //   150: aload_1
    //   151: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	152	0	paramContext	Context
    //   12	73	1	localByteArrayInputStream	java.io.ByteArrayInputStream
    //   101	1	1	localObject1	Object
    //   109	12	1	localObject2	Object
    //   133	18	1	localObject3	Object
    //   28	55	2	localObject4	Object
    //   97	1	2	localThrowable1	Throwable
    //   107	6	2	localThrowable2	Throwable
    //   20	36	3	localObject5	Object
    // Exception table:
    //   from	to	target	type
    //   71	75	77	java/lang/Throwable
    //   84	88	90	java/lang/Throwable
    //   15	21	97	java/lang/Throwable
    //   23	29	97	java/lang/Throwable
    //   31	37	97	java/lang/Throwable
    //   50	71	97	java/lang/Throwable
    //   0	13	101	finally
    //   0	13	107	java/lang/Throwable
    //   120	124	126	java/lang/Throwable
    //   15	21	133	finally
    //   23	29	133	finally
    //   31	37	133	finally
    //   50	71	133	finally
    //   112	116	133	finally
    //   138	142	145	java/lang/Throwable
  }
  
  public static void a(Context paramContext, String paramString1, String paramString2, JSONObject paramJSONObject)
  {
    Object localObject3 = "";
    String str4 = cp.e(paramContext);
    String str6 = cv.b(str4);
    String str2 = "";
    String str1 = "";
    localObject2 = "";
    String str5 = cp.a(paramContext);
    String str3 = "";
    paramContext = (Context)localObject2;
    localObject1 = localObject2;
    try
    {
      if (paramJSONObject.has("info"))
      {
        localObject1 = localObject2;
        localObject3 = paramJSONObject.getString("info");
        localObject1 = localObject2;
        paramContext = new StringBuilder();
        localObject1 = localObject2;
        paramContext.append("请在高德开放平台官网中搜索\"");
        localObject1 = localObject2;
        paramContext.append((String)localObject3);
        localObject1 = localObject2;
        paramContext.append("\"相关内容进行解决");
        localObject1 = localObject2;
        paramContext = paramContext.toString();
      }
      localObject1 = paramContext;
      if ("INVALID_USER_SCODE".equals(localObject3))
      {
        localObject2 = str2;
        localObject1 = paramContext;
        if (paramJSONObject.has("sec_code"))
        {
          localObject1 = paramContext;
          localObject2 = paramJSONObject.getString("sec_code");
        }
        localObject3 = str1;
        localObject1 = paramContext;
        if (paramJSONObject.has("sec_code_debug"))
        {
          localObject1 = paramContext;
          localObject3 = paramJSONObject.getString("sec_code_debug");
        }
        localObject1 = paramContext;
        if (str6.equals(localObject2)) {
          break label518;
        }
        localObject2 = paramContext;
        localObject1 = paramContext;
        if (str6.equals(localObject3)) {
          break label518;
        }
      }
      else
      {
        localObject2 = paramContext;
        localObject1 = paramContext;
        if ("INVALID_USER_KEY".equals(localObject3))
        {
          localObject3 = str3;
          localObject1 = paramContext;
          if (paramJSONObject.has("key"))
          {
            localObject1 = paramContext;
            localObject3 = paramJSONObject.getString("key");
          }
          localObject2 = paramContext;
          localObject1 = paramContext;
          if (((String)localObject3).length() > 0)
          {
            localObject2 = paramContext;
            localObject1 = paramContext;
            if (!str5.equals(localObject3)) {
              paramContext = "请在高德开放平台官网上发起技术咨询工单—>账号与Key问题，咨询INVALID_USER_KEY如何解决";
            }
          }
        }
      }
    }
    catch (Throwable paramContext)
    {
      for (;;)
      {
        localObject2 = localObject1;
        continue;
        paramContext = "请在高德开放平台官网中搜索\"请求内容过长导致业务调用失败\"相关内容进行解决";
      }
    }
    paramContext = (Context)localObject2;
    f(a);
    f("                                   鉴权错误信息                                  ");
    f(a);
    localObject1 = new StringBuilder();
    ((StringBuilder)localObject1).append("SHA1Package:");
    ((StringBuilder)localObject1).append(str4);
    e(((StringBuilder)localObject1).toString());
    localObject1 = new StringBuilder();
    ((StringBuilder)localObject1).append("key:");
    ((StringBuilder)localObject1).append(str5);
    e(((StringBuilder)localObject1).toString());
    localObject1 = new StringBuilder();
    ((StringBuilder)localObject1).append("csid:");
    ((StringBuilder)localObject1).append(paramString1);
    e(((StringBuilder)localObject1).toString());
    paramString1 = new StringBuilder();
    paramString1.append("gsid:");
    paramString1.append(paramString2);
    e(paramString1.toString());
    paramString1 = new StringBuilder();
    paramString1.append("json:");
    paramString1.append(paramJSONObject.toString());
    e(paramString1.toString());
    f("                                                                               ");
    f(paramContext);
    f(a);
  }
  
  public static void a(ByteArrayOutputStream paramByteArrayOutputStream, byte paramByte, byte[] paramArrayOfByte)
  {
    try
    {
      paramByteArrayOutputStream.write(new byte[] { paramByte });
      int i = paramByte & 0xFF;
      if ((i < 255) && (i > 0))
      {
        paramByteArrayOutputStream.write(paramArrayOfByte);
        return;
      }
      if (i == 255)
      {
        paramByteArrayOutputStream.write(paramArrayOfByte, 0, 255);
        return;
      }
    }
    catch (IOException paramByteArrayOutputStream)
    {
      dd.a(paramByteArrayOutputStream, "Utils", "writeField");
    }
  }
  
  public static void a(ByteArrayOutputStream paramByteArrayOutputStream, String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {
      try
      {
        paramByteArrayOutputStream.write(new byte[] { 0 });
        return;
      }
      catch (IOException paramByteArrayOutputStream)
      {
        paramByteArrayOutputStream.printStackTrace();
        return;
      }
    }
    int j = paramString.length();
    int i = j;
    if (j > 255) {
      i = 255;
    }
    a(paramByteArrayOutputStream, (byte)i, a(paramString));
  }
  
  public static boolean a(JSONObject paramJSONObject, String paramString)
  {
    return (paramJSONObject != null) && (paramJSONObject.has(paramString));
  }
  
  public static byte[] a(String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {
      return new byte[0];
    }
    try
    {
      byte[] arrayOfByte = paramString.getBytes("UTF-8");
      return arrayOfByte;
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException)
    {
      for (;;) {}
    }
    return paramString.getBytes();
  }
  
  public static String b(String paramString)
  {
    if (paramString == null) {
      return null;
    }
    paramString = cu.b(a(paramString));
    try
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append((char)(paramString.length() % 26 + 65));
      localStringBuilder.append(paramString);
      paramString = localStringBuilder.toString();
      return paramString;
    }
    catch (Throwable paramString)
    {
      paramString.printStackTrace();
    }
    return "";
  }
  
  public static byte[] b()
  {
    try
    {
      String[] arrayOfString = new StringBuffer("16,16,18,77,15,911,121,77,121,911,38,77,911,99,86,67,611,96,48,77,84,911,38,67,021,301,86,67,611,98,48,77,511,77,48,97,511,58,48,97,511,84,501,87,511,96,48,77,221,911,38,77,121,37,86,67,25,301,86,67,021,96,86,67,021,701,86,67,35,56,86,67,611,37,221,87").reverse().toString().split(",");
      byte[] arrayOfByte = new byte[arrayOfString.length];
      int j = 0;
      int i = 0;
      while (i < arrayOfString.length)
      {
        arrayOfByte[i] = Byte.parseByte(arrayOfString[i]);
        i += 1;
      }
      arrayOfString = new StringBuffer(new String(cu.b(new String(arrayOfByte)))).reverse().toString().split(",");
      arrayOfByte = new byte[arrayOfString.length];
      i = j;
      while (i < arrayOfString.length)
      {
        arrayOfByte[i] = Byte.parseByte(arrayOfString[i]);
        i += 1;
      }
      return arrayOfByte;
    }
    catch (Throwable localThrowable)
    {
      dd.a(localThrowable, "Utils", "getIV");
    }
    return new byte[16];
  }
  
  public static byte[] b(byte[] paramArrayOfByte)
  {
    try
    {
      paramArrayOfByte = g(paramArrayOfByte);
      return paramArrayOfByte;
    }
    catch (Throwable paramArrayOfByte)
    {
      dd.a(paramArrayOfByte, "Utils", "gZip");
    }
    return new byte[0];
  }
  
  public static String c(String paramString)
  {
    if (paramString.length() < 2) {
      return "";
    }
    return cu.a(paramString.substring(1));
  }
  
  /* Error */
  public static byte[] c(byte[] paramArrayOfByte)
  {
    // Byte code:
    //   0: aload_0
    //   1: ifnull +267 -> 268
    //   4: aload_0
    //   5: arraylength
    //   6: ifne +5 -> 11
    //   9: aconst_null
    //   10: areturn
    //   11: new 306	java/io/ByteArrayOutputStream
    //   14: dup
    //   15: invokespecial 373	java/io/ByteArrayOutputStream:<init>	()V
    //   18: astore_1
    //   19: new 375	java/util/zip/ZipOutputStream
    //   22: dup
    //   23: aload_1
    //   24: invokespecial 378	java/util/zip/ZipOutputStream:<init>	(Ljava/io/OutputStream;)V
    //   27: astore 4
    //   29: aload_1
    //   30: astore_2
    //   31: aload 4
    //   33: astore_3
    //   34: aload 4
    //   36: new 380	java/util/zip/ZipEntry
    //   39: dup
    //   40: ldc_w 382
    //   43: invokespecial 383	java/util/zip/ZipEntry:<init>	(Ljava/lang/String;)V
    //   46: invokevirtual 387	java/util/zip/ZipOutputStream:putNextEntry	(Ljava/util/zip/ZipEntry;)V
    //   49: aload_1
    //   50: astore_2
    //   51: aload 4
    //   53: astore_3
    //   54: aload 4
    //   56: aload_0
    //   57: invokevirtual 388	java/util/zip/ZipOutputStream:write	([B)V
    //   60: aload_1
    //   61: astore_2
    //   62: aload 4
    //   64: astore_3
    //   65: aload 4
    //   67: invokevirtual 391	java/util/zip/ZipOutputStream:closeEntry	()V
    //   70: aload_1
    //   71: astore_2
    //   72: aload 4
    //   74: astore_3
    //   75: aload 4
    //   77: invokevirtual 394	java/util/zip/ZipOutputStream:finish	()V
    //   80: aload_1
    //   81: astore_2
    //   82: aload 4
    //   84: astore_3
    //   85: aload_1
    //   86: invokevirtual 397	java/io/ByteArrayOutputStream:toByteArray	()[B
    //   89: astore_0
    //   90: aload 4
    //   92: invokevirtual 398	java/util/zip/ZipOutputStream:close	()V
    //   95: goto +13 -> 108
    //   98: astore_2
    //   99: aload_2
    //   100: ldc -110
    //   102: ldc_w 400
    //   105: invokestatic 153	com/amap/api/mapcore2d/dd:a	(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    //   108: aload_1
    //   109: invokevirtual 401	java/io/ByteArrayOutputStream:close	()V
    //   112: aload_0
    //   113: areturn
    //   114: astore_1
    //   115: aload_1
    //   116: ldc -110
    //   118: ldc_w 403
    //   121: invokestatic 153	com/amap/api/mapcore2d/dd:a	(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    //   124: aload_0
    //   125: areturn
    //   126: astore_2
    //   127: aload 4
    //   129: astore_0
    //   130: aload_2
    //   131: astore 4
    //   133: goto +30 -> 163
    //   136: astore_0
    //   137: aconst_null
    //   138: astore_3
    //   139: goto +85 -> 224
    //   142: astore 4
    //   144: aconst_null
    //   145: astore_0
    //   146: goto +17 -> 163
    //   149: astore_0
    //   150: aconst_null
    //   151: astore_1
    //   152: aload_1
    //   153: astore_3
    //   154: goto +70 -> 224
    //   157: astore 4
    //   159: aconst_null
    //   160: astore_1
    //   161: aload_1
    //   162: astore_0
    //   163: aload_1
    //   164: astore_2
    //   165: aload_0
    //   166: astore_3
    //   167: aload 4
    //   169: ldc -110
    //   171: ldc_w 405
    //   174: invokestatic 153	com/amap/api/mapcore2d/dd:a	(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    //   177: aload_0
    //   178: ifnull +20 -> 198
    //   181: aload_0
    //   182: invokevirtual 398	java/util/zip/ZipOutputStream:close	()V
    //   185: goto +13 -> 198
    //   188: astore_0
    //   189: aload_0
    //   190: ldc -110
    //   192: ldc_w 400
    //   195: invokestatic 153	com/amap/api/mapcore2d/dd:a	(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    //   198: aload_1
    //   199: ifnull +20 -> 219
    //   202: aload_1
    //   203: invokevirtual 401	java/io/ByteArrayOutputStream:close	()V
    //   206: goto +13 -> 219
    //   209: astore_0
    //   210: aload_0
    //   211: ldc -110
    //   213: ldc_w 403
    //   216: invokestatic 153	com/amap/api/mapcore2d/dd:a	(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    //   219: aconst_null
    //   220: areturn
    //   221: astore_0
    //   222: aload_2
    //   223: astore_1
    //   224: aload_3
    //   225: ifnull +20 -> 245
    //   228: aload_3
    //   229: invokevirtual 398	java/util/zip/ZipOutputStream:close	()V
    //   232: goto +13 -> 245
    //   235: astore_2
    //   236: aload_2
    //   237: ldc -110
    //   239: ldc_w 400
    //   242: invokestatic 153	com/amap/api/mapcore2d/dd:a	(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    //   245: aload_1
    //   246: ifnull +20 -> 266
    //   249: aload_1
    //   250: invokevirtual 401	java/io/ByteArrayOutputStream:close	()V
    //   253: goto +13 -> 266
    //   256: astore_1
    //   257: aload_1
    //   258: ldc -110
    //   260: ldc_w 403
    //   263: invokestatic 153	com/amap/api/mapcore2d/dd:a	(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    //   266: aload_0
    //   267: athrow
    //   268: aconst_null
    //   269: areturn
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	270	0	paramArrayOfByte	byte[]
    //   18	91	1	localByteArrayOutputStream1	ByteArrayOutputStream
    //   114	2	1	localThrowable1	Throwable
    //   151	99	1	localObject1	Object
    //   256	2	1	localThrowable2	Throwable
    //   30	52	2	localByteArrayOutputStream2	ByteArrayOutputStream
    //   98	2	2	localThrowable3	Throwable
    //   126	5	2	localThrowable4	Throwable
    //   164	59	2	localObject2	Object
    //   235	2	2	localThrowable5	Throwable
    //   33	196	3	localObject3	Object
    //   27	105	4	localObject4	Object
    //   142	1	4	localThrowable6	Throwable
    //   157	11	4	localThrowable7	Throwable
    // Exception table:
    //   from	to	target	type
    //   90	95	98	java/lang/Throwable
    //   108	112	114	java/lang/Throwable
    //   34	49	126	java/lang/Throwable
    //   54	60	126	java/lang/Throwable
    //   65	70	126	java/lang/Throwable
    //   75	80	126	java/lang/Throwable
    //   85	90	126	java/lang/Throwable
    //   19	29	136	finally
    //   19	29	142	java/lang/Throwable
    //   11	19	149	finally
    //   11	19	157	java/lang/Throwable
    //   181	185	188	java/lang/Throwable
    //   202	206	209	java/lang/Throwable
    //   34	49	221	finally
    //   54	60	221	finally
    //   65	70	221	finally
    //   75	80	221	finally
    //   85	90	221	finally
    //   167	177	221	finally
    //   228	232	235	java/lang/Throwable
    //   249	253	256	java/lang/Throwable
  }
  
  public static String d(String paramString)
  {
    try
    {
      if (TextUtils.isEmpty(paramString)) {
        return "";
      }
      Object localObject = paramString.split("&");
      Arrays.sort((Object[])localObject);
      StringBuffer localStringBuffer = new StringBuffer();
      int j = localObject.length;
      int i = 0;
      while (i < j)
      {
        localStringBuffer.append(localObject[i]);
        localStringBuffer.append("&");
        i += 1;
      }
      localObject = localStringBuffer.toString();
      if (((String)localObject).length() > 1)
      {
        localObject = (String)((String)localObject).subSequence(0, ((String)localObject).length() - 1);
        return localObject;
      }
    }
    catch (Throwable localThrowable)
    {
      dd.a(localThrowable, "Utils", "sortParams");
    }
    return paramString;
  }
  
  static String d(byte[] paramArrayOfByte)
  {
    try
    {
      paramArrayOfByte = f(paramArrayOfByte);
      return paramArrayOfByte;
    }
    catch (Throwable paramArrayOfByte)
    {
      dd.a(paramArrayOfByte, "Utils", "HexString");
    }
    return null;
  }
  
  static String e(byte[] paramArrayOfByte)
  {
    try
    {
      paramArrayOfByte = f(paramArrayOfByte);
      return paramArrayOfByte;
    }
    catch (Throwable paramArrayOfByte)
    {
      paramArrayOfByte.printStackTrace();
    }
    return null;
  }
  
  static void e(String paramString)
  {
    int j = paramString.length();
    int i = 0;
    if (j < 78)
    {
      localObject = new StringBuilder();
      ((StringBuilder)localObject).append("|");
      ((StringBuilder)localObject).append(paramString);
      while (i < 78 - paramString.length())
      {
        ((StringBuilder)localObject).append(" ");
        i += 1;
      }
      ((StringBuilder)localObject).append("|");
      f(((StringBuilder)localObject).toString());
      return;
    }
    Object localObject = paramString.substring(0, 78);
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("|");
    localStringBuilder.append((String)localObject);
    localStringBuilder.append("|");
    f(localStringBuilder.toString());
    e(paramString.substring(78));
  }
  
  public static String f(byte[] paramArrayOfByte)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    if (paramArrayOfByte == null) {
      return null;
    }
    int i = 0;
    while (i < paramArrayOfByte.length)
    {
      String str = Integer.toHexString(paramArrayOfByte[i] & 0xFF);
      Object localObject = str;
      if (str.length() == 1)
      {
        localObject = new StringBuilder();
        ((StringBuilder)localObject).append('0');
        ((StringBuilder)localObject).append(str);
        localObject = ((StringBuilder)localObject).toString();
      }
      localStringBuilder.append((String)localObject);
      i += 1;
    }
    return localStringBuilder.toString();
  }
  
  private static void f(String paramString)
  {
    Log.i("authErrLog", paramString);
  }
  
  /* Error */
  private static byte[] g(byte[] paramArrayOfByte)
    throws IOException, Throwable
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 4
    //   3: aconst_null
    //   4: astore_3
    //   5: aload_0
    //   6: ifnonnull +5 -> 11
    //   9: aconst_null
    //   10: areturn
    //   11: new 306	java/io/ByteArrayOutputStream
    //   14: dup
    //   15: invokespecial 373	java/io/ByteArrayOutputStream:<init>	()V
    //   18: astore_1
    //   19: new 444	java/util/zip/GZIPOutputStream
    //   22: dup
    //   23: aload_1
    //   24: invokespecial 445	java/util/zip/GZIPOutputStream:<init>	(Ljava/io/OutputStream;)V
    //   27: astore_2
    //   28: aload_2
    //   29: aload_0
    //   30: invokevirtual 446	java/util/zip/GZIPOutputStream:write	([B)V
    //   33: aload_2
    //   34: invokevirtual 447	java/util/zip/GZIPOutputStream:finish	()V
    //   37: aload_1
    //   38: invokevirtual 397	java/io/ByteArrayOutputStream:toByteArray	()[B
    //   41: astore_0
    //   42: aload_2
    //   43: invokevirtual 448	java/util/zip/GZIPOutputStream:close	()V
    //   46: aload_1
    //   47: invokevirtual 401	java/io/ByteArrayOutputStream:close	()V
    //   50: aload_0
    //   51: areturn
    //   52: astore_0
    //   53: aload_0
    //   54: athrow
    //   55: astore_0
    //   56: aload_0
    //   57: athrow
    //   58: astore_3
    //   59: aload_2
    //   60: astore_0
    //   61: aload_3
    //   62: astore_2
    //   63: goto +41 -> 104
    //   66: astore_3
    //   67: aload_2
    //   68: astore_0
    //   69: aload_3
    //   70: astore_2
    //   71: goto +13 -> 84
    //   74: astore_2
    //   75: aload 4
    //   77: astore_0
    //   78: goto +26 -> 104
    //   81: astore_2
    //   82: aconst_null
    //   83: astore_0
    //   84: goto +17 -> 101
    //   87: astore_2
    //   88: aconst_null
    //   89: astore_1
    //   90: aload 4
    //   92: astore_0
    //   93: goto +11 -> 104
    //   96: astore_2
    //   97: aconst_null
    //   98: astore_0
    //   99: aload_3
    //   100: astore_1
    //   101: aload_2
    //   102: athrow
    //   103: astore_2
    //   104: aload_0
    //   105: ifnull +13 -> 118
    //   108: aload_0
    //   109: invokevirtual 448	java/util/zip/GZIPOutputStream:close	()V
    //   112: goto +6 -> 118
    //   115: astore_0
    //   116: aload_0
    //   117: athrow
    //   118: aload_1
    //   119: ifnull +13 -> 132
    //   122: aload_1
    //   123: invokevirtual 401	java/io/ByteArrayOutputStream:close	()V
    //   126: goto +6 -> 132
    //   129: astore_0
    //   130: aload_0
    //   131: athrow
    //   132: aload_2
    //   133: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	134	0	paramArrayOfByte	byte[]
    //   18	105	1	localObject1	Object
    //   27	44	2	localObject2	Object
    //   74	1	2	localObject3	Object
    //   81	1	2	localThrowable1	Throwable
    //   87	1	2	localObject4	Object
    //   96	6	2	localThrowable2	Throwable
    //   103	30	2	localObject5	Object
    //   4	1	3	localObject6	Object
    //   58	4	3	localObject7	Object
    //   66	34	3	localThrowable3	Throwable
    //   1	90	4	localObject8	Object
    // Exception table:
    //   from	to	target	type
    //   46	50	52	java/lang/Throwable
    //   42	46	55	java/lang/Throwable
    //   28	42	58	finally
    //   28	42	66	java/lang/Throwable
    //   19	28	74	finally
    //   19	28	81	java/lang/Throwable
    //   11	19	87	finally
    //   11	19	96	java/lang/Throwable
    //   101	103	103	finally
    //   108	112	115	java/lang/Throwable
    //   122	126	129	java/lang/Throwable
  }
}
