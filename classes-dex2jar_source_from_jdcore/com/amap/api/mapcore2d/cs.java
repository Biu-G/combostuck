package com.amap.api.mapcore2d;

import android.content.Context;
import android.os.Build;
import android.os.Build.VERSION;
import android.text.TextUtils;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.security.cert.CertificateException;
import java.security.spec.InvalidKeySpecException;
import java.util.Map;
import javax.crypto.BadPaddingException;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.KeyGenerator;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.SecretKey;

public class cs
{
  public static String a()
  {
    String str2;
    try
    {
      str2 = String.valueOf(System.currentTimeMillis());
      String str1 = "1";
      try
      {
        if (!cp.a()) {
          str1 = "0";
        }
        int i = str2.length();
        StringBuilder localStringBuilder = new StringBuilder();
        localStringBuilder.append(str2.substring(0, i - 2));
        localStringBuilder.append(str1);
        localStringBuilder.append(str2.substring(i - 1));
        str1 = localStringBuilder.toString();
        return str1;
      }
      catch (Throwable localThrowable1) {}
      dd.a(localThrowable2, "CInfo", "getTS");
    }
    catch (Throwable localThrowable2)
    {
      str2 = null;
    }
    return str2;
  }
  
  public static String a(Context paramContext)
  {
    try
    {
      a localA = new a(null);
      d = cp.c(paramContext);
      i = cp.d(paramContext);
      paramContext = a(paramContext, localA);
      return paramContext;
    }
    catch (Throwable paramContext)
    {
      dd.a(paramContext, "CInfo", "InitXInfo");
    }
    return null;
  }
  
  private static String a(Context paramContext, a paramA)
  {
    return cu.a(b(paramContext, paramA));
  }
  
  @Deprecated
  public static String a(Context paramContext, cy paramCy, Map<String, String> paramMap, boolean paramBoolean)
  {
    try
    {
      paramContext = a(paramContext, b(paramContext, paramBoolean));
      return paramContext;
    }
    catch (Throwable paramContext)
    {
      dd.a(paramContext, "CInfo", "rsaLocClineInfo");
    }
    return null;
  }
  
  public static String a(Context paramContext, String paramString1, String paramString2)
  {
    try
    {
      paramContext = cp.e(paramContext);
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append(paramContext);
      localStringBuilder.append(":");
      localStringBuilder.append(paramString1.substring(0, paramString1.length() - 3));
      localStringBuilder.append(":");
      localStringBuilder.append(paramString2);
      paramContext = cv.b(localStringBuilder.toString());
      return paramContext;
    }
    catch (Throwable paramContext)
    {
      dd.a(paramContext, "CInfo", "Scode");
    }
    return null;
  }
  
  public static void a(ByteArrayOutputStream paramByteArrayOutputStream, String paramString)
  {
    if (!TextUtils.isEmpty(paramString))
    {
      byte b;
      if (paramString.getBytes().length > 255) {
        b = -1;
      } else {
        b = (byte)paramString.getBytes().length;
      }
      cz.a(paramByteArrayOutputStream, b, cz.a(paramString));
      return;
    }
    cz.a(paramByteArrayOutputStream, (byte)0, new byte[0]);
  }
  
  private static byte[] a(Context paramContext, ByteArrayOutputStream paramByteArrayOutputStream)
    throws CertificateException, NoSuchAlgorithmException, IOException, BadPaddingException, IllegalBlockSizeException, NoSuchPaddingException, InvalidKeyException, InvalidKeySpecException
  {
    return c(paramContext, cz.b(paramByteArrayOutputStream.toByteArray()));
  }
  
  public static byte[] a(Context paramContext, boolean paramBoolean)
  {
    try
    {
      paramContext = b(paramContext, b(paramContext, paramBoolean));
      return paramContext;
    }
    catch (Throwable paramContext)
    {
      dd.a(paramContext, "CInfo", "getGZipXInfo");
    }
    return null;
  }
  
