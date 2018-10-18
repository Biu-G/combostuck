package com.bumptech.glide.load.resource.bitmap;

import android.annotation.TargetApi;
import android.graphics.Bitmap.Config;
import android.graphics.BitmapFactory.Options;
import android.os.Build.VERSION;
import android.util.Log;
import com.bumptech.glide.load.DecodeFormat;
import java.io.File;

final class b
{
  private static final File a = new File("/proc/self/fd");
  private static volatile b d;
  private volatile int b;
  private volatile boolean c = true;
  
  private b() {}
  
  static b a()
  {
    if (d == null) {
      try
      {
        if (d == null) {
          d = new b();
        }
      }
      finally {}
    }
    return d;
  }
  
  private boolean b()
  {
    try
    {
      int i = b + 1;
      b = i;
      if (i >= 50)
      {
        bool = false;
        b = 0;
        i = a.list().length;
        if (i < 700) {
          bool = true;
        }
        c = bool;
        if ((!c) && (Log.isLoggable("Downsampler", 5)))
        {
          StringBuilder localStringBuilder = new StringBuilder();
          localStringBuilder.append("Excluding HARDWARE bitmap config because we're over the file descriptor limit, file descriptors ");
          localStringBuilder.append(i);
          localStringBuilder.append(", limit ");
          localStringBuilder.append(700);
          Log.w("Downsampler", localStringBuilder.toString());
        }
      }
      boolean bool = c;
      return bool;
    }
    finally {}
  }
  
  @TargetApi(26)
  boolean a(int paramInt1, int paramInt2, BitmapFactory.Options paramOptions, DecodeFormat paramDecodeFormat, boolean paramBoolean1, boolean paramBoolean2)
  {
    if ((paramBoolean1) && (Build.VERSION.SDK_INT >= 26) && (paramDecodeFormat != DecodeFormat.PREFER_ARGB_8888_DISALLOW_HARDWARE))
    {
      if (paramBoolean2) {
        return false;
      }
      if ((paramInt1 >= 128) && (paramInt2 >= 128) && (b())) {
        paramBoolean1 = true;
      } else {
        paramBoolean1 = false;
      }
      if (paramBoolean1)
      {
        inPreferredConfig = Bitmap.Config.HARDWARE;
        inMutable = false;
      }
      return paramBoolean1;
    }
    return false;
  }
}
