package com.dropbox.core;

import java.io.IOException;
import java.io.OutputStream;

public final class NoThrowOutputStream
  extends OutputStream
{
  private final OutputStream a;
  private long b = 0L;
  
  public NoThrowOutputStream(OutputStream paramOutputStream)
  {
    a = paramOutputStream;
  }
  
  public void close()
  {
    throw new UnsupportedOperationException("don't call close()");
  }
  
  public void flush()
  {
    try
    {
      a.flush();
      return;
    }
    catch (IOException localIOException)
    {
      throw new HiddenException(this, localIOException);
    }
  }
  
  public long getBytesWritten()
  {
    return b;
  }
  
  public void write(int paramInt)
  {
    try
    {
      b += 1L;
      a.write(paramInt);
      return;
    }
    catch (IOException localIOException)
    {
      throw new HiddenException(this, localIOException);
    }
  }
  
  public void write(byte[] paramArrayOfByte)
  {
    try
    {
      b += paramArrayOfByte.length;
      a.write(paramArrayOfByte);
      return;
    }
    catch (IOException paramArrayOfByte)
    {
      throw new HiddenException(this, paramArrayOfByte);
    }
  }
  
  public void write(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    try
    {
      b += paramInt2;
      a.write(paramArrayOfByte, paramInt1, paramInt2);
      return;
    }
    catch (IOException paramArrayOfByte)
    {
      throw new HiddenException(this, paramArrayOfByte);
    }
  }
  
  public static final class HiddenException
    extends RuntimeException
  {
    public static final long serialVersionUID = 0L;
    public final NoThrowOutputStream owner;
    
    public HiddenException(NoThrowOutputStream paramNoThrowOutputStream, IOException paramIOException)
    {
      super();
      owner = paramNoThrowOutputStream;
    }
    
    public IOException getCause()
    {
      return (IOException)super.getCause();
    }
  }
}
