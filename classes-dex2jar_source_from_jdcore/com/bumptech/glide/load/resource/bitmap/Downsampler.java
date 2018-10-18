package com.bumptech.glide.load.resource.bitmap;

import android.annotation.TargetApi;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.BitmapFactory.Options;
import android.os.Build.VERSION;
import android.support.annotation.Nullable;
import android.util.DisplayMetrics;
import android.util.Log;
import com.bumptech.glide.load.DecodeFormat;
import com.bumptech.glide.load.ImageHeaderParser;
import com.bumptech.glide.load.ImageHeaderParser.ImageType;
import com.bumptech.glide.load.ImageHeaderParserUtils;
import com.bumptech.glide.load.Option;
import com.bumptech.glide.load.Options;
import com.bumptech.glide.load.engine.Resource;
import com.bumptech.glide.load.engine.bitmap_recycle.ArrayPool;
import com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool;
import com.bumptech.glide.util.LogTime;
import com.bumptech.glide.util.Preconditions;
import com.bumptech.glide.util.Util;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Arrays;
import java.util.Collections;
import java.util.EnumSet;
import java.util.HashSet;
import java.util.List;
import java.util.Queue;
import java.util.Set;

public final class Downsampler
{
  public static final Option<Boolean> ALLOW_HARDWARE_CONFIG = Option.memory("com.bumtpech.glide.load.resource.bitmap.Downsampler.AllowHardwareDecode");
  public static final Option<DecodeFormat> DECODE_FORMAT = Option.memory("com.bumptech.glide.load.resource.bitmap.Downsampler.DecodeFormat", DecodeFormat.DEFAULT);
  public static final Option<DownsampleStrategy> DOWNSAMPLE_STRATEGY = Option.memory("com.bumptech.glide.load.resource.bitmap.Downsampler.DownsampleStrategy", DownsampleStrategy.DEFAULT);
  public static final Option<Boolean> FIX_BITMAP_SIZE_TO_REQUESTED_DIMENSIONS = Option.memory("com.bumptech.glide.load.resource.bitmap.Downsampler.FixBitmapSize", Boolean.valueOf(false));
  private static final Set<String> a = Collections.unmodifiableSet(new HashSet(Arrays.asList(new String[] { "image/vnd.wap.wbmp", "image/x-ico" })));
  private static final DecodeCallbacks b = new DecodeCallbacks()
  {
    public void onDecodeComplete(BitmapPool paramAnonymousBitmapPool, Bitmap paramAnonymousBitmap) {}
    
    public void onObtainBounds() {}
  };
  private static final Set<ImageHeaderParser.ImageType> c = Collections.unmodifiableSet(EnumSet.of(ImageHeaderParser.ImageType.JPEG, ImageHeaderParser.ImageType.PNG_A, ImageHeaderParser.ImageType.PNG));
  private static final Queue<BitmapFactory.Options> d = Util.createQueue(0);
  private final BitmapPool e;
  private final DisplayMetrics f;
  private final ArrayPool g;
  private final List<ImageHeaderParser> h;
  private final b i = b.a();
  
  public Downsampler(List<ImageHeaderParser> paramList, DisplayMetrics paramDisplayMetrics, BitmapPool paramBitmapPool, ArrayPool paramArrayPool)
  {
    h = paramList;
    f = ((DisplayMetrics)Preconditions.checkNotNull(paramDisplayMetrics));
    e = ((BitmapPool)Preconditions.checkNotNull(paramBitmapPool));
    g = ((ArrayPool)Preconditions.checkNotNull(paramArrayPool));
  }
  
  private static int a(double paramDouble)
  {
    int j = b(paramDouble);
    int k = c(j * paramDouble);
    return c(paramDouble / (k / j) * k);
  }
  
