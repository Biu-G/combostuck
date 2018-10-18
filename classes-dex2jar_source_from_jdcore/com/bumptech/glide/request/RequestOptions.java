package com.bumptech.glide.request;

import android.content.res.Resources.Theme;
import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import android.graphics.drawable.BitmapDrawable;
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
import com.bumptech.glide.load.MultiTransformation;
import com.bumptech.glide.load.Option;
import com.bumptech.glide.load.Options;
import com.bumptech.glide.load.Transformation;
import com.bumptech.glide.load.engine.DiskCacheStrategy;
import com.bumptech.glide.load.model.stream.HttpGlideUrlLoader;
import com.bumptech.glide.load.resource.bitmap.BitmapEncoder;
import com.bumptech.glide.load.resource.bitmap.CenterCrop;
import com.bumptech.glide.load.resource.bitmap.CenterInside;
import com.bumptech.glide.load.resource.bitmap.CircleCrop;
import com.bumptech.glide.load.resource.bitmap.DownsampleStrategy;
import com.bumptech.glide.load.resource.bitmap.Downsampler;
import com.bumptech.glide.load.resource.bitmap.DrawableTransformation;
import com.bumptech.glide.load.resource.bitmap.FitCenter;
import com.bumptech.glide.load.resource.bitmap.VideoDecoder;
import com.bumptech.glide.load.resource.gif.GifDrawable;
import com.bumptech.glide.load.resource.gif.GifDrawableTransformation;
import com.bumptech.glide.load.resource.gif.GifOptions;
import com.bumptech.glide.signature.EmptySignature;
import com.bumptech.glide.util.Preconditions;
import com.bumptech.glide.util.Util;
import java.util.HashMap;
import java.util.Map;

