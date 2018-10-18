package com.dropbox.core;

import com.dropbox.core.util.IOUtil;
import java.io.IOException;
import java.io.InputStream;

public abstract class DbxStreamWriter<E extends Throwable>
{
  public DbxStreamWriter() {}
  
  public abstract void write(NoThrowOutputStream paramNoThrowOutputStream)
    throws Throwable;
  
  public static final class ByteArrayCopier
    extends DbxStreamWriter<RuntimeException>
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
    
    public void write(NoThrowOutputStream paramNoThrowOutputStream)
    {
      paramNoThrowOutputStream.write(a, b, c);
    }
  }
  
  public static final class InputStreamCopier
    extends DbxStreamWriter<IOException>
  {
    private final InputStream a;
    
    public InputStreamCopier(InputStream paramInputStream)
    {
      a = paramInputStream;
    }
    
    public void write(NoThrowOutputStream paramNoThrowOutputStream)
      throws IOException
    {
      IOUtil.copyStreamToStream(a, paramNoThrowOutputStream);
    }
  }
}
