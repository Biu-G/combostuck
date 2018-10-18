package com.bumptech.glide.load.data;

import android.support.annotation.NonNull;
import android.support.annotation.VisibleForTesting;
import com.bumptech.glide.load.engine.bitmap_recycle.ArrayPool;
import java.io.IOException;
import java.io.OutputStream;

public final class BufferedOutputStream
  extends OutputStream
{
  @NonNull
  private final OutputStream a;
  private byte[] b;
  private ArrayPool c;
  private int d;
  
  public BufferedOutputStream(@NonNull OutputStream paramOutputStream, @NonNull ArrayPool paramArrayPool)
  {
    this(paramOutputStream, paramArrayPool, 65536);
  }
  
  @VisibleForTesting
  BufferedOutputStream(@NonNull OutputStream paramOutputStream, ArrayPool paramArrayPool, int paramInt)
  {
    a = paramOutputStream;
    c = paramArrayPool;
    b = ((byte[])paramArrayPool.get(paramInt, [B.class));
  }
  
  private void a()
    throws IOException
  {
    if (d > 0)
    {
      a.write(b, 0, d);
      d = 0;
    }
  }
  
  private void b()
    throws IOException
  {
    if (d == b.length) {
      a();
    }
  }
  
  private void c()
  {
    if (b != null)
    {
      c.put(b);
      b = null;
    }
  }
  
  public void close()
    throws IOException
  {
    try
    {
      flush();
      a.close();
      c();
      return;
    }
    finally
    {
      a.close();
    }
  }
  
  public void flush()
    throws IOException
  {
    a();
    a.flush();
  }
  
  public void write(int paramInt)
    throws IOException
  {
    byte[] arrayOfByte = b;
    int i = d;
    d = (i + 1);
    arrayOfByte[i] = ((byte)paramInt);
    b();
  }
  
  public void write(@NonNull byte[] paramArrayOfByte)
    throws IOException
  {
    write(paramArrayOfByte, 0, paramArrayOfByte.length);
  }
  
  public void write(@NonNull byte[] paramArrayOfByte, int paramInt1, int paramInt2)
    throws IOException
  {
    int i = 0;
    int j;
    do
    {
      int k = paramInt2 - i;
      j = paramInt1 + i;
      if ((d == 0) && (k >= b.length))
      {
        a.write(paramArrayOfByte, j, k);
        return;
      }
      k = Math.min(k, b.length - d);
      System.arraycopy(paramArrayOfByte, j, b, d, k);
      d += k;
      j = i + k;
      b();
      i = j;
    } while (j < paramInt2);
  }
}