  public static byte[] a(Context paramContext, byte[] paramArrayOfByte)
    throws CertificateException, InvalidKeySpecException, NoSuchAlgorithmException, NullPointerException, IOException, InvalidKeyException, NoSuchPaddingException, IllegalBlockSizeException, BadPaddingException
  {
    Object localObject = KeyGenerator.getInstance("AES");
    if (localObject == null) {
      return null;
    }
    ((KeyGenerator)localObject).init(256);
    localObject = ((KeyGenerator)localObject).generateKey().getEncoded();
    paramContext = cz.a(paramContext);
    if (paramContext == null) {
      return null;
    }
    paramContext = cu.a((byte[])localObject, paramContext);
    paramArrayOfByte = cu.a((byte[])localObject, paramArrayOfByte);
    localObject = new byte[paramContext.length + paramArrayOfByte.length];
    System.arraycopy(paramContext, 0, localObject, 0, paramContext.length);
    System.arraycopy(paramArrayOfByte, 0, localObject, paramContext.length, paramArrayOfByte.length);
    return localObject;
  }
  
  private static a b(Context paramContext, boolean paramBoolean)
  {
    a localA = new a(null);
    a = ct.q(paramContext);
    b = ct.i(paramContext);
    String str = ct.f(paramContext);
    Object localObject = str;
    if (str == null) {
      localObject = "";
    }
    c = ((String)localObject);
    d = cp.c(paramContext);
    e = Build.MODEL;
    f = Build.MANUFACTURER;
    g = Build.DEVICE;
    h = cp.b(paramContext);
    i = cp.d(paramContext);
    j = String.valueOf(Build.VERSION.SDK_INT);
    k = ct.r(paramContext);
    l = ct.p(paramContext);
    localObject = new StringBuilder();
    ((StringBuilder)localObject).append(ct.m(paramContext));
    ((StringBuilder)localObject).append("");
    m = ((StringBuilder)localObject).toString();
    localObject = new StringBuilder();
    ((StringBuilder)localObject).append(ct.l(paramContext));
    ((StringBuilder)localObject).append("");
    n = ((StringBuilder)localObject).toString();
    o = ct.s(paramContext);
    p = ct.k(paramContext);
    if (paramBoolean) {
      q = "";
    } else {
      q = ct.h(paramContext);
    }
    if (paramBoolean) {
      r = "";
    } else {
      r = ct.g(paramContext);
    }
    if (paramBoolean)
    {
      s = "";
      t = "";
    }
    else
    {
      paramContext = ct.j(paramContext);
      s = paramContext[0];
      t = paramContext[1];
    }
    w = ct.a();
    return localA;
  }
  
  public static String b(Context paramContext, byte[] paramArrayOfByte)
  {
    try
    {
      paramContext = d(paramContext, paramArrayOfByte);
      return paramContext;
    }
    catch (Throwable paramContext)
    {
      dd.a(paramContext, "CInfo", "AESData");
    }
    return "";
  }
  
