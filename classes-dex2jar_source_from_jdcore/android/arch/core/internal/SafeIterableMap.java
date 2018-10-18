package android.arch.core.internal;

import android.support.annotation.NonNull;
import android.support.annotation.RestrictTo;
import java.util.Iterator;
import java.util.Map.Entry;
import java.util.Set;
import java.util.WeakHashMap;

@RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
public class SafeIterableMap<K, V>
  implements Iterable<Map.Entry<K, V>>
{
  private c<K, V> a;
  private c<K, V> b;
  private WeakHashMap<f<K, V>, Boolean> c = new WeakHashMap();
  private int d = 0;
  
  public SafeIterableMap() {}
  
  public Iterator<Map.Entry<K, V>> descendingIterator()
  {
    b localB = new b(b, a);
    c.put(localB, Boolean.valueOf(false));
    return localB;
  }
  
  public Map.Entry<K, V> eldest()
  {
    return a;
  }
  
  public boolean equals(Object paramObject)
  {
    if (paramObject == this) {
      return true;
    }
    if (!(paramObject instanceof SafeIterableMap)) {
      return false;
    }
    Object localObject1 = (SafeIterableMap)paramObject;
    if (size() != ((SafeIterableMap)localObject1).size()) {
      return false;
    }
    paramObject = iterator();
    localObject1 = ((SafeIterableMap)localObject1).iterator();
    while ((paramObject.hasNext()) && (((Iterator)localObject1).hasNext()))
    {
      Map.Entry localEntry = (Map.Entry)paramObject.next();
      Object localObject2 = ((Iterator)localObject1).next();
      if (((localEntry == null) && (localObject2 != null)) || ((localEntry != null) && (!localEntry.equals(localObject2)))) {
        return false;
      }
    }
    return (!paramObject.hasNext()) && (!((Iterator)localObject1).hasNext());
  }
  
  protected c<K, V> get(K paramK)
  {
    for (c localC = a; localC != null; localC = c) {
      if (a.equals(paramK)) {
        return localC;
      }
    }
    return localC;
  }
  
  @NonNull
  public Iterator<Map.Entry<K, V>> iterator()
  {
    a localA = new a(a, b);
    c.put(localA, Boolean.valueOf(false));
    return localA;
  }
  
  public SafeIterableMap<K, V>.d iteratorWithAdditions()
  {
    d localD = new d(null);
    c.put(localD, Boolean.valueOf(false));
    return localD;
  }
  
  public Map.Entry<K, V> newest()
  {
    return b;
  }
  
  protected c<K, V> put(@NonNull K paramK, @NonNull V paramV)
  {
    paramK = new c(paramK, paramV);
    d += 1;
    if (b == null)
    {
      a = paramK;
      b = a;
      return paramK;
    }
    b.c = paramK;
    d = b;
    b = paramK;
    return paramK;
  }
  
  public V putIfAbsent(@NonNull K paramK, @NonNull V paramV)
  {
    c localC = get(paramK);
    if (localC != null) {
      return b;
    }
    put(paramK, paramV);
    return null;
  }
  
  public V remove(@NonNull K paramK)
  {
    paramK = get(paramK);
    if (paramK == null) {
      return null;
    }
    d -= 1;
    if (!c.isEmpty())
    {
      Iterator localIterator = c.keySet().iterator();
      while (localIterator.hasNext()) {
        ((f)localIterator.next()).a_(paramK);
      }
    }
    if (d != null) {
      d.c = c;
    } else {
      a = c;
    }
    if (c != null) {
      c.d = d;
    } else {
      b = d;
    }
    c = null;
    d = null;
    return b;
  }
  
  public int size()
  {
    return d;
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("[");
    Iterator localIterator = iterator();
    while (localIterator.hasNext())
    {
      localStringBuilder.append(((Map.Entry)localIterator.next()).toString());
      if (localIterator.hasNext()) {
        localStringBuilder.append(", ");
      }
    }
    localStringBuilder.append("]");
    return localStringBuilder.toString();
  }
  
  static class a<K, V>
    extends SafeIterableMap.e<K, V>
  {
    a(SafeIterableMap.c<K, V> paramC1, SafeIterableMap.c<K, V> paramC2)
    {
      super(paramC2);
    }
    
    SafeIterableMap.c<K, V> a(SafeIterableMap.c<K, V> paramC)
    {
      return c;
    }
    
    SafeIterableMap.c<K, V> b(SafeIterableMap.c<K, V> paramC)
    {
      return d;
    }
  }
  
  private static class b<K, V>
    extends SafeIterableMap.e<K, V>
  {
    b(SafeIterableMap.c<K, V> paramC1, SafeIterableMap.c<K, V> paramC2)
    {
      super(paramC2);
    }
    
    SafeIterableMap.c<K, V> a(SafeIterableMap.c<K, V> paramC)
    {
      return d;
    }
    
    SafeIterableMap.c<K, V> b(SafeIterableMap.c<K, V> paramC)
    {
      return c;
    }
  }
  
  static class c<K, V>
    implements Map.Entry<K, V>
  {
    @NonNull
    final K a;
    @NonNull
    final V b;
    c<K, V> c;
    c<K, V> d;
    
    c(@NonNull K paramK, @NonNull V paramV)
    {
      a = paramK;
      b = paramV;
    }
    
    public boolean equals(Object paramObject)
    {
      if (paramObject == this) {
        return true;
      }
      if (!(paramObject instanceof c)) {
        return false;
      }
      paramObject = (c)paramObject;
      return (a.equals(a)) && (b.equals(b));
    }
    
    @NonNull
    public K getKey()
    {
      return a;
    }
    
    @NonNull
    public V getValue()
    {
      return b;
    }
    
    public V setValue(V paramV)
    {
      throw new UnsupportedOperationException("An entry modification is not supported");
    }
    
    public String toString()
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append(a);
      localStringBuilder.append("=");
      localStringBuilder.append(b);
      return localStringBuilder.toString();
    }
  }
  
  private class d
    implements SafeIterableMap.f<K, V>, Iterator<Map.Entry<K, V>>
  {
    private SafeIterableMap.c<K, V> b;
    private boolean c = true;
    
    private d() {}
    
    public Map.Entry<K, V> a()
    {
      if (c)
      {
        c = false;
        b = SafeIterableMap.a(SafeIterableMap.this);
      }
      else
      {
        SafeIterableMap.c localC;
        if (b != null) {
          localC = b.c;
        } else {
          localC = null;
        }
        b = localC;
      }
      return b;
    }
    
    public void a_(@NonNull SafeIterableMap.c<K, V> paramC)
    {
      if (paramC == b)
      {
        b = b.d;
        boolean bool;
        if (b == null) {
          bool = true;
        } else {
          bool = false;
        }
        c = bool;
      }
    }
    
    public boolean hasNext()
    {
      boolean bool3 = c;
      boolean bool2 = false;
      boolean bool1 = false;
      if (bool3)
      {
        if (SafeIterableMap.a(SafeIterableMap.this) != null) {
          bool1 = true;
        }
        return bool1;
      }
      bool1 = bool2;
      if (b != null)
      {
        bool1 = bool2;
        if (b.c != null) {
          bool1 = true;
        }
      }
      return bool1;
    }
  }
  
  private static abstract class e<K, V>
    implements SafeIterableMap.f<K, V>, Iterator<Map.Entry<K, V>>
  {
    SafeIterableMap.c<K, V> a;
    SafeIterableMap.c<K, V> b;
    
    e(SafeIterableMap.c<K, V> paramC1, SafeIterableMap.c<K, V> paramC2)
    {
      a = paramC2;
      b = paramC1;
    }
    
    private SafeIterableMap.c<K, V> b()
    {
      if ((b != a) && (a != null)) {
        return a(b);
      }
      return null;
    }
    
    abstract SafeIterableMap.c<K, V> a(SafeIterableMap.c<K, V> paramC);
    
    public Map.Entry<K, V> a()
    {
      SafeIterableMap.c localC = b;
      b = b();
      return localC;
    }
    
    public void a_(@NonNull SafeIterableMap.c<K, V> paramC)
    {
      if ((a == paramC) && (paramC == b))
      {
        b = null;
        a = null;
      }
      if (a == paramC) {
        a = b(a);
      }
      if (b == paramC) {
        b = b();
      }
    }
    
    abstract SafeIterableMap.c<K, V> b(SafeIterableMap.c<K, V> paramC);
    
    public boolean hasNext()
    {
      return b != null;
    }
  }
  
  static abstract interface f<K, V>
  {
    public abstract void a_(@NonNull SafeIterableMap.c<K, V> paramC);
  }
}
