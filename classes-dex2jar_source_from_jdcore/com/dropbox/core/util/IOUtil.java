package com.dropbox.core.util;

import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.File;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.Reader;
import java.io.Writer;
import java.nio.charset.CharacterCodingException;
import java.nio.charset.Charset;

public class IOUtil
{
  public static final OutputStream BlackHoleOutputStream = new OutputStream()
  {
    public void write(int paramAnonymousInt) {}
    
    public void write(byte[] paramAnonymousArrayOfByte) {}
    
    public void write(byte[] paramAnonymousArrayOfByte, int paramAnonymousInt1, int paramAnonymousInt2) {}
  };
  public static final int DEFAULT_COPY_BUFFER_SIZE = 16384;
  public static final InputStream EmptyInputStream = new InputStream()
  {
    public int read()
    {
      return -1;
    }
    
    public int read(byte[] paramAnonymousArrayOfByte)
    {
      return -1;
    }
    
    public int read(byte[] paramAnonymousArrayOfByte, int paramAnonymousInt1, int paramAnonymousInt2)
    {
      return -1;
    }
  };
  
  public IOUtil() {}
  
  public static void closeInput(InputStream paramInputStream)
  {
    try
    {
      paramInputStream.close();
      return;
    }
    catch (IOException paramInputStream) {}
  }
  
  public static void closeInput(Reader paramReader)
  {
    try
    {
      paramReader.close();
      return;
    }
    catch (IOException paramReader) {}
  }
  
  public static void closeQuietly(Closeable paramCloseable)
  {
    if (paramCloseable != null) {}
    try
    {
      paramCloseable.close();
      return;
    }
    catch (IOException paramCloseable) {}
  }
  
  public static void copyStreamToStream(InputStream paramInputStream, OutputStream paramOutputStream)
    throws IOUtil.ReadException, IOUtil.WriteException
  {
    copyStreamToStream(paramInputStream, paramOutputStream, 16384);
  }
  
  public static void copyStreamToStream(InputStream paramInputStream, OutputStream paramOutputStream, int paramInt)
    throws IOUtil.ReadException, IOUtil.WriteException
  {
    copyStreamToStream(paramInputStream, paramOutputStream, new byte[paramInt]);
  }
  
  /* Error */
  public static void copyStreamToStream(InputStream paramInputStream, OutputStream paramOutputStream, byte[] paramArrayOfByte)
    throws IOUtil.ReadException, IOUtil.WriteException
  {
    // Byte code:
    //   0: aload_0
    //   1: aload_2
    //   2: invokevirtual 70	java/io/InputStream:read	([B)I
    //   5: istore_3
    //   6: iload_3
    //   7: iconst_m1
    //   8: if_icmpne +4 -> 12
    //   11: return
    //   12: aload_1
    //   13: aload_2
    //   14: iconst_0
    //   15: iload_3
    //   16: invokevirtual 76	java/io/OutputStream:write	([BII)V
    //   19: goto -19 -> 0
    //   22: astore_0
    //   23: new 16	com/dropbox/core/util/IOUtil$WriteException
    //   26: dup
    //   27: aload_0
    //   28: invokespecial 79	com/dropbox/core/util/IOUtil$WriteException:<init>	(Ljava/io/IOException;)V
    //   31: athrow
    //   32: astore_0
    //   33: new 10	com/dropbox/core/util/IOUtil$ReadException
    //   36: dup
    //   37: aload_0
    //   38: invokespecial 80	com/dropbox/core/util/IOUtil$ReadException:<init>	(Ljava/io/IOException;)V
    //   41: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	42	0	paramInputStream	InputStream
    //   0	42	1	paramOutputStream	OutputStream
    //   0	42	2	paramArrayOfByte	byte[]
    //   5	11	3	i	int
    // Exception table:
    //   from	to	target	type
    //   12	19	22	java/io/IOException
    //   0	6	32	java/io/IOException
  }
  
  public static InputStream limit(InputStream paramInputStream, long paramLong)
  {
    return new a(paramInputStream, paramLong);
  }
  
  public static byte[] slurp(InputStream paramInputStream, int paramInt)
    throws IOException
  {
    return slurp(paramInputStream, paramInt, new byte['䀀']);
  }
  
