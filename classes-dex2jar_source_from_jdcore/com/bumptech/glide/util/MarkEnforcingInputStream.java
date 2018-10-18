package com.bumptech.glide.util;

import android.support.annotation.NonNull;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;

public class MarkEnforcingInputStream
  extends FilterInputStream
{
  private int a = Integer.MIN_VALUE;
  
  public MarkEnforcingInputStream(@NonNull InputStream paramInputStream)
  {
    super(paramInputStream);
  }
  
  private long a(long paramLong)
  {
    if (a == 0) {
      return -1L;
    }
    if ((a != Integer.MIN_VALUE) && (paramLong > a)) {
      return a;
    }
    return paramLong;
  }
  
  private void b(long paramLong)
  {
    if ((a != Integer.MIN_VALUE) && (paramLong != -1L)) {
      a = ((int)(a - paramLong));
    }
  }
  
  public int available()
    throws IOException
  {
    if (a == Integer.MIN_VALUE) {
      return super.available();
    }
    return Math.min(a, super.available());
  }
  
  public void mark(int paramInt)
  {
    try
    {
      super.mark(paramInt);
      a = paramInt;
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  public int read()
    throws IOException
  {
    if (a(1L) == -1L) {
      return -1;
    }
    int i = super.read();
    b(1L);
    return i;
  }
  
  public int read(@NonNull byte[] paramArrayOfByte, int paramInt1, int paramInt2)
    throws IOException
  {
    paramInt2 = (int)a(paramInt2);
    if (paramInt2 == -1) {
      return -1;
    }
    paramInt1 = super.read(paramArrayOfByte, paramInt1, paramInt2);
    b(paramInt1);
    return paramInt1;
  }
  
  public void reset()
    throws IOException
  {
    try
    {
      super.reset();
      a = Integer.MIN_VALUE;
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  public long skip(long paramLong)
    throws IOException
  {
    paramLong = a(paramLong);
    if (paramLong == -1L) {
      return 0L;
    }
    paramLong = super.skip(paramLong);
    b(paramLong);
    return paramLong;
  }
}
