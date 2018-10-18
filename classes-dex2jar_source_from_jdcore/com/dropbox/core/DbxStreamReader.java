package com.dropbox.core;

import com.dropbox.core.util.IOUtil;
import java.io.IOException;
import java.io.OutputStream;

public abstract class DbxStreamReader<E extends Throwable>
{
  public DbxStreamReader() {}
  
  public abstract void read(NoThrowInputStream paramNoThrowInputStream)
    throws Throwable;
  
  public static final class ByteArrayCopier
    extends DbxStreamReader<RuntimeException>
  {
    private final byte[] a;
    private final int b;
    private final int c;
    
    public ByteArrayCopier(byte[] paramArrayOfByte)
    {
      this(paramArrayOfByte, 0, paramArrayOfByte.length);
    }
    
    public ByteArrayCopier(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
    {
      if (paramArrayOfByte != null)
      {
        if ((paramInt1 >= 0) && (paramInt1 < paramArrayOfByte.length))
        {
          int i = paramInt1 + paramInt2;
          if ((i >= paramInt1) && (i <= paramArrayOfByte.length))
          {
            a = paramArrayOfByte;
            b = paramInt1;
            c = paramInt2;
            return;
          }
          throw new IllegalArgumentException("'offset+length' is out of bounds");
        }
        throw new IllegalArgumentException("'offset' is out of bounds");
      }
      throw new IllegalArgumentException("'data' can't be null");
    }
    
    public void read(NoThrowInputStream paramNoThrowInputStream)
    {
      paramNoThrowInputStream.read(a, b, c);
    }
  }
  
  public static final class OutputStreamCopier
    extends DbxStreamReader<IOException>
  {
    private final OutputStream a;
    
    public OutputStreamCopier(OutputStream paramOutputStream)
    {
      a = paramOutputStream;
    }
    
    public void read(NoThrowInputStream paramNoThrowInputStream)
      throws IOException
    {
      IOUtil.copyStreamToStream(paramNoThrowInputStream, a);
    }
  }
}
