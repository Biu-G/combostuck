package com.amap.api.mapcore2d;

import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.ListIterator;

class bn<T>
  implements List<T>
{
  private LinkedList<T> a = new LinkedList();
  
  bn() {}
  
  public void a(T paramT)
  {
    try
    {
      add(paramT);
      return;
    }
    finally
    {
      paramT = finally;
      throw paramT;
    }
  }
  
  public void add(int paramInt, T paramT)
  {
    try
    {
      a.add(paramInt, paramT);
      return;
    }
    finally
    {
      paramT = finally;
      throw paramT;
    }
  }
  
  /* Error */
  public boolean add(T paramT)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 19	com/amap/api/mapcore2d/bn:a	Ljava/util/LinkedList;
    //   6: aload_1
    //   7: invokevirtual 34	java/util/LinkedList:add	(Ljava/lang/Object;)Z
    //   10: istore_2
    //   11: aload_0
    //   12: monitorexit
    //   13: iload_2
    //   14: ireturn
    //   15: astore_1
    //   16: aload_0
    //   17: monitorexit
    //   18: aload_1
    //   19: athrow
    //   20: aload_0
    //   21: monitorexit
    //   22: iconst_1
    //   23: ireturn
    //   24: astore_1
    //   25: goto -5 -> 20
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	28	0	this	bn
    //   0	28	1	paramT	T
    //   10	4	2	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   2	11	15	finally
    //   2	11	24	java/lang/Throwable
  }
  
  public boolean addAll(int paramInt, Collection<? extends T> paramCollection)
  {
    try
    {
      boolean bool = a.addAll(paramInt, paramCollection);
      return bool;
    }
    finally
    {
      paramCollection = finally;
      throw paramCollection;
    }
  }
  
  public boolean addAll(Collection<? extends T> paramCollection)
  {
    try
    {
      boolean bool = a.addAll(paramCollection);
      return bool;
    }
    finally
    {
      paramCollection = finally;
      throw paramCollection;
    }
  }
  
  public void clear()
  {
    try
    {
      a.clear();
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  public boolean contains(Object paramObject)
  {
    try
    {
      boolean bool = a.contains(paramObject);
      return bool;
    }
    finally
    {
      paramObject = finally;
      throw paramObject;
    }
  }
  
  public boolean containsAll(Collection<?> paramCollection)
  {
    try
    {
      boolean bool = a.containsAll(paramCollection);
      return bool;
    }
    finally
    {
      paramCollection = finally;
      throw paramCollection;
    }
  }
  
  public T get(int paramInt)
  {
    try
    {
      T ?;
      try
      {
        Object localObject1 = a.get(paramInt);
      }
      catch (Exception localException)
      {
        cm.a(localException, "SyncList", "get");
        ? = null;
      }
      return ?;
    }
    finally {}
  }
  
  public int indexOf(Object paramObject)
  {
    try
    {
      int i = a.indexOf(paramObject);
      return i;
    }
    finally
    {
      paramObject = finally;
      throw paramObject;
    }
  }
  
  public boolean isEmpty()
  {
    try
    {
      boolean bool = a.isEmpty();
      return bool;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  public Iterator<T> iterator()
  {
    try
    {
      ListIterator localListIterator = a.listIterator();
      return localListIterator;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  public int lastIndexOf(Object paramObject)
  {
    try
    {
      int i = a.lastIndexOf(paramObject);
      return i;
    }
    finally
    {
      paramObject = finally;
      throw paramObject;
    }
  }
  
  public ListIterator<T> listIterator()
  {
    try
    {
      ListIterator localListIterator = a.listIterator();
      return localListIterator;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  public ListIterator<T> listIterator(int paramInt)
  {
    try
    {
      ListIterator localListIterator = a.listIterator(paramInt);
      return localListIterator;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  public T remove(int paramInt)
  {
    try
    {
      Object localObject1 = a.remove(paramInt);
      return localObject1;
    }
    finally
    {
      localObject2 = finally;
      throw localObject2;
    }
  }
  
  public boolean remove(Object paramObject)
  {
    try
    {
      boolean bool = a.remove(paramObject);
      return bool;
    }
    finally
    {
      paramObject = finally;
      throw paramObject;
    }
  }
  
  public boolean removeAll(Collection<?> paramCollection)
  {
    try
    {
      boolean bool = a.removeAll(paramCollection);
      return bool;
    }
    finally
    {
      paramCollection = finally;
      throw paramCollection;
    }
  }
  
  public boolean retainAll(Collection<?> paramCollection)
  {
    try
    {
      boolean bool = a.retainAll(paramCollection);
      return bool;
    }
    finally
    {
      paramCollection = finally;
      throw paramCollection;
    }
  }
  
  public T set(int paramInt, T paramT)
  {
    try
    {
      paramT = a.set(paramInt, paramT);
      return paramT;
    }
    finally
    {
      paramT = finally;
      throw paramT;
    }
  }
  
  public int size()
  {
    try
    {
      int i = a.size();
      return i;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  public List<T> subList(int paramInt1, int paramInt2)
  {
    try
    {
      List localList = a.subList(paramInt1, paramInt2);
      return localList;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  public Object[] toArray()
  {
    try
    {
      Object[] arrayOfObject = a.toArray();
      return arrayOfObject;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  public <V> V[] toArray(V[] paramArrayOfV)
  {
    try
    {
      paramArrayOfV = a.toArray(paramArrayOfV);
      return paramArrayOfV;
    }
    finally
    {
      paramArrayOfV = finally;
      throw paramArrayOfV;
    }
  }
}
