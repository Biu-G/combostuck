package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import com.bumptech.glide.load.EncodeStrategy;
import com.bumptech.glide.load.Option;
import com.bumptech.glide.load.Options;
import com.bumptech.glide.load.ResourceEncoder;
import com.bumptech.glide.load.engine.bitmap_recycle.ArrayPool;

public class BitmapEncoder
  implements ResourceEncoder<Bitmap>
{
  public static final Option<Bitmap.CompressFormat> COMPRESSION_FORMAT = Option.memory("com.bumptech.glide.load.resource.bitmap.BitmapEncoder.CompressionFormat");
  public static final Option<Integer> COMPRESSION_QUALITY = Option.memory("com.bumptech.glide.load.resource.bitmap.BitmapEncoder.CompressionQuality", Integer.valueOf(90));
  @Nullable
  private final ArrayPool a;
  
  @Deprecated
  public BitmapEncoder()
  {
    a = null;
  }
  
  public BitmapEncoder(@NonNull ArrayPool paramArrayPool)
  {
    a = paramArrayPool;
  }
  
  private Bitmap.CompressFormat a(Bitmap paramBitmap, Options paramOptions)
  {
    paramOptions = (Bitmap.CompressFormat)paramOptions.get(COMPRESSION_FORMAT);
    if (paramOptions != null) {
      return paramOptions;
    }
    if (paramBitmap.hasAlpha()) {
      return Bitmap.CompressFormat.PNG;
    }
    return Bitmap.CompressFormat.JPEG;
  }
  
  /* Error */
  public boolean encode(@NonNull com.bumptech.glide.load.engine.Resource<Bitmap> paramResource, @NonNull java.io.File paramFile, @NonNull Options paramOptions)
  {
    // Byte code:
    //   0: aload_1
    //   1: invokeinterface 82 1 0
    //   6: checkcast 62	android/graphics/Bitmap
    //   9: astore 11
    //   11: aload_0
    //   12: aload 11
    //   14: aload_3
    //   15: invokespecial 84	com/bumptech/glide/load/resource/bitmap/BitmapEncoder:a	(Landroid/graphics/Bitmap;Lcom/bumptech/glide/load/Options;)Landroid/graphics/Bitmap$CompressFormat;
    //   18: astore 12
    //   20: new 86	java/lang/StringBuilder
    //   23: dup
    //   24: invokespecial 87	java/lang/StringBuilder:<init>	()V
    //   27: astore_1
    //   28: aload_1
    //   29: ldc 89
    //   31: invokevirtual 93	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   34: pop
    //   35: aload_1
    //   36: aload 11
    //   38: invokevirtual 97	android/graphics/Bitmap:getWidth	()I
    //   41: invokevirtual 100	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   44: pop
    //   45: aload_1
    //   46: ldc 102
    //   48: invokevirtual 93	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   51: pop
    //   52: aload_1
    //   53: aload 11
    //   55: invokevirtual 105	android/graphics/Bitmap:getHeight	()I
    //   58: invokevirtual 100	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   61: pop
    //   62: aload_1
    //   63: ldc 107
    //   65: invokevirtual 93	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   68: pop
    //   69: aload_1
    //   70: aload 12
    //   72: invokevirtual 110	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   75: pop
    //   76: aload_1
    //   77: invokevirtual 114	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   80: invokestatic 120	android/support/v4/os/TraceCompat:beginSection	(Ljava/lang/String;)V
    //   83: invokestatic 126	com/bumptech/glide/util/LogTime:getLogTime	()J
    //   86: lstore 5
    //   88: aload_3
    //   89: getstatic 33	com/bumptech/glide/load/resource/bitmap/BitmapEncoder:COMPRESSION_QUALITY	Lcom/bumptech/glide/load/Option;
    //   92: invokevirtual 58	com/bumptech/glide/load/Options:get	(Lcom/bumptech/glide/load/Option;)Ljava/lang/Object;
    //   95: checkcast 21	java/lang/Integer
    //   98: invokevirtual 129	java/lang/Integer:intValue	()I
    //   101: istore 4
    //   103: iconst_0
    //   104: istore 7
    //   106: iconst_0
    //   107: istore 8
    //   109: aconst_null
    //   110: astore 10
    //   112: aconst_null
    //   113: astore 9
    //   115: new 131	java/io/FileOutputStream
    //   118: dup
    //   119: aload_2
    //   120: invokespecial 134	java/io/FileOutputStream:<init>	(Ljava/io/File;)V
    //   123: astore_1
    //   124: aload_0
    //   125: getfield 47	com/bumptech/glide/load/resource/bitmap/BitmapEncoder:a	Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;
    //   128: ifnull +21 -> 149
    //   131: new 136	com/bumptech/glide/load/data/BufferedOutputStream
    //   134: dup
    //   135: aload_1
    //   136: aload_0
    //   137: getfield 47	com/bumptech/glide/load/resource/bitmap/BitmapEncoder:a	Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;
    //   140: invokespecial 139	com/bumptech/glide/load/data/BufferedOutputStream:<init>	(Ljava/io/OutputStream;Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;)V
    //   143: astore_2
    //   144: aload_2
    //   145: astore_1
    //   146: goto +3 -> 149
    //   149: aload_1
    //   150: astore 9
    //   152: aload_1
    //   153: astore 10
    //   155: aload 11
    //   157: aload 12
    //   159: iload 4
    //   161: aload_1
    //   162: invokevirtual 143	android/graphics/Bitmap:compress	(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    //   165: pop
    //   166: aload_1
    //   167: astore 9
    //   169: aload_1
    //   170: astore 10
    //   172: aload_1
    //   173: invokevirtual 148	java/io/OutputStream:close	()V
    //   176: iconst_1
    //   177: istore 7
    //   179: aload_1
    //   180: invokevirtual 148	java/io/OutputStream:close	()V
    //   183: goto +59 -> 242
    //   186: astore_2
    //   187: aload_1
    //   188: astore 9
    //   190: aload_2
    //   191: astore_1
    //   192: goto +167 -> 359
    //   195: astore_2
    //   196: goto +11 -> 207
    //   199: astore_1
    //   200: goto +159 -> 359
    //   203: astore_2
    //   204: aload 10
    //   206: astore_1
    //   207: aload_1
    //   208: astore 9
    //   210: ldc -106
    //   212: iconst_3
    //   213: invokestatic 156	android/util/Log:isLoggable	(Ljava/lang/String;I)Z
    //   216: ifeq +15 -> 231
    //   219: aload_1
    //   220: astore 9
    //   222: ldc -106
    //   224: ldc -98
    //   226: aload_2
    //   227: invokestatic 162	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   230: pop
    //   231: aload_1
    //   232: ifnull +10 -> 242
    //   235: iload 8
    //   237: istore 7
    //   239: goto -60 -> 179
    //   242: ldc -106
    //   244: iconst_2
    //   245: invokestatic 156	android/util/Log:isLoggable	(Ljava/lang/String;I)Z
    //   248: ifeq +105 -> 353
    //   251: new 86	java/lang/StringBuilder
    //   254: dup
    //   255: invokespecial 87	java/lang/StringBuilder:<init>	()V
    //   258: astore_1
    //   259: aload_1
    //   260: ldc -92
    //   262: invokevirtual 93	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   265: pop
    //   266: aload_1
    //   267: aload 12
    //   269: invokevirtual 110	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   272: pop
    //   273: aload_1
    //   274: ldc -90
    //   276: invokevirtual 93	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   279: pop
    //   280: aload_1
    //   281: aload 11
    //   283: invokestatic 172	com/bumptech/glide/util/Util:getBitmapByteSize	(Landroid/graphics/Bitmap;)I
    //   286: invokevirtual 100	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   289: pop
    //   290: aload_1
    //   291: ldc -82
    //   293: invokevirtual 93	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   296: pop
    //   297: aload_1
    //   298: lload 5
    //   300: invokestatic 178	com/bumptech/glide/util/LogTime:getElapsedMillis	(J)D
    //   303: invokevirtual 181	java/lang/StringBuilder:append	(D)Ljava/lang/StringBuilder;
    //   306: pop
    //   307: aload_1
    //   308: ldc -73
    //   310: invokevirtual 93	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   313: pop
    //   314: aload_1
    //   315: aload_3
    //   316: getstatic 40	com/bumptech/glide/load/resource/bitmap/BitmapEncoder:COMPRESSION_FORMAT	Lcom/bumptech/glide/load/Option;
    //   319: invokevirtual 58	com/bumptech/glide/load/Options:get	(Lcom/bumptech/glide/load/Option;)Ljava/lang/Object;
    //   322: invokevirtual 110	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   325: pop
    //   326: aload_1
    //   327: ldc -71
    //   329: invokevirtual 93	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   332: pop
    //   333: aload_1
    //   334: aload 11
    //   336: invokevirtual 66	android/graphics/Bitmap:hasAlpha	()Z
    //   339: invokevirtual 188	java/lang/StringBuilder:append	(Z)Ljava/lang/StringBuilder;
    //   342: pop
    //   343: ldc -106
    //   345: aload_1
    //   346: invokevirtual 114	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   349: invokestatic 192	android/util/Log:v	(Ljava/lang/String;Ljava/lang/String;)I
    //   352: pop
    //   353: invokestatic 195	android/support/v4/os/TraceCompat:endSection	()V
    //   356: iload 7
    //   358: ireturn
    //   359: aload 9
    //   361: ifnull +8 -> 369
    //   364: aload 9
    //   366: invokevirtual 148	java/io/OutputStream:close	()V
    //   369: aload_1
    //   370: athrow
    //   371: astore_1
    //   372: invokestatic 195	android/support/v4/os/TraceCompat:endSection	()V
    //   375: aload_1
    //   376: athrow
    //   377: astore_1
    //   378: goto -136 -> 242
    //   381: astore_2
    //   382: goto -13 -> 369
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	385	0	this	BitmapEncoder
    //   0	385	1	paramResource	com.bumptech.glide.load.engine.Resource<Bitmap>
    //   0	385	2	paramFile	java.io.File
    //   0	385	3	paramOptions	Options
    //   101	59	4	i	int
    //   86	213	5	l	long
    //   104	253	7	bool1	boolean
    //   107	129	8	bool2	boolean
    //   113	252	9	localResource1	com.bumptech.glide.load.engine.Resource<Bitmap>
    //   110	95	10	localResource2	com.bumptech.glide.load.engine.Resource<Bitmap>
    //   9	326	11	localBitmap	Bitmap
    //   18	250	12	localCompressFormat	Bitmap.CompressFormat
    // Exception table:
    //   from	to	target	type
    //   124	144	186	finally
    //   124	144	195	java/io/IOException
    //   115	124	199	finally
    //   155	166	199	finally
    //   172	176	199	finally
    //   210	219	199	finally
    //   222	231	199	finally
    //   115	124	203	java/io/IOException
    //   155	166	203	java/io/IOException
    //   172	176	203	java/io/IOException
    //   83	103	371	finally
    //   179	183	371	finally
    //   242	353	371	finally
    //   364	369	371	finally
    //   369	371	371	finally
    //   179	183	377	java/io/IOException
    //   364	369	381	java/io/IOException
  }
  
  @NonNull
  public EncodeStrategy getEncodeStrategy(@NonNull Options paramOptions)
  {
    return EncodeStrategy.TRANSFORMED;
  }
}
