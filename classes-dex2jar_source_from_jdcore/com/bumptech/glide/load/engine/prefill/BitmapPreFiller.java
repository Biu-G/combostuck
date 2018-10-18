package com.bumptech.glide.load.engine.prefill;

import android.graphics.Bitmap.Config;
import android.os.Handler;
import android.os.Looper;
import android.support.annotation.VisibleForTesting;
import com.bumptech.glide.load.DecodeFormat;
import com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool;
import com.bumptech.glide.load.engine.cache.MemoryCache;
import com.bumptech.glide.util.Util;
import java.util.HashMap;
import java.util.Map;

public final class BitmapPreFiller
{
  private final MemoryCache a;
  private final BitmapPool b;
  private final DecodeFormat c;
  private final Handler d = new Handler(Looper.getMainLooper());
  private a e;
  
  public BitmapPreFiller(MemoryCache paramMemoryCache, BitmapPool paramBitmapPool, DecodeFormat paramDecodeFormat)
  {
    a = paramMemoryCache;
    b = paramBitmapPool;
    c = paramDecodeFormat;
  }
  
  private static int a(PreFillType paramPreFillType)
  {
    return Util.getBitmapByteSize(paramPreFillType.a(), paramPreFillType.b(), paramPreFillType.c());
  }
  
  @VisibleForTesting
  b a(PreFillType... paramVarArgs)
  {
    long l1 = a.getMaxSize();
    long l2 = a.getCurrentSize();
    long l3 = b.getMaxSize();
    int m = paramVarArgs.length;
    int k = 0;
    int i = 0;
    int j = 0;
    while (i < m)
    {
      j += paramVarArgs[i].d();
      i += 1;
    }
    float f = (float)(l1 - l2 + l3) / j;
    HashMap localHashMap = new HashMap();
    j = paramVarArgs.length;
    i = k;
    while (i < j)
    {
      PreFillType localPreFillType = paramVarArgs[i];
      localHashMap.put(localPreFillType, Integer.valueOf(Math.round(localPreFillType.d() * f) / a(localPreFillType)));
      i += 1;
    }
    return new b(localHashMap);
  }
  
  public void preFill(PreFillType.Builder... paramVarArgs)
  {
    if (e != null) {
      e.a();
    }
    PreFillType[] arrayOfPreFillType = new PreFillType[paramVarArgs.length];
    int i = 0;
    while (i < paramVarArgs.length)
    {
      PreFillType.Builder localBuilder = paramVarArgs[i];
      if (localBuilder.a() == null)
      {
        Bitmap.Config localConfig;
        if ((c != DecodeFormat.PREFER_ARGB_8888) && (c != DecodeFormat.PREFER_ARGB_8888_DISALLOW_HARDWARE)) {
          localConfig = Bitmap.Config.RGB_565;
        } else {
          localConfig = Bitmap.Config.ARGB_8888;
        }
        localBuilder.setConfig(localConfig);
      }
      arrayOfPreFillType[i] = localBuilder.b();
      i += 1;
    }
    paramVarArgs = a(arrayOfPreFillType);
    e = new a(b, a, paramVarArgs);
    d.post(e);
  }
}
