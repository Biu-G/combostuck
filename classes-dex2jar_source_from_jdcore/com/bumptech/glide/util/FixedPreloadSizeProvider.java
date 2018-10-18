package com.bumptech.glide.util;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import com.bumptech.glide.ListPreloader.PreloadSizeProvider;

public class FixedPreloadSizeProvider<T>
  implements ListPreloader.PreloadSizeProvider<T>
{
  private final int[] a;
  
  public FixedPreloadSizeProvider(int paramInt1, int paramInt2)
  {
    a = new int[] { paramInt1, paramInt2 };
  }
  
  @Nullable
  public int[] getPreloadSize(@NonNull T paramT, int paramInt1, int paramInt2)
  {
    return a;
  }
}
