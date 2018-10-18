package com.dropbox.core.http;

import java.io.ByteArrayInputStream;
import java.io.DataInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.InetAddress;
import java.net.Socket;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.List;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLException;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.TrustManager;
import javax.net.ssl.X509TrustManager;

public class SSLConfig
{
  private static final X509TrustManager a = ;
  private static final SSLSocketFactory b = b();
  private static final String[] c = { "TLSv1.2" };
  private static final String[] d = { "TLSv1.0" };
  private static final String[] e = { "TLSv1" };
  private static a f;
  private static final HashSet<String> g = new HashSet(Arrays.asList(new String[] { "SSL_ECDHE_RSA_WITH_AES_256_GCM_SHA384", "SSL_ECDHE_RSA_WITH_AES_256_CBC_SHA384", "SSL_ECDHE_RSA_WITH_AES_256_CBC_SHA", "SSL_ECDHE_RSA_WITH_AES_128_GCM_SHA256", "SSL_ECDHE_RSA_WITH_AES_128_CBC_SHA256", "SSL_ECDHE_RSA_WITH_AES_128_CBC_SHA", "SSL_ECDHE_RSA_WITH_RC4_128_SHA", "SSL_DHE_RSA_WITH_AES_256_GCM_SHA384", "SSL_DHE_RSA_WITH_AES_256_CBC_SHA256", "SSL_DHE_RSA_WITH_AES_256_CBC_SHA", "SSL_DHE_RSA_WITH_AES_128_GCM_SHA256", "SSL_DHE_RSA_WITH_AES_128_CBC_SHA256", "SSL_DHE_RSA_WITH_AES_128_CBC_SHA", "SSL_RSA_WITH_AES_256_GCM_SHA384", "SSL_RSA_WITH_AES_256_CBC_SHA256", "SSL_RSA_WITH_AES_256_CBC_SHA", "SSL_RSA_WITH_AES_128_GCM_SHA256", "SSL_RSA_WITH_AES_128_CBC_SHA256", "SSL_RSA_WITH_AES_128_CBC_SHA", "TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384", "TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384", "TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA", "TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256", "TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256", "TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA", "TLS_ECDHE_RSA_WITH_RC4_128_SHA", "TLS_DHE_RSA_WITH_AES_256_GCM_SHA384", "TLS_DHE_RSA_WITH_AES_256_CBC_SHA256", "TLS_DHE_RSA_WITH_AES_256_CBC_SHA", "TLS_DHE_RSA_WITH_AES_128_GCM_SHA256", "TLS_DHE_RSA_WITH_AES_128_CBC_SHA256", "TLS_DHE_RSA_WITH_AES_128_CBC_SHA", "TLS_RSA_WITH_AES_256_GCM_SHA384", "TLS_RSA_WITH_AES_256_CBC_SHA256", "TLS_RSA_WITH_AES_256_CBC_SHA", "TLS_RSA_WITH_AES_128_GCM_SHA256", "TLS_RSA_WITH_AES_128_CBC_SHA256", "TLS_RSA_WITH_AES_128_CBC_SHA", "ECDHE-RSA-AES256-GCM-SHA384", "ECDHE-RSA-AES256-SHA384", "ECDHE-RSA-AES256-SHA", "ECDHE-RSA-AES128-GCM-SHA256", "ECDHE-RSA-AES128-SHA256", "ECDHE-RSA-AES128-SHA", "ECDHE-RSA-RC4-SHA", "DHE-RSA-AES256-GCM-SHA384", "DHE-RSA-AES256-SHA256", "DHE-RSA-AES256-SHA", "DHE-RSA-AES128-GCM-SHA256", "DHE-RSA-AES128-SHA256", "DHE-RSA-AES128-SHA", "AES256-GCM-SHA384", "AES256-SHA256", "AES256-SHA", "AES128-GCM-SHA256", "AES128-SHA256", "AES128-SHA" }));
  
  public SSLConfig() {}
  
