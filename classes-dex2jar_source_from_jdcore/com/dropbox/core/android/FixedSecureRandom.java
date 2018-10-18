package com.dropbox.core.android;

import android.os.Build;
import android.os.Build.VERSION;
import android.os.Process;
import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.lang.reflect.Field;
import java.security.Provider;
import java.security.SecureRandom;
import java.security.SecureRandomSpi;

public final class FixedSecureRandom
  extends SecureRandom
{
  private static final byte[] a = ;
  private static final long serialVersionUID = 0L;
  
  private FixedSecureRandom()
  {
    super(new LinuxPrngSecureRandomSpi(), new a());
  }
  
  private static byte[] b()
  {
    try
    {
      Object localObject = new ByteArrayOutputStream();
      DataOutputStream localDataOutputStream = new DataOutputStream((OutputStream)localObject);
      localDataOutputStream.writeLong(System.currentTimeMillis());
      localDataOutputStream.writeLong(System.nanoTime());
      localDataOutputStream.writeInt(Process.myPid());
      localDataOutputStream.writeInt(Process.myUid());
      localDataOutputStream.write(a);
      localDataOutputStream.close();
      localObject = ((ByteArrayOutputStream)localObject).toByteArray();
      return localObject;
    }
    catch (IOException localIOException)
    {
      throw new SecurityException("Failed to generate seed", localIOException);
    }
  }
  
  private static String c()
  {
    try
    {
      String str = (String)Build.class.getField("SERIAL").get(null);
      return str;
    }
    catch (Exception localException) {}
    return null;
  }
  
  private static byte[] d()
  {
    Object localObject = new StringBuilder();
    String str = Build.FINGERPRINT;
    if (str != null) {
      ((StringBuilder)localObject).append(str);
    }
    str = c();
    if (str != null) {
      ((StringBuilder)localObject).append(str);
    }
    try
    {
      localObject = ((StringBuilder)localObject).toString().getBytes("UTF-8");
      return localObject;
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException)
    {
      for (;;) {}
    }
    throw new RuntimeException("UTF-8 encoding not supported");
  }
  
  public static SecureRandom get()
  {
    if (Build.VERSION.SDK_INT > 18) {
      return new SecureRandom();
    }
    return new FixedSecureRandom();
  }
  
  public static class LinuxPrngSecureRandomSpi
    extends SecureRandomSpi
  {
    private static final File a = new File("/dev/urandom");
    private static final Object b = new Object();
    private static DataInputStream c;
    private static OutputStream d;
    private static final long serialVersionUID = 0L;
    private boolean e;
    
    public LinuxPrngSecureRandomSpi() {}
    
    private DataInputStream a()
    {
      synchronized (b)
      {
        DataInputStream localDataInputStream1 = c;
        if (localDataInputStream1 == null) {
          try
          {
            c = new DataInputStream(new FileInputStream(a));
          }
          catch (IOException localIOException)
          {
            StringBuilder localStringBuilder = new StringBuilder();
            localStringBuilder.append("Failed to open ");
            localStringBuilder.append(a);
            localStringBuilder.append(" for reading");
            throw new SecurityException(localStringBuilder.toString(), localIOException);
          }
        }
        DataInputStream localDataInputStream2 = c;
        return localDataInputStream2;
      }
    }
    
    private OutputStream b()
      throws IOException
    {
      synchronized (b)
      {
        if (d == null) {
          d = new FileOutputStream(a);
        }
        OutputStream localOutputStream = d;
        return localOutputStream;
      }
    }
    
    protected byte[] engineGenerateSeed(int paramInt)
    {
      byte[] arrayOfByte = new byte[paramInt];
      engineNextBytes(arrayOfByte);
      return arrayOfByte;
    }
    
    /* Error */
    protected void engineNextBytes(byte[] paramArrayOfByte)
    {
      // Byte code:
      //   0: aload_0
      //   1: getfield 94	com/dropbox/core/android/FixedSecureRandom$LinuxPrngSecureRandomSpi:e	Z
      //   4: ifne +10 -> 14
      //   7: aload_0
      //   8: invokestatic 97	com/dropbox/core/android/FixedSecureRandom:a	()[B
      //   11: invokevirtual 100	com/dropbox/core/android/FixedSecureRandom$LinuxPrngSecureRandomSpi:engineSetSeed	([B)V
      //   14: getstatic 39	com/dropbox/core/android/FixedSecureRandom$LinuxPrngSecureRandomSpi:b	Ljava/lang/Object;
      //   17: astore_2
      //   18: aload_2
      //   19: monitorenter
      //   20: aload_0
      //   21: invokespecial 102	com/dropbox/core/android/FixedSecureRandom$LinuxPrngSecureRandomSpi:a	()Ljava/io/DataInputStream;
      //   24: astore_3
      //   25: aload_2
      //   26: monitorexit
      //   27: aload_3
      //   28: monitorenter
      //   29: aload_3
      //   30: aload_1
      //   31: invokevirtual 105	java/io/DataInputStream:readFully	([B)V
      //   34: aload_3
      //   35: monitorexit
      //   36: return
      //   37: astore_1
      //   38: aload_3
      //   39: monitorexit
      //   40: aload_1
      //   41: athrow
      //   42: astore_1
      //   43: aload_2
      //   44: monitorexit
      //   45: aload_1
      //   46: athrow
      //   47: astore_1
      //   48: new 58	java/lang/StringBuilder
      //   51: dup
      //   52: invokespecial 59	java/lang/StringBuilder:<init>	()V
      //   55: astore_2
      //   56: aload_2
      //   57: ldc 107
      //   59: invokevirtual 65	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
      //   62: pop
      //   63: aload_2
      //   64: getstatic 33	com/dropbox/core/android/FixedSecureRandom$LinuxPrngSecureRandomSpi:a	Ljava/io/File;
      //   67: invokevirtual 68	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
      //   70: pop
      //   71: new 72	java/lang/SecurityException
      //   74: dup
      //   75: aload_2
      //   76: invokevirtual 76	java/lang/StringBuilder:toString	()Ljava/lang/String;
      //   79: aload_1
      //   80: invokespecial 79	java/lang/SecurityException:<init>	(Ljava/lang/String;Ljava/lang/Throwable;)V
      //   83: athrow
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	84	0	this	LinuxPrngSecureRandomSpi
      //   0	84	1	paramArrayOfByte	byte[]
      //   24	15	3	localDataInputStream	DataInputStream
      // Exception table:
      //   from	to	target	type
      //   29	36	37	finally
      //   38	40	37	finally
      //   20	27	42	finally
      //   43	45	42	finally
      //   14	20	47	java/io/IOException
      //   27	29	47	java/io/IOException
      //   40	42	47	java/io/IOException
      //   45	47	47	java/io/IOException
    }
    
    /* Error */
    protected void engineSetSeed(byte[] paramArrayOfByte)
    {
      // Byte code:
      //   0: getstatic 39	com/dropbox/core/android/FixedSecureRandom$LinuxPrngSecureRandomSpi:b	Ljava/lang/Object;
      //   3: astore_2
      //   4: aload_2
      //   5: monitorenter
      //   6: aload_0
      //   7: invokespecial 109	com/dropbox/core/android/FixedSecureRandom$LinuxPrngSecureRandomSpi:b	()Ljava/io/OutputStream;
      //   10: astore_3
      //   11: aload_2
      //   12: monitorexit
      //   13: aload_3
      //   14: aload_1
      //   15: invokevirtual 114	java/io/OutputStream:write	([B)V
      //   18: aload_3
      //   19: invokevirtual 117	java/io/OutputStream:flush	()V
      //   22: aload_0
      //   23: iconst_1
      //   24: putfield 94	com/dropbox/core/android/FixedSecureRandom$LinuxPrngSecureRandomSpi:e	Z
      //   27: return
      //   28: astore_1
      //   29: aload_2
      //   30: monitorexit
      //   31: aload_1
      //   32: athrow
      //   33: astore_1
      //   34: goto +44 -> 78
      //   37: ldc 2
      //   39: invokevirtual 122	java/lang/Class:getSimpleName	()Ljava/lang/String;
      //   42: astore_1
      //   43: new 58	java/lang/StringBuilder
      //   46: dup
      //   47: invokespecial 59	java/lang/StringBuilder:<init>	()V
      //   50: astore_2
      //   51: aload_2
      //   52: ldc 124
      //   54: invokevirtual 65	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
      //   57: pop
      //   58: aload_2
      //   59: getstatic 33	com/dropbox/core/android/FixedSecureRandom$LinuxPrngSecureRandomSpi:a	Ljava/io/File;
      //   62: invokevirtual 68	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
      //   65: pop
      //   66: aload_1
      //   67: aload_2
      //   68: invokevirtual 76	java/lang/StringBuilder:toString	()Ljava/lang/String;
      //   71: invokestatic 130	android/util/Log:w	(Ljava/lang/String;Ljava/lang/String;)I
      //   74: pop
      //   75: goto -53 -> 22
      //   78: aload_0
      //   79: iconst_1
      //   80: putfield 94	com/dropbox/core/android/FixedSecureRandom$LinuxPrngSecureRandomSpi:e	Z
      //   83: aload_1
      //   84: athrow
      //   85: astore_1
      //   86: goto -49 -> 37
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	89	0	this	LinuxPrngSecureRandomSpi
      //   0	89	1	paramArrayOfByte	byte[]
      //   10	9	3	localOutputStream	OutputStream
      // Exception table:
      //   from	to	target	type
      //   6	13	28	finally
      //   29	31	28	finally
      //   0	6	33	finally
      //   13	22	33	finally
      //   31	33	33	finally
      //   37	75	33	finally
      //   0	6	85	java/io/IOException
      //   13	22	85	java/io/IOException
      //   31	33	85	java/io/IOException
    }
  }
  
  private static class a
    extends Provider
  {
    private static final long serialVersionUID = 0L;
    
    public a()
    {
      super(1.0D, "A Linux-specific random number provider that uses /dev/urandom");
      put("SecureRandom.SHA1PRNG", FixedSecureRandom.LinuxPrngSecureRandomSpi.class.getName());
      put("SecureRandom.SHA1PRNG ImplementedIn", "Software");
    }
  }
}
