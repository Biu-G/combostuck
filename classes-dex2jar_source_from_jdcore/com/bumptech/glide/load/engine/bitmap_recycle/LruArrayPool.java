package com.bumptech.glide.load.engine.bitmap_recycle;

import android.support.annotation.Nullable;
import android.support.annotation.VisibleForTesting;
import android.util.Log;
import com.bumptech.glide.util.Preconditions;
import java.util.HashMap;
import java.util.Map;
import java.util.NavigableMap;
import java.util.TreeMap;

public final class LruArrayPool
  implements ArrayPool
{
  private final d<a, Object> a = new d();
  private final b b = new b();
  private final Map<Class<?>, NavigableMap<Integer, Integer>> c = new HashMap();
  private final Map<Class<?>, a<?>> d = new HashMap();
  private final int e;
  private int f;
  
  @VisibleForTesting
  public LruArrayPool()
  {
    e = 4194304;
  }
  
  public LruArrayPool(int paramInt)
  {
    e = paramInt;
  }
  
  private <T> a<T> a(T paramT)
  {
    return b(paramT.getClass());
  }
  
  @Nullable
  private <T> T a(a paramA)
  {
    return a.a(paramA);
  }
  
  private <T> T a(a paramA, Class<T> paramClass)
  {
    a localA = b(paramClass);
    Object localObject = a(paramA);
    if (localObject != null)
    {
      f -= localA.getArrayLength(localObject) * localA.getElementSizeInBytes();
      a(localA.getArrayLength(localObject), paramClass);
    }
    paramClass = (Class<T>)localObject;
    if (localObject == null)
    {
      if (Log.isLoggable(localA.getTag(), 2))
      {
        paramClass = localA.getTag();
        localObject = new StringBuilder();
        ((StringBuilder)localObject).append("Allocated ");
        ((StringBuilder)localObject).append(a);
        ((StringBuilder)localObject).append(" bytes");
        Log.v(paramClass, ((StringBuilder)localObject).toString());
      }
      paramClass = localA.newArray(a);
    }
    return paramClass;
  }
  
  private NavigableMap<Integer, Integer> a(Class<?> paramClass)
  {
    NavigableMap localNavigableMap = (NavigableMap)c.get(paramClass);
    Object localObject = localNavigableMap;
    if (localNavigableMap == null)
    {
      localObject = new TreeMap();
      c.put(paramClass, localObject);
    }
    return localObject;
  }
  
  private void a(int paramInt, Class<?> paramClass)
  {
    paramClass = a(paramClass);
    Integer localInteger = (Integer)paramClass.get(Integer.valueOf(paramInt));
    if (localInteger != null)
    {
      if (localInteger.intValue() == 1)
      {
        paramClass.remove(Integer.valueOf(paramInt));
        return;
      }
      paramClass.put(Integer.valueOf(paramInt), Integer.valueOf(localInteger.intValue() - 1));
      return;
    }
    paramClass = new StringBuilder();
    paramClass.append("Tried to decrement empty size, size: ");
    paramClass.append(paramInt);
    paramClass.append(", this: ");
    paramClass.append(this);
    throw new NullPointerException(paramClass.toString());
  }
  
  private boolean a()
  {
    return (f == 0) || (e / f >= 2);
  }
  
  private boolean a(int paramInt)
  {
    return paramInt <= e / 2;
  }
  
  private boolean a(int paramInt, Integer paramInteger)
  {
    return (paramInteger != null) && ((a()) || (paramInteger.intValue() <= paramInt * 8));
  }
  
  private <T> a<T> b(Class<T> paramClass)
  {
    Object localObject = (a)d.get(paramClass);
    if (localObject == null)
    {
      if (paramClass.equals([I.class))
      {
        localObject = new IntegerArrayAdapter();
      }
      else
      {
        if (!paramClass.equals([B.class)) {
          break label69;
        }
        localObject = new ByteArrayAdapter();
      }
      d.put(paramClass, localObject);
      return localObject;
      label69:
      localObject = new StringBuilder();
      ((StringBuilder)localObject).append("No array pool found for: ");
      ((StringBuilder)localObject).append(paramClass.getSimpleName());
      throw new IllegalArgumentException(((StringBuilder)localObject).toString());
    }
    return localObject;
  }
  
  private void b()
  {
    b(e);
  }
  
  private void b(int paramInt)
  {
    while (f > paramInt)
    {
      Object localObject = a.a();
      Preconditions.checkNotNull(localObject);
      a localA = a(localObject);
      f -= localA.getArrayLength(localObject) * localA.getElementSizeInBytes();
      a(localA.getArrayLength(localObject), localObject.getClass());
      if (Log.isLoggable(localA.getTag(), 2))
      {
        String str = localA.getTag();
        StringBuilder localStringBuilder = new StringBuilder();
        localStringBuilder.append("evicted: ");
        localStringBuilder.append(localA.getArrayLength(localObject));
        Log.v(str, localStringBuilder.toString());
      }
    }
  }
  
  public void clearMemory()
  {
    try
    {
      b(0);
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  public <T> T get(int paramInt, Class<T> paramClass)
  {
    try
    {
      Object localObject = (Integer)a(paramClass).ceilingKey(Integer.valueOf(paramInt));
      if (a(paramInt, (Integer)localObject)) {
        localObject = b.a(((Integer)localObject).intValue(), paramClass);
      } else {
        localObject = b.a(paramInt, paramClass);
      }
      paramClass = a((a)localObject, paramClass);
      return paramClass;
    }
    finally {}
  }
  
  public <T> T getExact(int paramInt, Class<T> paramClass)
  {
    try
    {
      paramClass = a(b.a(paramInt, paramClass), paramClass);
      return paramClass;
    }
    finally
    {
      paramClass = finally;
      throw paramClass;
    }
  }
  
  public <T> void put(T paramT)
  {
    try
    {
      Object localObject2 = paramT.getClass();
      Object localObject1 = b((Class)localObject2);
      int i = ((a)localObject1).getArrayLength(paramT);
      int j = ((a)localObject1).getElementSizeInBytes() * i;
      boolean bool = a(j);
      if (!bool) {
        return;
      }
      localObject1 = b.a(i, (Class)localObject2);
      a.a((f)localObject1, paramT);
      paramT = a((Class)localObject2);
      localObject2 = (Integer)paramT.get(Integer.valueOf(a));
      int k = a;
      i = 1;
      if (localObject2 != null) {
        i = 1 + ((Integer)localObject2).intValue();
      }
      paramT.put(Integer.valueOf(k), Integer.valueOf(i));
      f += j;
      b();
      return;
    }
    finally {}
  }
  
  @Deprecated
  public <T> void put(T paramT, Class<T> paramClass)
  {
    put(paramT);
  }
  
  public void trimMemory(int paramInt)
  {
    if (paramInt >= 40) {}
    try
    {
      clearMemory();
    }
    finally
    {
      Object localObject1;
      label38:
      for (;;) {}
    }
    if (paramInt >= 20)
    {
      b(e / 2);
      break label38;
      throw localObject1;
    }
  }
  
  private static final class a
    implements f
  {
    int a;
    private final LruArrayPool.b b;
    private Class<?> c;
    
    a(LruArrayPool.b paramB)
    {
      b = paramB;
    }
    
    public void a()
    {
      b.a(this);
    }
    
    void a(int paramInt, Class<?> paramClass)
    {
      a = paramInt;
      c = paramClass;
    }
    
    public boolean equals(Object paramObject)
    {
      boolean bool1 = paramObject instanceof a;
      boolean bool2 = false;
      if (bool1)
      {
        paramObject = (a)paramObject;
        bool1 = bool2;
        if (a == a)
        {
          bool1 = bool2;
          if (c == c) {
            bool1 = true;
          }
        }
        return bool1;
      }
      return false;
    }
    
    public int hashCode()
    {
      int j = a;
      int i;
      if (c != null) {
        i = c.hashCode();
      } else {
        i = 0;
      }
      return j * 31 + i;
    }
    
    public String toString()
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("Key{size=");
      localStringBuilder.append(a);
      localStringBuilder.append("array=");
      localStringBuilder.append(c);
      localStringBuilder.append('}');
      return localStringBuilder.toString();
    }
  }
  
  private static final class b
    extends c<LruArrayPool.a>
  {
    b() {}
    
    protected LruArrayPool.a a()
    {
      return new LruArrayPool.a(this);
    }
    
    LruArrayPool.a a(int paramInt, Class<?> paramClass)
    {
      LruArrayPool.a localA = (LruArrayPool.a)c();
      localA.a(paramInt, paramClass);
      return localA;
    }
  }
}
