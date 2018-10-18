package com.bumptech.glide.load.resource.bitmap;

import android.annotation.TargetApi;
import android.content.res.AssetFileDescriptor;
import android.graphics.Bitmap;
import android.media.MediaMetadataRetriever;
import android.os.Build.VERSION;
import android.os.ParcelFileDescriptor;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.VisibleForTesting;
import com.bumptech.glide.load.Option;
import com.bumptech.glide.load.Option.CacheKeyUpdater;
import com.bumptech.glide.load.Options;
import com.bumptech.glide.load.ResourceDecoder;
import com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool;
import java.nio.ByteBuffer;
import java.security.MessageDigest;

public class VideoDecoder<T>
  implements ResourceDecoder<T, Bitmap>
{
  public static final long DEFAULT_FRAME = -1L;
  public static final Option<Integer> FRAME_OPTION = Option.disk("com.bumptech.glide.load.resource.bitmap.VideoBitmapDecode.FrameOption", Integer.valueOf(2), new Option.CacheKeyUpdater()
  {
    private final ByteBuffer a = ByteBuffer.allocate(4);
    
    public void a(@NonNull byte[] arg1, @NonNull Integer paramAnonymousInteger, @NonNull MessageDigest paramAnonymousMessageDigest)
    {
      if (paramAnonymousInteger == null) {
        return;
      }
      paramAnonymousMessageDigest.update(???);
      synchronized (a)
      {
        a.position(0);
        paramAnonymousMessageDigest.update(a.putInt(paramAnonymousInteger.intValue()).array());
        return;
      }
    }
  });
  public static final Option<Long> TARGET_FRAME = Option.disk("com.bumptech.glide.load.resource.bitmap.VideoBitmapDecode.TargetFrame", Long.valueOf(-1L), new Option.CacheKeyUpdater()
  {
    private final ByteBuffer a = ByteBuffer.allocate(8);
    
    public void a(@NonNull byte[] arg1, @NonNull Long paramAnonymousLong, @NonNull MessageDigest paramAnonymousMessageDigest)
    {
      paramAnonymousMessageDigest.update(???);
      synchronized (a)
      {
        a.position(0);
        paramAnonymousMessageDigest.update(a.putLong(paramAnonymousLong.longValue()).array());
        return;
      }
    }
  });
  private static final b a = new b();
  private final c<T> b;
  private final BitmapPool c;
  private final b d;
  
  VideoDecoder(BitmapPool paramBitmapPool, c<T> paramC)
  {
    this(paramBitmapPool, paramC, a);
  }
  
  @VisibleForTesting
  VideoDecoder(BitmapPool paramBitmapPool, c<T> paramC, b paramB)
  {
    c = paramBitmapPool;
    b = paramC;
    d = paramB;
  }
  
  @TargetApi(27)
  @Nullable
  private static Bitmap a(MediaMetadataRetriever paramMediaMetadataRetriever, long paramLong, int paramInt1, int paramInt2, int paramInt3)
  {
    if ((Build.VERSION.SDK_INT >= 27) && (paramInt2 != Integer.MIN_VALUE) && (paramInt3 != Integer.MIN_VALUE)) {
      return paramMediaMetadataRetriever.getScaledFrameAtTime(paramLong, paramInt1, paramInt2, paramInt3);
    }
    return paramMediaMetadataRetriever.getFrameAtTime(paramLong, paramInt1);
  }
  
  public static ResourceDecoder<AssetFileDescriptor, Bitmap> asset(BitmapPool paramBitmapPool)
  {
    return new VideoDecoder(paramBitmapPool, new a(null));
  }
  
  public static ResourceDecoder<ParcelFileDescriptor, Bitmap> parcel(BitmapPool paramBitmapPool)
  {
    return new VideoDecoder(paramBitmapPool, new d());
  }
  
  /* Error */
  public com.bumptech.glide.load.engine.Resource<Bitmap> decode(@NonNull T paramT, int paramInt1, int paramInt2, @NonNull Options paramOptions)
    throws java.io.IOException
  {
    // Byte code:
    //   0: aload 4
    //   2: getstatic 57	com/bumptech/glide/load/resource/bitmap/VideoDecoder:TARGET_FRAME	Lcom/bumptech/glide/load/Option;
    //   5: invokevirtual 133	com/bumptech/glide/load/Options:get	(Lcom/bumptech/glide/load/Option;)Ljava/lang/Object;
    //   8: checkcast 42	java/lang/Long
    //   11: invokevirtual 137	java/lang/Long:longValue	()J
    //   14: lstore 5
    //   16: lload 5
    //   18: lconst_0
    //   19: lcmp
    //   20: ifge +49 -> 69
    //   23: lload 5
    //   25: ldc2_w 26
    //   28: lcmp
    //   29: ifne +6 -> 35
    //   32: goto +37 -> 69
    //   35: new 139	java/lang/StringBuilder
    //   38: dup
    //   39: invokespecial 140	java/lang/StringBuilder:<init>	()V
    //   42: astore_1
    //   43: aload_1
    //   44: ldc -114
    //   46: invokevirtual 146	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   49: pop
    //   50: aload_1
    //   51: lload 5
    //   53: invokevirtual 149	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   56: pop
    //   57: new 151	java/lang/IllegalArgumentException
    //   60: dup
    //   61: aload_1
    //   62: invokevirtual 155	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   65: invokespecial 158	java/lang/IllegalArgumentException:<init>	(Ljava/lang/String;)V
    //   68: athrow
    //   69: aload 4
    //   71: getstatic 67	com/bumptech/glide/load/resource/bitmap/VideoDecoder:FRAME_OPTION	Lcom/bumptech/glide/load/Option;
    //   74: invokevirtual 133	com/bumptech/glide/load/Options:get	(Lcom/bumptech/glide/load/Option;)Ljava/lang/Object;
    //   77: checkcast 61	java/lang/Integer
    //   80: astore 7
    //   82: aload 7
    //   84: astore 4
    //   86: aload 7
    //   88: ifnonnull +9 -> 97
    //   91: iconst_2
    //   92: invokestatic 64	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   95: astore 4
    //   97: aload_0
    //   98: getfield 85	com/bumptech/glide/load/resource/bitmap/VideoDecoder:d	Lcom/bumptech/glide/load/resource/bitmap/VideoDecoder$b;
    //   101: invokevirtual 161	com/bumptech/glide/load/resource/bitmap/VideoDecoder$b:a	()Landroid/media/MediaMetadataRetriever;
    //   104: astore 7
    //   106: aload_0
    //   107: getfield 83	com/bumptech/glide/load/resource/bitmap/VideoDecoder:b	Lcom/bumptech/glide/load/resource/bitmap/VideoDecoder$c;
    //   110: aload 7
    //   112: aload_1
    //   113: invokeinterface 164 3 0
    //   118: aload 7
    //   120: lload 5
    //   122: aload 4
    //   124: invokevirtual 168	java/lang/Integer:intValue	()I
    //   127: iload_2
    //   128: iload_3
    //   129: invokestatic 170	com/bumptech/glide/load/resource/bitmap/VideoDecoder:a	(Landroid/media/MediaMetadataRetriever;JIII)Landroid/graphics/Bitmap;
    //   132: astore_1
    //   133: aload 7
    //   135: invokevirtual 173	android/media/MediaMetadataRetriever:release	()V
    //   138: aload_1
    //   139: aload_0
    //   140: getfield 81	com/bumptech/glide/load/resource/bitmap/VideoDecoder:c	Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
    //   143: invokestatic 179	com/bumptech/glide/load/resource/bitmap/BitmapResource:obtain	(Landroid/graphics/Bitmap;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)Lcom/bumptech/glide/load/resource/bitmap/BitmapResource;
    //   146: areturn
    //   147: astore_1
    //   148: goto +13 -> 161
    //   151: astore_1
    //   152: new 124	java/io/IOException
    //   155: dup
    //   156: aload_1
    //   157: invokespecial 182	java/io/IOException:<init>	(Ljava/lang/Throwable;)V
    //   160: athrow
    //   161: aload 7
    //   163: invokevirtual 173	android/media/MediaMetadataRetriever:release	()V
    //   166: aload_1
    //   167: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	168	0	this	VideoDecoder
    //   0	168	1	paramT	T
    //   0	168	2	paramInt1	int
    //   0	168	3	paramInt2	int
    //   0	168	4	paramOptions	Options
    //   14	107	5	l	long
    //   80	82	7	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   106	133	147	finally
    //   152	161	147	finally
    //   106	133	151	java/lang/RuntimeException
  }
  
  public boolean handles(@NonNull T paramT, @NonNull Options paramOptions)
  {
    return true;
  }
  
  private static final class a
    implements VideoDecoder.c<AssetFileDescriptor>
  {
    private a() {}
    
    public void a(MediaMetadataRetriever paramMediaMetadataRetriever, AssetFileDescriptor paramAssetFileDescriptor)
    {
      paramMediaMetadataRetriever.setDataSource(paramAssetFileDescriptor.getFileDescriptor(), paramAssetFileDescriptor.getStartOffset(), paramAssetFileDescriptor.getLength());
    }
  }
  
  @VisibleForTesting
  static class b
  {
    b() {}
    
    public MediaMetadataRetriever a()
    {
      return new MediaMetadataRetriever();
    }
  }
  
  @VisibleForTesting
  static abstract interface c<T>
  {
    public abstract void a(MediaMetadataRetriever paramMediaMetadataRetriever, T paramT);
  }
  
  static final class d
    implements VideoDecoder.c<ParcelFileDescriptor>
  {
    d() {}
    
    public void a(MediaMetadataRetriever paramMediaMetadataRetriever, ParcelFileDescriptor paramParcelFileDescriptor)
    {
      paramMediaMetadataRetriever.setDataSource(paramParcelFileDescriptor.getFileDescriptor());
    }
  }
}
