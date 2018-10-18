package cn.edu.pku.pkurunner;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.support.annotation.CheckResult;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import com.bumptech.glide.Glide;
import com.bumptech.glide.RequestManager;
import com.bumptech.glide.load.resource.gif.GifDrawable;
import com.bumptech.glide.manager.Lifecycle;
import com.bumptech.glide.manager.RequestManagerTreeNode;
import com.bumptech.glide.request.RequestOptions;
import java.io.File;
import java.net.URL;

public class GlideRequests
  extends RequestManager
{
  public GlideRequests(@NonNull Glide paramGlide, @NonNull Lifecycle paramLifecycle, @NonNull RequestManagerTreeNode paramRequestManagerTreeNode, @NonNull Context paramContext)
  {
    super(paramGlide, paramLifecycle, paramRequestManagerTreeNode, paramContext);
  }
  
  @NonNull
  public GlideRequests applyDefaultRequestOptions(@NonNull RequestOptions paramRequestOptions)
  {
    return (GlideRequests)super.applyDefaultRequestOptions(paramRequestOptions);
  }
  
  @CheckResult
  @NonNull
  public <ResourceType> GlideRequest<ResourceType> as(@NonNull Class<ResourceType> paramClass)
  {
    return new GlideRequest(glide, this, paramClass, context);
  }
  
  @CheckResult
  @NonNull
  public GlideRequest<Bitmap> asBitmap()
  {
    return (GlideRequest)super.asBitmap();
  }
  
  @CheckResult
  @NonNull
  public GlideRequest<Drawable> asDrawable()
  {
    return (GlideRequest)super.asDrawable();
  }
  
  @CheckResult
  @NonNull
  public GlideRequest<File> asFile()
  {
    return (GlideRequest)super.asFile();
  }
  
  @CheckResult
  @NonNull
  public GlideRequest<GifDrawable> asGif()
  {
    return (GlideRequest)super.asGif();
  }
  
  @CheckResult
  @NonNull
  public GlideRequest<File> download(@Nullable Object paramObject)
  {
    return (GlideRequest)super.download(paramObject);
  }
  
  @CheckResult
  @NonNull
  public GlideRequest<File> downloadOnly()
  {
    return (GlideRequest)super.downloadOnly();
  }
  
  @CheckResult
  @NonNull
  public GlideRequest<Drawable> load(@Nullable Bitmap paramBitmap)
  {
    return (GlideRequest)super.load(paramBitmap);
  }
  
  @CheckResult
  @NonNull
  public GlideRequest<Drawable> load(@Nullable Drawable paramDrawable)
  {
    return (GlideRequest)super.load(paramDrawable);
  }
  
  @CheckResult
  @NonNull
  public GlideRequest<Drawable> load(@Nullable Uri paramUri)
  {
    return (GlideRequest)super.load(paramUri);
  }
  
  @CheckResult
  @NonNull
  public GlideRequest<Drawable> load(@Nullable File paramFile)
  {
    return (GlideRequest)super.load(paramFile);
  }
  
  @CheckResult
  @NonNull
  public GlideRequest<Drawable> load(@Nullable Integer paramInteger)
  {
    return (GlideRequest)super.load(paramInteger);
  }
  
  @CheckResult
  @NonNull
  public GlideRequest<Drawable> load(@Nullable Object paramObject)
  {
    return (GlideRequest)super.load(paramObject);
  }
  
  @CheckResult
  @NonNull
  public GlideRequest<Drawable> load(@Nullable String paramString)
  {
    return (GlideRequest)super.load(paramString);
  }
  
  @Deprecated
  @CheckResult
  public GlideRequest<Drawable> load(@Nullable URL paramURL)
  {
    return (GlideRequest)super.load(paramURL);
  }
  
  @CheckResult
  @NonNull
  public GlideRequest<Drawable> load(@Nullable byte[] paramArrayOfByte)
  {
    return (GlideRequest)super.load(paramArrayOfByte);
  }
  
  @NonNull
  public GlideRequests setDefaultRequestOptions(@NonNull RequestOptions paramRequestOptions)
  {
    return (GlideRequests)super.setDefaultRequestOptions(paramRequestOptions);
  }
  
  protected void setRequestOptions(@NonNull RequestOptions paramRequestOptions)
  {
    if ((paramRequestOptions instanceof GlideOptions))
    {
      super.setRequestOptions(paramRequestOptions);
      return;
    }
    super.setRequestOptions(new GlideOptions().apply(paramRequestOptions));
  }
}
