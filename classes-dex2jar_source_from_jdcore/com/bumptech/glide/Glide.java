package com.bumptech.glide;

import android.app.Activity;
import android.content.ComponentCallbacks2;
import android.content.ContentResolver;
import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.VisibleForTesting;
import android.support.v4.app.FragmentActivity;
import android.util.Log;
import android.view.View;
import com.bumptech.glide.gifdecoder.GifDecoder;
import com.bumptech.glide.load.DecodeFormat;
import com.bumptech.glide.load.Options;
import com.bumptech.glide.load.ResourceDecoder;
import com.bumptech.glide.load.data.InputStreamRewinder.Factory;
import com.bumptech.glide.load.engine.Engine;
import com.bumptech.glide.load.engine.bitmap_recycle.ArrayPool;
import com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool;
import com.bumptech.glide.load.engine.cache.MemoryCache;
import com.bumptech.glide.load.engine.prefill.BitmapPreFiller;
import com.bumptech.glide.load.engine.prefill.PreFillType.Builder;
import com.bumptech.glide.load.model.AssetUriLoader.FileDescriptorFactory;
import com.bumptech.glide.load.model.AssetUriLoader.StreamFactory;
import com.bumptech.glide.load.model.ByteArrayLoader.ByteBufferFactory;
import com.bumptech.glide.load.model.ByteArrayLoader.StreamFactory;
import com.bumptech.glide.load.model.ByteBufferEncoder;
import com.bumptech.glide.load.model.ByteBufferFileLoader.Factory;
import com.bumptech.glide.load.model.DataUrlLoader.StreamFactory;
import com.bumptech.glide.load.model.FileLoader.FileDescriptorFactory;
import com.bumptech.glide.load.model.FileLoader.StreamFactory;
import com.bumptech.glide.load.model.GlideUrl;
import com.bumptech.glide.load.model.MediaStoreFileLoader.Factory;
import com.bumptech.glide.load.model.ResourceLoader.AssetFileDescriptorFactory;
import com.bumptech.glide.load.model.ResourceLoader.FileDescriptorFactory;
import com.bumptech.glide.load.model.ResourceLoader.StreamFactory;
import com.bumptech.glide.load.model.ResourceLoader.UriFactory;
import com.bumptech.glide.load.model.StreamEncoder;
import com.bumptech.glide.load.model.StringLoader.AssetFileDescriptorFactory;
import com.bumptech.glide.load.model.StringLoader.FileDescriptorFactory;
import com.bumptech.glide.load.model.StringLoader.StreamFactory;
import com.bumptech.glide.load.model.UnitModelLoader.Factory;
import com.bumptech.glide.load.model.UriLoader.AssetFileDescriptorFactory;
import com.bumptech.glide.load.model.UriLoader.FileDescriptorFactory;
import com.bumptech.glide.load.model.UriLoader.StreamFactory;
import com.bumptech.glide.load.model.UrlUriLoader.StreamFactory;
import com.bumptech.glide.load.model.stream.HttpGlideUrlLoader.Factory;
import com.bumptech.glide.load.model.stream.HttpUriLoader.Factory;
import com.bumptech.glide.load.model.stream.MediaStoreImageThumbLoader.Factory;
import com.bumptech.glide.load.model.stream.MediaStoreVideoThumbLoader.Factory;
import com.bumptech.glide.load.model.stream.UrlLoader.StreamFactory;
import com.bumptech.glide.load.resource.bitmap.BitmapDrawableDecoder;
import com.bumptech.glide.load.resource.bitmap.BitmapDrawableEncoder;
import com.bumptech.glide.load.resource.bitmap.BitmapEncoder;
import com.bumptech.glide.load.resource.bitmap.ByteBufferBitmapDecoder;
import com.bumptech.glide.load.resource.bitmap.DefaultImageHeaderParser;
import com.bumptech.glide.load.resource.bitmap.Downsampler;
import com.bumptech.glide.load.resource.bitmap.ResourceBitmapDecoder;
import com.bumptech.glide.load.resource.bitmap.StreamBitmapDecoder;
import com.bumptech.glide.load.resource.bitmap.UnitBitmapDecoder;
import com.bumptech.glide.load.resource.bitmap.VideoDecoder;
import com.bumptech.glide.load.resource.bytes.ByteBufferRewinder.Factory;
import com.bumptech.glide.load.resource.drawable.ResourceDrawableDecoder;
import com.bumptech.glide.load.resource.drawable.UnitDrawableDecoder;
import com.bumptech.glide.load.resource.file.FileDecoder;
import com.bumptech.glide.load.resource.gif.ByteBufferGifDecoder;
import com.bumptech.glide.load.resource.gif.GifDrawable;
import com.bumptech.glide.load.resource.gif.GifDrawableEncoder;
import com.bumptech.glide.load.resource.gif.GifFrameResourceDecoder;
import com.bumptech.glide.load.resource.gif.StreamGifDecoder;
import com.bumptech.glide.load.resource.transcode.BitmapBytesTranscoder;
import com.bumptech.glide.load.resource.transcode.BitmapDrawableTranscoder;
import com.bumptech.glide.load.resource.transcode.DrawableBytesTranscoder;
import com.bumptech.glide.load.resource.transcode.GifDrawableBytesTranscoder;
import com.bumptech.glide.manager.ConnectivityMonitorFactory;
import com.bumptech.glide.manager.RequestManagerRetriever;
import com.bumptech.glide.manager.RequestManagerRetriever.RequestManagerFactory;
import com.bumptech.glide.module.GlideModule;
import com.bumptech.glide.module.ManifestParser;
import com.bumptech.glide.request.RequestOptions;
import com.bumptech.glide.request.target.ImageViewTargetFactory;
import com.bumptech.glide.request.target.Target;
import com.bumptech.glide.util.Preconditions;
import com.bumptech.glide.util.Util;
import java.io.File;
import java.io.InputStream;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.net.URL;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

