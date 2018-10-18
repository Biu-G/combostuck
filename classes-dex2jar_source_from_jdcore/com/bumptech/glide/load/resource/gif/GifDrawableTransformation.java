package com.bumptech.glide.load.resource.gif;

import android.content.Context;
import android.graphics.Bitmap;
import android.support.annotation.NonNull;
import com.bumptech.glide.Glide;
import com.bumptech.glide.load.Transformation;
import com.bumptech.glide.load.engine.Resource;
import com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool;
import com.bumptech.glide.load.resource.bitmap.BitmapResource;
import com.bumptech.glide.util.Preconditions;
import java.security.MessageDigest;

public class GifDrawableTransformation
  implements Transformation<GifDrawable>
{
  private final Transformation<Bitmap> a;
  
  @Deprecated
  public GifDrawableTransformation(Context paramContext, Transformation<Bitmap> paramTransformation)
  {
    this(paramTransformation);
  }
  
  public GifDrawableTransformation(Transformation<Bitmap> paramTransformation)
  {
    a = ((Transformation)Preconditions.checkNotNull(paramTransformation));
  }
  
  @Deprecated
  public GifDrawableTransformation(Transformation<Bitmap> paramTransformation, BitmapPool paramBitmapPool)
  {
    this(paramTransformation);
  }
  
  public boolean equals(Object paramObject)
  {
    if ((paramObject instanceof GifDrawableTransformation))
    {
      paramObject = (GifDrawableTransformation)paramObject;
      return a.equals(a);
    }
    return false;
  }
  
  public int hashCode()
  {
    return a.hashCode();
  }
  
  @NonNull
  public Resource<GifDrawable> transform(@NonNull Context paramContext, @NonNull Resource<GifDrawable> paramResource, int paramInt1, int paramInt2)
  {
    GifDrawable localGifDrawable = (GifDrawable)paramResource.get();
    Object localObject = Glide.get(paramContext).getBitmapPool();
    localObject = new BitmapResource(localGifDrawable.getFirstFrame(), (BitmapPool)localObject);
    paramContext = a.transform(paramContext, (Resource)localObject, paramInt1, paramInt2);
    if (!localObject.equals(paramContext)) {
      ((Resource)localObject).recycle();
    }
    paramContext = (Bitmap)paramContext.get();
    localGifDrawable.setFrameTransformation(a, paramContext);
    return paramResource;
  }
  
  public void updateDiskCacheKey(@NonNull MessageDigest paramMessageDigest)
  {
    a.updateDiskCacheKey(paramMessageDigest);
  }
}
