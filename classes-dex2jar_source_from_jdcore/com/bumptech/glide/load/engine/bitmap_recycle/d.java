package com.bumptech.glide.load.engine.bitmap_recycle;

import android.support.annotation.Nullable;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

class d<K extends f, V>
{
  private final a<K, V> a = new a();
  private final Map<K, a<K, V>> b = new HashMap();
  
  d() {}
  
  private void a(a<K, V> paramA)
  {
    d(paramA);
    c = a;
    b = a.b;
    c(paramA);
  }
  
  private void b(a<K, V> paramA)
  {
    d(paramA);
    c = a.c;
    b = a;
    c(paramA);
  }
  
  private static <K, V> void c(a<K, V> paramA)
  {
    b.c = paramA;
    c.b = paramA;
  }
  
  private static <K, V> void d(a<K, V> paramA)
  {
    c.b = b;
    b.c = c;
  }
  
  @Nullable
  public V a()
  {
    for (a localA = a.c; !localA.equals(a); localA = c)
    {
      Object localObject = localA.a();
      if (localObject != null) {
        return localObject;
      }
      d(localA);
      b.remove(a);
      ((f)a).a();
    }
    return null;
  }
  
  @Nullable
  public V a(K paramK)
  {
    a localA = (a)b.get(paramK);
    if (localA == null)
    {
      localA = new a(paramK);
      b.put(paramK, localA);
      paramK = localA;
    }
    else
    {
      paramK.a();
      paramK = localA;
    }
    a(paramK);
    return paramK.a();
  }
  
  public void a(K paramK, V paramV)
  {
    a localA = (a)b.get(paramK);
    if (localA == null)
    {
      localA = new a(paramK);
      b(localA);
      b.put(paramK, localA);
      paramK = localA;
    }
    else
    {
      paramK.a();
      paramK = localA;
    }
    paramK.a(paramV);
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder("GroupedLinkedMap( ");
    a localA = a.b;
    int i = 0;
    while (!localA.equals(a))
    {
      i = 1;
      localStringBuilder.append('{');
      localStringBuilder.append(a);
      localStringBuilder.append(':');
      localStringBuilder.append(localA.b());
      localStringBuilder.append("}, ");
      localA = b;
    }
    if (i != 0) {
      localStringBuilder.delete(localStringBuilder.length() - 2, localStringBuilder.length());
    }
    localStringBuilder.append(" )");
    return localStringBuilder.toString();
  }
  
  private static class a<K, V>
  {
    final K a;
    a<K, V> b = this;
    a<K, V> c = this;
    private List<V> d;
    
    a()
    {
      this(null);
    }
    
    a(K paramK)
    {
      a = paramK;
    }
    
    @Nullable
    public V a()
    {
      int i = b();
      if (i > 0) {
        return d.remove(i - 1);
      }
      return null;
    }
    
    public void a(V paramV)
    {
      if (d == null) {
        d = new ArrayList();
      }
      d.add(paramV);
    }
    
    public int b()
    {
      if (d != null) {
        return d.size();
      }
      return 0;
    }
  }
}
