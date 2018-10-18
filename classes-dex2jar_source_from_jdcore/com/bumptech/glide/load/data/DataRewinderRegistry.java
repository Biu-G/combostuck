package com.bumptech.glide.load.data;

import android.support.annotation.NonNull;
import com.bumptech.glide.util.Preconditions;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

public class DataRewinderRegistry
{
  private static final DataRewinder.Factory<?> b = new DataRewinder.Factory()
  {
    @NonNull
    public DataRewinder<Object> build(@NonNull Object paramAnonymousObject)
    {
      return new DataRewinderRegistry.a(paramAnonymousObject);
    }
    
    @NonNull
    public Class<Object> getDataClass()
    {
      throw new UnsupportedOperationException("Not implemented");
    }
  };
  private final Map<Class<?>, DataRewinder.Factory<?>> a = new HashMap();
  
  public DataRewinderRegistry() {}
  
  @NonNull
  public <T> DataRewinder<T> build(@NonNull T paramT)
  {
    try
    {
      Preconditions.checkNotNull(paramT);
      Object localObject2 = (DataRewinder.Factory)a.get(paramT.getClass());
      Object localObject1 = localObject2;
      if (localObject2 == null)
      {
        Iterator localIterator = a.values().iterator();
        do
        {
          localObject1 = localObject2;
          if (!localIterator.hasNext()) {
            break;
          }
          localObject1 = (DataRewinder.Factory)localIterator.next();
        } while (!((DataRewinder.Factory)localObject1).getDataClass().isAssignableFrom(paramT.getClass()));
      }
      localObject2 = localObject1;
      if (localObject1 == null) {
        localObject2 = b;
      }
      paramT = ((DataRewinder.Factory)localObject2).build(paramT);
      return paramT;
    }
    finally {}
  }
  
  public void register(@NonNull DataRewinder.Factory<?> paramFactory)
  {
    try
    {
      a.put(paramFactory.getDataClass(), paramFactory);
      return;
    }
    finally
    {
      paramFactory = finally;
      throw paramFactory;
    }
  }
  
  private static final class a
    implements DataRewinder<Object>
  {
    private final Object a;
    
    a(@NonNull Object paramObject)
    {
      a = paramObject;
    }
    
    public void cleanup() {}
    
    @NonNull
    public Object rewindAndGet()
    {
      return a;
    }
  }
}