  /* Error */
  private static java.security.KeyStore a(String paramString)
  {
    // Byte code:
    //   0: invokestatic 196	java/security/KeyStore:getDefaultType	()Ljava/lang/String;
    //   3: invokestatic 199	java/security/KeyStore:getInstance	(Ljava/lang/String;)Ljava/security/KeyStore;
    //   6: astore_2
    //   7: aload_2
    //   8: aconst_null
    //   9: iconst_0
    //   10: newarray char
    //   12: invokevirtual 203	java/security/KeyStore:load	(Ljava/io/InputStream;[C)V
    //   15: ldc 2
    //   17: aload_0
    //   18: invokevirtual 209	java/lang/Class:getResourceAsStream	(Ljava/lang/String;)Ljava/io/InputStream;
    //   21: astore_1
    //   22: aload_1
    //   23: ifnull +138 -> 161
    //   26: aload_2
    //   27: aload_1
    //   28: invokestatic 212	com/dropbox/core/http/SSLConfig:a	(Ljava/security/KeyStore;Ljava/io/InputStream;)V
    //   31: aload_1
    //   32: invokestatic 218	com/dropbox/core/util/IOUtil:closeInput	(Ljava/io/InputStream;)V
    //   35: aload_2
    //   36: areturn
    //   37: astore_0
    //   38: goto +117 -> 155
    //   41: astore_2
    //   42: new 220	java/lang/StringBuilder
    //   45: dup
    //   46: invokespecial 221	java/lang/StringBuilder:<init>	()V
    //   49: astore_3
    //   50: aload_3
    //   51: ldc -33
    //   53: invokevirtual 227	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   56: pop
    //   57: aload_3
    //   58: aload_0
    //   59: invokevirtual 227	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   62: pop
    //   63: aload_3
    //   64: ldc -27
    //   66: invokevirtual 227	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   69: pop
    //   70: aload_3
    //   71: invokevirtual 232	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   74: aload_2
    //   75: invokestatic 238	com/dropbox/core/util/LangUtil:mkAssert	(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/RuntimeException;
    //   78: athrow
    //   79: astore_2
    //   80: new 220	java/lang/StringBuilder
    //   83: dup
    //   84: invokespecial 221	java/lang/StringBuilder:<init>	()V
    //   87: astore_3
    //   88: aload_3
    //   89: ldc -33
    //   91: invokevirtual 227	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   94: pop
    //   95: aload_3
    //   96: aload_0
    //   97: invokevirtual 227	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   100: pop
    //   101: aload_3
    //   102: ldc -27
    //   104: invokevirtual 227	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   107: pop
    //   108: aload_3
    //   109: invokevirtual 232	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   112: aload_2
    //   113: invokestatic 238	com/dropbox/core/util/LangUtil:mkAssert	(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/RuntimeException;
    //   116: athrow
    //   117: astore_2
    //   118: new 220	java/lang/StringBuilder
    //   121: dup
    //   122: invokespecial 221	java/lang/StringBuilder:<init>	()V
    //   125: astore_3
    //   126: aload_3
    //   127: ldc -33
    //   129: invokevirtual 227	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   132: pop
    //   133: aload_3
    //   134: aload_0
    //   135: invokevirtual 227	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   138: pop
    //   139: aload_3
    //   140: ldc -27
    //   142: invokevirtual 227	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   145: pop
    //   146: aload_3
    //   147: invokevirtual 232	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   150: aload_2
    //   151: invokestatic 238	com/dropbox/core/util/LangUtil:mkAssert	(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/RuntimeException;
    //   154: athrow
    //   155: aload_1
    //   156: invokestatic 218	com/dropbox/core/util/IOUtil:closeInput	(Ljava/io/InputStream;)V
    //   159: aload_0
    //   160: athrow
    //   161: new 220	java/lang/StringBuilder
    //   164: dup
    //   165: invokespecial 221	java/lang/StringBuilder:<init>	()V
    //   168: astore_1
    //   169: aload_1
    //   170: ldc -16
    //   172: invokevirtual 227	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   175: pop
    //   176: aload_1
    //   177: aload_0
    //   178: invokevirtual 227	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   181: pop
    //   182: aload_1
    //   183: ldc -27
    //   185: invokevirtual 227	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   188: pop
    //   189: new 242	java/lang/AssertionError
    //   192: dup
    //   193: aload_1
    //   194: invokevirtual 232	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   197: invokespecial 245	java/lang/AssertionError:<init>	(Ljava/lang/Object;)V
    //   200: athrow
    //   201: astore_0
    //   202: ldc -9
    //   204: aload_0
    //   205: invokestatic 238	com/dropbox/core/util/LangUtil:mkAssert	(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/RuntimeException;
    //   208: athrow
    //   209: astore_0
    //   210: ldc -9
    //   212: aload_0
    //   213: invokestatic 238	com/dropbox/core/util/LangUtil:mkAssert	(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/RuntimeException;
    //   216: athrow
    //   217: astore_0
    //   218: ldc -9
    //   220: aload_0
    //   221: invokestatic 238	com/dropbox/core/util/LangUtil:mkAssert	(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/RuntimeException;
    //   224: athrow
    //   225: astore_0
    //   226: ldc -9
    //   228: aload_0
    //   229: invokestatic 238	com/dropbox/core/util/LangUtil:mkAssert	(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/RuntimeException;
    //   232: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	233	0	paramString	String
    //   21	173	1	localObject	Object
    //   6	30	2	localKeyStore	java.security.KeyStore
    //   41	34	2	localIOException	IOException
    //   79	34	2	localLoadException	LoadException
    //   117	34	2	localKeyStoreException	java.security.KeyStoreException
    //   49	98	3	localStringBuilder	StringBuilder
    // Exception table:
    //   from	to	target	type
    //   26	31	37	finally
    //   42	79	37	finally
    //   80	117	37	finally
    //   118	155	37	finally
    //   26	31	41	java/io/IOException
    //   26	31	79	com/dropbox/core/http/SSLConfig$LoadException
    //   26	31	117	java/security/KeyStoreException
    //   0	15	201	java/io/IOException
    //   0	15	209	java/security/NoSuchAlgorithmException
    //   0	15	217	java/security/cert/CertificateException
    //   0	15	225	java/security/KeyStoreException
  }
  
