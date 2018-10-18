package com.bumptech.glide.load.engine;

import android.os.Build.VERSION;
import android.support.annotation.NonNull;
import android.support.v4.os.TraceCompat;
import android.support.v4.util.Pools.Pool;
import android.util.Log;
import com.bumptech.glide.GlideContext;
import com.bumptech.glide.Priority;
import com.bumptech.glide.Registry;
import com.bumptech.glide.Registry.NoResultEncoderAvailableException;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.EncodeStrategy;
import com.bumptech.glide.load.Key;
import com.bumptech.glide.load.Options;
import com.bumptech.glide.load.ResourceEncoder;
import com.bumptech.glide.load.Transformation;
import com.bumptech.glide.load.data.DataFetcher;
import com.bumptech.glide.load.data.DataRewinder;
import com.bumptech.glide.load.engine.cache.DiskCache;
import com.bumptech.glide.load.resource.bitmap.Downsampler;
import com.bumptech.glide.util.LogTime;
import com.bumptech.glide.util.pool.FactoryPools.Poolable;
import com.bumptech.glide.util.pool.StateVerifier;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

class f<R>
  implements DataFetcherGenerator.FetcherReadyCallback, FactoryPools.Poolable, Comparable<f<?>>, Runnable
{
  private DataFetcher<?> A;
  private volatile DataFetcherGenerator B;
  private volatile boolean C;
  private volatile boolean D;
  private final e<R> a = new e();
  private final List<Throwable> b = new ArrayList();
  private final StateVerifier c = StateVerifier.newInstance();
  private final d d;
  private final Pools.Pool<f<?>> e;
  private final c<?> f = new c();
  private final e g = new e();
  private GlideContext h;
  private Key i;
  private Priority j;
  private i k;
  private int l;
  private int m;
  private DiskCacheStrategy n;
  private Options o;
  private a<R> p;
  private int q;
  private g r;
  private f s;
  private long t;
  private boolean u;
  private Thread v;
  private Key w;
  private Key x;
  private Object y;
  private DataSource z;
  
  f(d paramD, Pools.Pool<f<?>> paramPool)
  {
    d = paramD;
    e = paramPool;
  }
  
  @NonNull
  private Options a(DataSource paramDataSource)
  {
    Options localOptions = o;
    if (Build.VERSION.SDK_INT < 26) {
      return localOptions;
    }
    if (localOptions.get(Downsampler.ALLOW_HARDWARE_CONFIG) != null) {
      return localOptions;
    }
    if (paramDataSource != DataSource.RESOURCE_DISK_CACHE)
    {
      paramDataSource = localOptions;
      if (!a.m()) {}
    }
    else
    {
      paramDataSource = new Options();
      paramDataSource.putAll(o);
      paramDataSource.set(Downsampler.ALLOW_HARDWARE_CONFIG, Boolean.valueOf(true));
    }
    return paramDataSource;
  }
  
  private <Data> Resource<R> a(DataFetcher<?> paramDataFetcher, Data paramData, DataSource paramDataSource)
    throws GlideException
  {
    if (paramData == null)
    {
      paramDataFetcher.cleanup();
      return null;
    }
    try
    {
      long l1 = LogTime.getLogTime();
      paramData = a(paramData, paramDataSource);
      if (Log.isLoggable("DecodeJob", 2))
      {
        paramDataSource = new StringBuilder();
        paramDataSource.append("Decoded result ");
        paramDataSource.append(paramData);
        a(paramDataSource.toString(), l1);
      }
      return paramData;
    }
    finally
    {
      paramDataFetcher.cleanup();
    }
  }
  
  private <Data> Resource<R> a(Data paramData, DataSource paramDataSource)
    throws GlideException
  {
    return a(paramData, paramDataSource, a.b(paramData.getClass()));
  }
  
  private <Data, ResourceType> Resource<R> a(Data paramData, DataSource paramDataSource, LoadPath<Data, ResourceType, R> paramLoadPath)
    throws GlideException
  {
    Options localOptions = a(paramDataSource);
    paramData = h.getRegistry().getRewinder(paramData);
    try
    {
      paramDataSource = paramLoadPath.load(paramData, localOptions, l, m, new b(paramDataSource));
      return paramDataSource;
    }
    finally
    {
      paramData.cleanup();
    }
  }
  
  private g a(g paramG)
  {
    switch (1.b[paramG.ordinal()])
    {
    default: 
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("Unrecognized stage: ");
      localStringBuilder.append(paramG);
      throw new IllegalArgumentException(localStringBuilder.toString());
    case 5: 
      if (n.decodeCachedResource()) {
        return g.b;
      }
      return a(g.b);
    case 3: 
    case 4: 
      return g.f;
    case 2: 
      if (u) {
        return g.f;
      }
      return g.d;
    }
    if (n.decodeCachedData()) {
      return g.c;
    }
    return a(g.c);
  }
  
  private void a(Resource<R> paramResource, DataSource paramDataSource)
  {
    k();
    p.a(paramResource, paramDataSource);
  }
  
  private void a(String paramString, long paramLong)
  {
    a(paramString, paramLong, null);
  }
  
  private void a(String paramString1, long paramLong, String paramString2)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(paramString1);
    localStringBuilder.append(" in ");
    localStringBuilder.append(LogTime.getElapsedMillis(paramLong));
    localStringBuilder.append(", load key: ");
    localStringBuilder.append(k);
    if (paramString2 != null)
    {
      paramString1 = new StringBuilder();
      paramString1.append(", ");
      paramString1.append(paramString2);
      paramString1 = paramString1.toString();
    }
    else
    {
      paramString1 = "";
    }
    localStringBuilder.append(paramString1);
    localStringBuilder.append(", thread: ");
    localStringBuilder.append(Thread.currentThread().getName());
    Log.v("DecodeJob", localStringBuilder.toString());
  }
  
  private void b(Resource<R> paramResource, DataSource paramDataSource)
  {
    if ((paramResource instanceof Initializable)) {
      ((Initializable)paramResource).initialize();
    }
    Object localObject1 = null;
    Object localObject2 = paramResource;
    if (f.a())
    {
      localObject2 = m.a(paramResource);
      localObject1 = localObject2;
    }
    a((Resource)localObject2, paramDataSource);
    r = g.e;
    try
    {
      if (f.a()) {
        f.a(d, o);
      }
      if (localObject1 != null) {
        localObject1.a();
      }
      c();
      return;
    }
    finally
    {
      if (localObject1 != null) {
        localObject1.a();
      }
    }
  }
  
  private void c()
  {
    if (g.a()) {
      e();
    }
  }
  
  private void d()
  {
    if (g.b()) {
      e();
    }
  }
  
  private void e()
  {
    g.c();
    f.b();
    a.a();
    C = false;
    h = null;
    i = null;
    o = null;
    j = null;
    k = null;
    p = null;
    r = null;
    B = null;
    v = null;
    w = null;
    y = null;
    z = null;
    A = null;
    t = 0L;
    D = false;
    b.clear();
    e.release(this);
  }
  
  private int f()
  {
    return j.ordinal();
  }
  
  private void g()
  {
    switch (1.a[s.ordinal()])
    {
    default: 
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("Unrecognized run reason: ");
      localStringBuilder.append(s);
      throw new IllegalStateException(localStringBuilder.toString());
    case 3: 
      l();
      return;
    case 2: 
      i();
      return;
    }
    r = a(g.a);
    B = h();
    i();
  }
  
  private DataFetcherGenerator h()
  {
    switch (1.b[r.ordinal()])
    {
    default: 
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("Unrecognized stage: ");
      localStringBuilder.append(r);
      throw new IllegalStateException(localStringBuilder.toString());
    case 4: 
      return null;
    case 3: 
      return new q(a, this);
    case 2: 
      return new b(a, this);
    }
    return new n(a, this);
  }
  
  private void i()
  {
    v = Thread.currentThread();
    t = LogTime.getLogTime();
    boolean bool1 = false;
    boolean bool2;
    do
    {
      bool2 = bool1;
      if (D) {
        break;
      }
      bool2 = bool1;
      if (B == null) {
        break;
      }
      bool1 = B.a();
      bool2 = bool1;
      if (bool1) {
        break;
      }
      r = a(r);
      B = h();
    } while (r != g.d);
    reschedule();
    return;
    if (((r == g.f) || (D)) && (!bool2)) {
      j();
    }
  }
  
  private void j()
  {
    k();
    GlideException localGlideException = new GlideException("Failed to load resource", new ArrayList(b));
    p.a(localGlideException);
    d();
  }
  
  private void k()
  {
    c.throwIfRecycled();
    if (!C)
    {
      C = true;
      return;
    }
    throw new IllegalStateException("Already notified");
  }
  
  private void l()
  {
    if (Log.isLoggable("DecodeJob", 2))
    {
      long l1 = t;
      localObject = new StringBuilder();
      ((StringBuilder)localObject).append("data: ");
      ((StringBuilder)localObject).append(y);
      ((StringBuilder)localObject).append(", cache key: ");
      ((StringBuilder)localObject).append(w);
      ((StringBuilder)localObject).append(", fetcher: ");
      ((StringBuilder)localObject).append(A);
      a("Retrieved data", l1, ((StringBuilder)localObject).toString());
    }
    Object localObject = null;
    try
    {
      Resource localResource = a(A, y, z);
      localObject = localResource;
    }
    catch (GlideException localGlideException)
    {
      localGlideException.a(x, z);
      b.add(localGlideException);
    }
    if (localObject != null)
    {
      b((Resource)localObject, z);
      return;
    }
    i();
  }
  
  public int a(@NonNull f<?> paramF)
  {
    int i2 = f() - paramF.f();
    int i1 = i2;
    if (i2 == 0) {
      i1 = q - q;
    }
    return i1;
  }
  
  @NonNull
  <Z> Resource<Z> a(DataSource paramDataSource, @NonNull Resource<Z> paramResource)
  {
    Class localClass = paramResource.get().getClass();
    Object localObject1 = DataSource.RESOURCE_DISK_CACHE;
    Object localObject2 = null;
    Transformation localTransformation;
    if (paramDataSource != localObject1)
    {
      localTransformation = a.c(localClass);
      localObject1 = localTransformation.transform(h, paramResource, l, m);
    }
    else
    {
      localObject1 = paramResource;
      localTransformation = null;
    }
    if (!paramResource.equals(localObject1)) {
      paramResource.recycle();
    }
    if (a.a((Resource)localObject1)) {
      paramResource = a.b((Resource)localObject1);
    }
    EncodeStrategy localEncodeStrategy;
    for (localObject2 = paramResource.getEncodeStrategy(o);; localObject2 = localEncodeStrategy)
    {
      break;
      localEncodeStrategy = EncodeStrategy.NONE;
      paramResource = (Resource<Z>)localObject2;
    }
    boolean bool = a.a(w);
    if (n.isResourceCacheable(bool ^ true, paramDataSource, (EncodeStrategy)localObject2))
    {
      if (paramResource != null)
      {
        switch (1.c[localObject2.ordinal()])
        {
        default: 
          paramDataSource = new StringBuilder();
          paramDataSource.append("Unknown strategy: ");
          paramDataSource.append(localObject2);
          throw new IllegalArgumentException(paramDataSource.toString());
        case 2: 
          paramDataSource = new o(a.i(), w, i, l, m, localTransformation, localClass, o);
          break;
        case 1: 
          paramDataSource = new c(w, i);
        }
        localObject1 = m.a((Resource)localObject1);
        f.a(paramDataSource, paramResource, (m)localObject1);
        return localObject1;
      }
      throw new Registry.NoResultEncoderAvailableException(((Resource)localObject1).get().getClass());
    }
    return localObject1;
  }
  
  f<R> a(GlideContext paramGlideContext, Object paramObject, i paramI, Key paramKey, int paramInt1, int paramInt2, Class<?> paramClass, Class<R> paramClass1, Priority paramPriority, DiskCacheStrategy paramDiskCacheStrategy, Map<Class<?>, Transformation<?>> paramMap, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3, Options paramOptions, a<R> paramA, int paramInt3)
  {
    a.a(paramGlideContext, paramObject, paramKey, paramInt1, paramInt2, paramDiskCacheStrategy, paramClass, paramClass1, paramPriority, paramOptions, paramMap, paramBoolean1, paramBoolean2, d);
    h = paramGlideContext;
    i = paramKey;
    j = paramPriority;
    k = paramI;
    l = paramInt1;
    m = paramInt2;
    n = paramDiskCacheStrategy;
    u = paramBoolean3;
    o = paramOptions;
    p = paramA;
    q = paramInt3;
    s = f.a;
    return this;
  }
  
  void a(boolean paramBoolean)
  {
    if (g.a(paramBoolean)) {
      e();
    }
  }
  
  boolean a()
  {
    g localG = a(g.a);
    return (localG == g.b) || (localG == g.c);
  }
  
  public void b()
  {
    D = true;
    DataFetcherGenerator localDataFetcherGenerator = B;
    if (localDataFetcherGenerator != null) {
      localDataFetcherGenerator.b();
    }
  }
  
  @NonNull
  public StateVerifier getVerifier()
  {
    return c;
  }
  
  public void onDataFetcherFailed(Key paramKey, Exception paramException, DataFetcher<?> paramDataFetcher, DataSource paramDataSource)
  {
    paramDataFetcher.cleanup();
    paramException = new GlideException("Fetching data failed", paramException);
    paramException.a(paramKey, paramDataSource, paramDataFetcher.getDataClass());
    b.add(paramException);
    if (Thread.currentThread() != v)
    {
      s = f.b;
      p.a(this);
      return;
    }
    i();
  }
  
  public void onDataFetcherReady(Key paramKey1, Object paramObject, DataFetcher<?> paramDataFetcher, DataSource paramDataSource, Key paramKey2)
  {
    w = paramKey1;
    y = paramObject;
    A = paramDataFetcher;
    z = paramDataSource;
    x = paramKey2;
    if (Thread.currentThread() != v)
    {
      s = f.c;
      p.a(this);
      return;
    }
    TraceCompat.beginSection("DecodeJob.decodeFromRetrievedData");
    try
    {
      l();
      return;
    }
    finally
    {
      TraceCompat.endSection();
    }
  }
  
  public void reschedule()
  {
    s = f.b;
    p.a(this);
  }
  
  /* Error */
  public void run()
  {
    // Byte code:
    //   0: ldc_w 620
    //   3: invokestatic 611	android/support/v4/os/TraceCompat:beginSection	(Ljava/lang/String;)V
    //   6: aload_0
    //   7: getfield 390	com/bumptech/glide/load/engine/f:A	Lcom/bumptech/glide/load/data/DataFetcher;
    //   10: astore_1
    //   11: aload_0
    //   12: getfield 394	com/bumptech/glide/load/engine/f:D	Z
    //   15: ifeq +21 -> 36
    //   18: aload_0
    //   19: invokespecial 446	com/bumptech/glide/load/engine/f:j	()V
    //   22: aload_1
    //   23: ifnull +9 -> 32
    //   26: aload_1
    //   27: invokeinterface 178 1 0
    //   32: invokestatic 614	android/support/v4/os/TraceCompat:endSection	()V
    //   35: return
    //   36: aload_0
    //   37: invokespecial 622	com/bumptech/glide/load/engine/f:g	()V
    //   40: aload_1
    //   41: ifnull +9 -> 50
    //   44: aload_1
    //   45: invokeinterface 178 1 0
    //   50: invokestatic 614	android/support/v4/os/TraceCompat:endSection	()V
    //   53: return
    //   54: astore_2
    //   55: goto +107 -> 162
    //   58: astore_2
    //   59: ldc -67
    //   61: iconst_3
    //   62: invokestatic 195	android/util/Log:isLoggable	(Ljava/lang/String;I)Z
    //   65: ifeq +56 -> 121
    //   68: new 197	java/lang/StringBuilder
    //   71: dup
    //   72: invokespecial 198	java/lang/StringBuilder:<init>	()V
    //   75: astore_3
    //   76: aload_3
    //   77: ldc_w 624
    //   80: invokevirtual 204	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   83: pop
    //   84: aload_3
    //   85: aload_0
    //   86: getfield 394	com/bumptech/glide/load/engine/f:D	Z
    //   89: invokevirtual 627	java/lang/StringBuilder:append	(Z)Ljava/lang/StringBuilder;
    //   92: pop
    //   93: aload_3
    //   94: ldc_w 629
    //   97: invokevirtual 204	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   100: pop
    //   101: aload_3
    //   102: aload_0
    //   103: getfield 356	com/bumptech/glide/load/engine/f:r	Lcom/bumptech/glide/load/engine/f$g;
    //   106: invokevirtual 207	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   109: pop
    //   110: ldc -67
    //   112: aload_3
    //   113: invokevirtual 211	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   116: aload_2
    //   117: invokestatic 632	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   120: pop
    //   121: aload_0
    //   122: getfield 356	com/bumptech/glide/load/engine/f:r	Lcom/bumptech/glide/load/engine/f$g;
    //   125: getstatic 354	com/bumptech/glide/load/engine/f$g:e	Lcom/bumptech/glide/load/engine/f$g;
    //   128: if_acmpeq +18 -> 146
    //   131: aload_0
    //   132: getfield 104	com/bumptech/glide/load/engine/f:b	Ljava/util/List;
    //   135: aload_2
    //   136: invokeinterface 482 2 0
    //   141: pop
    //   142: aload_0
    //   143: invokespecial 446	com/bumptech/glide/load/engine/f:j	()V
    //   146: aload_0
    //   147: getfield 394	com/bumptech/glide/load/engine/f:D	Z
    //   150: ifeq +10 -> 160
    //   153: aload_1
    //   154: ifnull -104 -> 50
    //   157: goto -113 -> 44
    //   160: aload_2
    //   161: athrow
    //   162: aload_1
    //   163: ifnull +9 -> 172
    //   166: aload_1
    //   167: invokeinterface 178 1 0
    //   172: invokestatic 614	android/support/v4/os/TraceCompat:endSection	()V
    //   175: aload_2
    //   176: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	177	0	this	f
    //   10	157	1	localDataFetcher	DataFetcher
    //   54	1	2	localObject	Object
    //   58	118	2	localThrowable	Throwable
    //   75	38	3	localStringBuilder	StringBuilder
    // Exception table:
    //   from	to	target	type
    //   11	22	54	finally
    //   36	40	54	finally
    //   59	121	54	finally
    //   121	146	54	finally
    //   146	153	54	finally
    //   160	162	54	finally
    //   11	22	58	java/lang/Throwable
    //   36	40	58	java/lang/Throwable
  }
  
  static abstract interface a<R>
  {
    public abstract void a(GlideException paramGlideException);
    
    public abstract void a(Resource<R> paramResource, DataSource paramDataSource);
    
    public abstract void a(f<?> paramF);
  }
  
  private final class b<Z>
    implements DecodePath.a<Z>
  {
    private final DataSource b;
    
    b(DataSource paramDataSource)
    {
      b = paramDataSource;
    }
    
    @NonNull
    public Resource<Z> a(@NonNull Resource<Z> paramResource)
    {
      return a(b, paramResource);
    }
  }
  
  private static class c<Z>
  {
    private Key a;
    private ResourceEncoder<Z> b;
    private m<Z> c;
    
    c() {}
    
    <X> void a(Key paramKey, ResourceEncoder<X> paramResourceEncoder, m<X> paramM)
    {
      a = paramKey;
      b = paramResourceEncoder;
      c = paramM;
    }
    
    void a(f.d paramD, Options paramOptions)
    {
      TraceCompat.beginSection("DecodeJob.encode");
      try
      {
        paramD.a().put(a, new d(b, c, paramOptions));
        return;
      }
      finally
      {
        c.a();
        TraceCompat.endSection();
      }
    }
    
    boolean a()
    {
      return c != null;
    }
    
    void b()
    {
      a = null;
      b = null;
      c = null;
    }
  }
  
  static abstract interface d
  {
    public abstract DiskCache a();
  }
  
  private static class e
  {
    private boolean a;
    private boolean b;
    private boolean c;
    
    e() {}
    
    private boolean b(boolean paramBoolean)
    {
      return ((c) || (paramBoolean) || (b)) && (a);
    }
    
    boolean a()
    {
      try
      {
        b = true;
        boolean bool = b(false);
        return bool;
      }
      finally
      {
        localObject = finally;
        throw localObject;
      }
    }
    
    boolean a(boolean paramBoolean)
    {
      try
      {
        a = true;
        paramBoolean = b(paramBoolean);
        return paramBoolean;
      }
      finally
      {
        localObject = finally;
        throw localObject;
      }
    }
    
    boolean b()
    {
      try
      {
        c = true;
        boolean bool = b(false);
        return bool;
      }
      finally
      {
        localObject = finally;
        throw localObject;
      }
    }
    
    void c()
    {
      try
      {
        b = false;
        a = false;
        c = false;
        return;
      }
      finally
      {
        localObject = finally;
        throw localObject;
      }
    }
  }
  
  private static enum f
  {
    private f() {}
  }
  
  private static enum g
  {
    private g() {}
  }
}
