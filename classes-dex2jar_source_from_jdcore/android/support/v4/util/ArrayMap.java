package android.support.v4.util;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public class ArrayMap<K, V>
  extends SimpleArrayMap<K, V>
  implements Map<K, V>
{
  @Nullable
  b<K, V> a;
  
  public ArrayMap() {}
  
  public ArrayMap(int paramInt)
  {
    super(paramInt);
  }
  
  public ArrayMap(SimpleArrayMap paramSimpleArrayMap)
  {
    super(paramSimpleArrayMap);
  }
  
  private b<K, V> b()
  {
    if (a == null) {
      a = new b()
      {
        protected int a()
        {
          return h;
        }
        
        protected int a(Object paramAnonymousObject)
        {
          return indexOfKey(paramAnonymousObject);
        }
        
        protected Object a(int paramAnonymousInt1, int paramAnonymousInt2)
        {
          return g[((paramAnonymousInt1 << 1) + paramAnonymousInt2)];
        }
        
        protected V a(int paramAnonymousInt, V paramAnonymousV)
        {
          return setValueAt(paramAnonymousInt, paramAnonymousV);
        }
        
        protected void a(int paramAnonymousInt)
        {
          removeAt(paramAnonymousInt);
        }
        
        protected void a(K paramAnonymousK, V paramAnonymousV)
        {
          put(paramAnonymousK, paramAnonymousV);
        }
        
        protected int b(Object paramAnonymousObject)
        {
          return ArrayMap.this.a(paramAnonymousObject);
        }
        
        protected Map<K, V> b()
        {
          return ArrayMap.this;
        }
        
        protected void c()
        {
          clear();
        }
      };
    }
    return a;
  }
  
  public boolean containsAll(@NonNull Collection<?> paramCollection)
  {
    return b.a(this, paramCollection);
  }
  
  public Set<Map.Entry<K, V>> entrySet()
  {
    return b().d();
  }
  
  public Set<K> keySet()
  {
    return b().e();
  }
  
  public void putAll(Map<? extends K, ? extends V> paramMap)
  {
    ensureCapacity(h + paramMap.size());
    paramMap = paramMap.entrySet().iterator();
    while (paramMap.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)paramMap.next();
      put(localEntry.getKey(), localEntry.getValue());
    }
  }
  
  public boolean removeAll(@NonNull Collection<?> paramCollection)
  {
    return b.b(this, paramCollection);
  }
  
  public boolean retainAll(@NonNull Collection<?> paramCollection)
  {
    return b.c(this, paramCollection);
  }
  
  public Collection<V> values()
  {
    return b().f();
  }
}