  private static List<X509Certificate> a(CertificateFactory paramCertificateFactory, InputStream paramInputStream)
    throws IOException, SSLConfig.LoadException, CertificateException
  {
    ArrayList localArrayList = new ArrayList();
    paramInputStream = new DataInputStream(paramInputStream);
    byte[] arrayOfByte = new byte['⠀'];
    int i;
    for (;;)
    {
      i = paramInputStream.readUnsignedShort();
      if (i == 0)
      {
        if (paramInputStream.read() < 0) {
          return localArrayList;
        }
        throw new LoadException("Found data after after zero-length header.", null);
      }
      if (i > 10240) {
        break;
      }
      paramInputStream.readFully(arrayOfByte, 0, i);
      localArrayList.add((X509Certificate)paramCertificateFactory.generateCertificate(new ByteArrayInputStream(arrayOfByte, 0, i)));
    }
    paramCertificateFactory = new StringBuilder();
    paramCertificateFactory.append("Invalid length for certificate entry: ");
    paramCertificateFactory.append(i);
    throw new LoadException(paramCertificateFactory.toString(), null);
  }
  
  /* Error */
  private static SSLContext a(TrustManager[] paramArrayOfTrustManager)
  {
    // Byte code:
    //   0: ldc_w 302
    //   3: invokestatic 307	javax/net/ssl/SSLContext:getInstance	(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;
    //   6: astore_1
    //   7: aload_1
    //   8: aconst_null
    //   9: aload_0
    //   10: aconst_null
    //   11: invokevirtual 311	javax/net/ssl/SSLContext:init	([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V
    //   14: aload_1
    //   15: areturn
    //   16: astore_0
    //   17: ldc_w 313
    //   20: aload_0
    //   21: invokestatic 238	com/dropbox/core/util/LangUtil:mkAssert	(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/RuntimeException;
    //   24: athrow
    //   25: astore_0
    //   26: ldc_w 315
    //   29: aload_0
    //   30: invokestatic 238	com/dropbox/core/util/LangUtil:mkAssert	(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/RuntimeException;
    //   33: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	34	0	paramArrayOfTrustManager	TrustManager[]
    //   6	9	1	localSSLContext	SSLContext
    // Exception table:
    //   from	to	target	type
    //   7	14	16	java/security/KeyManagementException
    //   0	7	25	java/security/NoSuchAlgorithmException
  }
  