  /* Error */
  private static byte[] b(Context paramContext, a paramA)
  {
    // Byte code:
    //   0: new 158	java/io/ByteArrayOutputStream
    //   3: dup
    //   4: invokespecial 322	java/io/ByteArrayOutputStream:<init>	()V
    //   7: astore_3
    //   8: aload_3
    //   9: astore_2
    //   10: aload_3
    //   11: aload_1
    //   12: getfield 214	com/amap/api/mapcore2d/cs$a:a	Ljava/lang/String;
    //   15: invokestatic 324	com/amap/api/mapcore2d/cs:a	(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V
    //   18: aload_3
    //   19: astore_2
    //   20: aload_3
    //   21: aload_1
    //   22: getfield 218	com/amap/api/mapcore2d/cs$a:b	Ljava/lang/String;
    //   25: invokestatic 324	com/amap/api/mapcore2d/cs:a	(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V
    //   28: aload_3
    //   29: astore_2
    //   30: aload_3
    //   31: aload_1
    //   32: getfield 225	com/amap/api/mapcore2d/cs$a:c	Ljava/lang/String;
    //   35: invokestatic 324	com/amap/api/mapcore2d/cs:a	(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V
    //   38: aload_3
    //   39: astore_2
    //   40: aload_3
    //   41: aload_1
    //   42: getfield 78	com/amap/api/mapcore2d/cs$a:d	Ljava/lang/String;
    //   45: invokestatic 324	com/amap/api/mapcore2d/cs:a	(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V
    //   48: aload_3
    //   49: astore_2
    //   50: aload_3
    //   51: aload_1
    //   52: getfield 232	com/amap/api/mapcore2d/cs$a:e	Ljava/lang/String;
    //   55: invokestatic 324	com/amap/api/mapcore2d/cs:a	(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V
    //   58: aload_3
    //   59: astore_2
    //   60: aload_3
    //   61: aload_1
    //   62: getfield 237	com/amap/api/mapcore2d/cs$a:f	Ljava/lang/String;
    //   65: invokestatic 324	com/amap/api/mapcore2d/cs:a	(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V
    //   68: aload_3
    //   69: astore_2
    //   70: aload_3
    //   71: aload_1
    //   72: getfield 243	com/amap/api/mapcore2d/cs$a:g	Ljava/lang/String;
    //   75: invokestatic 324	com/amap/api/mapcore2d/cs:a	(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V
    //   78: aload_3
    //   79: astore_2
    //   80: aload_3
    //   81: aload_1
    //   82: getfield 248	com/amap/api/mapcore2d/cs$a:h	Ljava/lang/String;
    //   85: invokestatic 324	com/amap/api/mapcore2d/cs:a	(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V
    //   88: aload_3
    //   89: astore_2
    //   90: aload_3
    //   91: aload_1
    //   92: getfield 83	com/amap/api/mapcore2d/cs$a:i	Ljava/lang/String;
    //   95: invokestatic 324	com/amap/api/mapcore2d/cs:a	(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V
    //   98: aload_3
    //   99: astore_2
    //   100: aload_3
    //   101: aload_1
    //   102: getfield 259	com/amap/api/mapcore2d/cs$a:j	Ljava/lang/String;
    //   105: invokestatic 324	com/amap/api/mapcore2d/cs:a	(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V
    //   108: aload_3
    //   109: astore_2
    //   110: aload_3
    //   111: aload_1
    //   112: getfield 265	com/amap/api/mapcore2d/cs$a:k	Ljava/lang/String;
    //   115: invokestatic 324	com/amap/api/mapcore2d/cs:a	(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V
    //   118: aload_3
    //   119: astore_2
    //   120: aload_3
    //   121: aload_1
    //   122: getfield 271	com/amap/api/mapcore2d/cs$a:l	Ljava/lang/String;
    //   125: invokestatic 324	com/amap/api/mapcore2d/cs:a	(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V
    //   128: aload_3
    //   129: astore_2
    //   130: aload_3
    //   131: aload_1
    //   132: getfield 280	com/amap/api/mapcore2d/cs$a:m	Ljava/lang/String;
    //   135: invokestatic 324	com/amap/api/mapcore2d/cs:a	(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V
    //   138: aload_3
    //   139: astore_2
    //   140: aload_3
    //   141: aload_1
    //   142: getfield 285	com/amap/api/mapcore2d/cs$a:n	Ljava/lang/String;
    //   145: invokestatic 324	com/amap/api/mapcore2d/cs:a	(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V
    //   148: aload_3
    //   149: astore_2
    //   150: aload_3
    //   151: aload_1
    //   152: getfield 291	com/amap/api/mapcore2d/cs$a:o	Ljava/lang/String;
    //   155: invokestatic 324	com/amap/api/mapcore2d/cs:a	(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V
    //   158: aload_3
    //   159: astore_2
    //   160: aload_3
    //   161: aload_1
    //   162: getfield 295	com/amap/api/mapcore2d/cs$a:p	Ljava/lang/String;
    //   165: invokestatic 324	com/amap/api/mapcore2d/cs:a	(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V
    //   168: aload_3
    //   169: astore_2
    //   170: aload_3
    //   171: aload_1
    //   172: getfield 297	com/amap/api/mapcore2d/cs$a:q	Ljava/lang/String;
    //   175: invokestatic 324	com/amap/api/mapcore2d/cs:a	(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V
    //   178: aload_3
    //   179: astore_2
    //   180: aload_3
    //   181: aload_1
    //   182: getfield 301	com/amap/api/mapcore2d/cs$a:r	Ljava/lang/String;
    //   185: invokestatic 324	com/amap/api/mapcore2d/cs:a	(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V
    //   188: aload_3
    //   189: astore_2
    //   190: aload_3
    //   191: aload_1
    //   192: getfield 305	com/amap/api/mapcore2d/cs$a:s	Ljava/lang/String;
    //   195: invokestatic 324	com/amap/api/mapcore2d/cs:a	(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V
    //   198: aload_3
    //   199: astore_2
    //   200: aload_3
    //   201: aload_1
    //   202: getfield 308	com/amap/api/mapcore2d/cs$a:t	Ljava/lang/String;
    //   205: invokestatic 324	com/amap/api/mapcore2d/cs:a	(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V
    //   208: aload_3
    //   209: astore_2
    //   210: aload_3
    //   211: aload_1
    //   212: getfield 327	com/amap/api/mapcore2d/cs$a:u	Ljava/lang/String;
    //   215: invokestatic 324	com/amap/api/mapcore2d/cs:a	(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V
    //   218: aload_3
    //   219: astore_2
    //   220: aload_3
    //   221: aload_1
    //   222: getfield 330	com/amap/api/mapcore2d/cs$a:v	Ljava/lang/String;
    //   225: invokestatic 324	com/amap/api/mapcore2d/cs:a	(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V
    //   228: aload_3
    //   229: astore_2
    //   230: aload_3
    //   231: aload_1
    //   232: getfield 316	com/amap/api/mapcore2d/cs$a:w	Ljava/lang/String;
    //   235: invokestatic 324	com/amap/api/mapcore2d/cs:a	(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V
    //   238: aload_3
    //   239: astore_2
    //   240: aload_3
    //   241: aload_1
    //   242: getfield 333	com/amap/api/mapcore2d/cs$a:x	Ljava/lang/String;
    //   245: invokestatic 324	com/amap/api/mapcore2d/cs:a	(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V
    //   248: aload_3
    //   249: astore_2
    //   250: aload_3
    //   251: aload_1
    //   252: getfield 336	com/amap/api/mapcore2d/cs$a:y	Ljava/lang/String;
    //   255: invokestatic 324	com/amap/api/mapcore2d/cs:a	(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V
    //   258: aload_3
    //   259: astore_2
    //   260: aload_0
    //   261: aload_3
    //   262: invokestatic 338	com/amap/api/mapcore2d/cs:a	(Landroid/content/Context;Ljava/io/ByteArrayOutputStream;)[B
    //   265: astore_0
    //   266: aload_3
    //   267: invokevirtual 341	java/io/ByteArrayOutputStream:close	()V
    //   270: aload_0
    //   271: areturn
    //   272: astore_1
    //   273: aload_1
    //   274: invokevirtual 344	java/lang/Throwable:printStackTrace	()V
    //   277: aload_0
    //   278: areturn
    //   279: astore_1
    //   280: aload_3
    //   281: astore_0
    //   282: goto +12 -> 294
    //   285: astore_0
    //   286: aconst_null
    //   287: astore_2
    //   288: goto +34 -> 322
    //   291: astore_1
    //   292: aconst_null
    //   293: astore_0
    //   294: aload_0
    //   295: astore_2
    //   296: aload_1
    //   297: ldc 59
    //   299: ldc 88
    //   301: invokestatic 66	com/amap/api/mapcore2d/dd:a	(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    //   304: aload_0
    //   305: ifnull +14 -> 319
    //   308: aload_0
    //   309: invokevirtual 341	java/io/ByteArrayOutputStream:close	()V
    //   312: aconst_null
    //   313: areturn
    //   314: astore_0
    //   315: aload_0
    //   316: invokevirtual 344	java/lang/Throwable:printStackTrace	()V
    //   319: aconst_null
    //   320: areturn
    //   321: astore_0
    //   322: aload_2
    //   323: ifnull +15 -> 338
    //   326: aload_2
    //   327: invokevirtual 341	java/io/ByteArrayOutputStream:close	()V
    //   330: goto +8 -> 338
    //   333: astore_1
    //   334: aload_1
    //   335: invokevirtual 344	java/lang/Throwable:printStackTrace	()V
    //   338: aload_0
    //   339: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	340	0	paramContext	Context
    //   0	340	1	paramA	a
    //   9	318	2	localObject	Object
    //   7	274	3	localByteArrayOutputStream	ByteArrayOutputStream
    // Exception table:
    //   from	to	target	type
    //   266	270	272	java/lang/Throwable
    //   10	18	279	java/lang/Throwable
    //   20	28	279	java/lang/Throwable
    //   30	38	279	java/lang/Throwable
    //   40	48	279	java/lang/Throwable
    //   50	58	279	java/lang/Throwable
    //   60	68	279	java/lang/Throwable
    //   70	78	279	java/lang/Throwable
    //   80	88	279	java/lang/Throwable
    //   90	98	279	java/lang/Throwable
    //   100	108	279	java/lang/Throwable
    //   110	118	279	java/lang/Throwable
    //   120	128	279	java/lang/Throwable
    //   130	138	279	java/lang/Throwable
    //   140	148	279	java/lang/Throwable
    //   150	158	279	java/lang/Throwable
    //   160	168	279	java/lang/Throwable
    //   170	178	279	java/lang/Throwable
    //   180	188	279	java/lang/Throwable
    //   190	198	279	java/lang/Throwable
    //   200	208	279	java/lang/Throwable
    //   210	218	279	java/lang/Throwable
    //   220	228	279	java/lang/Throwable
    //   230	238	279	java/lang/Throwable
    //   240	248	279	java/lang/Throwable
    //   250	258	279	java/lang/Throwable
    //   260	266	279	java/lang/Throwable
    //   0	8	285	finally
    //   0	8	291	java/lang/Throwable
    //   308	312	314	java/lang/Throwable
    //   10	18	321	finally
    //   20	28	321	finally
    //   30	38	321	finally
    //   40	48	321	finally
    //   50	58	321	finally
    //   60	68	321	finally
    //   70	78	321	finally
    //   80	88	321	finally
    //   90	98	321	finally
    //   100	108	321	finally
    //   110	118	321	finally
    //   120	128	321	finally
    //   130	138	321	finally
    //   140	148	321	finally
    //   150	158	321	finally
    //   160	168	321	finally
    //   170	178	321	finally
    //   180	188	321	finally
    //   190	198	321	finally
    //   200	208	321	finally
    //   210	218	321	finally
    //   220	228	321	finally
    //   230	238	321	finally
    //   240	248	321	finally
    //   250	258	321	finally
    //   260	266	321	finally
    //   296	304	321	finally
    //   326	330	333	java/lang/Throwable
  }
  
