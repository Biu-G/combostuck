package com.bumptech.glide.load.data;

import android.support.annotation.NonNull;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;

public final class ExifOrientationStream
  extends FilterInputStream
{
  private static final byte[] a = { -1, -31, 0, 28, 69, 120, 105, 102, 0, 0, 77, 77, 0, 0, 0, 0, 0, 8, 0, 1, 1, 18, 0, 2, 0, 0, 0, 1, 0 };
  private static final int b = a.length;
  private static final int c = b + 2;
  private final byte d;
  private int e;
  
  public ExifOrientationStream(InputStream paramInputStream, int paramInt)
  {
    super(paramInputStream);
    if ((paramInt >= -1) && (paramInt <= 8))
    {
      d = ((byte)paramInt);
      return;
    }
    paramInputStream = new StringBuilder();
    paramInputStream.append("Cannot add invalid orientation: ");
    paramInputStream.append(paramInt);
    throw new IllegalArgumentException(paramInputStream.toString());
  }
  
  public void mark(int paramInt)
  {
    throw new UnsupportedOperationException();
  }
  
  public boolean markSupported()
  {
    return false;
  }
  
  public int read()
    throws IOException
  {
    int i;
    if ((e >= 2) && (e <= c))
    {
      if (e == c) {
        i = d;
      } else {
        i = a[(e - 2)] & 0xFF;
      }
    }
    else {
      i = super.read();
    }
    if (i != -1) {
      e += 1;
    }
    return i;
  }
  
  public int read(@NonNull byte[] paramArrayOfByte, int paramInt1, int paramInt2)
    throws IOException
  {
    if (e > c)
    {
      paramInt1 = super.read(paramArrayOfByte, paramInt1, paramInt2);
    }
    else if (e == c)
    {
      paramArrayOfByte[paramInt1] = d;
      paramInt1 = 1;
    }
    else if (e < 2)
    {
      paramInt1 = super.read(paramArrayOfByte, paramInt1, 2 - e);
    }
    else
    {
      paramInt2 = Math.min(c - e, paramInt2);
      System.arraycopy(a, e - 2, paramArrayOfByte, paramInt1, paramInt2);
      paramInt1 = paramInt2;
    }
    if (paramInt1 > 0) {
      e += paramInt1;
    }
    return paramInt1;
  }
  
  public void reset()
    throws IOException
  {
    throw new UnsupportedOperationException();
  }
  
  public long skip(long paramLong)
    throws IOException
  {
    paramLong = super.skip(paramLong);
    if (paramLong > 0L) {
      e = ((int)(e + paramLong));
    }
    return paramLong;
  }
}
