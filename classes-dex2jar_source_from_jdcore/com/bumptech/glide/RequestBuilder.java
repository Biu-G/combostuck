package com.bumptech.glide;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Handler;
import android.support.annotation.CheckResult;
import android.support.annotation.DrawableRes;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.RawRes;
import android.widget.ImageView;
import com.bumptech.glide.load.engine.DiskCacheStrategy;
import com.bumptech.glide.request.ErrorRequestCoordinator;
import com.bumptech.glide.request.FutureTarget;
import com.bumptech.glide.request.Request;
import com.bumptech.glide.request.RequestCoordinator;
import com.bumptech.glide.request.RequestFutureTarget;
import com.bumptech.glide.request.RequestListener;
import com.bumptech.glide.request.RequestOptions;
import com.bumptech.glide.request.SingleRequest;
import com.bumptech.glide.request.ThumbnailRequestCoordinator;
import com.bumptech.glide.request.target.PreloadTarget;
import com.bumptech.glide.request.target.Target;
import com.bumptech.glide.request.target.ViewTarget;
import com.bumptech.glide.signature.ApplicationVersionSignature;
import com.bumptech.glide.util.Preconditions;
import com.bumptech.glide.util.Util;
import java.io.File;
import java.net.URL;

public class RequestBuilder<TranscodeType>
  implements Cloneable
{
  protected static final RequestOptions DOWNLOAD_ONLY_OPTIONS = new RequestOptions().diskCacheStrategy(DiskCacheStrategy.DATA).priority(Priority.LOW).skipMemoryCache(true);
  private final Context a;
  private final RequestManager b;
  private final Class<TranscodeType> c;
  private final RequestOptions d;
  private final Glide e;
  private final GlideContext f;
  @NonNull
  private TransitionOptions<?, ? super TranscodeType> g;
  @Nullable
  private Object h;
  @Nullable
  private RequestListener<TranscodeType> i;
  @Nullable
  private RequestBuilder<TranscodeType> j;
  @Nullable
  private RequestBuilder<TranscodeType> k;
  @Nullable
  private Float l;
  private boolean m = true;
  private boolean n;
  private boolean o;
  @NonNull
  protected RequestOptions requestOptions;
  
  protected RequestBuilder(Glide paramGlide, RequestManager paramRequestManager, Class<TranscodeType> paramClass, Context paramContext)
  {
    e = paramGlide;
    b = paramRequestManager;
    c = paramClass;
    d = paramRequestManager.a();
    a = paramContext;
    g = paramRequestManager.a(paramClass);
    requestOptions = d;
    f = paramGlide.b();
  }
  
  protected RequestBuilder(Class<TranscodeType> paramClass, RequestBuilder<?> paramRequestBuilder)
  {
    this(e, b, paramClass, a);
    h = h;
    n = n;
    requestOptions = requestOptions;
  }
  
  @NonNull
  private Priority a(@NonNull Priority paramPriority)
  {
    switch (2.b[paramPriority.ordinal()])
    {
    default: 
      paramPriority = new StringBuilder();
      paramPriority.append("unknown priority: ");
      paramPriority.append(requestOptions.getPriority());
      throw new IllegalArgumentException(paramPriority.toString());
    case 3: 
    case 4: 
      return Priority.IMMEDIATE;
    case 2: 
      return Priority.HIGH;
    }
    return Priority.NORMAL;
  }
  
  @NonNull
  private RequestBuilder<TranscodeType> a(@Nullable Object paramObject)
  {
    h = paramObject;
    n = true;
    return this;
  }
  
  private Request a(Target<TranscodeType> paramTarget, @Nullable RequestListener<TranscodeType> paramRequestListener, @Nullable RequestCoordinator paramRequestCoordinator, TransitionOptions<?, ? super TranscodeType> paramTransitionOptions, Priority paramPriority, int paramInt1, int paramInt2, RequestOptions paramRequestOptions)
  {
    Object localObject1;
    if (k != null)
    {
      localObject1 = new ErrorRequestCoordinator(paramRequestCoordinator);
      paramRequestCoordinator = (RequestCoordinator)localObject1;
    }
    else
    {
      Object localObject2 = null;
      localObject1 = paramRequestCoordinator;
      paramRequestCoordinator = localObject2;
    }
    paramTransitionOptions = b(paramTarget, paramRequestListener, (RequestCoordinator)localObject1, paramTransitionOptions, paramPriority, paramInt1, paramInt2, paramRequestOptions);
    if (paramRequestCoordinator == null) {
      return paramTransitionOptions;
    }
    int i3 = k.requestOptions.getOverrideWidth();
    int i4 = k.requestOptions.getOverrideHeight();
    int i2 = i3;
    int i1 = i4;
    if (Util.isValidDimensions(paramInt1, paramInt2))
    {
      i2 = i3;
      i1 = i4;
      if (!k.requestOptions.isValidOverride())
      {
        i2 = paramRequestOptions.getOverrideWidth();
        i1 = paramRequestOptions.getOverrideHeight();
      }
    }
    paramRequestCoordinator.setRequests(paramTransitionOptions, k.a(paramTarget, paramRequestListener, paramRequestCoordinator, k.g, k.requestOptions.getPriority(), i2, i1, k.requestOptions));
    return paramRequestCoordinator;
  }
  
  private Request a(Target<TranscodeType> paramTarget, RequestListener<TranscodeType> paramRequestListener, RequestOptions paramRequestOptions, RequestCoordinator paramRequestCoordinator, TransitionOptions<?, ? super TranscodeType> paramTransitionOptions, Priority paramPriority, int paramInt1, int paramInt2)
  {
    return SingleRequest.obtain(a, f, h, c, paramRequestOptions, paramInt1, paramInt2, paramPriority, paramTarget, paramRequestListener, i, paramRequestCoordinator, f.getEngine(), paramTransitionOptions.a());
  }
  
  private <Y extends Target<TranscodeType>> Y a(@NonNull Y paramY, @Nullable RequestListener<TranscodeType> paramRequestListener, @NonNull RequestOptions paramRequestOptions)
  {
    Util.assertMainThread();
    Preconditions.checkNotNull(paramY);
    if (n)
    {
      paramRequestOptions = paramRequestOptions.autoClone();
      paramRequestListener = b(paramY, paramRequestListener, paramRequestOptions);
      Request localRequest = paramY.getRequest();
      if ((paramRequestListener.isEquivalentTo(localRequest)) && (!a(paramRequestOptions, localRequest)))
      {
        paramRequestListener.recycle();
        if (!((Request)Preconditions.checkNotNull(localRequest)).isRunning()) {
          localRequest.begin();
        }
        return paramY;
      }
      b.clear(paramY);
      paramY.setRequest(paramRequestListener);
      b.a(paramY, paramRequestListener);
      return paramY;
    }
    throw new IllegalArgumentException("You must call #load() before calling #into()");
  }
  
  private boolean a(RequestOptions paramRequestOptions, Request paramRequest)
  {
    return (!paramRequestOptions.isMemoryCacheable()) && (paramRequest.isComplete());
  }
  
  private Request b(Target<TranscodeType> paramTarget, RequestListener<TranscodeType> paramRequestListener, @Nullable RequestCoordinator paramRequestCoordinator, TransitionOptions<?, ? super TranscodeType> paramTransitionOptions, Priority paramPriority, int paramInt1, int paramInt2, RequestOptions paramRequestOptions)
  {
    if (j != null)
    {
      if (!o)
      {
        Object localObject = j.g;
        if (j.m) {
          localObject = paramTransitionOptions;
        }
        if (j.requestOptions.isPrioritySet()) {}
        for (Priority localPriority = j.requestOptions.getPriority();; localPriority = a(paramPriority)) {
          break;
        }
        int i3 = j.requestOptions.getOverrideWidth();
        int i4 = j.requestOptions.getOverrideHeight();
        int i2 = i3;
        int i1 = i4;
        if (Util.isValidDimensions(paramInt1, paramInt2))
        {
          i2 = i3;
          i1 = i4;
          if (!j.requestOptions.isValidOverride())
          {
            i2 = paramRequestOptions.getOverrideWidth();
            i1 = paramRequestOptions.getOverrideHeight();
          }
        }
        paramRequestCoordinator = new ThumbnailRequestCoordinator(paramRequestCoordinator);
        paramTransitionOptions = a(paramTarget, paramRequestListener, paramRequestOptions, paramRequestCoordinator, paramTransitionOptions, paramPriority, paramInt1, paramInt2);
        o = true;
        paramTarget = j.a(paramTarget, paramRequestListener, paramRequestCoordinator, (TransitionOptions)localObject, localPriority, i2, i1, j.requestOptions);
        o = false;
        paramRequestCoordinator.setRequests(paramTransitionOptions, paramTarget);
        return paramRequestCoordinator;
      }
      throw new IllegalStateException("You cannot use a request as both the main request and a thumbnail, consider using clone() on the request(s) passed to thumbnail()");
    }
    if (l != null)
    {
      paramRequestCoordinator = new ThumbnailRequestCoordinator(paramRequestCoordinator);
      paramRequestCoordinator.setRequests(a(paramTarget, paramRequestListener, paramRequestOptions, paramRequestCoordinator, paramTransitionOptions, paramPriority, paramInt1, paramInt2), a(paramTarget, paramRequestListener, paramRequestOptions.clone().sizeMultiplier(l.floatValue()), paramRequestCoordinator, paramTransitionOptions, a(paramPriority), paramInt1, paramInt2));
      return paramRequestCoordinator;
    }
    return a(paramTarget, paramRequestListener, paramRequestOptions, paramRequestCoordinator, paramTransitionOptions, paramPriority, paramInt1, paramInt2);
  }
  
  private Request b(Target<TranscodeType> paramTarget, @Nullable RequestListener<TranscodeType> paramRequestListener, RequestOptions paramRequestOptions)
  {
    return a(paramTarget, paramRequestListener, null, g, paramRequestOptions.getPriority(), paramRequestOptions.getOverrideWidth(), paramRequestOptions.getOverrideHeight(), paramRequestOptions);
  }
  
  @NonNull
  <Y extends Target<TranscodeType>> Y a(@NonNull Y paramY, @Nullable RequestListener<TranscodeType> paramRequestListener)
  {
    return a(paramY, paramRequestListener, getMutableOptions());
  }
  
  @CheckResult
  @NonNull
  public RequestBuilder<TranscodeType> apply(@NonNull RequestOptions paramRequestOptions)
  {
    Preconditions.checkNotNull(paramRequestOptions);
    requestOptions = getMutableOptions().apply(paramRequestOptions);
    return this;
  }
  
  @CheckResult
  public RequestBuilder<TranscodeType> clone()
  {
    try
    {
      RequestBuilder localRequestBuilder = (RequestBuilder)super.clone();
      requestOptions = requestOptions.clone();
      g = g.clone();
      return localRequestBuilder;
    }
    catch (CloneNotSupportedException localCloneNotSupportedException)
    {
      throw new RuntimeException(localCloneNotSupportedException);
    }
  }
  
  @Deprecated
  @CheckResult
  public FutureTarget<File> downloadOnly(int paramInt1, int paramInt2)
  {
    return getDownloadOnlyRequest().submit(paramInt1, paramInt2);
  }
  
  @Deprecated
  @CheckResult
  public <Y extends Target<File>> Y downloadOnly(@NonNull Y paramY)
  {
    return getDownloadOnlyRequest().into(paramY);
  }
  
  @NonNull
  public RequestBuilder<TranscodeType> error(@Nullable RequestBuilder<TranscodeType> paramRequestBuilder)
  {
    k = paramRequestBuilder;
    return this;
  }
  
  @CheckResult
  @NonNull
  protected RequestBuilder<File> getDownloadOnlyRequest()
  {
    return new RequestBuilder(File.class, this).apply(DOWNLOAD_ONLY_OPTIONS);
  }
  
  @NonNull
  protected RequestOptions getMutableOptions()
  {
    if (d == requestOptions) {
      return requestOptions.clone();
    }
    return requestOptions;
  }
  
  @Deprecated
  public FutureTarget<TranscodeType> into(int paramInt1, int paramInt2)
  {
    return submit(paramInt1, paramInt2);
  }
  
  @NonNull
  public <Y extends Target<TranscodeType>> Y into(@NonNull Y paramY)
  {
    return a(paramY, null);
  }
  
  @NonNull
  public ViewTarget<ImageView, TranscodeType> into(@NonNull ImageView paramImageView)
  {
    Util.assertMainThread();
    Preconditions.checkNotNull(paramImageView);
    RequestOptions localRequestOptions2 = requestOptions;
    RequestOptions localRequestOptions1 = localRequestOptions2;
    if (!localRequestOptions2.isTransformationSet())
    {
      localRequestOptions1 = localRequestOptions2;
      if (localRequestOptions2.isTransformationAllowed())
      {
        localRequestOptions1 = localRequestOptions2;
        if (paramImageView.getScaleType() != null) {
          switch (2.a[paramImageView.getScaleType().ordinal()])
          {
          default: 
            localRequestOptions1 = localRequestOptions2;
            break;
          case 6: 
            localRequestOptions1 = localRequestOptions2.clone().optionalCenterInside();
            break;
          case 3: 
          case 4: 
          case 5: 
            localRequestOptions1 = localRequestOptions2.clone().optionalFitCenter();
            break;
          case 2: 
            localRequestOptions1 = localRequestOptions2.clone().optionalCenterInside();
            break;
          case 1: 
            localRequestOptions1 = localRequestOptions2.clone().optionalCenterCrop();
          }
        }
      }
    }
    return (ViewTarget)a(f.buildImageViewTarget(paramImageView, c), null, localRequestOptions1);
  }
  
  @CheckResult
  @NonNull
  public RequestBuilder<TranscodeType> listener(@Nullable RequestListener<TranscodeType> paramRequestListener)
  {
    i = paramRequestListener;
    return this;
  }
  
  @CheckResult
  @NonNull
  public RequestBuilder<TranscodeType> load(@Nullable Bitmap paramBitmap)
  {
    return a(paramBitmap).apply(RequestOptions.diskCacheStrategyOf(DiskCacheStrategy.NONE));
  }
  
  @CheckResult
  @NonNull
  public RequestBuilder<TranscodeType> load(@Nullable Drawable paramDrawable)
  {
    return a(paramDrawable).apply(RequestOptions.diskCacheStrategyOf(DiskCacheStrategy.NONE));
  }
  
  @CheckResult
  @NonNull
  public RequestBuilder<TranscodeType> load(@Nullable Uri paramUri)
  {
    return a(paramUri);
  }
  
  @CheckResult
  @NonNull
  public RequestBuilder<TranscodeType> load(@Nullable File paramFile)
  {
    return a(paramFile);
  }
  
  @CheckResult
  @NonNull
  public RequestBuilder<TranscodeType> load(@DrawableRes @Nullable @RawRes Integer paramInteger)
  {
    return a(paramInteger).apply(RequestOptions.signatureOf(ApplicationVersionSignature.obtain(a)));
  }
  
  @CheckResult
  @NonNull
  public RequestBuilder<TranscodeType> load(@Nullable Object paramObject)
  {
    return a(paramObject);
  }
  
  @CheckResult
  @NonNull
  public RequestBuilder<TranscodeType> load(@Nullable String paramString)
  {
    return a(paramString);
  }
  
  @Deprecated
  @CheckResult
  public RequestBuilder<TranscodeType> load(@Nullable URL paramURL)
  {
    return a(paramURL);
  }
  
  @CheckResult
  @NonNull
  public RequestBuilder<TranscodeType> load(@Nullable byte[] paramArrayOfByte)
  {
    Object localObject = a(paramArrayOfByte);
    paramArrayOfByte = (byte[])localObject;
    if (!requestOptions.isDiskCacheStrategySet()) {
      paramArrayOfByte = ((RequestBuilder)localObject).apply(RequestOptions.diskCacheStrategyOf(DiskCacheStrategy.NONE));
    }
    localObject = paramArrayOfByte;
    if (!requestOptions.isSkipMemoryCacheSet()) {
      localObject = paramArrayOfByte.apply(RequestOptions.skipMemoryCacheOf(true));
    }
    return localObject;
  }
  
  @NonNull
  public Target<TranscodeType> preload()
  {
    return preload(Integer.MIN_VALUE, Integer.MIN_VALUE);
  }
  
  @NonNull
  public Target<TranscodeType> preload(int paramInt1, int paramInt2)
  {
    return into(PreloadTarget.obtain(b, paramInt1, paramInt2));
  }
  
  @NonNull
  public FutureTarget<TranscodeType> submit()
  {
    return submit(Integer.MIN_VALUE, Integer.MIN_VALUE);
  }
  
  @NonNull
  public FutureTarget<TranscodeType> submit(int paramInt1, int paramInt2)
  {
    final RequestFutureTarget localRequestFutureTarget = new RequestFutureTarget(f.getMainHandler(), paramInt1, paramInt2);
    if (Util.isOnBackgroundThread())
    {
      f.getMainHandler().post(new Runnable()
      {
        public void run()
        {
          if (!localRequestFutureTarget.isCancelled()) {
            a(localRequestFutureTarget, localRequestFutureTarget);
          }
        }
      });
      return localRequestFutureTarget;
    }
    a(localRequestFutureTarget, localRequestFutureTarget);
    return localRequestFutureTarget;
  }
  
  @CheckResult
  @NonNull
  public RequestBuilder<TranscodeType> thumbnail(float paramFloat)
  {
    if ((paramFloat >= 0.0F) && (paramFloat <= 1.0F))
    {
      l = Float.valueOf(paramFloat);
      return this;
    }
    throw new IllegalArgumentException("sizeMultiplier must be between 0 and 1");
  }
  
  @CheckResult
  @NonNull
  public RequestBuilder<TranscodeType> thumbnail(@Nullable RequestBuilder<TranscodeType> paramRequestBuilder)
  {
    j = paramRequestBuilder;
    return this;
  }
  
  @CheckResult
  @NonNull
  public RequestBuilder<TranscodeType> thumbnail(@Nullable RequestBuilder<TranscodeType>... paramVarArgs)
  {
    Object localObject = null;
    if ((paramVarArgs != null) && (paramVarArgs.length != 0))
    {
      int i1 = paramVarArgs.length - 1;
      while (i1 >= 0)
      {
        RequestBuilder<TranscodeType> localRequestBuilder = paramVarArgs[i1];
        if (localRequestBuilder != null) {
          if (localObject == null) {
            localObject = localRequestBuilder;
          } else {
            localObject = localRequestBuilder.thumbnail((RequestBuilder)localObject);
          }
        }
        i1 -= 1;
      }
      return thumbnail((RequestBuilder)localObject);
    }
    return thumbnail((RequestBuilder)null);
  }
  
  @CheckResult
  @NonNull
  public RequestBuilder<TranscodeType> transition(@NonNull TransitionOptions<?, ? super TranscodeType> paramTransitionOptions)
  {
    g = ((TransitionOptions)Preconditions.checkNotNull(paramTransitionOptions));
    m = false;
    return this;
  }
}
