package com.bumptech.glide.load.resource.bitmap;

import android.support.annotation.NonNull;
import android.support.annotation.VisibleForTesting;
import com.bumptech.glide.load.engine.bitmap_recycle.ArrayPool;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;

public class RecyclableBufferedInputStream
  extends FilterInputStream
{
  private volatile byte[] a;
  private int b;
  private int c;
  private int d = -1;
  private int e;
  private final ArrayPool f;
  
  public RecyclableBufferedInputStream(@NonNull InputStream paramInputStream, @NonNull ArrayPool paramArrayPool)
  {
    this(paramInputStream, paramArrayPool, 65536);
  }
  
  @VisibleForTesting
  RecyclableBufferedInputStream(@NonNull InputStream paramInputStream, @NonNull ArrayPool paramArrayPool, int paramInt)
  {
    super(paramInputStream);
    f = paramArrayPool;
    a = ((byte[])paramArrayPool.get(paramInt, [B.class));
  }
  
  private int a(InputStream paramInputStream, byte[] paramArrayOfByte)
    throws IOException
  {
    if ((d != -1) && (e - d < c))
    {
      byte[] arrayOfByte;
      if ((d == 0) && (c > paramArrayOfByte.length) && (b == paramArrayOfByte.length))
      {
        j = paramArrayOfByte.length * 2;
        i = j;
        if (j > c) {
          i = c;
        }
        arrayOfByte = (byte[])f.get(i, [B.class);
        System.arraycopy(paramArrayOfByte, 0, arrayOfByte, 0, paramArrayOfByte.length);
        a = arrayOfByte;
        f.put(paramArrayOfByte);
      }
      else
      {
        arrayOfByte = paramArrayOfByte;
        if (d > 0)
        {
          System.arraycopy(paramArrayOfByte, d, paramArrayOfByte, 0, paramArrayOfByte.length - d);
          arrayOfByte = paramArrayOfByte;
        }
      }
      e -= d;
      d = 0;
      b = 0;
      int j = paramInputStream.read(arrayOfByte, e, arrayOfByte.length - e);
      if (j <= 0) {
        i = e;
      } else {
        i = e + j;
      }
      b = i;
      return j;
    }
    int i = paramInputStream.read(paramArrayOfByte);
    if (i > 0)
    {
      d = -1;
      e = 0;
      b = i;
    }
    return i;
  }
  
  private static IOException a()
    throws IOException
  {
    throw new IOException("BufferedInputStream is closed");
  }
  
  public int available()
    throws IOException
  {
    try
    {
      InputStream localInputStream = in;
      if ((a != null) && (localInputStream != null))
      {
        int i = b;
        int j = e;
        int k = localInputStream.available();
        return i - j + k;
      }
      throw a();
    }
    finally {}
  }
  
  public void close()
    throws IOException
  {
    if (a != null)
    {
      f.put(a);
      a = null;
    }
    InputStream localInputStream = in;
    in = null;
    if (localInputStream != null) {
      localInputStream.close();
    }
  }
  
  public void fixMarkLimit()
  {
    try
    {
      c = a.length;
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  public void mark(int paramInt)
  {
    try
    {
      c = Math.max(c, paramInt);
      d = e;
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
    throws IOException
  {
    try
    {
      byte[] arrayOfByte = a;
      Object localObject1 = in;
      if ((arrayOfByte != null) && (localObject1 != null))
      {
        int i;
        if (e >= b)
        {
          i = a((InputStream)localObject1, arrayOfByte);
          if (i == -1) {
            return -1;
          }
        }
        localObject1 = arrayOfByte;
        if (arrayOfByte != a)
        {
          localObject1 = a;
          if (localObject1 == null) {
            throw a();
          }
        }
        if (b - e > 0)
        {
          i = e;
          e = (i + 1);
          i = localObject1[i];
          return i & 0xFF;
        }
        return -1;
      }
      throw a();
    }
    finally {}
  }
  
  public int read(@NonNull byte[] paramArrayOfByte, int paramInt1, int paramInt2)
    throws IOException
  {
    try
    {
      Object localObject1 = a;
      if (localObject1 != null)
      {
        if (paramInt2 == 0) {
          return 0;
        }
        InputStream localInputStream = in;
        if (localInputStream != null)
        {
          int i;
          int j;
          if (e < b)
          {
            if (b - e >= paramInt2) {
              i = paramInt2;
            } else {
              i = b - e;
            }
            System.arraycopy(localObject1, e, paramArrayOfByte, paramInt1, i);
            e += i;
            if (i != paramInt2)
            {
              j = localInputStream.available();
              if (j != 0)
              {
                j = paramInt1 + i;
                paramInt1 = paramInt2 - i;
                i = j;
                break label150;
              }
            }
            return i;
          }
          else
          {
            j = paramInt2;
            i = paramInt1;
            paramInt1 = j;
          }
          for (;;)
          {
            label150:
            int k = d;
            j = -1;
            if ((k == -1) && (paramInt1 >= localObject1.length))
            {
              int m = localInputStream.read(paramArrayOfByte, i, paramInt1);
              k = m;
              if (m == -1)
              {
                if (paramInt1 != paramInt2) {
                  j = paramInt2 - paramInt1;
                }
                return j;
              }
            }
            else
            {
              k = a(localInputStream, (byte[])localObject1);
              if (k == -1)
              {
                if (paramInt1 != paramInt2) {
                  j = paramInt2 - paramInt1;
                }
                return j;
              }
              Object localObject2 = localObject1;
              if (localObject1 != a)
              {
                localObject2 = a;
                if (localObject2 == null) {
                  throw a();
                }
              }
              if (b - e >= paramInt1) {
                j = paramInt1;
              } else {
                j = b - e;
              }
              System.arraycopy(localObject2, e, paramArrayOfByte, i, j);
              e += j;
              k = j;
              localObject1 = localObject2;
            }
            paramInt1 -= k;
            if (paramInt1 == 0) {
              return paramInt2;
            }
            j = localInputStream.available();
            if (j == 0) {
              return paramInt2 - paramInt1;
            }
            i += k;
          }
        }
        throw a();
      }
      throw a();
    }
    finally {}
  }
  
  public void release()
  {
    try
    {
      if (a != null)
      {
        f.put(a);
        a = null;
      }
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  public void reset()
    throws IOException
  {
    try
    {
      if (a != null)
      {
        if (-1 != d)
        {
          e = d;
          return;
        }
        StringBuilder localStringBuilder = new StringBuilder();
        localStringBuilder.append("Mark has been invalidated, pos: ");
        localStringBuilder.append(e);
        localStringBuilder.append(" markLimit: ");
        localStringBuilder.append(c);
        throw new a(localStringBuilder.toString());
      }
      throw new IOException("Stream is closed");
    }
    finally {}
  }
  
  public long skip(long paramLong)
    throws IOException
  {
    if (paramLong < 1L) {
      return 0L;
    }
    try
    {
      byte[] arrayOfByte = a;
      if (arrayOfByte != null)
      {
        InputStream localInputStream = in;
        if (localInputStream != null)
        {
          if (b - e >= paramLong)
          {
            e = ((int)(e + paramLong));
            return paramLong;
          }
          long l1 = b - e;
          e = b;
          if ((d != -1) && (paramLong <= c))
          {
            int i = a(localInputStream, arrayOfByte);
            if (i == -1) {
              return l1;
            }
            if (b - e >= paramLong - l1)
            {
              e = ((int)(e + paramLong - l1));
              return paramLong;
            }
            paramLong = b;
            long l2 = e;
            e = b;
            return l1 + paramLong - l2;
          }
          paramLong = localInputStream.skip(paramLong - l1);
          return l1 + paramLong;
        }
        throw a();
      }
      throw a();
    }
    finally {}
  }
  
  static class a
    extends IOException
  {
    private static final long serialVersionUID = -4338378848813561757L;
    
    a(String paramString)
    {
      super();
    }
  }
}