public class RequestOptions
  implements Cloneable
{
  @Nullable
  private static RequestOptions a;
  @Nullable
  private static RequestOptions b;
  @Nullable
  private static RequestOptions c;
  @Nullable
  private static RequestOptions d;
  @Nullable
  private static RequestOptions e;
  @Nullable
  private static RequestOptions f;
  @Nullable
  private static RequestOptions g;
  @Nullable
  private static RequestOptions h;
  @NonNull
  private Class<?> A = Object.class;
  private boolean B;
  @Nullable
  private Resources.Theme C;
  private boolean D;
  private boolean E;
  private boolean F;
  private boolean G = true;
  private boolean H;
  private int i;
  private float j = 1.0F;
  @NonNull
  private DiskCacheStrategy k = DiskCacheStrategy.AUTOMATIC;
  @NonNull
  private Priority l = Priority.NORMAL;
  @Nullable
  private Drawable m;
  private int n;
  @Nullable
  private Drawable o;
  private int p;
  private boolean q = true;
  private int r = -1;
  private int s = -1;
  @NonNull
  private Key t = EmptySignature.obtain();
  private boolean u;
  private boolean v = true;
  @Nullable
  private Drawable w;
  private int x;
  @NonNull
  private Options y = new Options();
  @NonNull
  private Map<Class<?>, Transformation<?>> z = new HashMap();
  
  public RequestOptions() {}
  
  @NonNull
  private RequestOptions a(@NonNull Transformation<Bitmap> paramTransformation, boolean paramBoolean)
  {
    if (D) {
      return clone().a(paramTransformation, paramBoolean);
    }
    DrawableTransformation localDrawableTransformation = new DrawableTransformation(paramTransformation, paramBoolean);
    a(Bitmap.class, paramTransformation, paramBoolean);
    a(Drawable.class, localDrawableTransformation, paramBoolean);
    a(BitmapDrawable.class, localDrawableTransformation.asBitmapDrawable(), paramBoolean);
    a(GifDrawable.class, new GifDrawableTransformation(paramTransformation), paramBoolean);
    return b();
  }
  
  @NonNull
  private RequestOptions a(@NonNull DownsampleStrategy paramDownsampleStrategy, @NonNull Transformation<Bitmap> paramTransformation, boolean paramBoolean)
  {
    if (paramBoolean) {
      paramDownsampleStrategy = b(paramDownsampleStrategy, paramTransformation);
    } else {
      paramDownsampleStrategy = a(paramDownsampleStrategy, paramTransformation);
    }
    G = true;
    return paramDownsampleStrategy;
  }
  
  @NonNull
  private <T> RequestOptions a(@NonNull Class<T> paramClass, @NonNull Transformation<T> paramTransformation, boolean paramBoolean)
  {
    if (D) {
      return clone().a(paramClass, paramTransformation, paramBoolean);
    }
    Preconditions.checkNotNull(paramClass);
    Preconditions.checkNotNull(paramTransformation);
    z.put(paramClass, paramTransformation);
    i |= 0x800;
    v = true;
    i |= 0x10000;
    G = false;
    if (paramBoolean)
    {
      i |= 0x20000;
      u = true;
    }
    return b();
  }
  
  private boolean a(int paramInt)
  {
    return a(i, paramInt);
  }
  
  private static boolean a(int paramInt1, int paramInt2)
  {
    return (paramInt1 & paramInt2) != 0;
  }
  
  @NonNull
  private RequestOptions b()
  {
    if (!B) {
      return this;
    }
    throw new IllegalStateException("You cannot modify locked RequestOptions, consider clone()");
  }
  
  @CheckResult
  @NonNull
  public static RequestOptions bitmapTransform(@NonNull Transformation<Bitmap> paramTransformation)
  {
    return new RequestOptions().transform(paramTransformation);
  }
  
  @NonNull
  private RequestOptions c(@NonNull DownsampleStrategy paramDownsampleStrategy, @NonNull Transformation<Bitmap> paramTransformation)
  {
    return a(paramDownsampleStrategy, paramTransformation, true);
  }
  
  @CheckResult
  @NonNull
  public static RequestOptions centerCropTransform()
  {
    if (e == null) {
      e = new RequestOptions().centerCrop().autoClone();
    }
    return e;
  }
  
  @CheckResult
  @NonNull
  public static RequestOptions centerInsideTransform()
  {
    if (d == null) {
      d = new RequestOptions().centerInside().autoClone();
    }
    return d;
  }
  
  @CheckResult
  @NonNull
  public static RequestOptions circleCropTransform()
  {
    if (f == null) {
      f = new RequestOptions().circleCrop().autoClone();
    }
    return f;
  }
  
  @NonNull
  private RequestOptions d(@NonNull DownsampleStrategy paramDownsampleStrategy, @NonNull Transformation<Bitmap> paramTransformation)
  {
    return a(paramDownsampleStrategy, paramTransformation, false);
  }
  
  @CheckResult
  @NonNull
  public static RequestOptions decodeTypeOf(@NonNull Class<?> paramClass)
  {
    return new RequestOptions().decode(paramClass);
  }
  
  @CheckResult
  @NonNull
  public static RequestOptions diskCacheStrategyOf(@NonNull DiskCacheStrategy paramDiskCacheStrategy)
  {
    return new RequestOptions().diskCacheStrategy(paramDiskCacheStrategy);
  }
  
  @CheckResult
  @NonNull
  public static RequestOptions downsampleOf(@NonNull DownsampleStrategy paramDownsampleStrategy)
  {
    return new RequestOptions().downsample(paramDownsampleStrategy);
  }
  
  @CheckResult
  @NonNull
  public static RequestOptions encodeFormatOf(@NonNull Bitmap.CompressFormat paramCompressFormat)
  {
    return new RequestOptions().encodeFormat(paramCompressFormat);
  }
  
  @CheckResult
  @NonNull
  public static RequestOptions encodeQualityOf(@IntRange(from=0L, to=100L) int paramInt)
  {
    return new RequestOptions().encodeQuality(paramInt);
  }
  
  @CheckResult
  @NonNull
  public static RequestOptions errorOf(@DrawableRes int paramInt)
  {
    return new RequestOptions().error(paramInt);
  }
  
  @CheckResult
  @NonNull
  public static RequestOptions errorOf(@Nullable Drawable paramDrawable)
  {
    return new RequestOptions().error(paramDrawable);
  }
  
  @CheckResult
  @NonNull
  public static RequestOptions fitCenterTransform()
  {
    if (c == null) {
      c = new RequestOptions().fitCenter().autoClone();
    }
    return c;
  }
  
  @CheckResult
  @NonNull
  public static RequestOptions formatOf(@NonNull DecodeFormat paramDecodeFormat)
  {
    return new RequestOptions().format(paramDecodeFormat);
  }
  
  @CheckResult
  @NonNull
  public static RequestOptions frameOf(@IntRange(from=0L) long paramLong)
  {
    return new RequestOptions().frame(paramLong);
  }
  
  @CheckResult
  @NonNull
  public static RequestOptions noAnimation()
  {
    if (h == null) {
      h = new RequestOptions().dontAnimate().autoClone();
    }
    return h;
  }
  
  @CheckResult
  @NonNull
  public static RequestOptions noTransformation()
  {
    if (g == null) {
      g = new RequestOptions().dontTransform().autoClone();
    }
    return g;
  }
  
  @CheckResult
  @NonNull
  public static <T> RequestOptions option(@NonNull Option<T> paramOption, @NonNull T paramT)
  {
    return new RequestOptions().set(paramOption, paramT);
  }
  
  @CheckResult
  @NonNull
  public static RequestOptions overrideOf(@IntRange(from=0L) int paramInt)
  {
    return overrideOf(paramInt, paramInt);
  }
  
  @CheckResult
  @NonNull
  public static RequestOptions overrideOf(@IntRange(from=0L) int paramInt1, @IntRange(from=0L) int paramInt2)
  {
    return new RequestOptions().override(paramInt1, paramInt2);
  }
  
  @CheckResult
  @NonNull
  public static RequestOptions placeholderOf(@DrawableRes int paramInt)
  {
    return new RequestOptions().placeholder(paramInt);
  }
  
  @CheckResult
  @NonNull
  public static RequestOptions placeholderOf(@Nullable Drawable paramDrawable)
  {
    return new RequestOptions().placeholder(paramDrawable);
  }
  
  @CheckResult
  @NonNull
  public static RequestOptions priorityOf(@NonNull Priority paramPriority)
  {
    return new RequestOptions().priority(paramPriority);
  }
  
  @CheckResult
  @NonNull
  public static RequestOptions signatureOf(@NonNull Key paramKey)
  {
    return new RequestOptions().signature(paramKey);
  }
  
  @CheckResult
  @NonNull
  public static RequestOptions sizeMultiplierOf(@FloatRange(from=0.0D, to=1.0D) float paramFloat)
  {
    return new RequestOptions().sizeMultiplier(paramFloat);
  }
  
  @CheckResult
  @NonNull
  public static RequestOptions skipMemoryCacheOf(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      if (a == null) {
        a = new RequestOptions().skipMemoryCache(true).autoClone();
      }
      return a;
    }
    if (b == null) {
      b = new RequestOptions().skipMemoryCache(false).autoClone();
    }
    return b;
  }
  
  @CheckResult
  @NonNull
  public static RequestOptions timeoutOf(@IntRange(from=0L) int paramInt)
  {
    return new RequestOptions().timeout(paramInt);
  }
  
  @NonNull
  final RequestOptions a(@NonNull DownsampleStrategy paramDownsampleStrategy, @NonNull Transformation<Bitmap> paramTransformation)
  {
    if (D) {
      return clone().a(paramDownsampleStrategy, paramTransformation);
    }
    downsample(paramDownsampleStrategy);
    return a(paramTransformation, false);
  }
  
  boolean a()
  {
    return G;
  }
  
  @CheckResult
  @NonNull
  public RequestOptions apply(@NonNull RequestOptions paramRequestOptions)
  {
    if (D) {
      return clone().apply(paramRequestOptions);
    }
    if (a(i, 2)) {
      j = j;
    }
    if (a(i, 262144)) {
      E = E;
    }
    if (a(i, 1048576)) {
      H = H;
    }
    if (a(i, 4)) {
      k = k;
    }
    if (a(i, 8)) {
      l = l;
    }
    if (a(i, 16)) {
      m = m;
    }
    if (a(i, 32)) {
      n = n;
    }
    if (a(i, 64)) {
      o = o;
    }
    if (a(i, 128)) {
      p = p;
    }
    if (a(i, 256)) {
      q = q;
    }
    if (a(i, 512))
    {
      s = s;
      r = r;
    }
    if (a(i, 1024)) {
      t = t;
    }
    if (a(i, 4096)) {
      A = A;
    }
    if (a(i, 8192)) {
      w = w;
    }
    if (a(i, 16384)) {
      x = x;
    }
    if (a(i, 32768)) {
      C = C;
    }
    if (a(i, 65536)) {
      v = v;
    }
    if (a(i, 131072)) {
      u = u;
    }
    if (a(i, 2048))
    {
      z.putAll(z);
      G = G;
    }
    if (a(i, 524288)) {
      F = F;
    }
    if (!v)
    {
      z.clear();
      i &= 0xF7FF;
      u = false;
      i &= 0xFFFDFFFF;
      G = true;
    }
    i |= i;
    y.putAll(y);
    return b();
  }
  
  @NonNull
  public RequestOptions autoClone()
  {
    if ((B) && (!D)) {
      throw new IllegalStateException("You cannot auto lock an already locked options object, try clone() first");
    }
    D = true;
    return lock();
  }
  
  @CheckResult
  @NonNull
  final RequestOptions b(@NonNull DownsampleStrategy paramDownsampleStrategy, @NonNull Transformation<Bitmap> paramTransformation)
  {
    if (D) {
      return clone().b(paramDownsampleStrategy, paramTransformation);
    }
    downsample(paramDownsampleStrategy);
    return transform(paramTransformation);
  }
  
  @CheckResult
  @NonNull
  public RequestOptions centerCrop()
  {
    return b(DownsampleStrategy.CENTER_OUTSIDE, new CenterCrop());
  }
  
  @CheckResult
  @NonNull
  public RequestOptions centerInside()
  {
    return c(DownsampleStrategy.CENTER_INSIDE, new CenterInside());
  }
  
  @CheckResult
  @NonNull
  public RequestOptions circleCrop()
  {
    return b(DownsampleStrategy.CENTER_INSIDE, new CircleCrop());
  }
  
  @CheckResult
  public RequestOptions clone()
  {
    try
    {
      RequestOptions localRequestOptions = (RequestOptions)super.clone();
      y = new Options();
      y.putAll(y);
      z = new HashMap();
      z.putAll(z);
      B = false;
      D = false;
      return localRequestOptions;
    }
    catch (CloneNotSupportedException localCloneNotSupportedException)
    {
      throw new RuntimeException(localCloneNotSupportedException);
    }
  }
  
  @CheckResult
  @NonNull
  public RequestOptions decode(@NonNull Class<?> paramClass)
  {
    if (D) {
      return clone().decode(paramClass);
    }
    A = ((Class)Preconditions.checkNotNull(paramClass));
    i |= 0x1000;
    return b();
  }
  
  @CheckResult
  @NonNull
  public RequestOptions disallowHardwareConfig()
  {
    return set(Downsampler.ALLOW_HARDWARE_CONFIG, Boolean.valueOf(false));
  }
  
  @CheckResult
  @NonNull
  public RequestOptions diskCacheStrategy(@NonNull DiskCacheStrategy paramDiskCacheStrategy)
  {
    if (D) {
      return clone().diskCacheStrategy(paramDiskCacheStrategy);
    }
    k = ((DiskCacheStrategy)Preconditions.checkNotNull(paramDiskCacheStrategy));
    i |= 0x4;
    return b();
  }
  
  @CheckResult
  @NonNull
  public RequestOptions dontAnimate()
  {
    return set(GifOptions.DISABLE_ANIMATION, Boolean.valueOf(true));
  }
  
  @CheckResult
  @NonNull
  public RequestOptions dontTransform()
  {
    if (D) {
      return clone().dontTransform();
    }
    z.clear();
    i &= 0xF7FF;
    u = false;
    i &= 0xFFFDFFFF;
    v = false;
    i |= 0x10000;
    G = true;
    return b();
  }
  
  @CheckResult
  @NonNull
  public RequestOptions downsample(@NonNull DownsampleStrategy paramDownsampleStrategy)
  {
    return set(Downsampler.DOWNSAMPLE_STRATEGY, Preconditions.checkNotNull(paramDownsampleStrategy));
  }
  
  @CheckResult
  @NonNull
  public RequestOptions encodeFormat(@NonNull Bitmap.CompressFormat paramCompressFormat)
  {
    return set(BitmapEncoder.COMPRESSION_FORMAT, Preconditions.checkNotNull(paramCompressFormat));
  }
  
  @CheckResult
  @NonNull
  public RequestOptions encodeQuality(@IntRange(from=0L, to=100L) int paramInt)
  {
    return set(BitmapEncoder.COMPRESSION_QUALITY, Integer.valueOf(paramInt));
  }
  
  public boolean equals(Object paramObject)
  {
    boolean bool1 = paramObject instanceof RequestOptions;
    boolean bool2 = false;
    if (bool1)
    {
      paramObject = (RequestOptions)paramObject;
      bool1 = bool2;
      if (Float.compare(j, j) == 0)
      {
        bool1 = bool2;
        if (n == n)
        {
          bool1 = bool2;
          if (Util.bothNullOrEqual(m, m))
          {
            bool1 = bool2;
            if (p == p)
            {
              bool1 = bool2;
              if (Util.bothNullOrEqual(o, o))
              {
                bool1 = bool2;
                if (x == x)
                {
                  bool1 = bool2;
                  if (Util.bothNullOrEqual(w, w))
                  {
                    bool1 = bool2;
                    if (q == q)
                    {
                      bool1 = bool2;
                      if (r == r)
                      {
                        bool1 = bool2;
                        if (s == s)
                        {
                          bool1 = bool2;
                          if (u == u)
                          {
                            bool1 = bool2;
                            if (v == v)
                            {
                              bool1 = bool2;
                              if (E == E)
                              {
                                bool1 = bool2;
                                if (F == F)
                                {
                                  bool1 = bool2;
                                  if (k.equals(k))
                                  {
                                    bool1 = bool2;
                                    if (l == l)
                                    {
                                      bool1 = bool2;
                                      if (y.equals(y))
                                      {
                                        bool1 = bool2;
                                        if (z.equals(z))
                                        {
                                          bool1 = bool2;
                                          if (A.equals(A))
                                          {
                                            bool1 = bool2;
                                            if (Util.bothNullOrEqual(t, t))
                                            {
                                              bool1 = bool2;
                                              if (Util.bothNullOrEqual(C, C)) {
                                                bool1 = true;
                                              }
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
      return bool1;
    }
    return false;
  }
  
  @CheckResult
  @NonNull
  public RequestOptions error(@DrawableRes int paramInt)
  {
    if (D) {
      return clone().error(paramInt);
    }
    n = paramInt;
    i |= 0x20;
    return b();
  }
  
  @CheckResult
  @NonNull
  public RequestOptions error(@Nullable Drawable paramDrawable)
  {
    if (D) {
      return clone().error(paramDrawable);
    }
    m = paramDrawable;
    i |= 0x10;
    return b();
  }
  
  @CheckResult
  @NonNull
  public RequestOptions fallback(@DrawableRes int paramInt)
  {
    if (D) {
      return clone().fallback(paramInt);
    }
    x = paramInt;
    i |= 0x4000;
    return b();
  }
  
  @CheckResult
  @NonNull
  public RequestOptions fallback(@Nullable Drawable paramDrawable)
  {
    if (D) {
      return clone().fallback(paramDrawable);
    }
    w = paramDrawable;
    i |= 0x2000;
    return b();
  }
  
  @CheckResult
  @NonNull
  public RequestOptions fitCenter()
  {
    return c(DownsampleStrategy.FIT_CENTER, new FitCenter());
  }
  
  @CheckResult
  @NonNull
  public RequestOptions format(@NonNull DecodeFormat paramDecodeFormat)
  {
    Preconditions.checkNotNull(paramDecodeFormat);
    return set(Downsampler.DECODE_FORMAT, paramDecodeFormat).set(GifOptions.DECODE_FORMAT, paramDecodeFormat);
  }
  
  @CheckResult
  @NonNull
  public RequestOptions frame(@IntRange(from=0L) long paramLong)
  {
    return set(VideoDecoder.TARGET_FRAME, Long.valueOf(paramLong));
  }
  
  @NonNull
  public final DiskCacheStrategy getDiskCacheStrategy()
  {
    return k;
  }
  
  public final int getErrorId()
  {
    return n;
  }
  
  @Nullable
  public final Drawable getErrorPlaceholder()
  {
    return m;
  }
  
  @Nullable
  public final Drawable getFallbackDrawable()
  {
    return w;
  }
  
  public final int getFallbackId()
  {
    return x;
  }
  
  public final boolean getOnlyRetrieveFromCache()
  {
    return F;
  }
  
  @NonNull
  public final Options getOptions()
  {
    return y;
  }
  
  public final int getOverrideHeight()
  {
    return r;
  }
  
  public final int getOverrideWidth()
  {
    return s;
  }
  
  @Nullable
  public final Drawable getPlaceholderDrawable()
  {
    return o;
  }
  
  public final int getPlaceholderId()
  {
    return p;
  }
  
  @NonNull
  public final Priority getPriority()
  {
    return l;
  }
  
  @NonNull
  public final Class<?> getResourceClass()
  {
    return A;
  }
  
  @NonNull
  public final Key getSignature()
  {
    return t;
  }
  
  public final float getSizeMultiplier()
  {
    return j;
  }
  
  @Nullable
  public final Resources.Theme getTheme()
  {
    return C;
  }
  
  @NonNull
  public final Map<Class<?>, Transformation<?>> getTransformations()
  {
    return z;
  }
  
  public final boolean getUseAnimationPool()
  {
    return H;
  }
  
  public final boolean getUseUnlimitedSourceGeneratorsPool()
  {
    return E;
  }
  
  public int hashCode()
  {
    int i1 = Util.hashCode(j);
    i1 = Util.hashCode(n, i1);
    i1 = Util.hashCode(m, i1);
    i1 = Util.hashCode(p, i1);
    i1 = Util.hashCode(o, i1);
    i1 = Util.hashCode(x, i1);
    i1 = Util.hashCode(w, i1);
    i1 = Util.hashCode(q, i1);
    i1 = Util.hashCode(r, i1);
    i1 = Util.hashCode(s, i1);
    i1 = Util.hashCode(u, i1);
    i1 = Util.hashCode(v, i1);
    i1 = Util.hashCode(E, i1);
    i1 = Util.hashCode(F, i1);
    i1 = Util.hashCode(k, i1);
    i1 = Util.hashCode(l, i1);
    i1 = Util.hashCode(y, i1);
    i1 = Util.hashCode(z, i1);
    i1 = Util.hashCode(A, i1);
    i1 = Util.hashCode(t, i1);
    return Util.hashCode(C, i1);
  }
  
  protected boolean isAutoCloneEnabled()
  {
    return D;
  }
  
  public final boolean isDiskCacheStrategySet()
  {
    return a(4);
  }
  
  public final boolean isLocked()
  {
    return B;
  }
  
  public final boolean isMemoryCacheable()
  {
    return q;
  }
  
  public final boolean isPrioritySet()
  {
    return a(8);
  }
  
  public final boolean isSkipMemoryCacheSet()
  {
    return a(256);
  }
  
  public final boolean isTransformationAllowed()
  {
    return v;
  }
  
  public final boolean isTransformationRequired()
  {
    return u;
  }
  
  public final boolean isTransformationSet()
  {
    return a(2048);
  }
  
  public final boolean isValidOverride()
  {
    return Util.isValidDimensions(s, r);
  }
  
  @NonNull
  public RequestOptions lock()
  {
    B = true;
    return this;
  }
  
  @CheckResult
  @NonNull
  public RequestOptions onlyRetrieveFromCache(boolean paramBoolean)
  {
    if (D) {
      return clone().onlyRetrieveFromCache(paramBoolean);
    }
    F = paramBoolean;
    i |= 0x80000;
    return b();
  }
  
  @CheckResult
  @NonNull
  public RequestOptions optionalCenterCrop()
  {
    return a(DownsampleStrategy.CENTER_OUTSIDE, new CenterCrop());
  }
  
  @CheckResult
  @NonNull
  public RequestOptions optionalCenterInside()
  {
    return d(DownsampleStrategy.CENTER_INSIDE, new CenterInside());
  }
  
  @CheckResult
  @NonNull
  public RequestOptions optionalCircleCrop()
  {
    return a(DownsampleStrategy.CENTER_OUTSIDE, new CircleCrop());
  }
  
  @CheckResult
  @NonNull
  public RequestOptions optionalFitCenter()
  {
    return d(DownsampleStrategy.FIT_CENTER, new FitCenter());
  }
  
  @CheckResult
  @NonNull
  public RequestOptions optionalTransform(@NonNull Transformation<Bitmap> paramTransformation)
  {
    return a(paramTransformation, false);
  }
  
  @CheckResult
  @NonNull
  public <T> RequestOptions optionalTransform(@NonNull Class<T> paramClass, @NonNull Transformation<T> paramTransformation)
  {
    return a(paramClass, paramTransformation, false);
  }
  
  @CheckResult
  @NonNull
  public RequestOptions override(int paramInt)
  {
    return override(paramInt, paramInt);
  }
  
  @CheckResult
  @NonNull
  public RequestOptions override(int paramInt1, int paramInt2)
  {
    if (D) {
      return clone().override(paramInt1, paramInt2);
    }
    s = paramInt1;
    r = paramInt2;
    i |= 0x200;
    return b();
  }
  
  @CheckResult
  @NonNull
  public RequestOptions placeholder(@DrawableRes int paramInt)
  {
    if (D) {
      return clone().placeholder(paramInt);
    }
    p = paramInt;
    i |= 0x80;
    return b();
  }
  
  @CheckResult
  @NonNull
  public RequestOptions placeholder(@Nullable Drawable paramDrawable)
  {
    if (D) {
      return clone().placeholder(paramDrawable);
    }
    o = paramDrawable;
    i |= 0x40;
    return b();
  }
  
  @CheckResult
  @NonNull
  public RequestOptions priority(@NonNull Priority paramPriority)
  {
    if (D) {
      return clone().priority(paramPriority);
    }
    l = ((Priority)Preconditions.checkNotNull(paramPriority));
    i |= 0x8;
    return b();
  }
  
  @CheckResult
  @NonNull
  public <T> RequestOptions set(@NonNull Option<T> paramOption, @NonNull T paramT)
  {
    if (D) {
      return clone().set(paramOption, paramT);
    }
    Preconditions.checkNotNull(paramOption);
    Preconditions.checkNotNull(paramT);
    y.set(paramOption, paramT);
    return b();
  }
  
  @CheckResult
  @NonNull
  public RequestOptions signature(@NonNull Key paramKey)
  {
    if (D) {
      return clone().signature(paramKey);
    }
    t = ((Key)Preconditions.checkNotNull(paramKey));
    i |= 0x400;
    return b();
  }
  
  @CheckResult
  @NonNull
  public RequestOptions sizeMultiplier(@FloatRange(from=0.0D, to=1.0D) float paramFloat)
  {
    if (D) {
      return clone().sizeMultiplier(paramFloat);
    }
    if ((paramFloat >= 0.0F) && (paramFloat <= 1.0F))
    {
      j = paramFloat;
      i |= 0x2;
      return b();
    }
    throw new IllegalArgumentException("sizeMultiplier must be between 0 and 1");
  }
  
  @CheckResult
  @NonNull
  public RequestOptions skipMemoryCache(boolean paramBoolean)
  {
    if (D) {
      return clone().skipMemoryCache(true);
    }
    q = (paramBoolean ^ true);
    i |= 0x100;
    return b();
  }
  
  @CheckResult
  @NonNull
  public RequestOptions theme(@Nullable Resources.Theme paramTheme)
  {
    if (D) {
      return clone().theme(paramTheme);
    }
    C = paramTheme;
    i |= 0x8000;
    return b();
  }
  
  @CheckResult
  @NonNull
  public RequestOptions timeout(@IntRange(from=0L) int paramInt)
  {
    return set(HttpGlideUrlLoader.TIMEOUT, Integer.valueOf(paramInt));
  }
  
  @CheckResult
  @NonNull
  public RequestOptions transform(@NonNull Transformation<Bitmap> paramTransformation)
  {
    return a(paramTransformation, true);
  }
  
  @CheckResult
  @NonNull
  public <T> RequestOptions transform(@NonNull Class<T> paramClass, @NonNull Transformation<T> paramTransformation)
  {
    return a(paramClass, paramTransformation, true);
  }
  
  @CheckResult
  @NonNull
  public RequestOptions transforms(@NonNull Transformation<Bitmap>... paramVarArgs)
  {
    return a(new MultiTransformation(paramVarArgs), true);
  }
  
  @CheckResult
  @NonNull
  public RequestOptions useAnimationPool(boolean paramBoolean)
  {
    if (D) {
      return clone().useAnimationPool(paramBoolean);
    }
    H = paramBoolean;
    i |= 0x100000;
    return b();
  }
  
  @CheckResult
  @NonNull
  public RequestOptions useUnlimitedSourceGeneratorsPool(boolean paramBoolean)
  {
    if (D) {
      return clone().useUnlimitedSourceGeneratorsPool(paramBoolean);
    }
    E = paramBoolean;
    i |= 0x40000;
    return b();
  }
}
