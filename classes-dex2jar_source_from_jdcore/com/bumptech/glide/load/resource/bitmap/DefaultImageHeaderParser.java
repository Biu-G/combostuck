package com.bumptech.glide.load.resource.bitmap;

import android.support.annotation.NonNull;
import android.util.Log;
import com.bumptech.glide.load.ImageHeaderParser;
import com.bumptech.glide.load.ImageHeaderParser.ImageType;
import com.bumptech.glide.load.engine.bitmap_recycle.ArrayPool;
import com.bumptech.glide.util.Preconditions;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.charset.Charset;

public final class DefaultImageHeaderParser
  implements ImageHeaderParser
{
  static final byte[] a = "Exif\000\000".getBytes(Charset.forName("UTF-8"));
  private static final int[] b = { 0, 1, 1, 2, 4, 8, 1, 1, 2, 4, 8, 4, 8 };
  
  public DefaultImageHeaderParser() {}
  
  private static int a(int paramInt1, int paramInt2)
  {
    return paramInt1 + 2 + paramInt2 * 12;
  }
  
  private static int a(b paramB)
  {
    int i = "Exif\000\000".length();
    int j = paramB.b(i);
    Object localObject;
    if (j != 18761)
    {
      if (j != 19789)
      {
        if (Log.isLoggable("DfltImageHeaderParser", 3))
        {
          localObject = new StringBuilder();
          ((StringBuilder)localObject).append("Unknown endianness = ");
          ((StringBuilder)localObject).append(j);
          Log.d("DfltImageHeaderParser", ((StringBuilder)localObject).toString());
        }
        localObject = ByteOrder.BIG_ENDIAN;
      }
      else
      {
        localObject = ByteOrder.BIG_ENDIAN;
      }
    }
    else {
      localObject = ByteOrder.LITTLE_ENDIAN;
    }
    paramB.a((ByteOrder)localObject);
    j = paramB.a(i + 4) + i;
    int k = paramB.b(j);
    i = 0;
    while (i < k)
    {
      int n = a(j, i);
      int m = paramB.b(n);
      if (m == 274)
      {
        int i1 = paramB.b(n + 2);
        if ((i1 >= 1) && (i1 <= 12))
        {
          int i2 = paramB.a(n + 4);
          if (i2 < 0)
          {
            if (Log.isLoggable("DfltImageHeaderParser", 3)) {
              Log.d("DfltImageHeaderParser", "Negative tiff component count");
            }
          }
          else
          {
            if (Log.isLoggable("DfltImageHeaderParser", 3))
            {
              localObject = new StringBuilder();
              ((StringBuilder)localObject).append("Got tagIndex=");
              ((StringBuilder)localObject).append(i);
              ((StringBuilder)localObject).append(" tagType=");
              ((StringBuilder)localObject).append(m);
              ((StringBuilder)localObject).append(" formatCode=");
              ((StringBuilder)localObject).append(i1);
              ((StringBuilder)localObject).append(" componentCount=");
              ((StringBuilder)localObject).append(i2);
              Log.d("DfltImageHeaderParser", ((StringBuilder)localObject).toString());
            }
            i2 += b[i1];
            if (i2 > 4)
            {
              if (Log.isLoggable("DfltImageHeaderParser", 3))
              {
                localObject = new StringBuilder();
                ((StringBuilder)localObject).append("Got byte count > 4, not orientation, continuing, formatCode=");
                ((StringBuilder)localObject).append(i1);
                Log.d("DfltImageHeaderParser", ((StringBuilder)localObject).toString());
              }
            }
            else
            {
              n += 8;
              if ((n >= 0) && (n <= paramB.a()))
              {
                if ((i2 >= 0) && (i2 + n <= paramB.a())) {
                  return paramB.b(n);
                }
                if (Log.isLoggable("DfltImageHeaderParser", 3))
                {
                  localObject = new StringBuilder();
                  ((StringBuilder)localObject).append("Illegal number of bytes for TI tag data tagType=");
                  ((StringBuilder)localObject).append(m);
                  Log.d("DfltImageHeaderParser", ((StringBuilder)localObject).toString());
                }
              }
              else if (Log.isLoggable("DfltImageHeaderParser", 3))
              {
                localObject = new StringBuilder();
                ((StringBuilder)localObject).append("Illegal tagValueOffset=");
                ((StringBuilder)localObject).append(n);
                ((StringBuilder)localObject).append(" tagType=");
                ((StringBuilder)localObject).append(m);
                Log.d("DfltImageHeaderParser", ((StringBuilder)localObject).toString());
              }
            }
          }
        }
        else if (Log.isLoggable("DfltImageHeaderParser", 3))
        {
          localObject = new StringBuilder();
          ((StringBuilder)localObject).append("Got invalid format code = ");
          ((StringBuilder)localObject).append(i1);
          Log.d("DfltImageHeaderParser", ((StringBuilder)localObject).toString());
        }
      }
      i += 1;
    }
    return -1;
  }
  
  private int a(c paramC, ArrayPool paramArrayPool)
    throws IOException
  {
    int i = paramC.a();
    if (!a(i))
    {
      if (Log.isLoggable("DfltImageHeaderParser", 3))
      {
        paramC = new StringBuilder();
        paramC.append("Parser doesn't handle magic number: ");
        paramC.append(i);
        Log.d("DfltImageHeaderParser", paramC.toString());
      }
      return -1;
    }
    i = b(paramC);
    if (i == -1)
    {
      if (Log.isLoggable("DfltImageHeaderParser", 3)) {
        Log.d("DfltImageHeaderParser", "Failed to parse exif segment length, or exif segment not found");
      }
      return -1;
    }
    byte[] arrayOfByte = (byte[])paramArrayPool.get(i, [B.class);
    try
    {
      i = a(paramC, arrayOfByte, i);
      return i;
    }
    finally
    {
      paramArrayPool.put(arrayOfByte);
    }
  }
  
  private int a(c paramC, byte[] paramArrayOfByte, int paramInt)
    throws IOException
  {
    int i = paramC.a(paramArrayOfByte, paramInt);
    if (i != paramInt)
    {
      if (Log.isLoggable("DfltImageHeaderParser", 3))
      {
        paramC = new StringBuilder();
        paramC.append("Unable to read exif segment data, length: ");
        paramC.append(paramInt);
        paramC.append(", actually read: ");
        paramC.append(i);
        Log.d("DfltImageHeaderParser", paramC.toString());
      }
      return -1;
    }
    if (a(paramArrayOfByte, paramInt)) {
      return a(new b(paramArrayOfByte, paramInt));
    }
    if (Log.isLoggable("DfltImageHeaderParser", 3)) {
      Log.d("DfltImageHeaderParser", "Missing jpeg exif preamble");
    }
    return -1;
  }
  
  @NonNull
  private ImageHeaderParser.ImageType a(c paramC)
    throws IOException
  {
    int i = paramC.a();
    if (i == 65496) {
      return ImageHeaderParser.ImageType.JPEG;
    }
    i = i << 16 & 0xFFFF0000 | paramC.a() & 0xFFFF;
    if (i == -1991225785)
    {
      paramC.a(21L);
      if (paramC.c() >= 3) {
        return ImageHeaderParser.ImageType.PNG_A;
      }
      return ImageHeaderParser.ImageType.PNG;
    }
    if (i >> 8 == 4671814) {
      return ImageHeaderParser.ImageType.GIF;
    }
    if (i != 1380533830) {
      return ImageHeaderParser.ImageType.UNKNOWN;
    }
    paramC.a(4L);
    if ((paramC.a() << 16 & 0xFFFF0000 | paramC.a() & 0xFFFF) != 1464156752) {
      return ImageHeaderParser.ImageType.UNKNOWN;
    }
    i = paramC.a() << 16 & 0xFFFF0000 | paramC.a() & 0xFFFF;
    if ((i & 0xFF00) != 1448097792) {
      return ImageHeaderParser.ImageType.UNKNOWN;
    }
    i &= 0xFF;
    if (i == 88)
    {
      paramC.a(4L);
      if ((paramC.c() & 0x10) != 0) {
        return ImageHeaderParser.ImageType.WEBP_A;
      }
      return ImageHeaderParser.ImageType.WEBP;
    }
    if (i == 76)
    {
      paramC.a(4L);
      if ((paramC.c() & 0x8) != 0) {
        return ImageHeaderParser.ImageType.WEBP_A;
      }
      return ImageHeaderParser.ImageType.WEBP;
    }
    return ImageHeaderParser.ImageType.WEBP;
  }
  
  private static boolean a(int paramInt)
  {
    return ((paramInt & 0xFFD8) == 65496) || (paramInt == 19789) || (paramInt == 18761);
  }
  
  private boolean a(byte[] paramArrayOfByte, int paramInt)
  {
    boolean bool;
    if ((paramArrayOfByte != null) && (paramInt > a.length)) {
      bool = true;
    } else {
      bool = false;
    }
    if (bool)
    {
      paramInt = 0;
      while (paramInt < a.length)
      {
        if (paramArrayOfByte[paramInt] != a[paramInt]) {
          return false;
        }
        paramInt += 1;
      }
    }
    return bool;
  }
  
  private int b(c paramC)
    throws IOException
  {
    int i;
    int j;
    long l1;
    long l2;
    do
    {
      i = paramC.b();
      if (i != 255)
      {
        if (Log.isLoggable("DfltImageHeaderParser", 3))
        {
          paramC = new StringBuilder();
          paramC.append("Unknown segmentId=");
          paramC.append(i);
          Log.d("DfltImageHeaderParser", paramC.toString());
        }
        return -1;
      }
      i = paramC.b();
      if (i == 218) {
        return -1;
      }
      if (i == 217)
      {
        if (Log.isLoggable("DfltImageHeaderParser", 3)) {
          Log.d("DfltImageHeaderParser", "Found MARKER_EOI in exif segment");
        }
        return -1;
      }
      j = paramC.a() - 2;
      if (i == 225) {
        break;
      }
      l1 = j;
      l2 = paramC.a(l1);
    } while (l2 == l1);
    if (Log.isLoggable("DfltImageHeaderParser", 3))
    {
      paramC = new StringBuilder();
      paramC.append("Unable to skip enough data, type: ");
      paramC.append(i);
      paramC.append(", wanted to skip: ");
      paramC.append(j);
      paramC.append(", but actually skipped: ");
      paramC.append(l2);
      Log.d("DfltImageHeaderParser", paramC.toString());
    }
    return -1;
    return j;
  }
  
  public int getOrientation(@NonNull InputStream paramInputStream, @NonNull ArrayPool paramArrayPool)
    throws IOException
  {
    return a(new d((InputStream)Preconditions.checkNotNull(paramInputStream)), (ArrayPool)Preconditions.checkNotNull(paramArrayPool));
  }
  
  public int getOrientation(@NonNull ByteBuffer paramByteBuffer, @NonNull ArrayPool paramArrayPool)
    throws IOException
  {
    return a(new a((ByteBuffer)Preconditions.checkNotNull(paramByteBuffer)), (ArrayPool)Preconditions.checkNotNull(paramArrayPool));
  }
  
  @NonNull
  public ImageHeaderParser.ImageType getType(@NonNull InputStream paramInputStream)
    throws IOException
  {
    return a(new d((InputStream)Preconditions.checkNotNull(paramInputStream)));
  }
  
  @NonNull
  public ImageHeaderParser.ImageType getType(@NonNull ByteBuffer paramByteBuffer)
    throws IOException
  {
    return a(new a((ByteBuffer)Preconditions.checkNotNull(paramByteBuffer)));
  }
  
  private static final class a
    implements DefaultImageHeaderParser.c
  {
    private final ByteBuffer a;
    
    a(ByteBuffer paramByteBuffer)
    {
      a = paramByteBuffer;
      paramByteBuffer.order(ByteOrder.BIG_ENDIAN);
    }
    
    public int a()
    {
      return c() << 8 & 0xFF00 | c() & 0xFF;
    }
    
    public int a(byte[] paramArrayOfByte, int paramInt)
    {
      paramInt = Math.min(paramInt, a.remaining());
      if (paramInt == 0) {
        return -1;
      }
      a.get(paramArrayOfByte, 0, paramInt);
      return paramInt;
    }
    
    public long a(long paramLong)
    {
      int i = (int)Math.min(a.remaining(), paramLong);
      a.position(a.position() + i);
      return i;
    }
    
    public short b()
    {
      return (short)(c() & 0xFF);
    }
    
    public int c()
    {
      if (a.remaining() < 1) {
        return -1;
      }
      return a.get();
    }
  }
  
  private static final class b
  {
    private final ByteBuffer a;
    
    b(byte[] paramArrayOfByte, int paramInt)
    {
      a = ((ByteBuffer)ByteBuffer.wrap(paramArrayOfByte).order(ByteOrder.BIG_ENDIAN).limit(paramInt));
    }
    
    private boolean a(int paramInt1, int paramInt2)
    {
      return a.remaining() - paramInt1 >= paramInt2;
    }
    
    int a()
    {
      return a.remaining();
    }
    
    int a(int paramInt)
    {
      if (a(paramInt, 4)) {
        return a.getInt(paramInt);
      }
      return -1;
    }
    
    void a(ByteOrder paramByteOrder)
    {
      a.order(paramByteOrder);
    }
    
    short b(int paramInt)
    {
      if (a(paramInt, 2)) {
        return a.getShort(paramInt);
      }
      return -1;
    }
  }
  
  private static abstract interface c
  {
    public abstract int a()
      throws IOException;
    
    public abstract int a(byte[] paramArrayOfByte, int paramInt)
      throws IOException;
    
    public abstract long a(long paramLong)
      throws IOException;
    
    public abstract short b()
      throws IOException;
    
    public abstract int c()
      throws IOException;
  }
  
  private static final class d
    implements DefaultImageHeaderParser.c
  {
    private final InputStream a;
    
    d(InputStream paramInputStream)
    {
      a = paramInputStream;
    }
    
    public int a()
      throws IOException
    {
      return a.read() << 8 & 0xFF00 | a.read() & 0xFF;
    }
    
    public int a(byte[] paramArrayOfByte, int paramInt)
      throws IOException
    {
      int i = paramInt;
      while (i > 0)
      {
        int j = a.read(paramArrayOfByte, paramInt - i, i);
        if (j == -1) {
          break;
        }
        i -= j;
      }
      return paramInt - i;
    }
    
    public long a(long paramLong)
      throws IOException
    {
      if (paramLong < 0L) {
        return 0L;
      }
      long l1 = paramLong;
      while (l1 > 0L)
      {
        long l2 = a.skip(l1);
        if (l2 > 0L)
        {
          l1 -= l2;
        }
        else
        {
          if (a.read() == -1) {
            break;
          }
          l1 -= 1L;
        }
      }
      return paramLong - l1;
    }
    
    public short b()
      throws IOException
    {
      return (short)(a.read() & 0xFF);
    }
    
    public int c()
      throws IOException
    {
      return a.read();
    }
  }
}
