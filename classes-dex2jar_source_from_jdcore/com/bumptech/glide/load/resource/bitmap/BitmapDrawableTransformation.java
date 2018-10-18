package com.bumptech.glide.load.resource.bitmap;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.support.annotation.NonNull;
import com.bumptech.glide.load.Transformation;
import com.bumptech.glide.load.engine.Resource;
import com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool;
import com.bumptech.glide.util.Preconditions;
import java.security.MessageDigest;

@Deprecated
public class BitmapDrawableTransformation
  implements Transformation<BitmapDrawable>
{
  private final Transformation<Drawable> a;
  
  @Deprecated
  public BitmapDrawableTransformation(Context paramContext, Transformation<Bitmap> paramTransformation)
  {
    this(paramTransformation);
  }
  
  @Deprecated
  public BitmapDrawableTransformation(Context paramContext, BitmapPool paramBitmapPool, Transformation<Bitmap> paramTransformation)
  {
    this(paramTransformation);
  }
  
  public BitmapDrawableTransformation(Transformation<Bitmap> paramTransformation)
  {
    a = ((Transformation)Preconditions.checkNotNull(new DrawableTransformation(paramTransformation, false)));
  }
  
  private static Resource<BitmapDrawable> a(Resource<Drawable> paramResource)
  {
    if ((paramResource.get() instanceof BitmapDrawable)) {
      return paramResource;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Wrapped transformation unexpectedly returned a non BitmapDrawable resource: ");
    localStringBuilder.append(paramResource.get());
    throw new IllegalArgumentException(localStringBuilder.toString());
  }
  
  private static Resource<Drawable> b(Resource<BitmapDrawable> paramResource)
  {
    return paramResource;
  }
  
  public boolean equals(Object paramObject)
  {
    if ((paramObject instanceof BitmapDrawableTransformation))
    {
      paramObject = (BitmapDrawableTransformation)paramObject;
      return a.equals(a);
    }
    return false;
  }
  
  public int hashCode()
  {
    return a.hashCode();
  }
  
  @NonNull
  public Resource<BitmapDrawable> transform(@NonNull Context paramContext, @NonNull Resource<BitmapDrawable> paramResource, int paramInt1, int paramInt2)
  {
    paramResource = b(paramResource);
    return a(a.transform(paramContext, paramResource, paramInt1, paramInt2));
  }
  
  public void updateDiskCacheKey(@NonNull MessageDigest paramMessageDigest)
  {
    a.updateDiskCacheKey(paramMessageDigest);
  }
}
