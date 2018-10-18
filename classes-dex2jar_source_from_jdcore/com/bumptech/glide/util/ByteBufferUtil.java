package com.bumptech.glide.util;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.util.concurrent.atomic.AtomicReference;

public final class ByteBufferUtil
{
  private static final AtomicReference<byte[]> a = new AtomicReference();
  
  private ByteBufferUtil() {}
  
  @Nullable
  private static b a(@NonNull ByteBuffer paramByteBuffer)
  {
    if ((!paramByteBuffer.isReadOnly()) && (paramByteBuffer.hasArray())) {
      return new b(paramByteBuffer.array(), paramByteBuffer.arrayOffset(), paramByteBuffer.limit());
    }
    return null;
  }
  
  /* Error */
  @NonNull
  public static ByteBuffer fromFile(@NonNull java.io.File paramFile)
    throws IOException
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 4
    //   3: aload_0
    //   4: invokevirtual 61	java/io/File:length	()J
    //   7: lstore_1
    //   8: lload_1
    //   9: ldc2_w 62
    //   12: lcmp
    //   13: ifgt +79 -> 92
    //   16: lload_1
    //   17: lconst_0
    //   18: lcmp
    //   19: ifeq +63 -> 82
    //   22: new 65	java/io/RandomAccessFile
    //   25: dup
    //   26: aload_0
    //   27: ldc 67
    //   29: invokespecial 70	java/io/RandomAccessFile:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   32: astore_3
    //   33: aload_3
    //   34: invokevirtual 74	java/io/RandomAccessFile:getChannel	()Ljava/nio/channels/FileChannel;
    //   37: astore_0
    //   38: aload_0
    //   39: getstatic 80	java/nio/channels/FileChannel$MapMode:READ_ONLY	Ljava/nio/channels/FileChannel$MapMode;
    //   42: lconst_0
    //   43: lload_1
    //   44: invokevirtual 86	java/nio/channels/FileChannel:map	(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;
    //   47: invokevirtual 92	java/nio/MappedByteBuffer:load	()Ljava/nio/MappedByteBuffer;
    //   50: astore 4
    //   52: aload_0
    //   53: ifnull +7 -> 60
    //   56: aload_0
    //   57: invokevirtual 95	java/nio/channels/FileChannel:close	()V
    //   60: aload_3
    //   61: invokevirtual 96	java/io/RandomAccessFile:close	()V
    //   64: aload 4
    //   66: areturn
    //   67: astore 5
    //   69: aload_0
    //   70: astore 4
    //   72: aload 5
    //   74: astore_0
    //   75: goto +30 -> 105
    //   78: astore_0
    //   79: goto +26 -> 105
    //   82: new 55	java/io/IOException
    //   85: dup
    //   86: ldc 98
    //   88: invokespecial 101	java/io/IOException:<init>	(Ljava/lang/String;)V
    //   91: athrow
    //   92: new 55	java/io/IOException
    //   95: dup
    //   96: ldc 103
    //   98: invokespecial 101	java/io/IOException:<init>	(Ljava/lang/String;)V
    //   101: athrow
    //   102: astore_0
    //   103: aconst_null
    //   104: astore_3
    //   105: aload 4
    //   107: ifnull +8 -> 115
    //   110: aload 4
    //   112: invokevirtual 95	java/nio/channels/FileChannel:close	()V
    //   115: aload_3
    //   116: ifnull +7 -> 123
    //   119: aload_3
    //   120: invokevirtual 96	java/io/RandomAccessFile:close	()V
    //   123: aload_0
    //   124: athrow
    //   125: astore_0
    //   126: goto -66 -> 60
    //   129: astore_0
    //   130: aload 4
    //   132: areturn
    //   133: astore 4
    //   135: goto -20 -> 115
    //   138: astore_3
    //   139: goto -16 -> 123
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	142	0	paramFile	java.io.File
    //   7	37	1	l	long
    //   32	88	3	localRandomAccessFile	java.io.RandomAccessFile
    //   138	1	3	localIOException1	IOException
    //   1	130	4	localObject1	Object
    //   133	1	4	localIOException2	IOException
    //   67	6	5	localObject2	Object
    // Exception table:
    //   from	to	target	type
    //   38	52	67	finally
    //   33	38	78	finally
    //   3	8	102	finally
    //   22	33	102	finally
    //   82	92	102	finally
    //   92	102	102	finally
    //   56	60	125	java/io/IOException
    //   60	64	129	java/io/IOException
    //   110	115	133	java/io/IOException
    //   119	123	138	java/io/IOException
  }
  
  @NonNull
  public static ByteBuffer fromStream(@NonNull InputStream paramInputStream)
    throws IOException
  {
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream(16384);
    byte[] arrayOfByte2 = (byte[])a.getAndSet(null);
    byte[] arrayOfByte1 = arrayOfByte2;
    if (arrayOfByte2 == null) {
      arrayOfByte1 = new byte['䀀'];
    }
    for (;;)
    {
      int i = paramInputStream.read(arrayOfByte1);
      if (i < 0) {
        break;
      }
      localByteArrayOutputStream.write(arrayOfByte1, 0, i);
    }
    a.set(arrayOfByte1);
    paramInputStream = localByteArrayOutputStream.toByteArray();
    return (ByteBuffer)ByteBuffer.allocateDirect(paramInputStream.length).put(paramInputStream).position(0);
  }
  
  @NonNull
  public static byte[] toBytes(@NonNull ByteBuffer paramByteBuffer)
  {
    Object localObject = a(paramByteBuffer);
    if ((localObject != null) && (a == 0) && (b == c.length)) {
      return paramByteBuffer.array();
    }
    paramByteBuffer = paramByteBuffer.asReadOnlyBuffer();
    localObject = new byte[paramByteBuffer.limit()];
    paramByteBuffer.position(0);
    paramByteBuffer.get((byte[])localObject);
    return localObject;
  }
  
  /* Error */
  public static void toFile(@NonNull ByteBuffer paramByteBuffer, @NonNull java.io.File paramFile)
    throws IOException
  {
    // Byte code:
    //   0: aload_0
    //   1: iconst_0
    //   2: invokevirtual 145	java/nio/ByteBuffer:position	(I)Ljava/nio/Buffer;
    //   5: pop
    //   6: new 65	java/io/RandomAccessFile
    //   9: dup
    //   10: aload_1
    //   11: ldc -88
    //   13: invokespecial 70	java/io/RandomAccessFile:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   16: astore_2
    //   17: aload_2
    //   18: invokevirtual 74	java/io/RandomAccessFile:getChannel	()Ljava/nio/channels/FileChannel;
    //   21: astore_1
    //   22: aload_1
    //   23: aload_0
    //   24: invokevirtual 171	java/nio/channels/FileChannel:write	(Ljava/nio/ByteBuffer;)I
    //   27: pop
    //   28: aload_1
    //   29: iconst_0
    //   30: invokevirtual 175	java/nio/channels/FileChannel:force	(Z)V
    //   33: aload_1
    //   34: invokevirtual 95	java/nio/channels/FileChannel:close	()V
    //   37: aload_2
    //   38: invokevirtual 96	java/io/RandomAccessFile:close	()V
    //   41: aload_1
    //   42: ifnull +7 -> 49
    //   45: aload_1
    //   46: invokevirtual 95	java/nio/channels/FileChannel:close	()V
    //   49: aload_2
    //   50: invokevirtual 96	java/io/RandomAccessFile:close	()V
    //   53: return
    //   54: astore_0
    //   55: goto +14 -> 69
    //   58: astore_0
    //   59: aconst_null
    //   60: astore_1
    //   61: goto +8 -> 69
    //   64: astore_0
    //   65: aconst_null
    //   66: astore_1
    //   67: aload_1
    //   68: astore_2
    //   69: aload_1
    //   70: ifnull +7 -> 77
    //   73: aload_1
    //   74: invokevirtual 95	java/nio/channels/FileChannel:close	()V
    //   77: aload_2
    //   78: ifnull +7 -> 85
    //   81: aload_2
    //   82: invokevirtual 96	java/io/RandomAccessFile:close	()V
    //   85: aload_0
    //   86: athrow
    //   87: astore_0
    //   88: goto -39 -> 49
    //   91: astore_0
    //   92: return
    //   93: astore_1
    //   94: goto -17 -> 77
    //   97: astore_1
    //   98: goto -13 -> 85
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	101	0	paramByteBuffer	ByteBuffer
    //   0	101	1	paramFile	java.io.File
    //   16	66	2	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   22	41	54	finally
    //   17	22	58	finally
    //   6	17	64	finally
    //   45	49	87	java/io/IOException
    //   49	53	91	java/io/IOException
    //   73	77	93	java/io/IOException
    //   81	85	97	java/io/IOException
  }
  
  @NonNull
  public static InputStream toStream(@NonNull ByteBuffer paramByteBuffer)
  {
    return new a(paramByteBuffer);
  }
  
  public static void toStream(@NonNull ByteBuffer paramByteBuffer, @NonNull OutputStream paramOutputStream)
    throws IOException
  {
    Object localObject = a(paramByteBuffer);
    if (localObject != null)
    {
      paramOutputStream.write(c, a, a + b);
      return;
    }
    byte[] arrayOfByte = (byte[])a.getAndSet(null);
    localObject = arrayOfByte;
    if (arrayOfByte == null) {
      localObject = new byte['䀀'];
    }
    while (paramByteBuffer.remaining() > 0)
    {
      int i = Math.min(paramByteBuffer.remaining(), localObject.length);
      paramByteBuffer.get((byte[])localObject, 0, i);
      paramOutputStream.write((byte[])localObject, 0, i);
    }
    a.set(localObject);
  }
  
  private static class a
    extends InputStream
  {
    @NonNull
    private final ByteBuffer a;
    private int b = -1;
    
    a(@NonNull ByteBuffer paramByteBuffer)
    {
      a = paramByteBuffer;
    }
    
    public int available()
    {
      return a.remaining();
    }
    
    public void mark(int paramInt)
    {
      try
      {
        b = a.position();
        return;
      }
      finally
      {
        localObject = finally;
        throw localObject;
      }
    }
    
    public boolean markSupported()
    {
      return true;
    }
    
    public int read()
    {
      if (!a.hasRemaining()) {
        return -1;
      }
      return a.get();
    }
    
    public int read(@NonNull byte[] paramArrayOfByte, int paramInt1, int paramInt2)
      throws IOException
    {
      if (!a.hasRemaining()) {
        return -1;
      }
      paramInt2 = Math.min(paramInt2, available());
      a.get(paramArrayOfByte, paramInt1, paramInt2);
      return paramInt2;
    }
    
    public void reset()
      throws IOException
    {
      try
      {
        if (b != -1)
        {
          a.position(b);
          return;
        }
        throw new IOException("Cannot reset to unset mark position");
      }
      finally {}
    }
    
    public long skip(long paramLong)
      throws IOException
    {
      if (!a.hasRemaining()) {
        return -1L;
      }
      paramLong = Math.min(paramLong, available());
      a.position((int)(a.position() + paramLong));
      return paramLong;
    }
  }
  
  static final class b
  {
    final int a;
    final int b;
    final byte[] c;
    
    b(@NonNull byte[] paramArrayOfByte, int paramInt1, int paramInt2)
    {
      c = paramArrayOfByte;
      a = paramInt1;
      b = paramInt2;
    }
  }
}
