package com.bumptech.glide.gifdecoder;

import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.support.annotation.ColorInt;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.util.Log;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

public class StandardGifDecoder
  implements GifDecoder
{
  private static final String a = "StandardGifDecoder";
  @ColorInt
  private int[] b;
  @ColorInt
  private final int[] c = new int['Ā'];
  private final GifDecoder.BitmapProvider d;
  private ByteBuffer e;
  private byte[] f;
  private GifHeaderParser g;
  private short[] h;
  private byte[] i;
  private byte[] j;
  private byte[] k;
  @ColorInt
  private int[] l;
  private int m;
  private GifHeader n;
  private Bitmap o;
  private boolean p;
  private int q;
  private int r;
  private int s;
  private int t;
  @Nullable
  private Boolean u;
  @NonNull
  private Bitmap.Config v = Bitmap.Config.ARGB_8888;
  
  public StandardGifDecoder(@NonNull GifDecoder.BitmapProvider paramBitmapProvider)
  {
    d = paramBitmapProvider;
    n = new GifHeader();
  }
  
  public StandardGifDecoder(@NonNull GifDecoder.BitmapProvider paramBitmapProvider, GifHeader paramGifHeader, ByteBuffer paramByteBuffer)
  {
    this(paramBitmapProvider, paramGifHeader, paramByteBuffer, 1);
  }
  
  public StandardGifDecoder(@NonNull GifDecoder.BitmapProvider paramBitmapProvider, GifHeader paramGifHeader, ByteBuffer paramByteBuffer, int paramInt)
  {
    this(paramBitmapProvider);
    setData(paramGifHeader, paramByteBuffer, paramInt);
  }
  
  @ColorInt
  private int a(int paramInt1, int paramInt2, int paramInt3)
  {
    int i6 = paramInt1;
    int i5 = 0;
    int i4 = 0;
    int i3 = 0;
    int i2 = 0;
    int i11;
    int i9;
    int i8;
    for (int i1 = 0; (i6 < r + paramInt1) && (i6 < k.length) && (i6 < paramInt2); i1 = i7)
    {
      i7 = k[i6];
      int i12 = b[(i7 & 0xFF)];
      i11 = i5;
      i10 = i4;
      i9 = i3;
      i8 = i2;
      i7 = i1;
      if (i12 != 0)
      {
        i11 = i5 + (i12 >> 24 & 0xFF);
        i10 = i4 + (i12 >> 16 & 0xFF);
        i9 = i3 + (i12 >> 8 & 0xFF);
        i8 = i2 + (i12 & 0xFF);
        i7 = i1 + 1;
      }
      i6 += 1;
      i5 = i11;
      i4 = i10;
      i3 = i9;
      i2 = i8;
    }
    int i10 = paramInt1 + paramInt3;
    paramInt1 = i10;
    int i7 = i5;
    while ((paramInt1 < r + i10) && (paramInt1 < k.length) && (paramInt1 < paramInt2))
    {
      paramInt3 = k[paramInt1];
      i11 = b[(paramInt3 & 0xFF)];
      i9 = i7;
      i8 = i4;
      i6 = i3;
      i5 = i2;
      paramInt3 = i1;
      if (i11 != 0)
      {
        i9 = i7 + (i11 >> 24 & 0xFF);
        i8 = i4 + (i11 >> 16 & 0xFF);
        i6 = i3 + (i11 >> 8 & 0xFF);
        i5 = i2 + (i11 & 0xFF);
        paramInt3 = i1 + 1;
      }
      paramInt1 += 1;
      i7 = i9;
      i4 = i8;
      i3 = i6;
      i2 = i5;
      i1 = paramInt3;
    }
    if (i1 == 0) {
      return 0;
    }
    return i7 / i1 << 24 | i4 / i1 << 16 | i3 / i1 << 8 | i2 / i1;
  }
  
  private Bitmap a(a paramA1, a paramA2)
  {
    int[] arrayOfInt = l;
    int i1 = 0;
    if (paramA2 == null)
    {
      if (o != null) {
        d.release(o);
      }
      o = null;
      Arrays.fill(arrayOfInt, 0);
    }
    if ((paramA2 != null) && (g == 3) && (o == null)) {
      Arrays.fill(arrayOfInt, 0);
    }
    if ((paramA2 != null) && (g > 0))
    {
      if (g == 2)
      {
        int i2;
        if (!f)
        {
          i2 = n.l;
          if ((k != null) && (n.j == h)) {
            i2 = i1;
          }
        }
        else
        {
          i2 = i1;
          if (m == 0)
          {
            u = Boolean.valueOf(true);
            i2 = i1;
          }
        }
        int i5 = d / r;
        i1 = b / r;
        int i6 = c / r;
        int i3 = a / r;
        int i4 = i1 * t + i3;
        int i7 = t;
        i1 = i4;
        while (i1 < i5 * i7 + i4)
        {
          i3 = i1;
          while (i3 < i1 + i6)
          {
            arrayOfInt[i3] = i2;
            i3 += 1;
          }
          i1 += t;
        }
      }
      if ((g == 3) && (o != null)) {
        o.getPixels(arrayOfInt, 0, t, 0, 0, t, s);
      }
    }
    c(paramA1);
    if ((!e) && (r == 1)) {
      a(paramA1);
    } else {
      b(paramA1);
    }
    if ((p) && ((g == 0) || (g == 1)))
    {
      if (o == null) {
        o = d();
      }
      o.setPixels(arrayOfInt, 0, t, 0, 0, t, s);
    }
    paramA1 = d();
    paramA1.setPixels(arrayOfInt, 0, t, 0, 0, t, s);
    return paramA1;
  }
  
  @NonNull
  private GifHeaderParser a()
  {
    if (g == null) {
      g = new GifHeaderParser();
    }
    return g;
  }
  
  private void a(a paramA)
  {
    Object localObject = paramA;
    int[] arrayOfInt1 = l;
    int i5 = d;
    int i10 = b;
    int i11 = c;
    int i12 = a;
    int i2;
    if (m == 0) {
      i2 = 1;
    } else {
      i2 = 0;
    }
    int i13 = t;
    localObject = k;
    int[] arrayOfInt2 = b;
    int i3 = 0;
    int i1 = -1;
    while (i3 < i5)
    {
      int i4 = (i3 + i10) * i13;
      int i7 = i4 + i12;
      int i6 = i7 + i11;
      int i8 = i4 + i13;
      i4 = i6;
      if (i8 < i6) {
        i4 = i8;
      }
      i6 = c;
      i6 *= i3;
      while (i7 < i4)
      {
        int i9 = localObject[i6];
        int i14 = i9 & 0xFF;
        i8 = i1;
        if (i14 != i1)
        {
          i8 = arrayOfInt2[i14];
          if (i8 != 0)
          {
            arrayOfInt1[i7] = i8;
            i8 = i1;
          }
          else
          {
            i8 = i9;
          }
        }
        i6 += 1;
        i7 += 1;
        i1 = i8;
      }
      i3 += 1;
    }
    boolean bool;
    if ((u == null) && (i2 != 0) && (i1 != -1)) {
      bool = true;
    } else {
      bool = false;
    }
    u = Boolean.valueOf(bool);
  }
  
  private int b()
  {
    return e.get() & 0xFF;
  }
  
  private void b(a paramA)
  {
    int[] arrayOfInt1 = l;
    int i11 = d / r;
    int i10 = b / r;
    int i9 = c / r;
    int i15 = a / r;
    int i8;
    if (m == 0) {
      i8 = 1;
    } else {
      i8 = 0;
    }
    int i16 = r;
    int i17 = t;
    int i18 = s;
    byte[] arrayOfByte = k;
    int[] arrayOfInt2 = b;
    Object localObject1 = u;
    int i2 = 0;
    int i4 = 0;
    int i6 = 1;
    int i7;
    for (int i5 = 8; i4 < i11; i5 = i7)
    {
      int i1;
      int i3;
      if (e)
      {
        i1 = i2;
        i7 = i6;
        i3 = i5;
        if (i2 >= i11)
        {
          i7 = i6 + 1;
          switch (i7)
          {
          default: 
            i1 = i2;
            i3 = i5;
            break;
          case 4: 
            i1 = 1;
            i3 = 2;
            break;
          case 3: 
            i1 = 2;
            i3 = 4;
            break;
          case 2: 
            i1 = 4;
            i3 = i5;
          }
        }
        i5 = i1 + i3;
        i2 = i1;
        i1 = i5;
        i6 = i7;
        i7 = i3;
      }
      else
      {
        i1 = i2;
        i2 = i4;
        i7 = i5;
      }
      i2 += i10;
      if (i16 == 1) {
        i3 = 1;
      } else {
        i3 = 0;
      }
      if (i2 < i18)
      {
        i2 *= i17;
        int i12 = i2 + i15;
        i5 = i12 + i9;
        int i13 = i2 + i17;
        i2 = i5;
        if (i13 < i5) {
          i2 = i13;
        }
        i13 = i4 * i16 * c;
        if (i3 != 0)
        {
          i3 = i12;
          for (;;)
          {
            localObject2 = localObject1;
            if (i3 >= i2) {
              break;
            }
            i5 = arrayOfInt2[(arrayOfByte[i13] & 0xFF)];
            if (i5 != 0)
            {
              arrayOfInt1[i3] = i5;
              localObject2 = localObject1;
            }
            else
            {
              localObject2 = localObject1;
              if (i8 != 0)
              {
                localObject2 = localObject1;
                if (localObject1 == null) {
                  localObject2 = Boolean.valueOf(true);
                }
              }
            }
            i13 += i16;
            i3 += 1;
            localObject1 = localObject2;
          }
        }
        int i14 = i12;
        i5 = i13;
        i3 = i2;
        for (;;)
        {
          localObject2 = localObject1;
          if (i14 >= i3) {
            break;
          }
          int i19 = a(i5, (i2 - i12) * i16 + i13, c);
          if (i19 != 0) {
            arrayOfInt1[i14] = i19;
          }
          for (;;)
          {
            break;
            if ((i8 != 0) && (localObject1 == null)) {
              localObject1 = Boolean.valueOf(true);
            }
          }
          i5 += i16;
          i14 += 1;
        }
      }
      Object localObject2 = localObject1;
      i4 += 1;
      i2 = i1;
      localObject1 = localObject2;
    }
    if (u == null)
    {
      boolean bool;
      if (localObject1 == null) {
        bool = false;
      } else {
        bool = ((Boolean)localObject1).booleanValue();
      }
      u = Boolean.valueOf(bool);
    }
  }
  
  private int c()
  {
    int i1 = b();
    if (i1 <= 0) {
      return i1;
    }
    e.get(f, 0, Math.min(i1, e.remaining()));
    return i1;
  }
  
  private void c(a paramA)
  {
    StandardGifDecoder localStandardGifDecoder = this;
    if (paramA != null) {
      e.position(j);
    }
    int i14;
    if (paramA == null)
    {
      i14 = n.f * n.g;
    }
    else
    {
      i2 = c;
      i14 = d * i2;
    }
    if ((k == null) || (k.length < i14)) {
      k = d.obtainByteArray(i14);
    }
    byte[] arrayOfByte1 = k;
    if (h == null) {
      h = new short['က'];
    }
    short[] arrayOfShort = h;
    if (i == null) {
      i = new byte['က'];
    }
    byte[] arrayOfByte2 = i;
    if (j == null) {
      j = new byte['ခ'];
    }
    byte[] arrayOfByte3 = j;
    int i2 = b();
    int i23 = 1 << i2;
    int i15 = i23 + 2;
    int i18 = i2 + 1;
    int i16 = (1 << i18) - 1;
    int i17 = 0;
    i2 = 0;
    while (i2 < i23)
    {
      arrayOfShort[i2] = 0;
      arrayOfByte2[i2] = ((byte)i2);
      i2 += 1;
    }
    byte[] arrayOfByte4 = f;
    int i4 = i18;
    int i7 = i15;
    int i8 = i16;
    int i10 = 0;
    int i3 = 0;
    int i9 = 0;
    int i13 = 0;
    int i12 = 0;
    int i5 = -1;
    int i6 = 0;
    int i11 = 0;
    i2 = i17;
    paramA = localStandardGifDecoder;
    while (i2 < i14)
    {
      i17 = i10;
      if (i10 == 0)
      {
        i17 = c();
        if (i17 <= 0)
        {
          q = 3;
          break;
        }
        i12 = 0;
      }
      i13 += ((arrayOfByte4[i12] & 0xFF) << i9);
      int i21 = i12 + 1;
      int i22 = i17 - 1;
      i12 = i9 + 8;
      i9 = i5;
      i10 = i6;
      i6 = i3;
      i3 = i7;
      i5 = i2;
      i2 = i4;
      i7 = i9;
      i4 = i18;
      i9 = i12;
      for (;;)
      {
        if (i9 >= i2)
        {
          i12 = i13 & i8;
          i17 = i13 >> i2;
          i9 -= i2;
          if (i12 == i23)
          {
            i2 = i4;
            i3 = i15;
            i8 = i16;
            i7 = -1;
            i13 = i5;
            i5 = i7;
            i7 = i5;
            i5 = i13;
            i13 = i17;
          }
          else
          {
            if (i12 == i23 + 1)
            {
              i19 = i2;
              i2 = i5;
              i5 = i6;
              int i20 = i3;
              i6 = i10;
              i18 = i4;
              i10 = i22;
              i3 = i5;
              i13 = i17;
              i12 = i21;
              i5 = i7;
              i7 = i20;
              i4 = i19;
              break;
            }
            if (i7 == -1)
            {
              arrayOfByte3[i11] = arrayOfByte2[i12];
              i11 += 1;
              i7 = i12;
              i13 = i5;
            }
            for (;;)
            {
              i5 = i12;
              paramA = this;
              i10 = i7;
              break;
              i18 = i3;
              if (i12 >= i18)
              {
                arrayOfByte3[i11] = ((byte)i10);
                i3 = i11 + 1;
                i10 = i7;
              }
              else
              {
                i10 = i12;
                i3 = i11;
              }
              while (i10 >= i23)
              {
                arrayOfByte3[i3] = arrayOfByte2[i10];
                i3 += 1;
                i10 = arrayOfShort[i10];
              }
              i19 = arrayOfByte2[i10] & 0xFF;
              int i1 = (byte)i19;
              arrayOfByte1[i6] = i1;
              i6 += 1;
              i10 = i5 + 1;
              i5 = i6;
              i6 = i10;
              while (i3 > 0)
              {
                i3 -= 1;
                arrayOfByte1[i5] = arrayOfByte3[i3];
                i5 += 1;
                i6 += 1;
              }
              i13 = i18;
              i11 = i2;
              i10 = i8;
              if (i18 < 4096)
              {
                arrayOfShort[i18] = ((short)i7);
                arrayOfByte2[i18] = i1;
                i7 = i18 + 1;
                i13 = i7;
                i11 = i2;
                i10 = i8;
                if ((i7 & i8) == 0)
                {
                  i13 = i7;
                  i11 = i2;
                  i10 = i8;
                  if (i7 < 4096)
                  {
                    i11 = i2 + 1;
                    i10 = i8 + i7;
                    i13 = i7;
                  }
                }
              }
              i7 = i13;
              i18 = i19;
              i2 = i11;
              i13 = i6;
              i6 = i5;
              i11 = i3;
              i8 = i10;
              i3 = i7;
              i7 = i18;
            }
          }
        }
      }
      i17 = i3;
      int i19 = i2;
      i2 = i5;
      i3 = i6;
      i6 = i10;
      paramA = this;
      i18 = i4;
      i10 = i22;
      i12 = i21;
      i5 = i7;
      i7 = i17;
      i4 = i19;
    }
    Arrays.fill(arrayOfByte1, i3, i14, (byte)0);
  }
  
  private Bitmap d()
  {
    if ((u != null) && (!u.booleanValue())) {
      localObject = v;
    } else {
      localObject = Bitmap.Config.ARGB_8888;
    }
    Object localObject = d.obtain(t, s, (Bitmap.Config)localObject);
    ((Bitmap)localObject).setHasAlpha(true);
    return localObject;
  }
  
  public void advance()
  {
    m = ((m + 1) % n.c);
  }
  
  public void clear()
  {
    n = null;
    if (k != null) {
      d.release(k);
    }
    if (l != null) {
      d.release(l);
    }
    if (o != null) {
      d.release(o);
    }
    o = null;
    e = null;
    u = null;
    if (f != null) {
      d.release(f);
    }
  }
  
  public int getByteSize()
  {
    return e.limit() + k.length + l.length * 4;
  }
  
  public int getCurrentFrameIndex()
  {
    return m;
  }
  
  @NonNull
  public ByteBuffer getData()
  {
    return e;
  }
  
  public int getDelay(int paramInt)
  {
    if ((paramInt >= 0) && (paramInt < n.c)) {
      return n.e.get(paramInt)).i;
    }
    return -1;
  }
  
  public int getFrameCount()
  {
    return n.c;
  }
  
  public int getHeight()
  {
    return n.g;
  }
  
  @Deprecated
  public int getLoopCount()
  {
    if (n.m == -1) {
      return 1;
    }
    return n.m;
  }
  
  public int getNetscapeLoopCount()
  {
    return n.m;
  }
  
  public int getNextDelay()
  {
    if ((n.c > 0) && (m >= 0)) {
      return getDelay(m);
    }
    return 0;
  }
  
  @Nullable
  public Bitmap getNextFrame()
  {
    for (;;)
    {
      try
      {
        Object localObject1;
        Object localObject4;
        if ((n.c <= 0) || (m < 0))
        {
          if (Log.isLoggable(a, 3))
          {
            localObject1 = a;
            localObject4 = new StringBuilder();
            ((StringBuilder)localObject4).append("Unable to decode frame, frameCount=");
            ((StringBuilder)localObject4).append(n.c);
            ((StringBuilder)localObject4).append(", framePointer=");
            ((StringBuilder)localObject4).append(m);
            Log.d((String)localObject1, ((StringBuilder)localObject4).toString());
          }
          q = 1;
        }
        if ((q != 1) && (q != 2))
        {
          q = 0;
          if (f == null) {
            f = d.obtainByteArray(255);
          }
          a localA = (a)n.e.get(m);
          int i1 = m - 1;
          if (i1 >= 0)
          {
            localObject1 = (a)n.e.get(i1);
            if (k != null) {
              localObject4 = k;
            } else {
              localObject4 = n.a;
            }
            b = ((int[])localObject4);
            if (b == null)
            {
              if (Log.isLoggable(a, 3))
              {
                localObject1 = a;
                localObject4 = new StringBuilder();
                ((StringBuilder)localObject4).append("No valid color table found for frame #");
                ((StringBuilder)localObject4).append(m);
                Log.d((String)localObject1, ((StringBuilder)localObject4).toString());
              }
              q = 1;
              return null;
            }
            if (f)
            {
              System.arraycopy(b, 0, c, 0, b.length);
              b = c;
              b[h] = 0;
            }
            localObject1 = a(localA, (a)localObject1);
            return localObject1;
          }
        }
        else
        {
          if (Log.isLoggable(a, 3))
          {
            localObject1 = a;
            localObject4 = new StringBuilder();
            ((StringBuilder)localObject4).append("Unable to decode frame, status=");
            ((StringBuilder)localObject4).append(q);
            Log.d((String)localObject1, ((StringBuilder)localObject4).toString());
          }
          return null;
        }
      }
      finally {}
      Object localObject3 = null;
    }
  }
  
  public int getStatus()
  {
    return q;
  }
  
  public int getTotalIterationCount()
  {
    if (n.m == -1) {
      return 1;
    }
    if (n.m == 0) {
      return 0;
    }
    return n.m + 1;
  }
  
  public int getWidth()
  {
    return n.f;
  }
  
  public int read(@Nullable InputStream paramInputStream, int paramInt)
  {
    if (paramInputStream != null)
    {
      if (paramInt > 0) {
        paramInt += 4096;
      } else {
        paramInt = 16384;
      }
      try
      {
        ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream(paramInt);
        byte[] arrayOfByte = new byte['䀀'];
        for (;;)
        {
          paramInt = paramInputStream.read(arrayOfByte, 0, arrayOfByte.length);
          if (paramInt == -1) {
            break;
          }
          localByteArrayOutputStream.write(arrayOfByte, 0, paramInt);
        }
        localByteArrayOutputStream.flush();
        read(localByteArrayOutputStream.toByteArray());
      }
      catch (IOException localIOException)
      {
        Log.w(a, "Error reading data from stream", localIOException);
      }
    }
    q = 2;
    if (paramInputStream != null) {
      try
      {
        paramInputStream.close();
      }
      catch (IOException paramInputStream)
      {
        Log.w(a, "Error closing stream", paramInputStream);
      }
    }
    return q;
  }
  
  public int read(@Nullable byte[] paramArrayOfByte)
  {
    try
    {
      n = a().setData(paramArrayOfByte).parseHeader();
      if (paramArrayOfByte != null) {
        setData(n, paramArrayOfByte);
      }
      int i1 = q;
      return i1;
    }
    finally {}
  }
  
  public void resetFrameIndex()
  {
    m = -1;
  }
  
  public void setData(@NonNull GifHeader paramGifHeader, @NonNull ByteBuffer paramByteBuffer)
  {
    try
    {
      setData(paramGifHeader, paramByteBuffer, 1);
      return;
    }
    finally
    {
      paramGifHeader = finally;
      throw paramGifHeader;
    }
  }
  
  public void setData(@NonNull GifHeader paramGifHeader, @NonNull ByteBuffer paramByteBuffer, int paramInt)
  {
    if (paramInt > 0) {}
    try
    {
      paramInt = Integer.highestOneBit(paramInt);
      q = 0;
      n = paramGifHeader;
      m = -1;
      e = paramByteBuffer.asReadOnlyBuffer();
      e.position(0);
      e.order(ByteOrder.LITTLE_ENDIAN);
      p = false;
      paramByteBuffer = e.iterator();
      while (paramByteBuffer.hasNext()) {
        if (nextg == 3) {
          p = true;
        }
      }
      r = paramInt;
      t = (f / paramInt);
      s = (g / paramInt);
      k = d.obtainByteArray(f * g);
      l = d.obtainIntArray(t * s);
      return;
    }
    finally {}
    paramGifHeader = new StringBuilder();
    paramGifHeader.append("Sample size must be >=0, not: ");
    paramGifHeader.append(paramInt);
    throw new IllegalArgumentException(paramGifHeader.toString());
  }
  
  public void setData(@NonNull GifHeader paramGifHeader, @NonNull byte[] paramArrayOfByte)
  {
    try
    {
      setData(paramGifHeader, ByteBuffer.wrap(paramArrayOfByte));
      return;
    }
    finally
    {
      paramGifHeader = finally;
      throw paramGifHeader;
    }
  }
  
  public void setDefaultBitmapConfig(@NonNull Bitmap.Config paramConfig)
  {
    if ((paramConfig != Bitmap.Config.ARGB_8888) && (paramConfig != Bitmap.Config.RGB_565))
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("Unsupported format: ");
      localStringBuilder.append(paramConfig);
      localStringBuilder.append(", must be one of ");
      localStringBuilder.append(Bitmap.Config.ARGB_8888);
      localStringBuilder.append(" or ");
      localStringBuilder.append(Bitmap.Config.RGB_565);
      throw new IllegalArgumentException(localStringBuilder.toString());
    }
    v = paramConfig;
  }
}
