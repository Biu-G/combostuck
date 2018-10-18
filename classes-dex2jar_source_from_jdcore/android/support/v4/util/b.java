package android.support.v4.util;

import android.support.annotation.Nullable;
import java.lang.reflect.Array;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.NoSuchElementException;
import java.util.Set;

abstract class b<K, V>
{
  @Nullable
  b<K, V>.b b;
  @Nullable
  b<K, V>.c c;
  @Nullable
  b<K, V>.e d;
  
  b() {}
  
  public static <K, V> boolean a(Map<K, V> paramMap, Collection<?> paramCollection)
  {
    paramCollection = paramCollection.iterator();
    while (paramCollection.hasNext()) {
      if (!paramMap.containsKey(paramCollection.next())) {
        return false;
      }
    }
    return true;
  }
  
  public static <T> boolean a(Set<T> paramSet, Object paramObject)
  {
    if (paramSet == paramObject) {
      return true;
    }
    if ((paramObject instanceof Set)) {
      paramObject = (Set)paramObject;
    }
    try
    {
      if (paramSet.size() == paramObject.size())
      {
        boolean bool = paramSet.containsAll(paramObject);
        if (bool) {
          return true;
        }
      }
      return false;
    }
    catch (NullPointerException paramSet)
    {
      return false;
    }
    catch (ClassCastException paramSet) {}
    return false;
    return false;
  }
  
  public static <K, V> boolean b(Map<K, V> paramMap, Collection<?> paramCollection)
  {
    int i = paramMap.size();
    paramCollection = paramCollection.iterator();
    while (paramCollection.hasNext()) {
      paramMap.remove(paramCollection.next());
    }
    return i != paramMap.size();
  }
  
  public static <K, V> boolean c(Map<K, V> paramMap, Collection<?> paramCollection)
  {
    int i = paramMap.size();
    Iterator localIterator = paramMap.keySet().iterator();
    while (localIterator.hasNext()) {
      if (!paramCollection.contains(localIterator.next())) {
        localIterator.remove();
      }
    }
    return i != paramMap.size();
  }
  
  protected abstract int a();
  
  protected abstract int a(Object paramObject);
  
  protected abstract Object a(int paramInt1, int paramInt2);
  
  protected abstract V a(int paramInt, V paramV);
  
  protected abstract void a(int paramInt);
  
  protected abstract void a(K paramK, V paramV);
  
  public <T> T[] a(T[] paramArrayOfT, int paramInt)
  {
    int j = a();
    Object localObject = paramArrayOfT;
    if (paramArrayOfT.length < j) {
      localObject = (Object[])Array.newInstance(paramArrayOfT.getClass().getComponentType(), j);
    }
    int i = 0;
    while (i < j)
    {
      localObject[i] = a(i, paramInt);
      i += 1;
    }
    if (localObject.length > j) {
      localObject[j] = null;
    }
    return localObject;
  }
  
  protected abstract int b(Object paramObject);
  
  protected abstract Map<K, V> b();
  
  public Object[] b(int paramInt)
  {
    int j = a();
    Object[] arrayOfObject = new Object[j];
    int i = 0;
    while (i < j)
    {
      arrayOfObject[i] = a(i, paramInt);
      i += 1;
    }
    return arrayOfObject;
  }
  
  protected abstract void c();
  
  public Set<Map.Entry<K, V>> d()
  {
    if (b == null) {
      b = new b();
    }
    return b;
  }
  
  public Set<K> e()
  {
    if (c == null) {
      c = new c();
    }
    return c;
  }
  
  public Collection<V> f()
  {
    if (d == null) {
      d = new e();
    }
    return d;
  }
  
  final class a<T>
    implements Iterator<T>
  {
    final int a;
    int b;
    int c;
    boolean d = false;
    
    a(int paramInt)
    {
      a = paramInt;
      b = a();
    }
    
    public boolean hasNext()
    {
      return c < b;
    }
    
    public T next()
    {
      if (hasNext())
      {
        Object localObject = a(c, a);
        c += 1;
        d = true;
        return localObject;
      }
      throw new NoSuchElementException();
    }
    
    public void remove()
    {
      if (d)
      {
        c -= 1;
        b -= 1;
        d = false;
        a(c);
        return;
      }
      throw new IllegalStateException();
    }
  }
  
