package android.support.v4.graphics.drawable;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Rect;
import android.os.Build.VERSION;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v4.graphics.BitmapCompat;
import android.support.v4.view.GravityCompat;
import android.util.Log;
import java.io.InputStream;

public final class RoundedBitmapDrawableFactory
{
  private RoundedBitmapDrawableFactory() {}
  
  @NonNull
  public static RoundedBitmapDrawable create(@NonNull Resources paramResources, @Nullable Bitmap paramBitmap)
  {
    if (Build.VERSION.SDK_INT >= 21) {
      return new a(paramResources, paramBitmap);
    }
    return new a(paramResources, paramBitmap);
  }
  
  @NonNull
  public static RoundedBitmapDrawable create(@NonNull Resources paramResources, @NonNull InputStream paramInputStream)
  {
    paramResources = create(paramResources, BitmapFactory.decodeStream(paramInputStream));
    if (paramResources.getBitmap() == null)
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("RoundedBitmapDrawable cannot decode ");
      localStringBuilder.append(paramInputStream);
      Log.w("RoundedBitmapDrawableFa", localStringBuilder.toString());
    }
    return paramResources;
  }
  
  @NonNull
  public static RoundedBitmapDrawable create(@NonNull Resources paramResources, @NonNull String paramString)
  {
    paramResources = create(paramResources, BitmapFactory.decodeFile(paramString));
    if (paramResources.getBitmap() == null)
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("RoundedBitmapDrawable cannot decode ");
      localStringBuilder.append(paramString);
      Log.w("RoundedBitmapDrawableFa", localStringBuilder.toString());
    }
    return paramResources;
  }
  
  private static class a
    extends RoundedBitmapDrawable
  {
    a(Resources paramResources, Bitmap paramBitmap)
    {
      super(paramBitmap);
    }
    
    void a(int paramInt1, int paramInt2, int paramInt3, Rect paramRect1, Rect paramRect2)
    {
      GravityCompat.apply(paramInt1, paramInt2, paramInt3, paramRect1, paramRect2, 0);
    }
    
    public boolean hasMipMap()
    {
      return (a != null) && (BitmapCompat.hasMipMap(a));
    }
    
    public void setMipMap(boolean paramBoolean)
    {
      if (a != null)
      {
        BitmapCompat.setHasMipMap(a, paramBoolean);
        invalidateSelf();
      }
    }
  }
}