  private Bitmap a(InputStream paramInputStream, BitmapFactory.Options paramOptions, DownsampleStrategy paramDownsampleStrategy, DecodeFormat paramDecodeFormat, boolean paramBoolean1, int paramInt1, int paramInt2, boolean paramBoolean2, DecodeCallbacks paramDecodeCallbacks)
    throws IOException
  {
    long l = LogTime.getLogTime();
    Object localObject = a(paramInputStream, paramOptions, paramDecodeCallbacks, e);
    int m = 0;
    int n = localObject[0];
    int i1 = localObject[1];
    localObject = outMimeType;
    if ((n != -1) && (i1 != -1)) {
      break label60;
    }
    paramBoolean1 = false;
    label60:
    int i3 = ImageHeaderParserUtils.getOrientation(h, paramInputStream, g);
    int i2 = TransformationUtils.getExifOrientationDegrees(i3);
    boolean bool = TransformationUtils.isExifOrientationRequired(i3);
    int j;
    if (paramInt1 == Integer.MIN_VALUE) {
      j = n;
    } else {
      j = paramInt1;
    }
    int k = paramInt2;
    if (k == Integer.MIN_VALUE) {
      k = i1;
    }
    ImageHeaderParser.ImageType localImageType = ImageHeaderParserUtils.getType(h, paramInputStream, g);
    a(localImageType, paramInputStream, paramDecodeCallbacks, e, paramDownsampleStrategy, i2, n, i1, j, k, paramOptions);
    a(paramInputStream, paramDecodeFormat, paramBoolean1, bool, paramOptions, j, k);
    if (Build.VERSION.SDK_INT >= 19) {
      m = 1;
    }
    if ((inSampleSize != 1) && (m == 0)) {
      break label538;
    }
    paramDownsampleStrategy = this;
    if (paramDownsampleStrategy.a(localImageType))
    {
      if ((n < 0) || (i1 < 0) || (!paramBoolean2) || (m == 0))
      {
        float f1;
        if (a(paramOptions)) {
          f1 = inTargetDensity / inDensity;
        } else {
          f1 = 1.0F;
        }
        int i4 = inSampleSize;
        float f2 = n;
        float f3 = i4;
        k = (int)Math.ceil(f2 / f3);
        j = (int)Math.ceil(i1 / f3);
        m = Math.round(k * f1);
        i2 = Math.round(j * f1);
        j = m;
        k = i2;
        if (Log.isLoggable("Downsampler", 2))
        {
          paramDecodeFormat = new StringBuilder();
          paramDecodeFormat.append("Calculated target [");
          paramDecodeFormat.append(m);
          paramDecodeFormat.append("x");
          paramDecodeFormat.append(i2);
          paramDecodeFormat.append("] for source [");
          paramDecodeFormat.append(n);
          paramDecodeFormat.append("x");
          paramDecodeFormat.append(i1);
          paramDecodeFormat.append("], sampleSize: ");
          paramDecodeFormat.append(i4);
          paramDecodeFormat.append(", targetDensity: ");
          paramDecodeFormat.append(inTargetDensity);
          paramDecodeFormat.append(", density: ");
          paramDecodeFormat.append(inDensity);
          paramDecodeFormat.append(", density multiplier: ");
          paramDecodeFormat.append(f1);
          Log.v("Downsampler", paramDecodeFormat.toString());
          k = i2;
          j = m;
        }
      }
      if ((j > 0) && (k > 0)) {
        a(paramOptions, e, j, k);
      }
    }
    label538:
    paramDownsampleStrategy = this;
    paramDecodeFormat = b(paramInputStream, paramOptions, paramDecodeCallbacks, e);
    paramDecodeCallbacks.onDecodeComplete(e, paramDecodeFormat);
    if (Log.isLoggable("Downsampler", 2)) {
      a(n, i1, (String)localObject, paramOptions, paramDecodeFormat, paramInt1, paramInt2, l);
    }
    paramInputStream = null;
    if (paramDecodeFormat != null)
    {
      paramDecodeFormat.setDensity(f.densityDpi);
      paramOptions = TransformationUtils.rotateImageExif(e, paramDecodeFormat, i3);
      paramInputStream = paramOptions;
      if (!paramDecodeFormat.equals(paramOptions))
      {
        e.put(paramDecodeFormat);
        paramInputStream = paramOptions;
      }
    }
    return paramInputStream;
  }
  
