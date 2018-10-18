package com.bumptech.glide.util;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import java.io.IOException;
import java.io.InputStream;
import java.util.Queue;

public class ExceptionCatchingInputStream
  extends InputStream
{
  private static final Queue<ExceptionCatchingInputStream> a = Util.createQueue(0);
  private InputStream b;
  private IOException c;
  
  ExceptionCatchingInputStream() {}
  
  @NonNull
  public static ExceptionCatchingInputStream obtain(@NonNull InputStream paramInputStream)
  {
    synchronized (a)
    {
      ExceptionCatchingInputStream localExceptionCatchingInputStream = (ExceptionCatchingInputStream)a.poll();
      ??? = localExceptionCatchingInputStream;
      if (localExceptionCatchingInputStream == null) {
        ??? = new ExceptionCatchingInputStream();
      }
      ((ExceptionCatchingInputStream)???).a(paramInputStream);
      return ???;
    }
  }
  
  void a(@NonNull InputStream paramInputStream)
  {
    b = paramInputStream;
  }
  
  public int available()
    throws IOException
  {
    return b.available();
  }
  
  public void close()
    throws IOException
  {
    b.close();
  }
  
  @Nullable
  public IOException getException()
  {
    return c;
  }
  
  public void mark(int paramInt)
  {
    b.mark(paramInt);
  }
  
  public boolean markSupported()
  {
    return b.markSupported();
  }
  
  public int read()
  {
    try
    {
      int i = b.read();
      return i;
    }
    catch (IOException localIOException)
    {
      c = localIOException;
    }
    return -1;
  }
  
  public int read(byte[] paramArrayOfByte)
  {
    try
    {
      int i = b.read(paramArrayOfByte);
      return i;
    }
    catch (IOException paramArrayOfByte)
    {
      c = paramArrayOfByte;
    }
    return -1;
  }
  
  public int read(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    try
    {
      paramInt1 = b.read(paramArrayOfByte, paramInt1, paramInt2);
      return paramInt1;
    }
    catch (IOException paramArrayOfByte)
    {
      c = paramArrayOfByte;
    }
    return -1;
  }
  
  public void release()
  {
    c = null;
    b = null;
    synchronized (a)
    {
      a.offer(this);
      return;
    }
  }
  
  public void reset()
    throws IOException
  {
    try
    {
      b.reset();
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  public long skip(long paramLong)
  {
    try
    {
      paramLong = b.skip(paramLong);
      return paramLong;
    }
    catch (IOException localIOException)
    {
      c = localIOException;
    }
    return 0L;
  }
}