  private static X509TrustManager a()
  {
    return a(a("/trusted-certs.raw"));
  }
  
  /* Error */
  private static X509TrustManager a(java.security.KeyStore paramKeyStore)
  {
    // Byte code:
    //   0: ldc_w 324
    //   3: invokestatic 329	javax/net/ssl/TrustManagerFactory:getInstance	(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;
    //   6: astore_1
    //   7: aload_1
    //   8: aload_0
    //   9: invokevirtual 332	javax/net/ssl/TrustManagerFactory:init	(Ljava/security/KeyStore;)V
    //   12: aload_1
    //   13: invokevirtual 336	javax/net/ssl/TrustManagerFactory:getTrustManagers	()[Ljavax/net/ssl/TrustManager;
    //   16: astore_0
    //   17: aload_0
    //   18: arraylength
    //   19: iconst_1
    //   20: if_icmpne +58 -> 78
    //   23: aload_0
    //   24: iconst_0
    //   25: aaload
    //   26: instanceof 338
    //   29: ifeq +10 -> 39
    //   32: aload_0
    //   33: iconst_0
    //   34: aaload
    //   35: checkcast 338	javax/net/ssl/X509TrustManager
    //   38: areturn
    //   39: new 220	java/lang/StringBuilder
    //   42: dup
    //   43: invokespecial 221	java/lang/StringBuilder:<init>	()V
    //   46: astore_1
    //   47: aload_1
    //   48: ldc_w 340
    //   51: invokevirtual 227	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   54: pop
    //   55: aload_1
    //   56: aload_0
    //   57: iconst_0
    //   58: aaload
    //   59: invokevirtual 344	java/lang/Object:getClass	()Ljava/lang/Class;
    //   62: invokevirtual 347	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   65: pop
    //   66: new 242	java/lang/AssertionError
    //   69: dup
    //   70: aload_1
    //   71: invokevirtual 232	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   74: invokespecial 245	java/lang/AssertionError:<init>	(Ljava/lang/Object;)V
    //   77: athrow
    //   78: new 242	java/lang/AssertionError
    //   81: dup
    //   82: ldc_w 349
    //   85: invokespecial 245	java/lang/AssertionError:<init>	(Ljava/lang/Object;)V
    //   88: athrow
    //   89: astore_0
    //   90: ldc_w 351
    //   93: aload_0
    //   94: invokestatic 238	com/dropbox/core/util/LangUtil:mkAssert	(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/RuntimeException;
    //   97: athrow
    //   98: astore_0
    //   99: ldc_w 353
    //   102: aload_0
    //   103: invokestatic 238	com/dropbox/core/util/LangUtil:mkAssert	(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/RuntimeException;
    //   106: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	107	0	paramKeyStore	java.security.KeyStore
    //   6	65	1	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   7	12	89	java/security/KeyStoreException
    //   0	7	98	java/security/NoSuchAlgorithmException
  }
  
