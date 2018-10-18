package com.bumptech.glide.load.resource.bitmap;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import com.bumptech.glide.Glide;
import com.bumptech.glide.load.engine.Initializable;
import com.bumptech.glide.load.engine.Resource;
import com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool;
import com.bumptech.glide.util.Preconditions;

public final class LazyBitmapDrawableResource
  implements Initializable, Resource<BitmapDrawable>
{
  private final Resources a;
  private final Resource<Bitmap> b;
  
  private LazyBitmapDrawableResource(@NonNull Resources paramResources, @NonNull Resource<Bitmap> paramResource)
  {
    a = ((Resources)Preconditions.checkNotNull(paramResources));
    b = ((Resource)Preconditions.checkNotNull(paramResource));
  }
  
  @Nullable
  public static Resource<BitmapDrawable> obtain(@NonNull Resources paramResources, @Nullable Resource<Bitmap> paramResource)
  {
    if (paramResource == null) {
      return null;
    }
    return new LazyBitmapDrawableResource(paramResources, paramResource);
  }
  
  @Deprecated
  public static LazyBitmapDrawableResource obtain(Context paramContext, Bitmap paramBitmap)
  {
    return (LazyBitmapDrawableResource)obtain(paramContext.getResources(), BitmapResource.obtain(paramBitmap, Glide.get(paramContext).getBitmapPool()));
  }
  
  @Deprecated
  public static LazyBitmapDrawableResource obtain(Resources paramResources, BitmapPool paramBitmapPool, Bitmap paramBitmap)
  {
    return (LazyBitmapDrawableResource)obtain(paramResources, BitmapResource.obtain(paramBitmap, paramBitmapPool));
  }
  
  @NonNull
  public BitmapDrawable get()
  {
    return new BitmapDrawable(a, (Bitmap)b.get());
  }
  
  @NonNull
  public Class<BitmapDrawable> getResourceClass()
  {
    return BitmapDrawable.class;
  }
  
  public int getSize()
  {
    return b.getSize();
  }
  
  public void initialize()
  {
    if ((b instanceof Initializable)) {
      ((Initializable)b).initialize();
    }
  }
  
  public void recycle()
  {
    b.recycle();
  }
}
