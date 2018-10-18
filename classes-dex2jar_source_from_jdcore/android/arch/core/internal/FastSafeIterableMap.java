package android.arch.core.internal;

import android.support.annotation.NonNull;
import android.support.annotation.RestrictTo;
import java.util.HashMap;
import java.util.Map.Entry;

@RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
public class FastSafeIterableMap<K, V>
  extends SafeIterableMap<K, V>
{
  private HashMap<K, SafeIterableMap.c<K, V>> a = new HashMap();
  
  public FastSafeIterableMap() {}
  
  public Map.Entry<K, V> ceil(K paramK)
  {
    if (contains(paramK)) {
      return a.get(paramK)).d;
    }
    return null;
  }
  
  public boolean contains(K paramK)
  {
    return a.containsKey(paramK);
  }
  
  protected SafeIterableMap.c<K, V> get(K paramK)
  {
    return (SafeIterableMap.c)a.get(paramK);
  }
  
  public V putIfAbsent(@NonNull K paramK, @NonNull V paramV)
  {
    SafeIterableMap.c localC = get(paramK);
    if (localC != null) {
      return b;
    }
    a.put(paramK, put(paramK, paramV));
    return null;
  }
  
  public V remove(@NonNull K paramK)
  {
    Object localObject = super.remove(paramK);
    a.remove(paramK);
    return localObject;
  }
}