  /* Error */
  private static void a(java.security.KeyStore paramKeyStore, InputStream paramInputStream)
    throws IOException, SSLConfig.LoadException, java.security.KeyStoreException
  {
    // Byte code:
    //   0: ldc_w 355
    //   3: invokestatic 358	java/security/cert/CertificateFactory:getInstance	(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;
    //   6: astore_2
    //   7: aload_2
    //   8: aload_1
    //   9: invokestatic 360	com/dropbox/core/http/SSLConfig:a	(Ljava/security/cert/CertificateFactory;Ljava/io/InputStream;)Ljava/util/List;
    //   12: astore_1
    //   13: aload_1
    //   14: invokeinterface 366 1 0
    //   19: astore_1
    //   20: aload_1
    //   21: invokeinterface 372 1 0
    //   26: ifeq +69 -> 95
    //   29: aload_1
    //   30: invokeinterface 376 1 0
    //   35: checkcast 283	java/security/cert/X509Certificate
    //   38: astore_2
    //   39: aload_2
    //   40: invokevirtual 380	java/security/cert/X509Certificate:getSubjectX500Principal	()Ljavax/security/auth/x500/X500Principal;
    //   43: invokevirtual 385	javax/security/auth/x500/X500Principal:getName	()Ljava/lang/String;
    //   46: astore_3
    //   47: aload_0
    //   48: aload_3
    //   49: aload_2
    //   50: invokevirtual 389	java/security/KeyStore:setCertificateEntry	(Ljava/lang/String;Ljava/security/cert/Certificate;)V
    //   53: goto -33 -> 20
    //   56: astore_0
    //   57: new 220	java/lang/StringBuilder
    //   60: dup
    //   61: invokespecial 221	java/lang/StringBuilder:<init>	()V
    //   64: astore_1
    //   65: aload_1
    //   66: ldc_w 391
    //   69: invokevirtual 227	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   72: pop
    //   73: aload_1
    //   74: aload_0
    //   75: invokevirtual 394	java/security/KeyStoreException:getMessage	()Ljava/lang/String;
    //   78: invokevirtual 227	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   81: pop
    //   82: new 6	com/dropbox/core/http/SSLConfig$LoadException
    //   85: dup
    //   86: aload_1
    //   87: invokevirtual 232	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   90: aload_0
    //   91: invokespecial 267	com/dropbox/core/http/SSLConfig$LoadException:<init>	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   94: athrow
    //   95: return
    //   96: astore_0
    //   97: new 220	java/lang/StringBuilder
    //   100: dup
    //   101: invokespecial 221	java/lang/StringBuilder:<init>	()V
    //   104: astore_1
    //   105: aload_1
    //   106: ldc_w 391
    //   109: invokevirtual 227	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   112: pop
    //   113: aload_1
    //   114: aload_0
    //   115: invokevirtual 395	java/security/cert/CertificateException:getMessage	()Ljava/lang/String;
    //   118: invokevirtual 227	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   121: pop
    //   122: new 6	com/dropbox/core/http/SSLConfig$LoadException
    //   125: dup
    //   126: aload_1
    //   127: invokevirtual 232	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   130: aload_0
    //   131: invokespecial 267	com/dropbox/core/http/SSLConfig$LoadException:<init>	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   134: athrow
    //   135: astore_0
    //   136: ldc_w 397
    //   139: aload_0
    //   140: invokestatic 238	com/dropbox/core/util/LangUtil:mkAssert	(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/RuntimeException;
    //   143: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	144	0	paramKeyStore	java.security.KeyStore
    //   0	144	1	paramInputStream	InputStream
    //   6	44	2	localObject	Object
    //   46	3	3	str	String
    // Exception table:
    //   from	to	target	type
    //   47	53	56	java/security/KeyStoreException
    //   7	13	96	java/security/cert/CertificateException
    //   0	7	135	java/security/cert/CertificateException
  }
  
  private static String[] a(String[] paramArrayOfString)
  {
    Object localObject = f;
    if ((localObject != null) && (Arrays.equals(a.a((a)localObject), paramArrayOfString))) {
      return a.b((a)localObject);
    }
    localObject = new ArrayList(g.size());
    int j = paramArrayOfString.length;
    int i = 0;
    while (i < j)
    {
      String str = paramArrayOfString[i];
      if (g.contains(str)) {
        ((ArrayList)localObject).add(str);
      }
      i += 1;
    }
    localObject = (String[])((ArrayList)localObject).toArray(new String[((ArrayList)localObject).size()]);
    f = new a(paramArrayOfString, (String[])localObject);
    return localObject;
  }
  