  public static byte[] slurp(InputStream paramInputStream, int paramInt, byte[] paramArrayOfByte)
    throws IOException
  {
    if (paramInt >= 0)
    {
      ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
      copyStreamToStream(paramInputStream, localByteArrayOutputStream, paramArrayOfByte);
      return localByteArrayOutputStream.toByteArray();
    }
    paramInputStream = new StringBuilder();
    paramInputStream.append("'byteLimit' must be non-negative: ");
    paramInputStream.append(paramInt);
    throw new RuntimeException(paramInputStream.toString());
  }
  
  public static String toUtf8String(InputStream paramInputStream)
    throws IOUtil.ReadException, CharacterCodingException
  {
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
    try
    {
      copyStreamToStream(paramInputStream, localByteArrayOutputStream);
      return StringUtil.utf8ToString(localByteArrayOutputStream.toByteArray());
    }
    catch (WriteException paramInputStream)
    {
      throw new RuntimeException("impossible", paramInputStream);
    }
  }
  
  public static Reader utf8Reader(InputStream paramInputStream)
  {
    return new InputStreamReader(paramInputStream, StringUtil.UTF8.newDecoder());
  }
  
  public static Writer utf8Writer(OutputStream paramOutputStream)
  {
    return new OutputStreamWriter(paramOutputStream, StringUtil.UTF8.newEncoder());
  }
  
  public void copyFileToStream(File paramFile, OutputStream paramOutputStream)
    throws IOUtil.ReadException, IOUtil.WriteException
  {
    copyFileToStream(paramFile, paramOutputStream, 16384);
  }
  
  /* Error */
  public void copyFileToStream(File paramFile, OutputStream paramOutputStream, int paramInt)
    throws IOUtil.ReadException, IOUtil.WriteException
  {
    // Byte code:
    //   0: new 170	java/io/FileInputStream
    //   3: dup
    //   4: aload_1
    //   5: invokespecial 173	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   8: astore_1
    //   9: aload_1
    //   10: aload_2
    //   11: iload_3
    //   12: invokestatic 62	com/dropbox/core/util/IOUtil:copyStreamToStream	(Ljava/io/InputStream;Ljava/io/OutputStream;I)V
    //   15: aload_1
    //   16: invokestatic 175	com/dropbox/core/util/IOUtil:closeInput	(Ljava/io/InputStream;)V
    //   19: return
    //   20: astore_2
    //   21: aload_1
    //   22: invokestatic 175	com/dropbox/core/util/IOUtil:closeInput	(Ljava/io/InputStream;)V
    //   25: aload_2
    //   26: athrow
    //   27: astore_1
    //   28: new 10	com/dropbox/core/util/IOUtil$ReadException
    //   31: dup
    //   32: aload_1
    //   33: invokespecial 80	com/dropbox/core/util/IOUtil$ReadException:<init>	(Ljava/io/IOException;)V
    //   36: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	37	0	this	IOUtil
    //   0	37	1	paramFile	File
    //   0	37	2	paramOutputStream	OutputStream
    //   0	37	3	paramInt	int
    // Exception table:
    //   from	to	target	type
    //   9	15	20	finally
    //   0	9	27	java/io/IOException
  }
  
  public void copyStreamToFile(InputStream paramInputStream, File paramFile)
    throws IOUtil.ReadException, IOUtil.WriteException
  {
    copyStreamToFile(paramInputStream, paramFile, 16384);
  }
  
