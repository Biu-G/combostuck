package com.bumptech.glide.load.resource.bitmap;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.support.annotation.NonNull;
import com.bumptech.glide.load.Options;
import com.bumptech.glide.load.ResourceDecoder;
import com.bumptech.glide.load.engine.Resource;
import com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool;
import com.bumptech.glide.util.Preconditions;
import java.io.IOException;

public class BitmapDrawableDecoder<DataType>
  implements ResourceDecoder<DataType, BitmapDrawable>
{
  private final ResourceDecoder<DataType, Bitmap> a;
  private final Resources b;
  
  public BitmapDrawableDecoder(Context paramContext, ResourceDecoder<DataType, Bitmap> paramResourceDecoder)
  {
    this(paramContext.getResources(), paramResourceDecoder);
  }
  
  public BitmapDrawableDecoder(@NonNull Resources paramResources, @NonNull ResourceDecoder<DataType, Bitmap> paramResourceDecoder)
  {
    b = ((Resources)Preconditions.checkNotNull(paramResources));
    a = ((ResourceDecoder)Preconditions.checkNotNull(paramResourceDecoder));
  }
  
  @Deprecated
  public BitmapDrawableDecoder(Resources paramResources, BitmapPool paramBitmapPool, ResourceDecoder<DataType, Bitmap> paramResourceDecoder)
  {
    this(paramResources, paramResourceDecoder);
  }
  
  public Resource<BitmapDrawable> decode(@NonNull DataType paramDataType, int paramInt1, int paramInt2, @NonNull Options paramOptions)
    throws IOException
  {
    paramDataType = a.decode(paramDataType, paramInt1, paramInt2, paramOptions);
    return LazyBitmapDrawableResource.obtain(b, paramDataType);
  }
  
  public boolean handles(@NonNull DataType paramDataType, @NonNull Options paramOptions)
    throws IOException
  {
    return a.handles(paramDataType, paramOptions);
  }
}
