package com.bumptech.glide.load.engine;

import com.bumptech.glide.GlideContext;
import com.bumptech.glide.Priority;
import com.bumptech.glide.Registry;
import com.bumptech.glide.Registry.NoModelLoaderAvailableException;
import com.bumptech.glide.Registry.NoSourceEncoderAvailableException;
import com.bumptech.glide.load.Encoder;
import com.bumptech.glide.load.Key;
import com.bumptech.glide.load.Options;
import com.bumptech.glide.load.ResourceEncoder;
import com.bumptech.glide.load.Transformation;
import com.bumptech.glide.load.engine.bitmap_recycle.ArrayPool;
import com.bumptech.glide.load.engine.cache.DiskCache;
import com.bumptech.glide.load.model.ModelLoader;
import com.bumptech.glide.load.model.ModelLoader.LoadData;
import com.bumptech.glide.load.resource.UnitTransformation;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

final class e<Transcode>
{
  private final List<ModelLoader.LoadData<?>> a = new ArrayList();
  private final List<Key> b = new ArrayList();
  private GlideContext c;
  private Object d;
  private int e;
  private int f;
  private Class<?> g;
  private f.d h;
  private Options i;
  private Map<Class<?>, Transformation<?>> j;
  private Class<Transcode> k;
  private boolean l;
  private boolean m;
  private Key n;
  private Priority o;
  private DiskCacheStrategy p;
  private boolean q;
  private boolean r;
  
  e() {}
  
  <X> Encoder<X> a(X paramX)
    throws Registry.NoSourceEncoderAvailableException
  {
    return c.getRegistry().getSourceEncoder(paramX);
  }
  
  List<ModelLoader<File, ?>> a(File paramFile)
    throws Registry.NoModelLoaderAvailableException
  {
    return c.getRegistry().getModelLoaders(paramFile);
  }
  
  void a()
  {
    c = null;
    d = null;
    n = null;
    g = null;
    k = null;
    i = null;
    o = null;
    j = null;
    p = null;
    a.clear();
    l = false;
    b.clear();
    m = false;
  }
  
  <R> void a(GlideContext paramGlideContext, Object paramObject, Key paramKey, int paramInt1, int paramInt2, DiskCacheStrategy paramDiskCacheStrategy, Class<?> paramClass, Class<R> paramClass1, Priority paramPriority, Options paramOptions, Map<Class<?>, Transformation<?>> paramMap, boolean paramBoolean1, boolean paramBoolean2, f.d paramD)
  {
    c = paramGlideContext;
    d = paramObject;
    n = paramKey;
    e = paramInt1;
    f = paramInt2;
    p = paramDiskCacheStrategy;
    g = paramClass;
    h = paramD;
    k = paramClass1;
    o = paramPriority;
    i = paramOptions;
    j = paramMap;
    q = paramBoolean1;
    r = paramBoolean2;
  }
  
  boolean a(Key paramKey)
  {
    List localList = n();
    int i2 = localList.size();
    int i1 = 0;
    while (i1 < i2)
    {
      if (getsourceKey.equals(paramKey)) {
        return true;
      }
      i1 += 1;
    }
    return false;
  }
  
  boolean a(Resource<?> paramResource)
  {
    return c.getRegistry().isResourceEncoderAvailable(paramResource);
  }
  
  boolean a(Class<?> paramClass)
  {
    return b(paramClass) != null;
  }
  
  <Z> ResourceEncoder<Z> b(Resource<Z> paramResource)
  {
    return c.getRegistry().getResultEncoder(paramResource);
  }
  
  <Data> LoadPath<Data, ?, Transcode> b(Class<Data> paramClass)
  {
    return c.getRegistry().getLoadPath(paramClass, g, k);
  }
  
  DiskCache b()
  {
    return h.a();
  }
  
  <Z> Transformation<Z> c(Class<Z> paramClass)
  {
    Transformation localTransformation = (Transformation)j.get(paramClass);
    Object localObject = localTransformation;
    if (localTransformation == null)
    {
      Iterator localIterator = j.entrySet().iterator();
      do
      {
        localObject = localTransformation;
        if (!localIterator.hasNext()) {
          break;
        }
        localObject = (Map.Entry)localIterator.next();
      } while (!((Class)((Map.Entry)localObject).getKey()).isAssignableFrom(paramClass));
      localObject = (Transformation)((Map.Entry)localObject).getValue();
    }
    if (localObject == null)
    {
      if ((j.isEmpty()) && (q))
      {
        localObject = new StringBuilder();
        ((StringBuilder)localObject).append("Missing transformation for ");
        ((StringBuilder)localObject).append(paramClass);
        ((StringBuilder)localObject).append(". If you wish to ignore unknown resource types, use the optional transformation methods.");
        throw new IllegalArgumentException(((StringBuilder)localObject).toString());
      }
      return UnitTransformation.get();
    }
    return localObject;
  }
  
  DiskCacheStrategy c()
  {
    return p;
  }
  
  Priority d()
  {
    return o;
  }
  
  Options e()
  {
    return i;
  }
  
  Key f()
  {
    return n;
  }
  
  int g()
  {
    return e;
  }
  
  int h()
  {
    return f;
  }
  
  ArrayPool i()
  {
    return c.getArrayPool();
  }
  
  Class<?> j()
  {
    return k;
  }
  
  Class<?> k()
  {
    return d.getClass();
  }
  
  List<Class<?>> l()
  {
    return c.getRegistry().getRegisteredResourceClasses(d.getClass(), g, k);
  }
  
  boolean m()
  {
    return r;
  }
  
  List<ModelLoader.LoadData<?>> n()
  {
    if (!l)
    {
      l = true;
      a.clear();
      List localList = c.getRegistry().getModelLoaders(d);
      int i1 = 0;
      int i2 = localList.size();
      while (i1 < i2)
      {
        ModelLoader.LoadData localLoadData = ((ModelLoader)localList.get(i1)).buildLoadData(d, e, f, i);
        if (localLoadData != null) {
          a.add(localLoadData);
        }
        i1 += 1;
      }
    }
    return a;
  }
  
  List<Key> o()
  {
    if (!m)
    {
      m = true;
      b.clear();
      List localList = n();
      int i3 = localList.size();
      int i1 = 0;
      while (i1 < i3)
      {
        ModelLoader.LoadData localLoadData = (ModelLoader.LoadData)localList.get(i1);
        if (!b.contains(sourceKey)) {
          b.add(sourceKey);
        }
        int i2 = 0;
        while (i2 < alternateKeys.size())
        {
          if (!b.contains(alternateKeys.get(i2))) {
            b.add(alternateKeys.get(i2));
          }
          i2 += 1;
        }
        i1 += 1;
      }
    }
    return b;
  }
}
