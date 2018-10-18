package com.bumptech.glide.gifdecoder;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.util.Log;
import java.nio.BufferUnderflowException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Arrays;
import java.util.List;

public class GifHeaderParser
{
  private final byte[] a = new byte['Ā'];
  private ByteBuffer b;
  private GifHeader c;
  private int d = 0;
  
  public GifHeaderParser() {}
  
  private void a()
  {
    b = null;
    Arrays.fill(a, (byte)0);
    c = new GifHeader();
    d = 0;
  }
  
  private void a(int paramInt)
  {
    int i = 0;
    while ((i == 0) && (!m()) && (c.c <= paramInt))
    {
      int j = k();
      if (j != 33)
      {
        if (j != 44)
        {
          if (j != 59) {
            c.b = 1;
          } else {
            i = 1;
          }
        }
        else
        {
          if (c.d == null) {
            c.d = new a();
          }
          d();
        }
      }
      else
      {
        j = k();
        if (j != 1)
        {
          if (j != 249)
          {
            switch (j)
            {
            default: 
              i();
              break;
            case 255: 
              j();
              StringBuilder localStringBuilder = new StringBuilder();
              j = 0;
              while (j < 11)
              {
                localStringBuilder.append((char)a[j]);
                j += 1;
              }
              if (localStringBuilder.toString().equals("NETSCAPE2.0"))
              {
                e();
                continue;
              }
              i();
              break;
            case 254: 
              i();
              break;
            }
          }
          else
          {
            c.d = new a();
            c();
          }
        }
        else {
          i();
        }
      }
    }
  }
  
  private void b()
  {
    a(Integer.MAX_VALUE);
  }
  
  @Nullable
  private int[] b(int paramInt)
  {
    byte[] arrayOfByte = new byte[paramInt * 3];
    try
    {
      b.get(arrayOfByte);
      int[] arrayOfInt2 = new int['Ā'];
      int i = 0;
      int j = 0;
      int[] arrayOfInt1;
      for (;;)
      {
        arrayOfInt1 = arrayOfInt2;
        if (i >= paramInt) {
          break;
        }
        int k = j + 1;
        j = arrayOfByte[j];
        int m = k + 1;
        arrayOfInt2[i] = ((j & 0xFF) << 16 | 0xFF000000 | (arrayOfByte[k] & 0xFF) << 8 | arrayOfByte[m] & 0xFF);
        j = m + 1;
        i += 1;
      }
      return arrayOfInt1;
    }
    catch (BufferUnderflowException localBufferUnderflowException)
    {
      arrayOfInt1 = null;
      if (Log.isLoggable("GifHeaderParser", 3)) {
        Log.d("GifHeaderParser", "Format Error Reading Color Table", localBufferUnderflowException);
      }
      c.b = 1;
    }
  }
  
  private void c()
  {
    k();
    int i = k();
    c.d.g = ((i & 0x1C) >> 2);
    int j = c.d.g;
    boolean bool = true;
    if (j == 0) {
      c.d.g = 1;
    }
    a localA = c.d;
    if ((i & 0x1) == 0) {
      bool = false;
    }
    f = bool;
    j = l();
    i = j;
    if (j < 2) {
      i = 10;
    }
    c.d.i = (i * 10);
    c.d.h = k();
    k();
  }
  
  private void d()
  {
    c.d.a = l();
    c.d.b = l();
    c.d.c = l();
    c.d.d = l();
    int j = k();
    boolean bool = false;
    int i;
    if ((j & 0x80) != 0) {
      i = 1;
    } else {
      i = 0;
    }
    int k = (int)Math.pow(2.0D, (j & 0x7) + 1);
    Object localObject = c.d;
    if ((j & 0x40) != 0) {
      bool = true;
    }
    e = bool;
    if (i != 0) {
      c.d.k = b(k);
    } else {
      c.d.k = null;
    }
    c.d.j = b.position();
    h();
    if (m()) {
      return;
    }
    localObject = c;
    c += 1;
    c.e.add(c.d);
  }
  
  private void e()
  {
    do
    {
      j();
      if (a[0] == 1)
      {
        int i = a[1];
        int j = a[2];
        c.m = (i & 0xFF | (j & 0xFF) << 8);
      }
    } while ((d > 0) && (!m()));
  }
  
  private void f()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    int i = 0;
    while (i < 6)
    {
      localStringBuilder.append((char)k());
      i += 1;
    }
    if (!localStringBuilder.toString().startsWith("GIF"))
    {
      c.b = 1;
      return;
    }
    g();
    if ((c.h) && (!m()))
    {
      c.a = b(c.i);
      c.l = c.a[c.j];
    }
  }
  
  private void g()
  {
    c.f = l();
    c.g = l();
    int i = k();
    GifHeader localGifHeader = c;
    boolean bool;
    if ((i & 0x80) != 0) {
      bool = true;
    } else {
      bool = false;
    }
    h = bool;
    c.i = ((int)Math.pow(2.0D, (i & 0x7) + 1));
    c.j = k();
    c.k = k();
  }
  
  private void h()
  {
    k();
    i();
  }
  
  private void i()
  {
    int i;
    do
    {
      i = k();
      int j = Math.min(b.position() + i, b.limit());
      b.position(j);
    } while (i > 0);
  }
  
  private void j()
  {
    d = k();
    if (d > 0)
    {
      int j = 0;
      int i = 0;
      for (;;)
      {
        int k = i;
        try
        {
          if (j < d)
          {
            k = i;
            i = d - j;
            k = i;
            b.get(a, j, i);
            j += i;
          }
        }
        catch (Exception localException)
        {
          if (Log.isLoggable("GifHeaderParser", 3))
          {
            StringBuilder localStringBuilder = new StringBuilder();
            localStringBuilder.append("Error Reading Block n: ");
            localStringBuilder.append(j);
            localStringBuilder.append(" count: ");
            localStringBuilder.append(k);
            localStringBuilder.append(" blockSize: ");
            localStringBuilder.append(d);
            Log.d("GifHeaderParser", localStringBuilder.toString(), localException);
          }
          c.b = 1;
        }
      }
    }
  }
  
  private int k()
  {
    try
    {
      int i = b.get();
      return i & 0xFF;
    }
    catch (Exception localException)
    {
      for (;;) {}
    }
    c.b = 1;
    return 0;
  }
  
  private int l()
  {
    return b.getShort();
  }
  
  private boolean m()
  {
    return c.b != 0;
  }
  
  public void clear()
  {
    b = null;
    c = null;
  }
  
  public boolean isAnimated()
  {
    f();
    if (!m()) {
      a(2);
    }
    return c.c > 1;
  }
  
  @NonNull
  public GifHeader parseHeader()
  {
    if (b != null)
    {
      if (m()) {
        return c;
      }
      f();
      if (!m())
      {
        b();
        if (c.c < 0) {
          c.b = 1;
        }
      }
      return c;
    }
    throw new IllegalStateException("You must call setData() before parseHeader()");
  }
  
  public GifHeaderParser setData(@NonNull ByteBuffer paramByteBuffer)
  {
    a();
    b = paramByteBuffer.asReadOnlyBuffer();
    b.position(0);
    b.order(ByteOrder.LITTLE_ENDIAN);
    return this;
  }
  
  public GifHeaderParser setData(@Nullable byte[] paramArrayOfByte)
  {
    if (paramArrayOfByte != null)
    {
      setData(ByteBuffer.wrap(paramArrayOfByte));
      return this;
    }
    b = null;
    c.b = 2;
    return this;
  }
}
