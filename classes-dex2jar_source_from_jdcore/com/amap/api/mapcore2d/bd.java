package com.amap.api.mapcore2d;

import android.content.Context;
import android.content.res.AssetManager;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.NinePatch;
import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.NinePatchDrawable;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.lang.reflect.Field;

class bd
{
  private static int a(byte[] paramArrayOfByte, int paramInt)
  {
    int i = paramArrayOfByte[(paramInt + 0)];
    int j = paramArrayOfByte[(paramInt + 1)];
    int k = paramArrayOfByte[(paramInt + 2)];
    return (paramArrayOfByte[(paramInt + 3)] & 0xFF) << 24 | (j & 0xFF) << 8 | i & 0xFF | (k & 0xFF) << 16;
  }
  
  private static Bitmap a(InputStream paramInputStream)
    throws Exception
  {
    try
    {
      Object localObject = BitmapFactory.decodeStream(paramInputStream);
      paramInputStream = a((Bitmap)localObject);
      if (paramInputStream == null) {
        return localObject;
      }
      if (NinePatch.isNinePatchChunk(paramInputStream))
      {
        Bitmap localBitmap = Bitmap.createBitmap((Bitmap)localObject, 1, 1, ((Bitmap)localObject).getWidth() - 2, ((Bitmap)localObject).getHeight() - 2);
        ((Bitmap)localObject).recycle();
        localObject = localBitmap.getClass().getDeclaredField("mNinePatchChunk");
        ((Field)localObject).setAccessible(true);
        ((Field)localObject).set(localBitmap, paramInputStream);
        return localBitmap;
      }
      return localObject;
    }
    catch (Throwable paramInputStream)
    {
      for (;;) {}
    }
    return null;
  }
  
  public static Drawable a(Context paramContext, String paramString)
    throws Exception
  {
    paramString = b(paramContext, paramString);
    if (paramString.getNinePatchChunk() == null) {
      return new BitmapDrawable(paramString);
    }
    Rect localRect = new Rect();
    a(paramString.getNinePatchChunk(), localRect);
    return new NinePatchDrawable(paramContext.getResources(), paramString, paramString.getNinePatchChunk(), localRect, null);
  }
  
  private static void a(Bitmap paramBitmap, byte[] paramArrayOfByte)
  {
    int[] arrayOfInt = new int[paramBitmap.getWidth() - 2];
    paramBitmap.getPixels(arrayOfInt, 0, arrayOfInt.length, 1, paramBitmap.getHeight() - 1, arrayOfInt.length, 1);
    int j = 0;
    int i = 0;
    while (i < arrayOfInt.length)
    {
      if (-16777216 == arrayOfInt[i])
      {
        a(paramArrayOfByte, 12, i);
        break;
      }
      i += 1;
    }
    i = arrayOfInt.length - 1;
    while (i >= 0)
    {
      if (-16777216 == arrayOfInt[i])
      {
        a(paramArrayOfByte, 16, arrayOfInt.length - i - 2);
        break;
      }
      i -= 1;
    }
    arrayOfInt = new int[paramBitmap.getHeight() - 2];
    paramBitmap.getPixels(arrayOfInt, 0, 1, paramBitmap.getWidth() - 1, 0, 1, arrayOfInt.length);
    i = j;
    while (i < arrayOfInt.length)
    {
      if (-16777216 == arrayOfInt[i])
      {
        a(paramArrayOfByte, 20, i);
        break;
      }
      i += 1;
    }
    i = arrayOfInt.length - 1;
    while (i >= 0)
    {
      if (-16777216 == arrayOfInt[i])
      {
        a(paramArrayOfByte, 24, arrayOfInt.length - i - 2);
        return;
      }
      i -= 1;
    }
  }
  
  private static void a(OutputStream paramOutputStream, int paramInt)
    throws IOException
  {
    paramOutputStream.write(paramInt >> 0 & 0xFF);
    paramOutputStream.write(paramInt >> 8 & 0xFF);
    paramOutputStream.write(paramInt >> 16 & 0xFF);
    paramOutputStream.write(paramInt >> 24 & 0xFF);
  }
  
  private static void a(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    paramArrayOfByte[(paramInt1 + 0)] = ((byte)(paramInt2 >> 0));
    paramArrayOfByte[(paramInt1 + 1)] = ((byte)(paramInt2 >> 8));
    paramArrayOfByte[(paramInt1 + 2)] = ((byte)(paramInt2 >> 16));
    paramArrayOfByte[(paramInt1 + 3)] = ((byte)(paramInt2 >> 24));
  }
  
