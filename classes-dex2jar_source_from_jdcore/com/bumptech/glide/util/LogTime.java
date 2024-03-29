package com.bumptech.glide.util;

import android.annotation.TargetApi;
import android.os.Build.VERSION;
import android.os.SystemClock;

public final class LogTime
{
  private static final double a;
  
  static
  {
    int i = Build.VERSION.SDK_INT;
    double d = 1.0D;
    if (i >= 17) {
      d = 1.0D / Math.pow(10.0D, 6.0D);
    }
    a = d;
  }
  
  private LogTime() {}
  
  public static double getElapsedMillis(long paramLong)
  {
    return (getLogTime() - paramLong) * a;
  }
  
  @TargetApi(17)
  public static long getLogTime()
  {
    if (Build.VERSION.SDK_INT >= 17) {
      return SystemClock.elapsedRealtimeNanos();
    }
    return SystemClock.uptimeMillis();
  }
}
