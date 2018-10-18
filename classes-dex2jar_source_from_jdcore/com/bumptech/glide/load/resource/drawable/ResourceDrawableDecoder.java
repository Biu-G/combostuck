package com.bumptech.glide.load.resource.drawable;

import android.content.Context;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.support.annotation.DrawableRes;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import com.bumptech.glide.load.Options;
import com.bumptech.glide.load.ResourceDecoder;
import com.bumptech.glide.load.engine.Resource;
import java.util.List;

public class ResourceDrawableDecoder
  implements ResourceDecoder<Uri, Drawable>
{
  private final Context a;
  
  public ResourceDrawableDecoder(Context paramContext)
  {
    a = paramContext.getApplicationContext();
  }
  
  @DrawableRes
  private int a(Uri paramUri)
  {
    Object localObject2 = paramUri.getPathSegments();
    if (((List)localObject2).size() == 2)
    {
      localObject1 = paramUri.getAuthority();
      String str = (String)((List)localObject2).get(0);
      localObject2 = (String)((List)localObject2).get(1);
      localObject1 = Integer.valueOf(a.getResources().getIdentifier((String)localObject2, str, (String)localObject1));
    }
    else if (((List)localObject2).size() != 1) {}
    try
    {
      localObject1 = Integer.valueOf((String)((List)localObject2).get(0));
    }
    catch (NumberFormatException localNumberFormatException)
    {
      for (;;) {}
    }
    Object localObject1 = null;
    if (localObject1 != null)
    {
      if (((Integer)localObject1).intValue() != 0) {
        return ((Integer)localObject1).intValue();
      }
      localObject1 = new StringBuilder();
      ((StringBuilder)localObject1).append("Failed to obtain resource id for: ");
      ((StringBuilder)localObject1).append(paramUri);
      throw new IllegalArgumentException(((StringBuilder)localObject1).toString());
    }
    localObject1 = new StringBuilder();
    ((StringBuilder)localObject1).append("Unrecognized Uri format: ");
    ((StringBuilder)localObject1).append(paramUri);
    throw new IllegalArgumentException(((StringBuilder)localObject1).toString());
  }
  
  @NonNull
  private Context a(Uri paramUri, String paramString)
  {
    try
    {
      paramString = a.createPackageContext(paramString, 0);
      return paramString;
    }
    catch (PackageManager.NameNotFoundException paramString)
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("Failed to obtain context or unrecognized Uri format for: ");
      localStringBuilder.append(paramUri);
      throw new IllegalArgumentException(localStringBuilder.toString(), paramString);
    }
  }
  
  @Nullable
  public Resource<Drawable> decode(@NonNull Uri paramUri, int paramInt1, int paramInt2, @NonNull Options paramOptions)
  {
    paramInt1 = a(paramUri);
    paramOptions = paramUri.getAuthority();
    if (paramOptions.equals(a.getPackageName())) {
      paramUri = a;
    } else {
      paramUri = a(paramUri, paramOptions);
    }
    return a.a(DrawableDecoderCompat.getDrawable(paramUri, paramInt1));
  }
  
  public boolean handles(@NonNull Uri paramUri, @NonNull Options paramOptions)
  {
    return paramUri.getScheme().equals("android.resource");
  }
}
