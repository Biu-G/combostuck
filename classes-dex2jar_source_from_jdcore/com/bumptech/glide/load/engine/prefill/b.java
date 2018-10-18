package com.bumptech.glide.load.engine.prefill;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

final class b
{
  private final Map<PreFillType, Integer> a;
  private final List<PreFillType> b;
  private int c;
  private int d;
  
  public b(Map<PreFillType, Integer> paramMap)
  {
    a = paramMap;
    b = new ArrayList(paramMap.keySet());
    paramMap = paramMap.values().iterator();
    while (paramMap.hasNext())
    {
      Integer localInteger = (Integer)paramMap.next();
      c += localInteger.intValue();
    }
  }
  
  public PreFillType a()
  {
    PreFillType localPreFillType = (PreFillType)b.get(d);
    Integer localInteger = (Integer)a.get(localPreFillType);
    if (localInteger.intValue() == 1)
    {
      a.remove(localPreFillType);
      b.remove(d);
    }
    else
    {
      a.put(localPreFillType, Integer.valueOf(localInteger.intValue() - 1));
    }
    c -= 1;
    int i;
    if (b.isEmpty()) {
      i = 0;
    } else {
      i = (d + 1) % b.size();
    }
    d = i;
    return localPreFillType;
  }
  
  public boolean b()
  {
    return c == 0;
  }
}
