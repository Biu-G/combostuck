package com.bumptech.glide.load.model;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v4.util.Pools.Pool;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public class ModelLoaderRegistry
{
  private final MultiModelLoaderFactory a;
  private final a b = new a();
  
  public ModelLoaderRegistry(@NonNull Pools.Pool<List<Throwable>> paramPool)
  {
    this(new MultiModelLoaderFactory(paramPool));
  }
  
  private ModelLoaderRegistry(@NonNull MultiModelLoaderFactory paramMultiModelLoaderFactory)
  {
    a = paramMultiModelLoaderFactory;
  }
  
  @NonNull
  private static <A> Class<A> a(@NonNull A paramA)
  {
    return paramA.getClass();
  }
  
  @NonNull
  private <A> List<ModelLoader<A, ?>> a(@NonNull Class<A> paramClass)
  {
    List localList2 = b.a(paramClass);
    List localList1 = localList2;
    if (localList2 == null)
    {
      localList1 = Collections.unmodifiableList(a.a(paramClass));
      b.a(paramClass, localList1);
    }
    return localList1;
  }
  
  private <Model, Data> void a(@NonNull List<ModelLoaderFactory<? extends Model, ? extends Data>> paramList)
  {
    paramList = paramList.iterator();
    while (paramList.hasNext()) {
      ((ModelLoaderFactory)paramList.next()).teardown();
    }
  }
  
  public <Model, Data> void append(@NonNull Class<Model> paramClass, @NonNull Class<Data> paramClass1, @NonNull ModelLoaderFactory<? extends Model, ? extends Data> paramModelLoaderFactory)
  {
    try
    {
      a.a(paramClass, paramClass1, paramModelLoaderFactory);
      b.a();
      return;
    }
    finally
    {
      paramClass = finally;
      throw paramClass;
    }
  }
  
  public <Model, Data> ModelLoader<Model, Data> build(@NonNull Class<Model> paramClass, @NonNull Class<Data> paramClass1)
  {
    try
    {
      paramClass = a.build(paramClass, paramClass1);
      return paramClass;
    }
    finally
    {
      paramClass = finally;
      throw paramClass;
    }
  }
  
  @NonNull
  public List<Class<?>> getDataClasses(@NonNull Class<?> paramClass)
  {
    try
    {
      paramClass = a.b(paramClass);
      return paramClass;
    }
    finally
    {
      paramClass = finally;
      throw paramClass;
    }
  }
  
  @NonNull
  public <A> List<ModelLoader<A, ?>> getModelLoaders(@NonNull A paramA)
  {
    try
    {
      List localList = a(a(paramA));
      int j = localList.size();
      ArrayList localArrayList = new ArrayList(j);
      int i = 0;
      while (i < j)
      {
        ModelLoader localModelLoader = (ModelLoader)localList.get(i);
        if (localModelLoader.handles(paramA)) {
          localArrayList.add(localModelLoader);
        }
        i += 1;
      }
      return localArrayList;
    }
    finally {}
  }
  
  public <Model, Data> void prepend(@NonNull Class<Model> paramClass, @NonNull Class<Data> paramClass1, @NonNull ModelLoaderFactory<? extends Model, ? extends Data> paramModelLoaderFactory)
  {
    try
    {
      a.b(paramClass, paramClass1, paramModelLoaderFactory);
      b.a();
      return;
    }
    finally
    {
      paramClass = finally;
      throw paramClass;
    }
  }
  
  public <Model, Data> void remove(@NonNull Class<Model> paramClass, @NonNull Class<Data> paramClass1)
  {
    try
    {
      a(a.a(paramClass, paramClass1));
      b.a();
      return;
    }
    finally
    {
      paramClass = finally;
      throw paramClass;
    }
  }
  
  public <Model, Data> void replace(@NonNull Class<Model> paramClass, @NonNull Class<Data> paramClass1, @NonNull ModelLoaderFactory<? extends Model, ? extends Data> paramModelLoaderFactory)
  {
    try
    {
      a(a.c(paramClass, paramClass1, paramModelLoaderFactory));
      b.a();
      return;
    }
    finally
    {
      paramClass = finally;
      throw paramClass;
    }
  }
  
  private static class a
  {
    private final Map<Class<?>, a<?>> a = new HashMap();
    
    a() {}
    
    @Nullable
    public <Model> List<ModelLoader<Model, ?>> a(Class<Model> paramClass)
    {
      paramClass = (a)a.get(paramClass);
      if (paramClass == null) {
        return null;
      }
      return a;
    }
    
    public void a()
    {
      a.clear();
    }
    
    public <Model> void a(Class<Model> paramClass, List<ModelLoader<Model, ?>> paramList)
    {
      if ((a)a.put(paramClass, new a(paramList)) == null) {
        return;
      }
      paramList = new StringBuilder();
      paramList.append("Already cached loaders for model: ");
      paramList.append(paramClass);
      throw new IllegalStateException(paramList.toString());
    }
    
    private static class a<Model>
    {
      final List<ModelLoader<Model, ?>> a;
      
      public a(List<ModelLoader<Model, ?>> paramList)
      {
        a = paramList;
      }
    }
  }
}
