package com.amap.api.mapcore2d;

import android.content.Context;
import java.io.Closeable;
import java.util.List;

public class ek
{
  public static int a(String paramString1, String paramString2)
  {
    int i;
    do
    {
      try
      {
        paramString1 = paramString1.split("\\.");
        paramString2 = paramString2.split("\\.");
        int m = Math.min(paramString1.length, paramString2.length);
        int j = 0;
        i = 0;
        while (j < m)
        {
          int k = paramString1[j].length() - paramString2[j].length();
          i = k;
          if (k == 0)
          {
            k = paramString1[j].compareTo(paramString2[j]);
            i = k;
            if (k == 0)
            {
              j += 1;
              i = k;
              continue;
              i = paramString1.length;
              j = paramString2.length;
              return i - j;
            }
          }
        }
      }
      catch (Exception paramString1)
      {
        dd.a(paramString1, "Utils", "compareVersion");
        return -1;
      }
    } while (i == 0);
    return i;
  }
  
  /* Error */
  static java.security.PublicKey a()
  {
    // Byte code:
    //   0: ldc 45
    //   2: invokestatic 51	java/security/cert/CertificateFactory:getInstance	(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;
    //   5: astore_2
    //   6: new 53	java/io/ByteArrayInputStream
    //   9: dup
    //   10: ldc 55
    //   12: invokestatic 61	com/amap/api/mapcore2d/cu:b	(Ljava/lang/String;)[B
    //   15: invokespecial 65	java/io/ByteArrayInputStream:<init>	([B)V
    //   18: astore_1
    //   19: aload_1
    //   20: astore_0
    //   21: aload_2
    //   22: aload_1
    //   23: invokevirtual 69	java/security/cert/CertificateFactory:generateCertificate	(Ljava/io/InputStream;)Ljava/security/cert/Certificate;
    //   26: checkcast 71	java/security/cert/X509Certificate
    //   29: invokevirtual 74	java/security/cert/X509Certificate:getPublicKey	()Ljava/security/PublicKey;
    //   32: astore_2
    //   33: aload_1
    //   34: invokestatic 77	com/amap/api/mapcore2d/ek:a	(Ljava/io/Closeable;)V
    //   37: aload_2
    //   38: areturn
    //   39: astore_0
    //   40: aload_0
    //   41: invokevirtual 81	java/lang/Throwable:printStackTrace	()V
    //   44: aload_2
    //   45: areturn
    //   46: astore_2
    //   47: goto +12 -> 59
    //   50: astore_0
    //   51: aconst_null
    //   52: astore_1
    //   53: goto +34 -> 87
    //   56: astore_2
    //   57: aconst_null
    //   58: astore_1
    //   59: aload_1
    //   60: astore_0
    //   61: aload_2
    //   62: ldc 83
    //   64: ldc 85
    //   66: invokestatic 86	com/amap/api/mapcore2d/ek:a	(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    //   69: aload_1
    //   70: invokestatic 77	com/amap/api/mapcore2d/ek:a	(Ljava/io/Closeable;)V
    //   73: aconst_null
    //   74: areturn
    //   75: astore_0
    //   76: aload_0
    //   77: invokevirtual 81	java/lang/Throwable:printStackTrace	()V
    //   80: aconst_null
    //   81: areturn
    //   82: astore_2
    //   83: aload_0
    //   84: astore_1
    //   85: aload_2
    //   86: astore_0
    //   87: aload_1
    //   88: invokestatic 77	com/amap/api/mapcore2d/ek:a	(Ljava/io/Closeable;)V
    //   91: goto +8 -> 99
    //   94: astore_1
    //   95: aload_1
    //   96: invokevirtual 81	java/lang/Throwable:printStackTrace	()V
    //   99: aload_0
    //   100: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   20	1	0	localObject1	Object
    //   39	2	0	localThrowable1	Throwable
    //   50	1	0	localObject2	Object
    //   60	1	0	localObject3	Object
    //   75	9	0	localThrowable2	Throwable
    //   86	14	0	localObject4	Object
    //   18	70	1	localObject5	Object
    //   94	2	1	localThrowable3	Throwable
    //   5	40	2	localObject6	Object
    //   46	1	2	localThrowable4	Throwable
    //   56	6	2	localThrowable5	Throwable
    //   82	4	2	localObject7	Object
    // Exception table:
    //   from	to	target	type
    //   33	37	39	java/lang/Throwable
    //   21	33	46	java/lang/Throwable
    //   0	19	50	finally
    //   0	19	56	java/lang/Throwable
    //   69	73	75	java/lang/Throwable
    //   21	33	82	finally
    //   61	69	82	finally
    //   87	91	94	java/lang/Throwable
  }
  
  static void a(Closeable paramCloseable)
  {
    if (paramCloseable != null) {
      try
      {
        paramCloseable.close();
        return;
      }
      catch (Throwable paramCloseable)
      {
        paramCloseable.printStackTrace();
      }
    }
  }
  
  static void a(Throwable paramThrowable, String paramString1, String paramString2)
  {
    dd.a(paramThrowable, paramString1, paramString2);
  }
  
  static void a(List<ei> paramList)
  {
    int j;
    for (int i = 0; i < paramList.size() - 1; i = j)
    {
      j = i + 1;
      int k = j;
      while (k < paramList.size())
      {
        ei localEi1 = (ei)paramList.get(i);
        ei localEi2 = (ei)paramList.get(k);
        String str = localEi1.e();
        if (a(localEi2.e(), str) > 0)
        {
          paramList.set(i, localEi2);
          paramList.set(k, localEi1);
        }
        k += 1;
      }
    }
  }
  
  static boolean a(Context paramContext, dm paramDm, String paramString, cy paramCy)
  {
    return a(paramDm, paramString, ee.a(paramContext, paramString), paramCy);
  }
  
  static boolean a(dm paramDm, String paramString1, String paramString2, cy paramCy)
  {
    paramDm = ee.a.a(paramDm, paramString1);
    if (paramDm != null)
    {
      if (!paramCy.b().equals(paramDm.d())) {
        return false;
      }
      if (b(paramString2, paramDm.b())) {
        return true;
      }
    }
    return false;
  }
  
  static boolean b(String paramString1, String paramString2)
  {
    paramString1 = cv.a(paramString1);
    return (paramString1 != null) && (paramString1.equalsIgnoreCase(paramString2));
  }
}