public class Glide
  implements ComponentCallbacks2
{
  private static volatile Glide a;
  private static volatile boolean b;
  private final Engine c;
  private final BitmapPool d;
  private final MemoryCache e;
  private final BitmapPreFiller f;
  private final GlideContext g;
  private final Registry h;
  private final ArrayPool i;
  private final RequestManagerRetriever j;
  private final ConnectivityMonitorFactory k;
  private final List<RequestManager> l = new ArrayList();
  private MemoryCategory m = MemoryCategory.NORMAL;
  
  Glide(@NonNull Context paramContext, @NonNull Engine paramEngine, @NonNull MemoryCache paramMemoryCache, @NonNull BitmapPool paramBitmapPool, @NonNull ArrayPool paramArrayPool, @NonNull RequestManagerRetriever paramRequestManagerRetriever, @NonNull ConnectivityMonitorFactory paramConnectivityMonitorFactory, int paramInt, @NonNull RequestOptions paramRequestOptions, @NonNull Map<Class<?>, TransitionOptions<?, ?>> paramMap)
  {
    c = paramEngine;
    d = paramBitmapPool;
    i = paramArrayPool;
    e = paramMemoryCache;
    j = paramRequestManagerRetriever;
    k = paramConnectivityMonitorFactory;
    f = new BitmapPreFiller(paramMemoryCache, paramBitmapPool, (DecodeFormat)paramRequestOptions.getOptions().get(Downsampler.DECODE_FORMAT));
    paramMemoryCache = paramContext.getResources();
    h = new Registry();
    h.register(new DefaultImageHeaderParser());
    Object localObject = new Downsampler(h.getImageHeaderParsers(), paramMemoryCache.getDisplayMetrics(), paramBitmapPool, paramArrayPool);
    paramRequestManagerRetriever = new ByteBufferGifDecoder(paramContext, h.getImageHeaderParsers(), paramBitmapPool, paramArrayPool);
    paramConnectivityMonitorFactory = VideoDecoder.parcel(paramBitmapPool);
    ByteBufferBitmapDecoder localByteBufferBitmapDecoder = new ByteBufferBitmapDecoder((Downsampler)localObject);
    localObject = new StreamBitmapDecoder((Downsampler)localObject, paramArrayPool);
    ResourceDrawableDecoder localResourceDrawableDecoder = new ResourceDrawableDecoder(paramContext);
    ResourceLoader.StreamFactory localStreamFactory = new ResourceLoader.StreamFactory(paramMemoryCache);
    ResourceLoader.UriFactory localUriFactory = new ResourceLoader.UriFactory(paramMemoryCache);
    ResourceLoader.FileDescriptorFactory localFileDescriptorFactory = new ResourceLoader.FileDescriptorFactory(paramMemoryCache);
    ResourceLoader.AssetFileDescriptorFactory localAssetFileDescriptorFactory = new ResourceLoader.AssetFileDescriptorFactory(paramMemoryCache);
    BitmapEncoder localBitmapEncoder = new BitmapEncoder(paramArrayPool);
    BitmapBytesTranscoder localBitmapBytesTranscoder = new BitmapBytesTranscoder();
    GifDrawableBytesTranscoder localGifDrawableBytesTranscoder = new GifDrawableBytesTranscoder();
    ContentResolver localContentResolver = paramContext.getContentResolver();
    h.append(ByteBuffer.class, new ByteBufferEncoder()).append(InputStream.class, new StreamEncoder(paramArrayPool)).append("Bitmap", ByteBuffer.class, Bitmap.class, localByteBufferBitmapDecoder).append("Bitmap", InputStream.class, Bitmap.class, (ResourceDecoder)localObject).append("Bitmap", ParcelFileDescriptor.class, Bitmap.class, paramConnectivityMonitorFactory).append("Bitmap", AssetFileDescriptor.class, Bitmap.class, VideoDecoder.asset(paramBitmapPool)).append(Bitmap.class, Bitmap.class, UnitModelLoader.Factory.getInstance()).append("Bitmap", Bitmap.class, Bitmap.class, new UnitBitmapDecoder()).append(Bitmap.class, localBitmapEncoder).append("BitmapDrawable", ByteBuffer.class, BitmapDrawable.class, new BitmapDrawableDecoder(paramMemoryCache, localByteBufferBitmapDecoder)).append("BitmapDrawable", InputStream.class, BitmapDrawable.class, new BitmapDrawableDecoder(paramMemoryCache, (ResourceDecoder)localObject)).append("BitmapDrawable", ParcelFileDescriptor.class, BitmapDrawable.class, new BitmapDrawableDecoder(paramMemoryCache, paramConnectivityMonitorFactory)).append(BitmapDrawable.class, new BitmapDrawableEncoder(paramBitmapPool, localBitmapEncoder)).append("Gif", InputStream.class, GifDrawable.class, new StreamGifDecoder(h.getImageHeaderParsers(), paramRequestManagerRetriever, paramArrayPool)).append("Gif", ByteBuffer.class, GifDrawable.class, paramRequestManagerRetriever).append(GifDrawable.class, new GifDrawableEncoder()).append(GifDecoder.class, GifDecoder.class, UnitModelLoader.Factory.getInstance()).append("Bitmap", GifDecoder.class, Bitmap.class, new GifFrameResourceDecoder(paramBitmapPool)).append(Uri.class, Drawable.class, localResourceDrawableDecoder).append(Uri.class, Bitmap.class, new ResourceBitmapDecoder(localResourceDrawableDecoder, paramBitmapPool)).register(new ByteBufferRewinder.Factory()).append(File.class, ByteBuffer.class, new ByteBufferFileLoader.Factory()).append(File.class, InputStream.class, new FileLoader.StreamFactory()).append(File.class, File.class, new FileDecoder()).append(File.class, ParcelFileDescriptor.class, new FileLoader.FileDescriptorFactory()).append(File.class, File.class, UnitModelLoader.Factory.getInstance()).register(new InputStreamRewinder.Factory(paramArrayPool)).append(Integer.TYPE, InputStream.class, localStreamFactory).append(Integer.TYPE, ParcelFileDescriptor.class, localFileDescriptorFactory).append(Integer.class, InputStream.class, localStreamFactory).append(Integer.class, ParcelFileDescriptor.class, localFileDescriptorFactory).append(Integer.class, Uri.class, localUriFactory).append(Integer.TYPE, AssetFileDescriptor.class, localAssetFileDescriptorFactory).append(Integer.class, AssetFileDescriptor.class, localAssetFileDescriptorFactory).append(Integer.TYPE, Uri.class, localUriFactory).append(String.class, InputStream.class, new DataUrlLoader.StreamFactory()).append(String.class, InputStream.class, new StringLoader.StreamFactory()).append(String.class, ParcelFileDescriptor.class, new StringLoader.FileDescriptorFactory()).append(String.class, AssetFileDescriptor.class, new StringLoader.AssetFileDescriptorFactory()).append(Uri.class, InputStream.class, new HttpUriLoader.Factory()).append(Uri.class, InputStream.class, new AssetUriLoader.StreamFactory(paramContext.getAssets())).append(Uri.class, ParcelFileDescriptor.class, new AssetUriLoader.FileDescriptorFactory(paramContext.getAssets())).append(Uri.class, InputStream.class, new MediaStoreImageThumbLoader.Factory(paramContext)).append(Uri.class, InputStream.class, new MediaStoreVideoThumbLoader.Factory(paramContext)).append(Uri.class, InputStream.class, new UriLoader.StreamFactory(localContentResolver)).append(Uri.class, ParcelFileDescriptor.class, new UriLoader.FileDescriptorFactory(localContentResolver)).append(Uri.class, AssetFileDescriptor.class, new UriLoader.AssetFileDescriptorFactory(localContentResolver)).append(Uri.class, InputStream.class, new UrlUriLoader.StreamFactory()).append(URL.class, InputStream.class, new UrlLoader.StreamFactory()).append(Uri.class, File.class, new MediaStoreFileLoader.Factory(paramContext)).append(GlideUrl.class, InputStream.class, new HttpGlideUrlLoader.Factory()).append([B.class, ByteBuffer.class, new ByteArrayLoader.ByteBufferFactory()).append([B.class, InputStream.class, new ByteArrayLoader.StreamFactory()).append(Uri.class, Uri.class, UnitModelLoader.Factory.getInstance()).append(Drawable.class, Drawable.class, UnitModelLoader.Factory.getInstance()).append(Drawable.class, Drawable.class, new UnitDrawableDecoder()).register(Bitmap.class, BitmapDrawable.class, new BitmapDrawableTranscoder(paramMemoryCache)).register(Bitmap.class, [B.class, localBitmapBytesTranscoder).register(Drawable.class, [B.class, new DrawableBytesTranscoder(paramBitmapPool, localBitmapBytesTranscoder, localGifDrawableBytesTranscoder)).register(GifDrawable.class, [B.class, localGifDrawableBytesTranscoder);
    paramMemoryCache = new ImageViewTargetFactory();
    g = new GlideContext(paramContext, paramArrayPool, h, paramMemoryCache, paramRequestOptions, paramMap, paramEngine, paramInt);
  }
  
  private static void a(@NonNull Context paramContext)
  {
    if (!b)
    {
      b = true;
      b(paramContext);
      b = false;
      return;
    }
    throw new IllegalStateException("You cannot call Glide.get() in registerComponents(), use the provided Glide instance instead");
  }
  
  private static void a(@NonNull Context paramContext, @NonNull GlideBuilder paramGlideBuilder)
  {
    Context localContext = paramContext.getApplicationContext();
    a localA = c();
    paramContext = Collections.emptyList();
    if ((localA == null) || (localA.isManifestParsingEnabled())) {
      paramContext = new ManifestParser(localContext).parse();
    }
    Object localObject2;
    Object localObject3;
    if ((localA != null) && (!localA.a().isEmpty()))
    {
      localObject1 = localA.a();
      localObject2 = paramContext.iterator();
      while (((Iterator)localObject2).hasNext())
      {
        localObject3 = (GlideModule)((Iterator)localObject2).next();
        if (((Set)localObject1).contains(localObject3.getClass()))
        {
          if (Log.isLoggable("Glide", 3))
          {
            StringBuilder localStringBuilder = new StringBuilder();
            localStringBuilder.append("AppGlideModule excludes manifest GlideModule: ");
            localStringBuilder.append(localObject3);
            Log.d("Glide", localStringBuilder.toString());
          }
          ((Iterator)localObject2).remove();
        }
      }
    }
    if (Log.isLoggable("Glide", 3))
    {
      localObject1 = paramContext.iterator();
      while (((Iterator)localObject1).hasNext())
      {
        localObject2 = (GlideModule)((Iterator)localObject1).next();
        localObject3 = new StringBuilder();
        ((StringBuilder)localObject3).append("Discovered GlideModule from manifest: ");
        ((StringBuilder)localObject3).append(localObject2.getClass());
        Log.d("Glide", ((StringBuilder)localObject3).toString());
      }
    }
    if (localA != null) {
      localObject1 = localA.b();
    } else {
      localObject1 = null;
    }
    paramGlideBuilder.a((RequestManagerRetriever.RequestManagerFactory)localObject1);
    Object localObject1 = paramContext.iterator();
    while (((Iterator)localObject1).hasNext()) {
      ((GlideModule)((Iterator)localObject1).next()).applyOptions(localContext, paramGlideBuilder);
    }
    if (localA != null) {
      localA.applyOptions(localContext, paramGlideBuilder);
    }
    paramGlideBuilder = paramGlideBuilder.build(localContext);
    paramContext = paramContext.iterator();
    while (paramContext.hasNext()) {
      ((GlideModule)paramContext.next()).registerComponents(localContext, paramGlideBuilder, h);
    }
    if (localA != null) {
      localA.registerComponents(localContext, paramGlideBuilder, h);
    }
    localContext.registerComponentCallbacks(paramGlideBuilder);
    a = paramGlideBuilder;
  }
  
  private static void a(Exception paramException)
  {
    throw new IllegalStateException("GeneratedAppGlideModuleImpl is implemented incorrectly. If you've manually implemented this class, remove your implementation. The Annotation processor will generate a correct implementation.", paramException);
  }
  
  private static void b(@NonNull Context paramContext)
  {
    a(paramContext, new GlideBuilder());
  }
  
  @Nullable
  private static a c()
  {
    try
    {
      try
      {
        a localA = (a)Class.forName("com.bumptech.glide.b").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        return localA;
      }
      catch (InvocationTargetException localInvocationTargetException)
      {
        a(localInvocationTargetException);
      }
      catch (NoSuchMethodException localNoSuchMethodException)
      {
        a(localNoSuchMethodException);
      }
      catch (IllegalAccessException localIllegalAccessException)
      {
        a(localIllegalAccessException);
      }
      catch (InstantiationException localInstantiationException)
      {
        a(localInstantiationException);
      }
    }
    catch (ClassNotFoundException localClassNotFoundException)
    {
      for (;;) {}
    }
    if (Log.isLoggable("Glide", 5)) {
      Log.w("Glide", "Failed to find GeneratedAppGlideModule. You should include an annotationProcessor compile dependency on com.github.bumptech.glide:compiler in your application and a @GlideModule annotated AppGlideModule implementation or LibraryGlideModules will be silently ignored");
    }
    return null;
  }
  
  @NonNull
  private static RequestManagerRetriever c(@Nullable Context paramContext)
  {
    Preconditions.checkNotNull(paramContext, "You cannot start a load on a not yet attached View or a Fragment where getActivity() returns null (which usually occurs when getActivity() is called before the Fragment is attached or after the Fragment is destroyed).");
    return get(paramContext).getRequestManagerRetriever();
  }
  
  @NonNull
  public static Glide get(@NonNull Context paramContext)
  {
    if (a == null) {
      try
      {
        if (a == null) {
          a(paramContext);
        }
      }
      finally {}
    }
    return a;
  }
  
  @Nullable
  public static File getPhotoCacheDir(@NonNull Context paramContext)
  {
    return getPhotoCacheDir(paramContext, "image_manager_disk_cache");
  }
  
  @Nullable
  public static File getPhotoCacheDir(@NonNull Context paramContext, @NonNull String paramString)
  {
    paramContext = paramContext.getCacheDir();
    if (paramContext != null)
    {
      paramContext = new File(paramContext, paramString);
      if ((!paramContext.mkdirs()) && ((!paramContext.exists()) || (!paramContext.isDirectory()))) {
        return null;
      }
      return paramContext;
    }
    if (Log.isLoggable("Glide", 6)) {
      Log.e("Glide", "default disk cache dir is null");
    }
    return null;
  }
  
  @VisibleForTesting
  public static void init(@NonNull Context paramContext, @NonNull GlideBuilder paramGlideBuilder)
  {
    try
    {
      if (a != null) {
        tearDown();
      }
      a(paramContext, paramGlideBuilder);
      return;
    }
    finally {}
  }
  
  @Deprecated
  @VisibleForTesting
  public static void init(Glide paramGlide)
  {
    try
    {
      if (a != null) {
        tearDown();
      }
      a = paramGlide;
      return;
    }
    finally {}
  }
  
  @VisibleForTesting
  public static void tearDown()
  {
    try
    {
      if (a != null)
      {
        a.getContext().getApplicationContext().unregisterComponentCallbacks(a);
        ac.shutdown();
      }
      a = null;
      return;
    }
    finally {}
  }
  
  @NonNull
  public static RequestManager with(@NonNull Activity paramActivity)
  {
    return c(paramActivity).get(paramActivity);
  }
  
  @NonNull
  public static RequestManager with(@NonNull android.app.Fragment paramFragment)
  {
    return c(paramFragment.getActivity()).get(paramFragment);
  }
  
  @NonNull
  public static RequestManager with(@NonNull Context paramContext)
  {
    return c(paramContext).get(paramContext);
  }
  
  @NonNull
  public static RequestManager with(@NonNull android.support.v4.app.Fragment paramFragment)
  {
    return c(paramFragment.getActivity()).get(paramFragment);
  }
  
  @NonNull
  public static RequestManager with(@NonNull FragmentActivity paramFragmentActivity)
  {
    return c(paramFragmentActivity).get(paramFragmentActivity);
  }
  
  @NonNull
  public static RequestManager with(@NonNull View paramView)
  {
    return c(paramView.getContext()).get(paramView);
  }
  
  ConnectivityMonitorFactory a()
  {
    return k;
  }
  
  void a(RequestManager paramRequestManager)
  {
    synchronized (l)
    {
      if (!l.contains(paramRequestManager))
      {
        l.add(paramRequestManager);
        return;
      }
      throw new IllegalStateException("Cannot register already registered manager");
    }
  }
  
  boolean a(@NonNull Target<?> paramTarget)
  {
    synchronized (l)
    {
      Iterator localIterator = l.iterator();
      while (localIterator.hasNext()) {
        if (((RequestManager)localIterator.next()).a(paramTarget)) {
          return true;
        }
      }
      return false;
    }
  }
  
  @NonNull
  GlideContext b()
  {
    return g;
  }
  
  void b(RequestManager paramRequestManager)
  {
    synchronized (l)
    {
      if (l.contains(paramRequestManager))
      {
        l.remove(paramRequestManager);
        return;
      }
      throw new IllegalStateException("Cannot unregister not yet registered manager");
    }
  }
  
  public void clearDiskCache()
  {
    Util.assertBackgroundThread();
    c.clearDiskCache();
  }
  
  public void clearMemory()
  {
    Util.assertMainThread();
    e.clearMemory();
    d.clearMemory();
    i.clearMemory();
  }
  
  @NonNull
  public ArrayPool getArrayPool()
  {
    return i;
  }
  
  @NonNull
  public BitmapPool getBitmapPool()
  {
    return d;
  }
  
  @NonNull
  public Context getContext()
  {
    return g.getBaseContext();
  }
  
  @NonNull
  public Registry getRegistry()
  {
    return h;
  }
  
  @NonNull
  public RequestManagerRetriever getRequestManagerRetriever()
  {
    return j;
  }
  
  public void onConfigurationChanged(Configuration paramConfiguration) {}
  
  public void onLowMemory()
  {
    clearMemory();
  }
  
  public void onTrimMemory(int paramInt)
  {
    trimMemory(paramInt);
  }
  
  public void preFillBitmapPool(@NonNull PreFillType.Builder... paramVarArgs)
  {
    f.preFill(paramVarArgs);
  }
  
  @NonNull
  public MemoryCategory setMemoryCategory(@NonNull MemoryCategory paramMemoryCategory)
  {
    Util.assertMainThread();
    e.setSizeMultiplier(paramMemoryCategory.getMultiplier());
    d.setSizeMultiplier(paramMemoryCategory.getMultiplier());
    MemoryCategory localMemoryCategory = m;
    m = paramMemoryCategory;
    return localMemoryCategory;
  }
  
  public void trimMemory(int paramInt)
  {
    Util.assertMainThread();
    e.trimMemory(paramInt);
    d.trimMemory(paramInt);
    i.trimMemory(paramInt);
  }
}