  public static void apply(HttpsURLConnection paramHttpsURLConnection)
    throws SSLException
  {
    paramHttpsURLConnection.setSSLSocketFactory(b);
  }
  
  private static SSLSocketFactory b()
  {
    return new b(a(new TrustManager[] { a }).getSocketFactory());
  }
  
  private static void b(SSLSocket paramSSLSocket)
    throws SSLException
  {
    String[] arrayOfString = paramSSLSocket.getSupportedProtocols();
    int j = arrayOfString.length;
    int i = 0;
    while (i < j)
    {
      String str = arrayOfString[i];
      if (str.equals("TLSv1.2"))
      {
        paramSSLSocket.setEnabledProtocols(c);
      }
      else if (str.equals("TLSv1.0"))
      {
        paramSSLSocket.setEnabledProtocols(d);
      }
      else
      {
        if (!str.equals("TLSv1")) {
          break label89;
        }
        paramSSLSocket.setEnabledProtocols(e);
      }
      paramSSLSocket.setEnabledCipherSuites(a(paramSSLSocket.getSupportedCipherSuites()));
      return;
      label89:
      i += 1;
    }
    throw new SSLException("Socket doesn't support protocols \"TLSv1.2\", \"TLSv1.0\" or \"TLSv1\".");
  }
  
  public static SSLSocketFactory getSSLSocketFactory()
  {
    return b;
  }
  
  public static X509TrustManager getTrustManager()
  {
    return a;
  }
  
  public static final class LoadException
    extends Exception
  {
    private static final long serialVersionUID = 0L;
    
    public LoadException(String paramString, Throwable paramThrowable)
    {
      super(paramThrowable);
    }
  }
  
  private static final class a
  {
    private final String[] a;
    private final String[] b;
    
    public a(String[] paramArrayOfString1, String[] paramArrayOfString2)
    {
      a = paramArrayOfString1;
      b = paramArrayOfString2;
    }
  }
  
  private static final class b
    extends SSLSocketFactory
  {
    private final SSLSocketFactory a;
    
    public b(SSLSocketFactory paramSSLSocketFactory)
    {
      a = paramSSLSocketFactory;
    }
    
    public Socket createSocket(String paramString, int paramInt)
      throws IOException
    {
      paramString = a.createSocket(paramString, paramInt);
      SSLConfig.a((SSLSocket)paramString);
      return paramString;
    }
    
    public Socket createSocket(String paramString, int paramInt1, InetAddress paramInetAddress, int paramInt2)
      throws IOException
    {
      paramString = a.createSocket(paramString, paramInt1, paramInetAddress, paramInt2);
      SSLConfig.a((SSLSocket)paramString);
      return paramString;
    }
    
    public Socket createSocket(InetAddress paramInetAddress, int paramInt)
      throws IOException
    {
      paramInetAddress = a.createSocket(paramInetAddress, paramInt);
      SSLConfig.a((SSLSocket)paramInetAddress);
      return paramInetAddress;
    }
    
    public Socket createSocket(InetAddress paramInetAddress1, int paramInt1, InetAddress paramInetAddress2, int paramInt2)
      throws IOException
    {
      paramInetAddress1 = a.createSocket(paramInetAddress1, paramInt1, paramInetAddress2, paramInt2);
      SSLConfig.a((SSLSocket)paramInetAddress1);
      return paramInetAddress1;
    }
    
    public Socket createSocket(Socket paramSocket, String paramString, int paramInt, boolean paramBoolean)
      throws IOException
    {
      paramSocket = a.createSocket(paramSocket, paramString, paramInt, paramBoolean);
      SSLConfig.a((SSLSocket)paramSocket);
      return paramSocket;
    }
    
    public String[] getDefaultCipherSuites()
    {
      return a.getDefaultCipherSuites();
    }
    
    public String[] getSupportedCipherSuites()
    {
      return a.getSupportedCipherSuites();
    }
  }
}
