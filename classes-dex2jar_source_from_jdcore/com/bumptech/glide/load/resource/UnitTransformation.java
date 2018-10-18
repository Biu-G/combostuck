package com.bumptech.glide.load.resource;

import android.content.Context;
import android.support.annotation.NonNull;
import com.bumptech.glide.load.Transformation;
import com.bumptech.glide.load.engine.Resource;
import java.security.MessageDigest;

public final class UnitTransformation<T>
  implements Transformation<T>
{
  private static final Transformation<?> a = new UnitTransformation();
  
  private UnitTransformation() {}
  
  @NonNull
  public static <T> UnitTransformation<T> get()
  {
    return (UnitTransformation)a;
  }
  
  @NonNull
  public Resource<T> transform(@NonNull Context paramContext, @NonNull Resource<T> paramResource, int paramInt1, int paramInt2)
  {
    return paramResource;
  }
  
  public void updateDiskCacheKey(@NonNull MessageDigest paramMessageDigest) {}
}