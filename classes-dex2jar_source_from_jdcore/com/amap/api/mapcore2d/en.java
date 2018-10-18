package com.amap.api.mapcore2d;

import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.nio.charset.Charset;

public class en
  implements Closeable
{
  private final InputStream a;
  private final Charset b;
  private byte[] c;
  private int d;
  private int e;
  
  public en(InputStream paramInputStream, int paramInt, Charset paramCharset)
  {
    if ((paramInputStream != null) && (paramCharset != null))
    {
      if (paramInt >= 0)
      {
        if (paramCharset.equals(eo.a))
        {
          a = paramInputStream;
          b = paramCharset;
          c = new byte[paramInt];
          return;
        }
        throw new IllegalArgumentException("Unsupported encoding");
      }
      throw new IllegalArgumentException("capacity <= 0");
    }
    throw new NullPointerException();
  }
  
  public en(InputStream paramInputStream, Charset paramCharset)
  {
    this(paramInputStream, 8192, paramCharset);
  }
  
  private void b()
    throws IOException
  {
    int i = a.read(c, 0, c.length);
    if (i != -1)
    {
      d = 0;
      e = i;
      return;
    }
    throw new EOFException();
  }
  
  public String a()
    throws IOException
  {
    for (;;)
    {
      int i;
      synchronized (a)
      {
        if (c != null)
        {
          if (d >= e) {
            b();
          }
          i = d;
          Object localObject1;
          if (i != e)
          {
            if (c[i] != 10) {
              break label270;
            }
            if (i != d)
            {
              localObject1 = c;
              j = i - 1;
              if (localObject1[j] == 13)
              {
                localObject1 = new String(c, d, j - d, b.name());
                d = (i + 1);
                return localObject1;
              }
            }
          }
          else
          {
            localObject1 = new ByteArrayOutputStream(e - d + 80)
            {
              public String toString()
              {
                int i;
                if ((count > 0) && (buf[(count - 1)] == 13)) {
                  i = count - 1;
                } else {
                  i = count;
                }
                try
                {
                  String str = new String(buf, 0, i, en.a(en.this).name());
                  return str;
                }
                catch (UnsupportedEncodingException localUnsupportedEncodingException)
                {
                  throw new AssertionError(localUnsupportedEncodingException);
                }
              }
            };
            ((ByteArrayOutputStream)localObject1).write(c, d, e - d);
            e = -1;
            b();
            i = d;
            if (i == e) {
              continue;
            }
            if (c[i] != 10) {
              break label277;
            }
            if (i != d) {
              ((ByteArrayOutputStream)localObject1).write(c, d, i - d);
            }
            d = (i + 1);
            localObject1 = ((ByteArrayOutputStream)localObject1).toString();
            return localObject1;
          }
        }
        else
        {
          throw new IOException("LineReader is closed");
        }
      }
      int j = i;
      continue;
      label270:
      i += 1;
      continue;
      label277:
      i += 1;
    }
  }
  
  public void close()
    throws IOException
  {
    synchronized (a)
    {
      if (c != null)
      {
        c = null;
        a.close();
      }
      return;
    }
  }
}