  private static void a(byte[] paramArrayOfByte, Rect paramRect)
  {
    left = a(paramArrayOfByte, 12);
    right = a(paramArrayOfByte, 16);
    top = a(paramArrayOfByte, 20);
    bottom = a(paramArrayOfByte, 24);
  }
  
  private static byte[] a(Bitmap paramBitmap)
    throws IOException
  {
    try
    {
      j = paramBitmap.getWidth();
      i3 = paramBitmap.getHeight();
      localObject = new ByteArrayOutputStream();
      i = 0;
      while (i < 32)
      {
        ((ByteArrayOutputStream)localObject).write(0);
        i += 1;
      }
      i = j - 2;
      arrayOfInt = new int[i];
      paramBitmap.getPixels(arrayOfInt, 0, j, 1, 0, i, 1);
      if (arrayOfInt[0] != -16777216) {
        break label382;
      }
      k = 1;
    }
    catch (Throwable paramBitmap)
    {
      for (;;)
      {
        int j;
        int i3;
        Object localObject;
        int[] arrayOfInt;
        int i4;
        int i2;
        int i5;
        continue;
        label382:
        int k = 0;
        continue;
        int m = 0;
        continue;
        label393:
        j += 1;
        int i1 = n;
        int i = i2;
        continue;
        label407:
        int n = j + 1;
        i = n;
        if (k != 0) {
          i = n - 1;
        }
        k = i;
        if (m != 0)
        {
          k = i - 1;
          continue;
          label438:
          m = 0;
          continue;
          label444:
          n = 0;
          continue;
          label450:
          i1 += 1;
          i3 = i2;
          i = i4;
          continue;
          label466:
          i2 = i1 + 1;
          i = i2;
          if (m != 0) {
            i = i2 - 1;
          }
          m = i;
          if (n != 0) {
            m = i - 1;
          }
          i = 0;
        }
      }
    }
    if (arrayOfInt[(arrayOfInt.length - 1)] == -16777216)
    {
      m = 1;
      i4 = arrayOfInt.length;
      j = 0;
      i1 = 0;
      i = 0;
      if (j < i4)
      {
        n = i1;
        i2 = i;
        if (i1 == arrayOfInt[j]) {
          break label393;
        }
        i2 = i + 1;
        a((OutputStream)localObject, j);
        n = arrayOfInt[j];
        break label393;
      }
      j = i;
      if (m == 0) {
        break label407;
      }
      j = i + 1;
      a((OutputStream)localObject, arrayOfInt.length);
      break label407;
      i = i3 - 2;
      arrayOfInt = new int[i];
      paramBitmap.getPixels(arrayOfInt, 0, 1, 0, 1, 1, i);
      if (arrayOfInt[0] != -16777216) {
        break label438;
      }
      m = 1;
      if (arrayOfInt[(arrayOfInt.length - 1)] != -16777216) {
        break label444;
      }
      n = 1;
      i5 = arrayOfInt.length;
      i1 = 0;
      i3 = 0;
      i = 0;
      if (i1 < i5)
      {
        i2 = i3;
        i4 = i;
        if (i3 == arrayOfInt[i1]) {
          break label450;
        }
        i4 = i + 1;
        a((OutputStream)localObject, i1);
        i2 = arrayOfInt[i1];
        break label450;
      }
      i1 = i;
      if (n == 0) {
        break label466;
      }
      i1 = i + 1;
      a((OutputStream)localObject, arrayOfInt.length);
      break label466;
      for (;;)
      {
        n = k * m;
        if (i >= n) {
          break;
        }
        a((OutputStream)localObject, 1);
        i += 1;
      }
      localObject = ((ByteArrayOutputStream)localObject).toByteArray();
      localObject[0] = 1;
      localObject[1] = ((byte)j);
      localObject[2] = ((byte)i1);
      localObject[3] = ((byte)n);
      a(paramBitmap, (byte[])localObject);
      return localObject;
      return null;
    }
  }
  
  private static Bitmap b(Context paramContext, String paramString)
    throws Exception
  {
    paramContext = paramContext.getAssets().open(paramString);
    paramString = a(paramContext);
    paramContext.close();
    return paramString;
  }
}
