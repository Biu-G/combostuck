package com.bumptech.glide.load.resource.bitmap;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.support.annotation.NonNull;
import com.bumptech.glide.Glide;
import com.bumptech.glide.load.Transformation;
import com.bumptech.glide.load.engine.Resource;
import com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool;
import java.security.MessageDigest;

public class DrawableTransformation
  implements Transformation<Drawable>
{
  private final Transformation<Bitmap> a;
  private final boolean b;
  
  public DrawableTransformation(Transformation<Bitmap> paramTransformation, boolean paramBoolean)
  {
    a = paramTransformation;
    b = paramBoolean;
  }
  
  private Resource<Drawable> a(Context paramContext, Resource<Bitmap> paramResource)
  {
    return LazyBitmapDrawableResource.obtain(paramContext.getResources(), paramResource);
  }
  
  public Transformation<BitmapDrawable> asBitmapDrawable()
  {
    return this;
  }
  
  public boolean equals(Object paramObject)
  {
    if ((paramObject instanceof DrawableTransformation))
    {
      paramObject = (DrawableTransformation)paramObject;
      return a.equals(a);
    }
    return false;
  }
  
  public int hashCode()
  {
    return a.hashCode();
  }
  
  @NonNull
  public Resource<Drawable> transform(@NonNull Context paramContext, @NonNull Resource<Drawable> paramResource, int paramInt1, int paramInt2)
  {
    Object localObject2 = Glide.get(paramContext).getBitmapPool();
    Object localObject1 = (Drawable)paramResource.get();
    localObject2 = a.a((BitmapPool)localObject2, (Drawable)localObject1, paramInt1, paramInt2);
    if (localObject2 == null)
    {
      if (!b) {
        return paramResource;
      }
      paramContext = new StringBuilder();
      paramContext.append("Unable to convert ");
      paramContext.append(localObject1);
      paramContext.append(" to a Bitmap");
      throw new IllegalArgumentException(paramContext.toString());
    }
    localObject1 = a.transform(paramContext, (Resource)localObject2, paramInt1, paramInt2);
    if (localObject1.equals(localObject2))
    {
      ((Resource)localObject1).recycle();
      return paramResource;
    }
    return a(paramContext, (Resource)localObject1);
  }
  
  public void updateDiskCacheKey(@NonNull MessageDigest paramMessageDigest)
  {
    a.updateDiskCacheKey(paramMessageDigest);
  }
}