  /* Error */
  public void copyStreamToFile(InputStream paramInputStream, File paramFile, int paramInt)
    throws IOUtil.ReadException, IOUtil.WriteException
  {
    // Byte code:
    //   0: new 182	java/io/FileOutputStream
    //   3: dup
    //   4: aload_2
    //   5: invokespecial 183	java/io/FileOutputStream:<init>	(Ljava/io/File;)V
    //   8: astore_2
    //   9: aload_1
    //   10: aload_2
    //   11: iload_3
    //   12: invokestatic 62	com/dropbox/core/util/IOUtil:copyStreamToStream	(Ljava/io/InputStream;Ljava/io/OutputStream;I)V
    //   15: aload_2
    //   16: invokevirtual 184	java/io/FileOutputStream:close	()V
    //   19: return
    //   20: astore_1
    //   21: new 16	com/dropbox/core/util/IOUtil$WriteException
    //   24: dup
    //   25: aload_1
    //   26: invokespecial 79	com/dropbox/core/util/IOUtil$WriteException:<init>	(Ljava/io/IOException;)V
    //   29: athrow
    //   30: astore_1
    //   31: aload_2
    //   32: invokevirtual 184	java/io/FileOutputStream:close	()V
    //   35: aload_1
    //   36: athrow
    //   37: astore_1
    //   38: new 16	com/dropbox/core/util/IOUtil$WriteException
    //   41: dup
    //   42: aload_1
    //   43: invokespecial 79	com/dropbox/core/util/IOUtil$WriteException:<init>	(Ljava/io/IOException;)V
    //   46: athrow
    //   47: astore_1
    //   48: new 16	com/dropbox/core/util/IOUtil$WriteException
    //   51: dup
    //   52: aload_1
    //   53: invokespecial 79	com/dropbox/core/util/IOUtil$WriteException:<init>	(Ljava/io/IOException;)V
    //   56: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	57	0	this	IOUtil
    //   0	57	1	paramInputStream	InputStream
    //   0	57	2	paramFile	File
    //   0	57	3	paramInt	int
    // Exception table:
    //   from	to	target	type
    //   15	19	20	java/io/IOException
    //   9	15	30	finally
    //   31	35	37	java/io/IOException
    //   0	9	47	java/io/IOException
  }
  
  public static final class ReadException
    extends IOUtil.WrappedException
  {
    private static final long serialVersionUID = 0L;
    
    public ReadException(IOException paramIOException)
    {
      super();
    }
    
    public ReadException(String paramString, IOException paramIOException)
    {
      super(paramIOException);
    }
  }
  
  public static abstract class WrappedException
    extends IOException
  {
    private static final long serialVersionUID = 0L;
    
    public WrappedException(IOException paramIOException)
    {
      super();
    }
    
    public WrappedException(String paramString, IOException paramIOException)
    {
      super(paramIOException);
    }
    
    public IOException getCause()
    {
      return (IOException)super.getCause();
    }
    
    public String getMessage()
    {
      String str = super.getCause().getMessage();
      if (str == null) {
        return "";
      }
      return str;
    }
  }
  
  public static final class WriteException
    extends IOUtil.WrappedException
  {
    private static final long serialVersionUID = 0L;
    
    public WriteException(IOException paramIOException)
    {
      super();
    }
    
    public WriteException(String paramString, IOException paramIOException)
    {
      super(paramIOException);
    }
  }
  
  private static final class a
    extends FilterInputStream
  {
    private long a;
    
    public a(InputStream paramInputStream, long paramLong)
    {
      super();
      if (paramInputStream != null)
      {
        if (paramLong >= 0L)
        {
          a = paramLong;
          return;
        }
        throw new IllegalArgumentException("limit must be non-negative");
      }
      throw new NullPointerException("in");
    }
    
    public int available()
      throws IOException
    {
      return (int)Math.min(in.available(), a);
    }
    
    public boolean markSupported()
    {
      return false;
    }
    
    public int read()
      throws IOException
    {
      if (a == 0L) {
        return -1;
      }
      int i = in.read();
      if (i != -1) {
        a -= 1L;
      }
      return i;
    }
    
    public int read(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
      throws IOException
    {
      if (a == 0L) {
        return -1;
      }
      paramInt2 = (int)Math.min(paramInt2, a);
      paramInt1 = in.read(paramArrayOfByte, paramInt1, paramInt2);
      if (paramInt1 != -1) {
        a -= paramInt1;
      }
      return paramInt1;
    }
    
    public void reset()
      throws IOException
    {
      try
      {
        throw new IOException("mark not supported");
      }
      finally {}
    }
    
    public long skip(long paramLong)
      throws IOException
    {
      paramLong = Math.min(paramLong, a);
      paramLong = in.skip(paramLong);
      a -= paramLong;
      return paramLong;
    }
  }
}
