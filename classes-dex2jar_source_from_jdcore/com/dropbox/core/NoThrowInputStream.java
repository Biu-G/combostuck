package com.dropbox.core;

import java.io.IOException;
import java.io.InputStream;

public final class NoThrowInputStream
  extends InputStream
{
  private final InputStream a;
  private long b = 0L;
  
  public NoThrowInputStream(InputStream paramInputStream)
  {
    a = paramInputStream;
  }
  
  public void close()
  {
    throw new UnsupportedOperationException("don't call close()");
  }
  
  public long getBytesRead()
  {
    return b;
  }
  
  public int read()
  {
    try
    {
      b += 1L;
      int i = a.read();
      return i;
    }
    catch (IOException localIOException)
    {
      throw new HiddenException(localIOException);
    }
  }
  
  public int read(byte[] paramArrayOfByte)
  {
    try
    {
      int i = a.read(paramArrayOfByte);
      b += i;
      return i;
    }
    catch (IOException paramArrayOfByte)
    {
      throw new HiddenException(paramArrayOfByte);
    }
  }
  
  public int read(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    try
    {
      paramInt1 = a.read(paramArrayOfByte, paramInt1, paramInt2);
      b += paramInt1;
      return paramInt1;
    }
    catch (IOException paramArrayOfByte)
    {
      throw new HiddenException(paramArrayOfByte);
    }
  }
  
  public static final class HiddenException
    extends RuntimeException
  {
    private static final long serialVersionUID = 0L;
    
    public HiddenException(IOException paramIOException)
    {
      super();
    }
    
    public IOException getCause()
    {
      return (IOException)super.getCause();
    }
  }
}
