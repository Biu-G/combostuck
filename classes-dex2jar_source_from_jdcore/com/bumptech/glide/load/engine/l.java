package com.bumptech.glide.load.engine;

import com.bumptech.glide.load.Key;
import java.util.HashMap;
import java.util.Map;

final class l
{
  private final Map<Key, g<?>> a = new HashMap();
  private final Map<Key, g<?>> b = new HashMap();
  
  l() {}
  
  private Map<Key, g<?>> a(boolean paramBoolean)
  {
    if (paramBoolean) {
      return b;
    }
    return a;
  }
  
  g<?> a(Key paramKey, boolean paramBoolean)
  {
    return (g)a(paramBoolean).get(paramKey);
  }
  
  void a(Key paramKey, g<?> paramG)
  {
    a(paramG.a()).put(paramKey, paramG);
  }
  
  void b(Key paramKey, g<?> paramG)
  {
    Map localMap = a(paramG.a());
    if (paramG.equals(localMap.get(paramKey))) {
      localMap.remove(paramKey);
    }
  }
}
