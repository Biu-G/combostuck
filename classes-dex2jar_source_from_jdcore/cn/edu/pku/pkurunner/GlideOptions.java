package cn.edu.pku.pkurunner;

import android.content.res.Resources.Theme;
import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import android.graphics.drawable.Drawable;
import android.support.annotation.CheckResult;
import android.support.annotation.DrawableRes;
import android.support.annotation.FloatRange;
import android.support.annotation.IntRange;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import com.bumptech.glide.Priority;
import com.bumptech.glide.load.DecodeFormat;
import com.bumptech.glide.load.Key;
import com.bumptech.glide.load.Option;
import com.bumptech.glide.load.Transformation;
import com.bumptech.glide.load.engine.DiskCacheStrategy;
import com.bumptech.glide.load.resource.bitmap.DownsampleStrategy;
import com.bumptech.glide.request.RequestOptions;

public final class GlideOptions
  extends RequestOptions
  implements Cloneable
{
  private static GlideOptions a;
  private static GlideOptions b;
  private static GlideOptions c;
  private static GlideOptions d;
  private static GlideOptions e;
  private static GlideOptions f;
  
  public GlideOptions() {}
  
  @CheckResult
  @NonNull
  public static GlideOptions bitmapTransform(@NonNull Transformation<Bitmap> paramTransformation)
  {
    return new GlideOptions().transform(paramTransformation);
  }
  
  @CheckResult
  @NonNull
  public static GlideOptions centerCropTransform()
  {
    if (c == null) {
      c = new GlideOptions().centerCrop().autoClone();
    }
    return c;
  }
  
  @CheckResult
  @NonNull
  public static GlideOptions centerInsideTransform()
  {
    if (b == null) {
      b = new GlideOptions().centerInside().autoClone();
    }
    return b;
  }
  
  @CheckResult
  @NonNull
  public static GlideOptions circleCropTransform()
  {
    if (d == null) {
      d = new GlideOptions().circleCrop().autoClone();
    }
    return d;
  }
  
  @CheckResult
  @NonNull
  public static GlideOptions decodeTypeOf(@NonNull Class<?> paramClass)
  {
    return new GlideOptions().decode(paramClass);
  }
  
  @CheckResult
  @NonNull
  public static GlideOptions diskCacheStrategyOf(@NonNull DiskCacheStrategy paramDiskCacheStrategy)
  {
    return new GlideOptions().diskCacheStrategy(paramDiskCacheStrategy);
  }
  
  @CheckResult
  @NonNull
  public static GlideOptions downsampleOf(@NonNull DownsampleStrategy paramDownsampleStrategy)
  {
    return new GlideOptions().downsample(paramDownsampleStrategy);
  }
  
  @CheckResult
  @NonNull
  public static GlideOptions encodeFormatOf(@NonNull Bitmap.CompressFormat paramCompressFormat)
  {
    return new GlideOptions().encodeFormat(paramCompressFormat);
  }
  
  @CheckResult
  @NonNull
  public static GlideOptions encodeQualityOf(@IntRange(from=0L, to=100L) int paramInt)
  {
    return new GlideOptions().encodeQuality(paramInt);
  }
  
  @CheckResult
  @NonNull
  public static GlideOptions errorOf(@DrawableRes int paramInt)
  {
    return new GlideOptions().error(paramInt);
  }
  
  @CheckResult
  @NonNull
  public static GlideOptions errorOf(@Nullable Drawable paramDrawable)
  {
    return new GlideOptions().error(paramDrawable);
  }
  
  @CheckResult
  @NonNull
  public static GlideOptions fitCenterTransform()
  {
    if (a == null) {
      a = new GlideOptions().fitCenter().autoClone();
    }
    return a;
  }
  
  @CheckResult
  @NonNull
  public static GlideOptions formatOf(@NonNull DecodeFormat paramDecodeFormat)
  {
    return new GlideOptions().format(paramDecodeFormat);
  }
  
  @CheckResult
  @NonNull
  public static GlideOptions frameOf(@IntRange(from=0L) long paramLong)
  {
    return new GlideOptions().frame(paramLong);
  }
  
  @CheckResult
  @NonNull
  public static GlideOptions noAnimation()
  {
    if (f == null) {
      f = new GlideOptions().dontAnimate().autoClone();
    }
    return f;
  }
  
  @CheckResult
  @NonNull
  public static GlideOptions noTransformation()
  {
    if (e == null) {
      e = new GlideOptions().dontTransform().autoClone();
    }
    return e;
  }
  
  @CheckResult
  @NonNull
  public static <T> GlideOptions option(@NonNull Option<T> paramOption, @NonNull T paramT)
  {
    return new GlideOptions().set(paramOption, paramT);
  }
  
  @CheckResult
  @NonNull
  public static GlideOptions overrideOf(@IntRange(from=0L) int paramInt)
  {
    return new GlideOptions().override(paramInt);
  }
  
  @CheckResult
  @NonNull
  public static GlideOptions overrideOf(@IntRange(from=0L) int paramInt1, @IntRange(from=0L) int paramInt2)
  {
    return new GlideOptions().override(paramInt1, paramInt2);
  }
  
  @CheckResult
  @NonNull
  public static GlideOptions placeholderOf(@DrawableRes int paramInt)
  {
    return new GlideOptions().placeholder(paramInt);
  }
  
  @CheckResult
  @NonNull
  public static GlideOptions placeholderOf(@Nullable Drawable paramDrawable)
  {
    return new GlideOptions().placeholder(paramDrawable);
  }
  
  @CheckResult
  @NonNull
  public static GlideOptions priorityOf(@NonNull Priority paramPriority)
  {
    return new GlideOptions().priority(paramPriority);
  }
  
  @CheckResult
  @NonNull
  public static GlideOptions signatureOf(@NonNull Key paramKey)
  {
    return new GlideOptions().signature(paramKey);
  }
  
  @CheckResult
  @NonNull
  public static GlideOptions sizeMultiplierOf(@FloatRange(from=0.0D, to=1.0D) float paramFloat)
  {
    return new GlideOptions().sizeMultiplier(paramFloat);
  }
  
  @CheckResult
  @NonNull
  public static GlideOptions skipMemoryCacheOf(boolean paramBoolean)
  {
    return new GlideOptions().skipMemoryCache(paramBoolean);
  }
  
  @CheckResult
  @NonNull
  public static GlideOptions timeoutOf(@IntRange(from=0L) int paramInt)
  {
    return new GlideOptions().timeout(paramInt);
  }
  
  @CheckResult
  @NonNull
  public final GlideOptions apply(@NonNull RequestOptions paramRequestOptions)
  {
    return (GlideOptions)super.apply(paramRequestOptions);
  }
  
  @NonNull
  public final GlideOptions autoClone()
  {
    return (GlideOptions)super.autoClone();
  }
  
  @CheckResult
  @NonNull
  public final GlideOptions centerCrop()
  {
    return (GlideOptions)super.centerCrop();
  }
  
  @CheckResult
  @NonNull
  public final GlideOptions centerInside()
  {
    return (GlideOptions)super.centerInside();
  }
  
  @CheckResult
  @NonNull
  public final GlideOptions circleCrop()
  {
    return (GlideOptions)super.circleCrop();
  }
  
  @CheckResult
  public final GlideOptions clone()
  {
    return (GlideOptions)super.clone();
  }
  
  @CheckResult
  @NonNull
  public final GlideOptions decode(@NonNull Class<?> paramClass)
  {
    return (GlideOptions)super.decode(paramClass);
  }
  
  @CheckResult
  @NonNull
  public final GlideOptions disallowHardwareConfig()
  {
    return (GlideOptions)super.disallowHardwareConfig();
  }
  
  @CheckResult
  @NonNull
  public final GlideOptions diskCacheStrategy(@NonNull DiskCacheStrategy paramDiskCacheStrategy)
  {
    return (GlideOptions)super.diskCacheStrategy(paramDiskCacheStrategy);
  }
  
  @CheckResult
  @NonNull
  public final GlideOptions dontAnimate()
  {
    return (GlideOptions)super.dontAnimate();
  }
  
  @CheckResult
  @NonNull
  public final GlideOptions dontTransform()
  {
    return (GlideOptions)super.dontTransform();
  }
  
  @CheckResult
  @NonNull
  public final GlideOptions downsample(@NonNull DownsampleStrategy paramDownsampleStrategy)
  {
    return (GlideOptions)super.downsample(paramDownsampleStrategy);
  }
  
  @CheckResult
  @NonNull
  public final GlideOptions encodeFormat(@NonNull Bitmap.CompressFormat paramCompressFormat)
  {
    return (GlideOptions)super.encodeFormat(paramCompressFormat);
  }
  
  @CheckResult
  @NonNull
  public final GlideOptions encodeQuality(@IntRange(from=0L, to=100L) int paramInt)
  {
    return (GlideOptions)super.encodeQuality(paramInt);
  }
  
  @CheckResult
  @NonNull
  public final GlideOptions error(@DrawableRes int paramInt)
  {
    return (GlideOptions)super.error(paramInt);
  }
  
  @CheckResult
  @NonNull
  public final GlideOptions error(@Nullable Drawable paramDrawable)
  {
    return (GlideOptions)super.error(paramDrawable);
  }
  
  @CheckResult
  @NonNull
  public final GlideOptions fallback(@DrawableRes int paramInt)
  {
    return (GlideOptions)super.fallback(paramInt);
  }
  
  @CheckResult
  @NonNull
  public final GlideOptions fallback(@Nullable Drawable paramDrawable)
  {
    return (GlideOptions)super.fallback(paramDrawable);
  }
  
  @CheckResult
  @NonNull
  public final GlideOptions fitCenter()
  {
    return (GlideOptions)super.fitCenter();
  }
  
  @CheckResult
  @NonNull
  public final GlideOptions format(@NonNull DecodeFormat paramDecodeFormat)
  {
    return (GlideOptions)super.format(paramDecodeFormat);
  }
  
  @CheckResult
  @NonNull
  public final GlideOptions frame(@IntRange(from=0L) long paramLong)
  {
    return (GlideOptions)super.frame(paramLong);
  }
  
  @NonNull
  public final GlideOptions lock()
  {
    return (GlideOptions)super.lock();
  }
  
  @CheckResult
  @NonNull
  public final GlideOptions onlyRetrieveFromCache(boolean paramBoolean)
  {
    return (GlideOptions)super.onlyRetrieveFromCache(paramBoolean);
  }
  
  @CheckResult
  @NonNull
  public final GlideOptions optionalCenterCrop()
  {
    return (GlideOptions)super.optionalCenterCrop();
  }
  
  @CheckResult
  @NonNull
  public final GlideOptions optionalCenterInside()
  {
    return (GlideOptions)super.optionalCenterInside();
  }
  
  @CheckResult
  @NonNull
  public final GlideOptions optionalCircleCrop()
  {
    return (GlideOptions)super.optionalCircleCrop();
  }
  
  @CheckResult
  @NonNull
  public final GlideOptions optionalFitCenter()
  {
    return (GlideOptions)super.optionalFitCenter();
  }
  
  @CheckResult
  @NonNull
  public final GlideOptions optionalTransform(@NonNull Transformation<Bitmap> paramTransformation)
  {
    return (GlideOptions)super.optionalTransform(paramTransformation);
  }
  
  @CheckResult
  @NonNull
  public final <T> GlideOptions optionalTransform(@NonNull Class<T> paramClass, @NonNull Transformation<T> paramTransformation)
  {
    return (GlideOptions)super.optionalTransform(paramClass, paramTransformation);
  }
  
  @CheckResult
  @NonNull
  public final GlideOptions override(int paramInt)
  {
    return (GlideOptions)super.override(paramInt);
  }
  
  @CheckResult
  @NonNull
  public final GlideOptions override(int paramInt1, int paramInt2)
  {
    return (GlideOptions)super.override(paramInt1, paramInt2);
  }
  
  @CheckResult
  @NonNull
  public final GlideOptions placeholder(@DrawableRes int paramInt)
  {
    return (GlideOptions)super.placeholder(paramInt);
  }
  
  @CheckResult
  @NonNull
  public final GlideOptions placeholder(@Nullable Drawable paramDrawable)
  {
    return (GlideOptions)super.placeholder(paramDrawable);
  }
  
  @CheckResult
  @NonNull
  public final GlideOptions priority(@NonNull Priority paramPriority)
  {
    return (GlideOptions)super.priority(paramPriority);
  }
  
  @CheckResult
  @NonNull
  public final <T> GlideOptions set(@NonNull Option<T> paramOption, @NonNull T paramT)
  {
    return (GlideOptions)super.set(paramOption, paramT);
  }
  
  @CheckResult
  @NonNull
  public final GlideOptions signature(@NonNull Key paramKey)
  {
    return (GlideOptions)super.signature(paramKey);
  }
  
  @CheckResult
  @NonNull
  public final GlideOptions sizeMultiplier(@FloatRange(from=0.0D, to=1.0D) float paramFloat)
  {
    return (GlideOptions)super.sizeMultiplier(paramFloat);
  }
  
  @CheckResult
  @NonNull
  public final GlideOptions skipMemoryCache(boolean paramBoolean)
  {
    return (GlideOptions)super.skipMemoryCache(paramBoolean);
  }
  
  @CheckResult
  @NonNull
  public final GlideOptions theme(@Nullable Resources.Theme paramTheme)
  {
    return (GlideOptions)super.theme(paramTheme);
  }
  
  @CheckResult
  @NonNull
  public final GlideOptions timeout(@IntRange(from=0L) int paramInt)
  {
    return (GlideOptions)super.timeout(paramInt);
  }
  
  @CheckResult
  @NonNull
  public final GlideOptions transform(@NonNull Transformation<Bitmap> paramTransformation)
  {
    return (GlideOptions)super.transform(paramTransformation);
  }
  
  @CheckResult
  @NonNull
  public final <T> GlideOptions transform(@NonNull Class<T> paramClass, @NonNull Transformation<T> paramTransformation)
  {
    return (GlideOptions)super.transform(paramClass, paramTransformation);
  }
  
  @SafeVarargs
  @CheckResult
  @NonNull
  public final GlideOptions transforms(@NonNull Transformation<Bitmap>... paramVarArgs)
  {
    return (GlideOptions)super.transforms(paramVarArgs);
  }
  
  @CheckResult
  @NonNull
  public final GlideOptions useAnimationPool(boolean paramBoolean)
  {
    return (GlideOptions)super.useAnimationPool(paramBoolean);
  }
  
  @CheckResult
  @NonNull
  public final GlideOptions useUnlimitedSourceGeneratorsPool(boolean paramBoolean)
  {
    return (GlideOptions)super.useUnlimitedSourceGeneratorsPool(paramBoolean);
  }
}