  public static byte[] c(Context paramContext, byte[] paramArrayOfByte)
    throws CertificateException, InvalidKeySpecException, NoSuchAlgorithmException, NullPointerException, IOException, InvalidKeyException, NoSuchPaddingException, IllegalBlockSizeException, BadPaddingException
  {
    paramContext = cz.a(paramContext);
    if (paramArrayOfByte.length > 117)
    {
      byte[] arrayOfByte = new byte[117];
      System.arraycopy(paramArrayOfByte, 0, arrayOfByte, 0, 117);
      paramContext = cu.a(arrayOfByte, paramContext);
      arrayOfByte = new byte[paramArrayOfByte.length + 128 - 117];
      System.arraycopy(paramContext, 0, arrayOfByte, 0, 128);
      System.arraycopy(paramArrayOfByte, 117, arrayOfByte, 128, paramArrayOfByte.length - 117);
      return arrayOfByte;
    }
    return cu.a(paramArrayOfByte, paramContext);
  }
  
  static String d(Context paramContext, byte[] paramArrayOfByte)
    throws InvalidKeyException, IOException, InvalidKeySpecException, NoSuchPaddingException, NoSuchAlgorithmException, IllegalBlockSizeException, BadPaddingException, CertificateException
  {
    paramContext = cz.b(a(paramContext, paramArrayOfByte));
    if (paramContext != null) {
      return cu.a(paramContext);
    }
    return "";
  }
  
  public static String e(Context paramContext, byte[] paramArrayOfByte)
  {
    try
    {
      paramContext = d(paramContext, paramArrayOfByte);
      return paramContext;
    }
    catch (Throwable paramContext)
    {
      paramContext.printStackTrace();
    }
    return "";
  }
  
  private static class a
  {
    String a;
    String b;
    String c;
    String d;
    String e;
    String f;
    String g;
    String h;
    String i;
    String j;
    String k;
    String l;
    String m;
    String n;
    String o;
    String p;
    String q;
    String r;
    String s;
    String t;
    String u;
    String v;
    String w;
    String x;
    String y;
    
    private a() {}
  }
}
