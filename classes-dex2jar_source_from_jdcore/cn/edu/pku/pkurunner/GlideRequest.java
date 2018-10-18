package cn.edu.pku.pkurunner;

import android.content.Context;
import android.content.res.Resources.Theme;
import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.support.annotation.CheckResult;
import android.support.annotation.DrawableRes;
import android.support.annotation.FloatRange;
import android.support.annotation.IntRange;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.RawRes;
import com.bumptech.glide.Glide;
import com.bumptech.glide.Priority;
import com.bumptech.glide.RequestBuilder;
import com.bumptech.glide.RequestManager;
import com.bumptech.glide.TransitionOptions;
import com.bumptech.glide.load.DecodeFormat;
import com.bumptech.glide.load.Key;
import com.bumptech.glide.load.Option;
import com.bumptech.glide.load.Transformation;
import com.bumptech.glide.load.engine.DiskCacheStrategy;
import com.bumptech.glide.load.resource.bitmap.DownsampleStrategy;
import com.bumptech.glide.request.RequestListener;
import com.bumptech.glide.request.RequestOptions;
import java.io.File;
import java.net.URL;

public class GlideRequest<TranscodeType>
  extends RequestBuilder<TranscodeType>
  implements Cloneable
{
  GlideRequest(@NonNull Glide paramGlide, @NonNull RequestManager paramRequestManager, @NonNull Class<TranscodeType> paramClass, @NonNull Context paramContext)
  {
    super(paramGlide, paramRequestManager, paramClass, paramContext);
  }
  
  GlideRequest(@NonNull Class<TranscodeType> paramClass, @NonNull RequestBuilder<?> paramRequestBuilder)
  {
    super(paramClass, paramRequestBuilder);
  }
  
  @CheckResult
  @NonNull
  public GlideRequest<TranscodeType> apply(@NonNull RequestOptions paramRequestOptions)
  {
    return (GlideRequest)super.apply(paramRequestOptions);
  }
  
  @CheckResult
  @NonNull
  public GlideRequest<TranscodeType> centerCrop()
  {
    if ((getMutableOptions() instanceof GlideOptions))
    {
      requestOptions = ((GlideOptions)getMutableOptions()).centerCrop();
      return this;
    }
    requestOptions = new GlideOptions().apply(requestOptions).centerCrop();
    return this;
  }
  
  @CheckResult
  @NonNull
  public GlideRequest<TranscodeType> centerInside()
  {
    if ((getMutableOptions() instanceof GlideOptions))
    {
      requestOptions = ((GlideOptions)getMutableOptions()).centerInside();
      return this;
    }
    requestOptions = new GlideOptions().apply(requestOptions).centerInside();
    return this;
  }
  
  @CheckResult
  @NonNull
  public GlideRequest<TranscodeType> circleCrop()
  {
    if ((getMutableOptions() instanceof GlideOptions))
    {
      requestOptions = ((GlideOptions)getMutableOptions()).circleCrop();
      return this;
    }
    requestOptions = new GlideOptions().apply(requestOptions).circleCrop();
    return this;
  }
  
  @CheckResult
  public GlideRequest<TranscodeType> clone()
  {
    return (GlideRequest)super.clone();
  }
  
  @CheckResult
  @NonNull
  public GlideRequest<TranscodeType> decode(@NonNull Class<?> paramClass)
  {
    if ((getMutableOptions() instanceof GlideOptions))
    {
      requestOptions = ((GlideOptions)getMutableOptions()).decode(paramClass);
      return this;
    }
    requestOptions = new GlideOptions().apply(requestOptions).decode(paramClass);
    return this;
  }
  
  @CheckResult
  @NonNull
  public GlideRequest<TranscodeType> disallowHardwareConfig()
  {
    if ((getMutableOptions() instanceof GlideOptions))
    {
      requestOptions = ((GlideOptions)getMutableOptions()).disallowHardwareConfig();
      return this;
    }
    requestOptions = new GlideOptions().apply(requestOptions).disallowHardwareConfig();
    return this;
  }
  
  @CheckResult
  @NonNull
  public GlideRequest<TranscodeType> diskCacheStrategy(@NonNull DiskCacheStrategy paramDiskCacheStrategy)
  {
    if ((getMutableOptions() instanceof GlideOptions))
    {
      requestOptions = ((GlideOptions)getMutableOptions()).diskCacheStrategy(paramDiskCacheStrategy);
      return this;
    }
    requestOptions = new GlideOptions().apply(requestOptions).diskCacheStrategy(paramDiskCacheStrategy);
    return this;
  }
  
  @CheckResult
  @NonNull
  public GlideRequest<TranscodeType> dontAnimate()
  {
    if ((getMutableOptions() instanceof GlideOptions))
    {
      requestOptions = ((GlideOptions)getMutableOptions()).dontAnimate();
      return this;
    }
    requestOptions = new GlideOptions().apply(requestOptions).dontAnimate();
    return this;
  }
  
  @CheckResult
  @NonNull
  public GlideRequest<TranscodeType> dontTransform()
  {
    if ((getMutableOptions() instanceof GlideOptions))
    {
      requestOptions = ((GlideOptions)getMutableOptions()).dontTransform();
      return this;
    }
    requestOptions = new GlideOptions().apply(requestOptions).dontTransform();
    return this;
  }
  
  @CheckResult
  @NonNull
  public GlideRequest<TranscodeType> downsample(@NonNull DownsampleStrategy paramDownsampleStrategy)
  {
    if ((getMutableOptions() instanceof GlideOptions))
    {
      requestOptions = ((GlideOptions)getMutableOptions()).downsample(paramDownsampleStrategy);
      return this;
    }
    requestOptions = new GlideOptions().apply(requestOptions).downsample(paramDownsampleStrategy);
    return this;
  }
  
  @CheckResult
  @NonNull
  public GlideRequest<TranscodeType> encodeFormat(@NonNull Bitmap.CompressFormat paramCompressFormat)
  {
    if ((getMutableOptions() instanceof GlideOptions))
    {
      requestOptions = ((GlideOptions)getMutableOptions()).encodeFormat(paramCompressFormat);
      return this;
    }
    requestOptions = new GlideOptions().apply(requestOptions).encodeFormat(paramCompressFormat);
    return this;
  }
  
  @CheckResult
  @NonNull
  public GlideRequest<TranscodeType> encodeQuality(@IntRange(from=0L, to=100L) int paramInt)
  {
    if ((getMutableOptions() instanceof GlideOptions))
    {
      requestOptions = ((GlideOptions)getMutableOptions()).encodeQuality(paramInt);
      return this;
    }
    requestOptions = new GlideOptions().apply(requestOptions).encodeQuality(paramInt);
    return this;
  }
  
  @CheckResult
  @NonNull
  public GlideRequest<TranscodeType> error(@DrawableRes int paramInt)
  {
    if ((getMutableOptions() instanceof GlideOptions))
    {
      requestOptions = ((GlideOptions)getMutableOptions()).error(paramInt);
      return this;
    }
    requestOptions = new GlideOptions().apply(requestOptions).error(paramInt);
    return this;
  }
  
  @CheckResult
  @NonNull
  public GlideRequest<TranscodeType> error(@Nullable Drawable paramDrawable)
  {
    if ((getMutableOptions() instanceof GlideOptions))
    {
      requestOptions = ((GlideOptions)getMutableOptions()).error(paramDrawable);
      return this;
    }
    requestOptions = new GlideOptions().apply(requestOptions).error(paramDrawable);
    return this;
  }
  
  @NonNull
  public GlideRequest<TranscodeType> error(@Nullable RequestBuilder<TranscodeType> paramRequestBuilder)
  {
    return (GlideRequest)super.error(paramRequestBuilder);
  }
  
  @CheckResult
  @NonNull
  public GlideRequest<TranscodeType> fallback(@DrawableRes int paramInt)
  {
    if ((getMutableOptions() instanceof GlideOptions))
    {
      requestOptions = ((GlideOptions)getMutableOptions()).fallback(paramInt);
      return this;
    }
    requestOptions = new GlideOptions().apply(requestOptions).fallback(paramInt);
    return this;
  }
  
  @CheckResult
  @NonNull
  public GlideRequest<TranscodeType> fallback(@Nullable Drawable paramDrawable)
  {
    if ((getMutableOptions() instanceof GlideOptions))
    {
      requestOptions = ((GlideOptions)getMutableOptions()).fallback(paramDrawable);
      return this;
    }
    requestOptions = new GlideOptions().apply(requestOptions).fallback(paramDrawable);
    return this;
  }
  
  @CheckResult
  @NonNull
  public GlideRequest<TranscodeType> fitCenter()
  {
    if ((getMutableOptions() instanceof GlideOptions))
    {
      requestOptions = ((GlideOptions)getMutableOptions()).fitCenter();
      return this;
    }
    requestOptions = new GlideOptions().apply(requestOptions).fitCenter();
    return this;
  }
  
  @CheckResult
  @NonNull
  public GlideRequest<TranscodeType> format(@NonNull DecodeFormat paramDecodeFormat)
  {
    if ((getMutableOptions() instanceof GlideOptions))
    {
      requestOptions = ((GlideOptions)getMutableOptions()).format(paramDecodeFormat);
      return this;
    }
    requestOptions = new GlideOptions().apply(requestOptions).format(paramDecodeFormat);
    return this;
  }
  
  @CheckResult
  @NonNull
  public GlideRequest<TranscodeType> frame(@IntRange(from=0L) long paramLong)
  {
    if ((getMutableOptions() instanceof GlideOptions))
    {
      requestOptions = ((GlideOptions)getMutableOptions()).frame(paramLong);
      return this;
    }
    requestOptions = new GlideOptions().apply(requestOptions).frame(paramLong);
    return this;
  }
  
  @CheckResult
  @NonNull
  protected GlideRequest<File> getDownloadOnlyRequest()
  {
    return new GlideRequest(File.class, this).apply(DOWNLOAD_ONLY_OPTIONS);
  }
  
  @CheckResult
  @NonNull
  public GlideRequest<TranscodeType> listener(@Nullable RequestListener<TranscodeType> paramRequestListener)
  {
    return (GlideRequest)super.listener(paramRequestListener);
  }
  
  @CheckResult
  @NonNull
  public GlideRequest<TranscodeType> load(@Nullable Bitmap paramBitmap)
  {
    return (GlideRequest)super.load(paramBitmap);
  }
  
  @CheckResult
  @NonNull
  public GlideRequest<TranscodeType> load(@Nullable Drawable paramDrawable)
  {
    return (GlideRequest)super.load(paramDrawable);
  }
  
  @CheckResult
  @NonNull
  public GlideRequest<TranscodeType> load(@Nullable Uri paramUri)
  {
    return (GlideRequest)super.load(paramUri);
  }
  
  @CheckResult
  @NonNull
  public GlideRequest<TranscodeType> load(@Nullable File paramFile)
  {
    return (GlideRequest)super.load(paramFile);
  }
  
  @CheckResult
  @NonNull
  public GlideRequest<TranscodeType> load(@DrawableRes @Nullable @RawRes Integer paramInteger)
  {
    return (GlideRequest)super.load(paramInteger);
  }
  
  @CheckResult
  @NonNull
  public GlideRequest<TranscodeType> load(@Nullable Object paramObject)
  {
    return (GlideRequest)super.load(paramObject);
  }
  
  @CheckResult
  @NonNull
  public GlideRequest<TranscodeType> load(@Nullable String paramString)
  {
    return (GlideRequest)super.load(paramString);
  }
  
  @Deprecated
  @CheckResult
  public GlideRequest<TranscodeType> load(@Nullable URL paramURL)
  {
    return (GlideRequest)super.load(paramURL);
  }
  
  @CheckResult
  @NonNull
  public GlideRequest<TranscodeType> load(@Nullable byte[] paramArrayOfByte)
  {
    return (GlideRequest)super.load(paramArrayOfByte);
  }
  
  @CheckResult
  @NonNull
  public GlideRequest<TranscodeType> onlyRetrieveFromCache(boolean paramBoolean)
  {
    if ((getMutableOptions() instanceof GlideOptions))
    {
      requestOptions = ((GlideOptions)getMutableOptions()).onlyRetrieveFromCache(paramBoolean);
      return this;
    }
    requestOptions = new GlideOptions().apply(requestOptions).onlyRetrieveFromCache(paramBoolean);
    return this;
  }
  
  @CheckResult
  @NonNull
  public GlideRequest<TranscodeType> optionalCenterCrop()
  {
    if ((getMutableOptions() instanceof GlideOptions))
    {
      requestOptions = ((GlideOptions)getMutableOptions()).optionalCenterCrop();
      return this;
    }
    requestOptions = new GlideOptions().apply(requestOptions).optionalCenterCrop();
    return this;
  }
  
  @CheckResult
  @NonNull
  public GlideRequest<TranscodeType> optionalCenterInside()
  {
    if ((getMutableOptions() instanceof GlideOptions))
    {
      requestOptions = ((GlideOptions)getMutableOptions()).optionalCenterInside();
      return this;
    }
    requestOptions = new GlideOptions().apply(requestOptions).optionalCenterInside();
    return this;
  }
  
  @CheckResult
  @NonNull
  public GlideRequest<TranscodeType> optionalCircleCrop()
  {
    if ((getMutableOptions() instanceof GlideOptions))
    {
      requestOptions = ((GlideOptions)getMutableOptions()).optionalCircleCrop();
      return this;
    }
    requestOptions = new GlideOptions().apply(requestOptions).optionalCircleCrop();
    return this;
  }
  
  @CheckResult
  @NonNull
  public GlideRequest<TranscodeType> optionalFitCenter()
  {
    if ((getMutableOptions() instanceof GlideOptions))
    {
      requestOptions = ((GlideOptions)getMutableOptions()).optionalFitCenter();
      return this;
    }
    requestOptions = new GlideOptions().apply(requestOptions).optionalFitCenter();
    return this;
  }
  
  @CheckResult
  @NonNull
  public GlideRequest<TranscodeType> optionalTransform(@NonNull Transformation<Bitmap> paramTransformation)
  {
    if ((getMutableOptions() instanceof GlideOptions))
    {
      requestOptions = ((GlideOptions)getMutableOptions()).optionalTransform(paramTransformation);
      return this;
    }
    requestOptions = new GlideOptions().apply(requestOptions).optionalTransform(paramTransformation);
    return this;
  }
  
  @CheckResult
  @NonNull
  public <T> GlideRequest<TranscodeType> optionalTransform(@NonNull Class<T> paramClass, @NonNull Transformation<T> paramTransformation)
  {
    if ((getMutableOptions() instanceof GlideOptions))
    {
      requestOptions = ((GlideOptions)getMutableOptions()).optionalTransform(paramClass, paramTransformation);
      return this;
    }
    requestOptions = new GlideOptions().apply(requestOptions).optionalTransform(paramClass, paramTransformation);
    return this;
  }
  
  @CheckResult
  @NonNull
  public GlideRequest<TranscodeType> override(int paramInt)
  {
    if ((getMutableOptions() instanceof GlideOptions))
    {
      requestOptions = ((GlideOptions)getMutableOptions()).override(paramInt);
      return this;
    }
    requestOptions = new GlideOptions().apply(requestOptions).override(paramInt);
    return this;
  }
  
  @CheckResult
  @NonNull
  public GlideRequest<TranscodeType> override(int paramInt1, int paramInt2)
  {
    if ((getMutableOptions() instanceof GlideOptions))
    {
      requestOptions = ((GlideOptions)getMutableOptions()).override(paramInt1, paramInt2);
      return this;
    }
    requestOptions = new GlideOptions().apply(requestOptions).override(paramInt1, paramInt2);
    return this;
  }
  
  @CheckResult
  @NonNull
  public GlideRequest<TranscodeType> placeholder(@DrawableRes int paramInt)
  {
    if ((getMutableOptions() instanceof GlideOptions))
    {
      requestOptions = ((GlideOptions)getMutableOptions()).placeholder(paramInt);
      return this;
    }
    requestOptions = new GlideOptions().apply(requestOptions).placeholder(paramInt);
    return this;
  }
  
  @CheckResult
  @NonNull
  public GlideRequest<TranscodeType> placeholder(@Nullable Drawable paramDrawable)
  {
    if ((getMutableOptions() instanceof GlideOptions))
    {
      requestOptions = ((GlideOptions)getMutableOptions()).placeholder(paramDrawable);
      return this;
    }
    requestOptions = new GlideOptions().apply(requestOptions).placeholder(paramDrawable);
    return this;
  }
  
  @CheckResult
  @NonNull
  public GlideRequest<TranscodeType> priority(@NonNull Priority paramPriority)
  {
    if ((getMutableOptions() instanceof GlideOptions))
    {
      requestOptions = ((GlideOptions)getMutableOptions()).priority(paramPriority);
      return this;
    }
    requestOptions = new GlideOptions().apply(requestOptions).priority(paramPriority);
    return this;
  }
  
  @CheckResult
  @NonNull
  public <T> GlideRequest<TranscodeType> set(@NonNull Option<T> paramOption, @NonNull T paramT)
  {
    if ((getMutableOptions() instanceof GlideOptions))
    {
      requestOptions = ((GlideOptions)getMutableOptions()).set(paramOption, paramT);
      return this;
    }
    requestOptions = new GlideOptions().apply(requestOptions).set(paramOption, paramT);
    return this;
  }
  
  @CheckResult
  @NonNull
  public GlideRequest<TranscodeType> signature(@NonNull Key paramKey)
  {
    if ((getMutableOptions() instanceof GlideOptions))
    {
      requestOptions = ((GlideOptions)getMutableOptions()).signature(paramKey);
      return this;
    }
    requestOptions = new GlideOptions().apply(requestOptions).signature(paramKey);
    return this;
  }
  
  @CheckResult
  @NonNull
  public GlideRequest<TranscodeType> sizeMultiplier(@FloatRange(from=0.0D, to=1.0D) float paramFloat)
  {
    if ((getMutableOptions() instanceof GlideOptions))
    {
      requestOptions = ((GlideOptions)getMutableOptions()).sizeMultiplier(paramFloat);
      return this;
    }
    requestOptions = new GlideOptions().apply(requestOptions).sizeMultiplier(paramFloat);
    return this;
  }
  
  @CheckResult
  @NonNull
  public GlideRequest<TranscodeType> skipMemoryCache(boolean paramBoolean)
  {
    if ((getMutableOptions() instanceof GlideOptions))
    {
      requestOptions = ((GlideOptions)getMutableOptions()).skipMemoryCache(paramBoolean);
      return this;
    }
    requestOptions = new GlideOptions().apply(requestOptions).skipMemoryCache(paramBoolean);
    return this;
  }
  
  @CheckResult
  @NonNull
  public GlideRequest<TranscodeType> theme(@Nullable Resources.Theme paramTheme)
  {
    if ((getMutableOptions() instanceof GlideOptions))
    {
      requestOptions = ((GlideOptions)getMutableOptions()).theme(paramTheme);
      return this;
    }
    requestOptions = new GlideOptions().apply(requestOptions).theme(paramTheme);
    return this;
  }
  
  @CheckResult
  @NonNull
  public GlideRequest<TranscodeType> thumbnail(float paramFloat)
  {
    return (GlideRequest)super.thumbnail(paramFloat);
  }
  
  @CheckResult
  @NonNull
  public GlideRequest<TranscodeType> thumbnail(@Nullable RequestBuilder<TranscodeType> paramRequestBuilder)
  {
    return (GlideRequest)super.thumbnail(paramRequestBuilder);
  }
  
  @SafeVarargs
  @CheckResult
  @NonNull
  public final GlideRequest<TranscodeType> thumbnail(@Nullable RequestBuilder<TranscodeType>... paramVarArgs)
  {
    return (GlideRequest)super.thumbnail(paramVarArgs);
  }
  
  @CheckResult
  @NonNull
  public GlideRequest<TranscodeType> timeout(@IntRange(from=0L) int paramInt)
  {
    if ((getMutableOptions() instanceof GlideOptions))
    {
      requestOptions = ((GlideOptions)getMutableOptions()).timeout(paramInt);
      return this;
    }
    requestOptions = new GlideOptions().apply(requestOptions).timeout(paramInt);
    return this;
  }
  
  @CheckResult
  @NonNull
  public GlideRequest<TranscodeType> transform(@NonNull Transformation<Bitmap> paramTransformation)
  {
    if ((getMutableOptions() instanceof GlideOptions))
    {
      requestOptions = ((GlideOptions)getMutableOptions()).transform(paramTransformation);
      return this;
    }
    requestOptions = new GlideOptions().apply(requestOptions).transform(paramTransformation);
    return this;
  }
  
  @CheckResult
  @NonNull
  public <T> GlideRequest<TranscodeType> transform(@NonNull Class<T> paramClass, @NonNull Transformation<T> paramTransformation)
  {
    if ((getMutableOptions() instanceof GlideOptions))
    {
      requestOptions = ((GlideOptions)getMutableOptions()).transform(paramClass, paramTransformation);
      return this;
    }
    requestOptions = new GlideOptions().apply(requestOptions).transform(paramClass, paramTransformation);
    return this;
  }
  
  @CheckResult
  @NonNull
  public GlideRequest<TranscodeType> transforms(@NonNull Transformation<Bitmap>... paramVarArgs)
  {
    if ((getMutableOptions() instanceof GlideOptions))
    {
      requestOptions = ((GlideOptions)getMutableOptions()).transforms(paramVarArgs);
      return this;
    }
    requestOptions = new GlideOptions().apply(requestOptions).transforms(paramVarArgs);
    return this;
  }
  
  @CheckResult
  @NonNull
  public GlideRequest<TranscodeType> transition(@NonNull TransitionOptions<?, ? super TranscodeType> paramTransitionOptions)
  {
    return (GlideRequest)super.transition(paramTransitionOptions);
  }
  
  @CheckResult
  @NonNull
  public GlideRequest<TranscodeType> useAnimationPool(boolean paramBoolean)
  {
    if ((getMutableOptions() instanceof GlideOptions))
    {
      requestOptions = ((GlideOptions)getMutableOptions()).useAnimationPool(paramBoolean);
      return this;
    }
    requestOptions = new GlideOptions().apply(requestOptions).useAnimationPool(paramBoolean);
    return this;
  }
  
  @CheckResult
  @NonNull
  public GlideRequest<TranscodeType> useUnlimitedSourceGeneratorsPool(boolean paramBoolean)
  {
    if ((getMutableOptions() instanceof GlideOptions))
    {
      requestOptions = ((GlideOptions)getMutableOptions()).useUnlimitedSourceGeneratorsPool(paramBoolean);
      return this;
    }
    requestOptions = new GlideOptions().apply(requestOptions).useUnlimitedSourceGeneratorsPool(paramBoolean);
    return this;
  }
}
