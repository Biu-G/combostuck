package com.amap.api.mapcore2d;

import java.util.ArrayList;
import java.util.HashMap;

public final class fu
{
  private HashMap<Long, fv> a = new HashMap();
  private long b = 0L;
  
  public fu() {}
  
  private static long a(int paramInt1, int paramInt2)
  {
    long l = paramInt1;
    return paramInt2 & 0xFFFF | (l & 0xFFFF) << 32;
  }
  
  public final long a(fv paramFv)
  {
    long l = 0L;
    if (paramFv != null)
    {
      if (!o) {
        return 0L;
      }
      HashMap localHashMap = a;
      int i;
      int j;
      switch (k)
      {
      default: 
        l = 0L;
        break;
      case 2: 
        i = paramFv.c();
        j = paramFv.d();
        break;
      case 1: 
      case 3: 
      case 4: 
        i = paramFv.a();
        j = paramFv.b();
      }
      l = a(i, j);
      fv localFv = (fv)localHashMap.get(Long.valueOf(l));
      if (localFv == null)
      {
        m = gf.b();
        localHashMap.put(Long.valueOf(l), paramFv);
        return 0L;
      }
      if (localFv.e() != paramFv.e())
      {
        m = gf.b();
        localHashMap.put(Long.valueOf(l), paramFv);
        return 0L;
      }
      m = m;
      localHashMap.put(Long.valueOf(l), paramFv);
      l = (gf.b() - m) / 1000L;
    }
    return l;
  }
  
  public final void a()
  {
    a.clear();
    b = 0L;
  }
  
  public final void a(ArrayList<? extends fv> paramArrayList)
  {
    if (paramArrayList != null)
    {
      long l3 = gf.b();
      if ((b > 0L) && (l3 - b < 60000L)) {
        return;
      }
      HashMap localHashMap = a;
      int n = paramArrayList.size();
      int m = 0;
      long l1 = 0L;
      int i = 0;
      fv localFv1;
      long l2;
      int j;
      int k;
      while (i < n)
      {
        localFv1 = (fv)paramArrayList.get(i);
        l2 = l1;
        if (o)
        {
          switch (k)
          {
          default: 
            break;
          case 2: 
            j = h;
            k = i;
            break;
          case 1: 
          case 3: 
          case 4: 
            j = c;
            k = d;
          }
          l1 = a(j, k);
          fv localFv2 = (fv)localHashMap.get(Long.valueOf(l1));
          l2 = l1;
          if (localFv2 != null) {
            if (localFv2.e() == localFv1.e())
            {
              m = m;
              l2 = l1;
            }
            else
            {
              m = l3;
              l2 = l1;
            }
          }
        }
        i += 1;
        l1 = l2;
      }
      localHashMap.clear();
      n = paramArrayList.size();
      i = m;
      while (i < n)
      {
        localFv1 = (fv)paramArrayList.get(i);
        l2 = l1;
        if (o)
        {
          switch (k)
          {
          default: 
            break;
          case 2: 
            j = localFv1.c();
            k = localFv1.d();
            break;
          case 1: 
          case 3: 
          case 4: 
            j = localFv1.a();
            k = localFv1.b();
          }
          l1 = a(j, k);
          localHashMap.put(Long.valueOf(l1), localFv1);
          l2 = l1;
        }
        i += 1;
        l1 = l2;
      }
      b = l3;
    }
  }
}