  final class b
    implements Set<Map.Entry<K, V>>
  {
    b() {}
    
    public boolean a(Map.Entry<K, V> paramEntry)
    {
      throw new UnsupportedOperationException();
    }
    
    public boolean addAll(Collection<? extends Map.Entry<K, V>> paramCollection)
    {
      int i = a();
      paramCollection = paramCollection.iterator();
      while (paramCollection.hasNext())
      {
        Map.Entry localEntry = (Map.Entry)paramCollection.next();
        a(localEntry.getKey(), localEntry.getValue());
      }
      return i != a();
    }
    
    public void clear()
    {
      c();
    }
    
    public boolean contains(Object paramObject)
    {
      if (!(paramObject instanceof Map.Entry)) {
        return false;
      }
      paramObject = (Map.Entry)paramObject;
      int i = a(paramObject.getKey());
      if (i < 0) {
        return false;
      }
      return a.a(a(i, 1), paramObject.getValue());
    }
    
    public boolean containsAll(Collection<?> paramCollection)
    {
      paramCollection = paramCollection.iterator();
      while (paramCollection.hasNext()) {
        if (!contains(paramCollection.next())) {
          return false;
        }
      }
      return true;
    }
    
    public boolean equals(Object paramObject)
    {
      return b.a(this, paramObject);
    }
    
    public int hashCode()
    {
      int i = a() - 1;
      int j = 0;
      while (i >= 0)
      {
        Object localObject1 = a(i, 0);
        Object localObject2 = a(i, 1);
        int k;
        if (localObject1 == null) {
          k = 0;
        } else {
          k = localObject1.hashCode();
        }
        int m;
        if (localObject2 == null) {
          m = 0;
        } else {
          m = localObject2.hashCode();
        }
        j += (k ^ m);
        i -= 1;
      }
      return j;
    }
    
    public boolean isEmpty()
    {
      return a() == 0;
    }
    
    public Iterator<Map.Entry<K, V>> iterator()
    {
      return new b.d(b.this);
    }
    
    public boolean remove(Object paramObject)
    {
      throw new UnsupportedOperationException();
    }
    
    public boolean removeAll(Collection<?> paramCollection)
    {
      throw new UnsupportedOperationException();
    }
    
    public boolean retainAll(Collection<?> paramCollection)
    {
      throw new UnsupportedOperationException();
    }
    
    public int size()
    {
      return a();
    }
    
    public Object[] toArray()
    {
      throw new UnsupportedOperationException();
    }
    
    public <T> T[] toArray(T[] paramArrayOfT)
    {
      throw new UnsupportedOperationException();
    }
  }
  
  final class c
    implements Set<K>
  {
    c() {}
    
    public boolean add(K paramK)
    {
      throw new UnsupportedOperationException();
    }
    
    public boolean addAll(Collection<? extends K> paramCollection)
    {
      throw new UnsupportedOperationException();
    }
    
    public void clear()
    {
      c();
    }
    
    public boolean contains(Object paramObject)
    {
      return a(paramObject) >= 0;
    }
    
    public boolean containsAll(Collection<?> paramCollection)
    {
      return b.a(b(), paramCollection);
    }
    
    public boolean equals(Object paramObject)
    {
      return b.a(this, paramObject);
    }
    
    public int hashCode()
    {
      int i = a() - 1;
      int j = 0;
      while (i >= 0)
      {
        Object localObject = a(i, 0);
        int k;
        if (localObject == null) {
          k = 0;
        } else {
          k = localObject.hashCode();
        }
        j += k;
        i -= 1;
      }
      return j;
    }
    
    public boolean isEmpty()
    {
      return a() == 0;
    }
    
    public Iterator<K> iterator()
    {
      return new b.a(b.this, 0);
    }
    
    public boolean remove(Object paramObject)
    {
      int i = a(paramObject);
      if (i >= 0)
      {
        a(i);
        return true;
      }
      return false;
    }
    
    public boolean removeAll(Collection<?> paramCollection)
    {
      return b.b(b(), paramCollection);
    }
    
    public boolean retainAll(Collection<?> paramCollection)
    {
      return b.c(b(), paramCollection);
    }
    
    public int size()
    {
      return a();
    }
    
    public Object[] toArray()
    {
      return b(0);
    }
    
    public <T> T[] toArray(T[] paramArrayOfT)
    {
      return a(paramArrayOfT, 0);
    }
  }
  