  /* Error */
  private static BitmapFactory.Options a()
  {
    // Byte code:
    //   0: ldc 2
    //   2: monitorenter
    //   3: getstatic 140	com/bumptech/glide/load/resource/bitmap/Downsampler:d	Ljava/util/Queue;
    //   6: astore_0
    //   7: aload_0
    //   8: monitorenter
    //   9: getstatic 140	com/bumptech/glide/load/resource/bitmap/Downsampler:d	Ljava/util/Queue;
    //   12: invokeinterface 338 1 0
    //   17: checkcast 191	android/graphics/BitmapFactory$Options
    //   20: astore_1
    //   21: aload_0
    //   22: monitorexit
    //   23: aload_1
    //   24: astore_0
    //   25: aload_1
    //   26: ifnonnull +15 -> 41
    //   29: new 191	android/graphics/BitmapFactory$Options
    //   32: dup
    //   33: invokespecial 339	android/graphics/BitmapFactory$Options:<init>	()V
    //   36: astore_0
    //   37: aload_0
    //   38: invokestatic 342	com/bumptech/glide/load/resource/bitmap/Downsampler:d	(Landroid/graphics/BitmapFactory$Options;)V
    //   41: ldc 2
    //   43: monitorexit
    //   44: aload_0
    //   45: areturn
    //   46: astore_1
    //   47: aload_0
    //   48: monitorexit
    //   49: aload_1
    //   50: athrow
    //   51: astore_0
    //   52: ldc 2
    //   54: monitorexit
    //   55: aload_0
    //   56: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   51	5	0	localObject2	Object
    //   20	6	1	localOptions	BitmapFactory.Options
    //   46	4	1	localObject3	Object
    // Exception table:
    //   from	to	target	type
    //   9	23	46	finally
    //   47	49	46	finally
    //   3	9	51	finally
    //   29	41	51	finally
    //   49	51	51	finally
  }
  
