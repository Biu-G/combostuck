package com.amap.api.mapcore2d;

import com.amap.api.maps2d.AMapException;
import com.amap.api.maps2d.MapsInitializer;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

class bv
  extends f<bs, bs>
  implements cc
{
  private an c;
  private am d = new am();
  
  public bv(az paramAz, an paramAn)
  {
    super(paramAz);
    c = paramAn;
    a = new br();
    b.c.a(this);
    a();
  }
  
  private ArrayList<bs> a(ArrayList<bs> paramArrayList, an paramAn, float paramFloat, boolean paramBoolean)
  {
    ArrayList localArrayList = new ArrayList();
    int j;
    int i;
    if (paramArrayList != null)
    {
      if (paramAn == null) {
        return null;
      }
      if (!paramAn.a()) {
        return null;
      }
      if (p == null) {
        return null;
      }
      p.clear();
      if (paramFloat <= c)
      {
        if (paramFloat < d) {
          return null;
        }
        j = paramArrayList.size();
        if (j <= 0) {
          return null;
        }
        i = 0;
      }
    }
    for (;;)
    {
      if (i < j) {}
      try
      {
        bs localBs1 = (bs)paramArrayList.get(i);
        if (localBs1 != null)
        {
          int k = n.a(localBs1.c());
          bs localBs2 = new bs(b, c, d, l);
          h = k;
          g = g;
          p.add(localBs2);
          if ((a(localBs2)) && (!paramBoolean) && (!d.contains(localBs2)))
          {
            if (!f) {
              a = -1;
            }
            localArrayList.add(localBs2);
          }
        }
        i += 1;
      }
      catch (Throwable paramArrayList) {}
    }
    return localArrayList;
    return null;
    return null;
    return localArrayList;
  }
  
  private void a(ArrayList<bs> paramArrayList, boolean paramBoolean)
  {
    if (a != null)
    {
      if (paramArrayList == null) {
        return;
      }
      if (paramArrayList.size() != 0) {
        a.a(paramArrayList, paramBoolean);
      }
      return;
    }
  }
  
  private boolean a(bs paramBs)
  {
    return (paramBs == null) || (h < 0);
  }
  
  private void c(ArrayList<bs> paramArrayList)
  {
    if (paramArrayList != null)
    {
      if (d == null) {
        return;
      }
      int j = paramArrayList.size();
      if (j == 0) {
        return;
      }
      int i = 0;
      while (i < j)
      {
        d.a((bs)paramArrayList.get(i));
        i += 1;
      }
      return;
    }
  }
  
  private boolean j()
  {
    if (b != null)
    {
      if (b.e == null) {
        return false;
      }
      if (b.e.a == null) {
        return false;
      }
      if (b.e.a.size() <= 0) {
        return false;
      }
      return c.a();
    }
    return false;
  }
  
  protected ArrayList<bs> a(ArrayList<bs> paramArrayList)
    throws AMapException
  {
    ArrayList localArrayList = null;
    if (paramArrayList != null)
    {
      if (paramArrayList.size() == 0) {
        return null;
      }
      if ((b != null) && (b.e != null))
      {
        if (b.e.a == null) {
          return null;
        }
        a(paramArrayList);
        if (paramArrayList.size() == 0) {
          return null;
        }
        if ((c.j != null) || (c.k != null))
        {
          bw localBw = new bw(paramArrayList, c.k);
          localBw.a(c);
          localArrayList = (ArrayList)localBw.a();
          localBw.a(null);
        }
        c(paramArrayList);
        if (b != null)
        {
          if (b.e == null) {
            return localArrayList;
          }
          b.e.b();
          return localArrayList;
        }
        return localArrayList;
      }
      return null;
    }
    return null;
  }
  
  public void a(List<bs> paramList)
  {
    if (paramList == null) {
      return;
    }
    int j = paramList.size();
    if (j == 0) {
      return;
    }
    int i = 0;
    while (i < j)
    {
      int k = j;
      int m = i;
      if (!d.b((bs)paramList.get(i)))
      {
        paramList.remove(i);
        m = i - 1;
        k = j - 1;
      }
      i = m + 1;
      j = k;
    }
  }
  
  public void a(boolean paramBoolean1, boolean paramBoolean2)
  {
    try
    {
      if (!j()) {
        return;
      }
      ArrayList localArrayList1 = b.h.a(b.h.l, b.h.b(), b.c.c(), b.c.d());
      if (localArrayList1 == null) {
        return;
      }
      if (localArrayList1.size() <= 0) {
        return;
      }
      ArrayList localArrayList2 = a(localArrayList1, c, b.c.e(), paramBoolean2);
      if (localArrayList2 != null)
      {
        a(localArrayList2, true);
        localArrayList2.clear();
      }
      localArrayList1.clear();
      b.c.g().invalidate();
      return;
    }
    catch (Throwable localThrowable)
    {
      localThrowable.printStackTrace();
    }
  }
  
  protected ArrayList<bs> b(ArrayList<bs> paramArrayList)
  {
    if (paramArrayList == null) {
      return null;
    }
    int k = paramArrayList.size();
    if (k == 0) {
      return null;
    }
    int j = 0;
    Object localObject1 = null;
    int i = -1;
    Object localObject3;
    for (;;)
    {
      if (j < k) {
        localObject3 = localObject1;
      }
      try
      {
        bs localBs1 = (bs)paramArrayList.get(j);
        if (localBs1 != null)
        {
          localObject3 = localObject1;
          if (b == null) {
            break label386;
          }
          localObject3 = localObject1;
          if (b.e == null) {
            break label386;
          }
          localObject3 = localObject1;
          if (b.e.a == null) {
            return null;
          }
          localObject3 = localObject1;
          b.e.a.size();
          localObject3 = localObject1;
          boolean bool = c.f;
          if (bool)
          {
            try
            {
              if ((MapsInitializer.getUpdateDataActiveEnable()) && (q.b()))
              {
                i = -1;
              }
              else
              {
                int m = c.o.a(localBs1);
                i = m;
              }
            }
            catch (Throwable localThrowable)
            {
              localObject3 = localObject1;
              localThrowable.printStackTrace();
            }
            Object localObject2;
            if (i >= 0)
            {
              localObject3 = localObject1;
              paramArrayList.remove(j);
              k -= 1;
              j -= 1;
              localObject3 = localObject1;
              localObject2 = c.p;
              if (localObject2 != null)
              {
                localObject3 = localObject1;
                try
                {
                  localObject3 = ((bn)localObject2).iterator();
                  while (((Iterator)localObject3).hasNext())
                  {
                    bs localBs2 = (bs)((Iterator)localObject3).next();
                    if ((localBs2 != null) && (localBs2.equals(localBs1)))
                    {
                      h = i;
                      b.e.b();
                    }
                  }
                }
                finally
                {
                  localObject3 = localObject1;
                }
              }
            }
            else
            {
              localObject2 = localObject1;
              if (localObject1 == null)
              {
                localObject3 = localObject1;
                localObject2 = new ArrayList();
              }
              localObject3 = localObject2;
              localObject1 = new bs(localBs1);
              localObject3 = localObject2;
              a = -1;
              localObject3 = localObject2;
              ((ArrayList)localObject2).add(localObject1);
              localObject1 = localObject2;
            }
          }
        }
        j += 1;
        continue;
        label386:
        return null;
      }
      catch (Throwable paramArrayList) {}
    }
    return localObject1;
    return localObject3;
  }
  
  public void b()
  {
    super.b();
    d.clear();
    if ((b != null) && (b.c != null)) {
      b.c.b(this);
    }
    b = null;
  }
  
  protected int f()
  {
    return 4;
  }
  
  protected int g()
  {
    return 1;
  }
  
  public void i()
  {
    a(false, false);
  }
}