  final class d
    implements Iterator<Map.Entry<K, V>>, Map.Entry<K, V>
  {
    int a = a() - 1;
    int b = -1;
    boolean c = false;
    
    d() {}
    
    public Map.Entry<K, V> a()
    {
      if (hasNext())
      {
        b += 1;
        c = true;
        return this;
      }
      throw new NoSuchElementException();
    }
    
    public boolean equals(Object paramObject)
    {
      if (c)
      {
        boolean bool1 = paramObject instanceof Map.Entry;
        boolean bool2 = false;
        if (!bool1) {
          return false;
        }
        paramObject = (Map.Entry)paramObject;
        bool1 = bool2;
        if (a.a(paramObject.getKey(), a(b, 0)))
        {
          bool1 = bool2;
          if (a.a(paramObject.getValue(), a(b, 1))) {
            bool1 = true;
          }
        }
        return bool1;
      }
      throw new IllegalStateException("This container does not support retaining Map.Entry objects");
    }
    
    public K getKey()
    {
      if (c) {
        return a(b, 0);
      }
      throw new IllegalStateException("This container does not support retaining Map.Entry objects");
    }
    
    public V getValue()
    {
      if (c) {
        return a(b, 1);
      }
      throw new IllegalStateException("This container does not support retaining Map.Entry objects");
    }
    
    public boolean hasNext()
    {
      return b < a;
    }
    
    public int hashCode()
    {
      if (c)
      {
        Object localObject1 = b.this;
        int i = b;
        int j = 0;
        localObject1 = ((b)localObject1).a(i, 0);
        Object localObject2 = a(b, 1);
        if (localObject1 == null) {
          i = 0;
        } else {
          i = localObject1.hashCode();
        }
        if (localObject2 != null) {
          j = localObject2.hashCode();
        }
        return i ^ j;
      }
      throw new IllegalStateException("This container does not support retaining Map.Entry objects");
    }
    
    public void remove()
    {
      if (c)
      {
        a(b);
        b -= 1;
        a -= 1;
        c = false;
        return;
      }
      throw new IllegalStateException();
    }
    
    public V setValue(V paramV)
    {
      if (c) {
        return a(b, paramV);
      }
      throw new IllegalStateException("This container does not support retaining Map.Entry objects");
    }
    
    public String toString()
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append(getKey());
      localStringBuilder.append("=");
      localStringBuilder.append(getValue());
      return localStringBuilder.toString();
    }
  }
  
  final class e
    implements Collection<V>
  {
    e() {}
    
    public boolean add(V paramV)
    {
      throw new UnsupportedOperationException();
    }
    
    public boolean addAll(Collection<? extends V> paramCollection)
    {
      throw new UnsupportedOperationException();
    }
    
    public void clear()
    {
      c();
    }
    
    public boolean contains(Object paramObject)
    {
      return b(paramObject) >= 0;
    }
    
    public boolean containsAll(Collection<?> paramCollection)
    {
      paramCollection = paramCollection.iterator();
      while (paramCollection.hasNext()) {
        if (!contains(paramCollection.next())) {
          return false;
        }
      }
      return true;
    }
    
    public boolean isEmpty()
    {
      return a() == 0;
    }
    
    public Iterator<V> iterator()
    {
      return new b.a(b.this, 1);
    }
    
    public boolean remove(Object paramObject)
    {
      int i = b(paramObject);
      if (i >= 0)
      {
        a(i);
        return true;
      }
      return false;
    }
    
    public boolean removeAll(Collection<?> paramCollection)
    {
      int j = a();
      int i = 0;
      boolean bool = false;
      while (i < j)
      {
        int k = j;
        int m = i;
        if (paramCollection.contains(a(i, 1)))
        {
          a(i);
          m = i - 1;
          k = j - 1;
          bool = true;
        }
        i = m + 1;
        j = k;
      }
      return bool;
    }
    
    public boolean retainAll(Collection<?> paramCollection)
    {
      int j = a();
      int i = 0;
      boolean bool = false;
      while (i < j)
      {
        int k = j;
        int m = i;
        if (!paramCollection.contains(a(i, 1)))
        {
          a(i);
          m = i - 1;
          k = j - 1;
          bool = true;
        }
        i = m + 1;
        j = k;
      }
      return bool;
    }
    
    public int size()
    {
      return a();
    }
    
    public Object[] toArray()
    {
      return b(1);
    }
    
    public <T> T[] toArray(T[] paramArrayOfT)
    {
      return a(paramArrayOfT, 1);
    }
  }
}