  private static IOException a(IllegalArgumentException paramIllegalArgumentException, int paramInt1, int paramInt2, String paramString, BitmapFactory.Options paramOptions)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Exception decoding bitmap, outWidth: ");
    localStringBuilder.append(paramInt1);
    localStringBuilder.append(", outHeight: ");
    localStringBuilder.append(paramInt2);
    localStringBuilder.append(", outMimeType: ");
    localStringBuilder.append(paramString);
    localStringBuilder.append(", inBitmap: ");
    localStringBuilder.append(b(paramOptions));
    return new IOException(localStringBuilder.toString(), paramIllegalArgumentException);
  }
  
  @TargetApi(19)
  @Nullable
  private static String a(Bitmap paramBitmap)
  {
    if (paramBitmap == null) {
      return null;
    }
    Object localObject;
    if (Build.VERSION.SDK_INT >= 19)
    {
      localObject = new StringBuilder();
      ((StringBuilder)localObject).append(" (");
      ((StringBuilder)localObject).append(paramBitmap.getAllocationByteCount());
      ((StringBuilder)localObject).append(")");
      localObject = ((StringBuilder)localObject).toString();
    }
    else
    {
      localObject = "";
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("[");
    localStringBuilder.append(paramBitmap.getWidth());
    localStringBuilder.append("x");
    localStringBuilder.append(paramBitmap.getHeight());
    localStringBuilder.append("] ");
    localStringBuilder.append(paramBitmap.getConfig());
    localStringBuilder.append((String)localObject);
    return localStringBuilder.toString();
  }
  
  private static void a(int paramInt1, int paramInt2, String paramString, BitmapFactory.Options paramOptions, Bitmap paramBitmap, int paramInt3, int paramInt4, long paramLong)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Decoded ");
    localStringBuilder.append(a(paramBitmap));
    localStringBuilder.append(" from [");
    localStringBuilder.append(paramInt1);
    localStringBuilder.append("x");
    localStringBuilder.append(paramInt2);
    localStringBuilder.append("] ");
    localStringBuilder.append(paramString);
    localStringBuilder.append(" with inBitmap ");
    localStringBuilder.append(b(paramOptions));
    localStringBuilder.append(" for [");
    localStringBuilder.append(paramInt3);
    localStringBuilder.append("x");
    localStringBuilder.append(paramInt4);
    localStringBuilder.append("], sample size: ");
    localStringBuilder.append(inSampleSize);
    localStringBuilder.append(", density: ");
    localStringBuilder.append(inDensity);
    localStringBuilder.append(", target density: ");
    localStringBuilder.append(inTargetDensity);
    localStringBuilder.append(", thread: ");
    localStringBuilder.append(Thread.currentThread().getName());
    localStringBuilder.append(", duration: ");
    localStringBuilder.append(LogTime.getElapsedMillis(paramLong));
    Log.v("Downsampler", localStringBuilder.toString());
  }
  
  @TargetApi(26)
  private static void a(BitmapFactory.Options paramOptions, BitmapPool paramBitmapPool, int paramInt1, int paramInt2)
  {
    Bitmap.Config localConfig1;
    if (Build.VERSION.SDK_INT >= 26)
    {
      if (inPreferredConfig == Bitmap.Config.HARDWARE) {
        return;
      }
      localConfig1 = outConfig;
    }
    else
    {
      localConfig1 = null;
    }
    Bitmap.Config localConfig2 = localConfig1;
    if (localConfig1 == null) {
      localConfig2 = inPreferredConfig;
    }
    inBitmap = paramBitmapPool.getDirty(paramInt1, paramInt2, localConfig2);
  }
  
  private static void a(ImageHeaderParser.ImageType paramImageType, InputStream paramInputStream, DecodeCallbacks paramDecodeCallbacks, BitmapPool paramBitmapPool, DownsampleStrategy paramDownsampleStrategy, int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, BitmapFactory.Options paramOptions)
    throws IOException
  {
    if ((paramInt2 > 0) && (paramInt3 > 0))
    {
      float f1;
      if ((paramInt1 != 90) && (paramInt1 != 270)) {
        f1 = paramDownsampleStrategy.getScaleFactor(paramInt2, paramInt3, paramInt4, paramInt5);
      } else {
        f1 = paramDownsampleStrategy.getScaleFactor(paramInt3, paramInt2, paramInt4, paramInt5);
      }
      if (f1 > 0.0F)
      {
        DownsampleStrategy.SampleSizeRounding localSampleSizeRounding = paramDownsampleStrategy.getSampleSizeRounding(paramInt2, paramInt3, paramInt4, paramInt5);
        if (localSampleSizeRounding != null)
        {
          float f2 = paramInt2;
          int j = c(f1 * f2);
          float f3 = paramInt3;
          paramInt1 = c(f1 * f3);
          j = paramInt2 / j;
          paramInt1 = paramInt3 / paramInt1;
          if (localSampleSizeRounding == DownsampleStrategy.SampleSizeRounding.MEMORY) {
            paramInt1 = Math.max(j, paramInt1);
          } else {
            paramInt1 = Math.min(j, paramInt1);
          }
          int k;
          if ((Build.VERSION.SDK_INT <= 23) && (a.contains(outMimeType)))
          {
            k = 1;
          }
          else
          {
            k = Math.max(1, Integer.highestOneBit(paramInt1));
            if ((localSampleSizeRounding == DownsampleStrategy.SampleSizeRounding.MEMORY) && (k < 1.0F / f1)) {
              k <<= 1;
            }
          }
          inSampleSize = k;
          float f4;
          if (paramImageType == ImageHeaderParser.ImageType.JPEG)
          {
            f4 = Math.min(k, 8);
            int n = (int)Math.ceil(f2 / f4);
            int m = (int)Math.ceil(f3 / f4);
            int i1 = k / 8;
            paramInt1 = m;
            j = n;
            if (i1 > 0)
            {
              j = n / i1;
              paramInt1 = m / i1;
            }
          }
          else if ((paramImageType != ImageHeaderParser.ImageType.PNG) && (paramImageType != ImageHeaderParser.ImageType.PNG_A))
          {
            if ((paramImageType != ImageHeaderParser.ImageType.WEBP) && (paramImageType != ImageHeaderParser.ImageType.WEBP_A))
            {
              if ((paramInt2 % k == 0) && (paramInt3 % k == 0))
              {
                j = paramInt2 / k;
                paramInt1 = paramInt3 / k;
              }
              else
              {
                paramImageType = a(paramInputStream, paramOptions, paramDecodeCallbacks, paramBitmapPool);
                j = paramImageType[0];
                paramInt1 = paramImageType[1];
              }
            }
            else if (Build.VERSION.SDK_INT >= 24)
            {
              f4 = k;
              j = Math.round(f2 / f4);
              paramInt1 = Math.round(f3 / f4);
            }
            else
            {
              f4 = k;
              j = (int)Math.floor(f2 / f4);
              paramInt1 = (int)Math.floor(f3 / f4);
            }
          }
          else
          {
            f4 = k;
            j = (int)Math.floor(f2 / f4);
            paramInt1 = (int)Math.floor(f3 / f4);
          }
          double d1 = paramDownsampleStrategy.getScaleFactor(j, paramInt1, paramInt4, paramInt5);
          if (Build.VERSION.SDK_INT >= 19)
          {
            inTargetDensity = a(d1);
            inDensity = b(d1);
          }
          if (a(paramOptions))
          {
            inScaled = true;
          }
          else
          {
            inTargetDensity = 0;
            inDensity = 0;
          }
          if (Log.isLoggable("Downsampler", 2))
          {
            paramImageType = new StringBuilder();
            paramImageType.append("Calculate scaling, source: [");
            paramImageType.append(paramInt2);
            paramImageType.append("x");
            paramImageType.append(paramInt3);
            paramImageType.append("], target: [");
            paramImageType.append(paramInt4);
            paramImageType.append("x");
            paramImageType.append(paramInt5);
            paramImageType.append("], power of two scaled: [");
            paramImageType.append(j);
            paramImageType.append("x");
            paramImageType.append(paramInt1);
            paramImageType.append("], exact scale factor: ");
            paramImageType.append(f1);
            paramImageType.append(", power of 2 sample size: ");
            paramImageType.append(k);
            paramImageType.append(", adjusted scale factor: ");
            paramImageType.append(d1);
            paramImageType.append(", target density: ");
            paramImageType.append(inTargetDensity);
            paramImageType.append(", density: ");
            paramImageType.append(inDensity);
            Log.v("Downsampler", paramImageType.toString());
          }
          return;
        }
        throw new IllegalArgumentException("Cannot round with null rounding");
      }
      paramImageType = new StringBuilder();
      paramImageType.append("Cannot scale with factor: ");
      paramImageType.append(f1);
      paramImageType.append(" from: ");
      paramImageType.append(paramDownsampleStrategy);
      paramImageType.append(", source: [");
      paramImageType.append(paramInt2);
      paramImageType.append("x");
      paramImageType.append(paramInt3);
      paramImageType.append("], target: [");
      paramImageType.append(paramInt4);
      paramImageType.append("x");
      paramImageType.append(paramInt5);
      paramImageType.append("]");
      throw new IllegalArgumentException(paramImageType.toString());
    }
    if (Log.isLoggable("Downsampler", 3))
    {
      paramInputStream = new StringBuilder();
      paramInputStream.append("Unable to determine dimensions for: ");
      paramInputStream.append(paramImageType);
      paramInputStream.append(" with target [");
      paramInputStream.append(paramInt4);
      paramInputStream.append("x");
      paramInputStream.append(paramInt5);
      paramInputStream.append("]");
      Log.d("Downsampler", paramInputStream.toString());
    }
  }
  
  private void a(InputStream paramInputStream, DecodeFormat paramDecodeFormat, boolean paramBoolean1, boolean paramBoolean2, BitmapFactory.Options paramOptions, int paramInt1, int paramInt2)
  {
    if (i.a(paramInt1, paramInt2, paramOptions, paramDecodeFormat, paramBoolean1, paramBoolean2)) {
      return;
    }
    if ((paramDecodeFormat != DecodeFormat.PREFER_ARGB_8888) && (paramDecodeFormat != DecodeFormat.PREFER_ARGB_8888_DISALLOW_HARDWARE) && (Build.VERSION.SDK_INT != 16))
    {
      try
      {
        paramBoolean1 = ImageHeaderParserUtils.getType(h, paramInputStream, g).hasAlpha();
      }
      catch (IOException paramInputStream)
      {
        if (Log.isLoggable("Downsampler", 3))
        {
          StringBuilder localStringBuilder = new StringBuilder();
          localStringBuilder.append("Cannot determine whether the image has alpha or not from header, format ");
          localStringBuilder.append(paramDecodeFormat);
          Log.d("Downsampler", localStringBuilder.toString(), paramInputStream);
        }
        paramBoolean1 = false;
      }
      if (paramBoolean1) {
        paramInputStream = Bitmap.Config.ARGB_8888;
      } else {
        paramInputStream = Bitmap.Config.RGB_565;
      }
      inPreferredConfig = paramInputStream;
      if (inPreferredConfig == Bitmap.Config.RGB_565) {
        inDither = true;
      }
      return;
    }
    inPreferredConfig = Bitmap.Config.ARGB_8888;
  }
  
  private static boolean a(BitmapFactory.Options paramOptions)
  {
    return (inTargetDensity > 0) && (inDensity > 0) && (inTargetDensity != inDensity);
  }
  
  private boolean a(ImageHeaderParser.ImageType paramImageType)
  {
    if (Build.VERSION.SDK_INT >= 19) {
      return true;
    }
    return c.contains(paramImageType);
  }
  
  private static int[] a(InputStream paramInputStream, BitmapFactory.Options paramOptions, DecodeCallbacks paramDecodeCallbacks, BitmapPool paramBitmapPool)
    throws IOException
  {
    inJustDecodeBounds = true;
    b(paramInputStream, paramOptions, paramDecodeCallbacks, paramBitmapPool);
    inJustDecodeBounds = false;
    return new int[] { outWidth, outHeight };
  }
  
  private static int b(double paramDouble)
  {
    if (paramDouble > 1.0D) {
      paramDouble = 1.0D / paramDouble;
    }
    return (int)Math.round(paramDouble * 2.147483647E9D);
  }
  
  /* Error */
  private static Bitmap b(InputStream paramInputStream, BitmapFactory.Options paramOptions, DecodeCallbacks paramDecodeCallbacks, BitmapPool paramBitmapPool)
    throws IOException
  {
    // Byte code:
    //   0: aload_1
    //   1: getfield 554	android/graphics/BitmapFactory$Options:inJustDecodeBounds	Z
    //   4: ifeq +13 -> 17
    //   7: aload_0
    //   8: ldc_w 566
    //   11: invokevirtual 571	java/io/InputStream:mark	(I)V
    //   14: goto +9 -> 23
    //   17: aload_2
    //   18: invokeinterface 574 1 0
    //   23: aload_1
    //   24: getfield 557	android/graphics/BitmapFactory$Options:outWidth	I
    //   27: istore 4
    //   29: aload_1
    //   30: getfield 560	android/graphics/BitmapFactory$Options:outHeight	I
    //   33: istore 5
    //   35: aload_1
    //   36: getfield 195	android/graphics/BitmapFactory$Options:outMimeType	Ljava/lang/String;
    //   39: astore 6
    //   41: invokestatic 578	com/bumptech/glide/load/resource/bitmap/TransformationUtils:getBitmapDrawableLock	()Ljava/util/concurrent/locks/Lock;
    //   44: invokeinterface 583 1 0
    //   49: aload_0
    //   50: aconst_null
    //   51: aload_1
    //   52: invokestatic 589	android/graphics/BitmapFactory:decodeStream	(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    //   55: astore 7
    //   57: invokestatic 578	com/bumptech/glide/load/resource/bitmap/TransformationUtils:getBitmapDrawableLock	()Ljava/util/concurrent/locks/Lock;
    //   60: invokeinterface 592 1 0
    //   65: aload_1
    //   66: getfield 554	android/graphics/BitmapFactory$Options:inJustDecodeBounds	Z
    //   69: ifeq +7 -> 76
    //   72: aload_0
    //   73: invokevirtual 595	java/io/InputStream:reset	()V
    //   76: aload 7
    //   78: areturn
    //   79: astore_0
    //   80: goto +93 -> 173
    //   83: astore 7
    //   85: aload 7
    //   87: iload 4
    //   89: iload 5
    //   91: aload 6
    //   93: aload_1
    //   94: invokestatic 597	com/bumptech/glide/load/resource/bitmap/Downsampler:a	(Ljava/lang/IllegalArgumentException;IILjava/lang/String;Landroid/graphics/BitmapFactory$Options;)Ljava/io/IOException;
    //   97: astore 6
    //   99: ldc -1
    //   101: iconst_3
    //   102: invokestatic 261	android/util/Log:isLoggable	(Ljava/lang/String;I)Z
    //   105: ifeq +14 -> 119
    //   108: ldc -1
    //   110: ldc_w 599
    //   113: aload 6
    //   115: invokestatic 542	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   118: pop
    //   119: aload_1
    //   120: getfield 445	android/graphics/BitmapFactory$Options:inBitmap	Landroid/graphics/Bitmap;
    //   123: astore 7
    //   125: aload 7
    //   127: ifnull +43 -> 170
    //   130: aload_0
    //   131: invokevirtual 595	java/io/InputStream:reset	()V
    //   134: aload_3
    //   135: aload_1
    //   136: getfield 445	android/graphics/BitmapFactory$Options:inBitmap	Landroid/graphics/Bitmap;
    //   139: invokeinterface 330 2 0
    //   144: aload_1
    //   145: aconst_null
    //   146: putfield 445	android/graphics/BitmapFactory$Options:inBitmap	Landroid/graphics/Bitmap;
    //   149: aload_0
    //   150: aload_1
    //   151: aload_2
    //   152: aload_3
    //   153: invokestatic 302	com/bumptech/glide/load/resource/bitmap/Downsampler:b	(Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;Lcom/bumptech/glide/load/resource/bitmap/Downsampler$DecodeCallbacks;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)Landroid/graphics/Bitmap;
    //   156: astore_0
    //   157: invokestatic 578	com/bumptech/glide/load/resource/bitmap/TransformationUtils:getBitmapDrawableLock	()Ljava/util/concurrent/locks/Lock;
    //   160: invokeinterface 592 1 0
    //   165: aload_0
    //   166: areturn
    //   167: aload 6
    //   169: athrow
    //   170: aload 6
    //   172: athrow
    //   173: invokestatic 578	com/bumptech/glide/load/resource/bitmap/TransformationUtils:getBitmapDrawableLock	()Ljava/util/concurrent/locks/Lock;
    //   176: invokeinterface 592 1 0
    //   181: aload_0
    //   182: athrow
    //   183: astore_0
    //   184: goto -17 -> 167
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	187	0	paramInputStream	InputStream
    //   0	187	1	paramOptions	BitmapFactory.Options
    //   0	187	2	paramDecodeCallbacks	DecodeCallbacks
    //   0	187	3	paramBitmapPool	BitmapPool
    //   27	61	4	j	int
    //   33	57	5	k	int
    //   39	132	6	localObject	Object
    //   55	22	7	localBitmap1	Bitmap
    //   83	3	7	localIllegalArgumentException	IllegalArgumentException
    //   123	3	7	localBitmap2	Bitmap
    // Exception table:
    //   from	to	target	type
    //   49	57	79	finally
    //   85	119	79	finally
    //   119	125	79	finally
    //   130	157	79	finally
    //   167	170	79	finally
    //   170	173	79	finally
    //   49	57	83	java/lang/IllegalArgumentException
    //   130	157	183	java/io/IOException
  }
  
  private static String b(BitmapFactory.Options paramOptions)
  {
    return a(inBitmap);
  }
  
  private static int c(double paramDouble)
  {
    return (int)(paramDouble + 0.5D);
  }
  
  private static void c(BitmapFactory.Options paramOptions)
  {
    d(paramOptions);
    synchronized (d)
    {
      d.offer(paramOptions);
      return;
    }
  }
  
  private static void d(BitmapFactory.Options paramOptions)
  {
    inTempStorage = null;
    inDither = false;
    inScaled = false;
    inSampleSize = 1;
    inPreferredConfig = null;
    inJustDecodeBounds = false;
    inDensity = 0;
    inTargetDensity = 0;
    outWidth = 0;
    outHeight = 0;
    outMimeType = null;
    inBitmap = null;
    inMutable = true;
  }
  
  public Resource<Bitmap> decode(InputStream paramInputStream, int paramInt1, int paramInt2, Options paramOptions)
    throws IOException
  {
    return decode(paramInputStream, paramInt1, paramInt2, paramOptions, b);
  }
  
  public Resource<Bitmap> decode(InputStream paramInputStream, int paramInt1, int paramInt2, Options paramOptions, DecodeCallbacks paramDecodeCallbacks)
    throws IOException
  {
    Preconditions.checkArgument(paramInputStream.markSupported(), "You must provide an InputStream that supports mark()");
    byte[] arrayOfByte = (byte[])g.get(65536, [B.class);
    BitmapFactory.Options localOptions = a();
    inTempStorage = arrayOfByte;
    DecodeFormat localDecodeFormat = (DecodeFormat)paramOptions.get(DECODE_FORMAT);
    DownsampleStrategy localDownsampleStrategy = (DownsampleStrategy)paramOptions.get(DOWNSAMPLE_STRATEGY);
    boolean bool2 = ((Boolean)paramOptions.get(FIX_BITMAP_SIZE_TO_REQUESTED_DIMENSIONS)).booleanValue();
    boolean bool1;
    if ((paramOptions.get(ALLOW_HARDWARE_CONFIG) != null) && (((Boolean)paramOptions.get(ALLOW_HARDWARE_CONFIG)).booleanValue())) {
      bool1 = true;
    } else {
      bool1 = false;
    }
    if (localDecodeFormat == DecodeFormat.PREFER_ARGB_8888_DISALLOW_HARDWARE) {
      bool1 = false;
    }
    try
    {
      paramInputStream = BitmapResource.obtain(a(paramInputStream, localOptions, localDownsampleStrategy, localDecodeFormat, bool1, paramInt1, paramInt2, bool2, paramDecodeCallbacks), e);
      return paramInputStream;
    }
    finally
    {
      c(localOptions);
      g.put(arrayOfByte);
    }
  }
  
  public boolean handles(InputStream paramInputStream)
  {
    return true;
  }
  
  public boolean handles(ByteBuffer paramByteBuffer)
  {
    return true;
  }
  
  public static abstract interface DecodeCallbacks
  {
    public abstract void onDecodeComplete(BitmapPool paramBitmapPool, Bitmap paramBitmap)
      throws IOException;
    
    public abstract void onObtainBounds();
  }
}
