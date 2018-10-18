package com.dropbox.core.util;

import java.io.IOException;
import java.io.OutputStream;

public class CountingOutputStream
  extends OutputStream
{
  private final OutputStream a;
  private long b = 0L;
  
  public CountingOutputStream(OutputStream paramOutputStream)
  {
    a = paramOutputStream;
  }
  
  public void close()
    throws IOException
  {
    throw new UnsupportedOperationException("You aren't allowed to call close() on this object.");
  }
  
  public void flush()
    throws IOException
  {
    a.flush();
  }
  
  public long getBytesWritten()
  {
    return b;
  }
  
  public void write(int paramInt)
    throws IOException
  {
    b += 1L;
    a.write(paramInt);
  }
  
  public void write(byte[] paramArrayOfByte)
    throws IOException
  {
    b += paramArrayOfByte.length;
    a.write(paramArrayOfByte);
  }
  
  public void write(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
    throws IOException
  {
    b += paramInt2;
    a.write(paramArrayOfByte, paramInt1, paramInt2);
  }
}
