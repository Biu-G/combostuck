package com.amap.api.mapcore2d;

import java.util.ArrayList;
import java.util.LinkedList;

class br
  extends bo<bs>
{
  br() {}
  
  protected ArrayList<bs> b(int paramInt, boolean paramBoolean)
  {
    for (;;)
    {
      Object localObject1;
      int n;
      int i1;
      int m;
      try
      {
        localObject1 = a;
        if (localObject1 == null) {
          return null;
        }
      }
      finally {}
      try
      {
        n = a.size();
        i1 = paramInt;
        if (paramInt > n) {
          i1 = n;
        }
        localObject1 = new ArrayList(i1);
        paramInt = 0;
        m = 0;
        if (paramInt < n)
        {
          bs localBs = (bs)a.get(paramInt);
          int k;
          if (localBs == null)
          {
            k = n;
          }
          else
          {
            int i2 = a;
            int j;
            int i;
            if (paramBoolean)
            {
              k = n;
              j = paramInt;
              i = m;
              if (i2 == 0)
              {
                ((ArrayList)localObject1).add(localBs);
                a.remove(paramInt);
                k = n - 1;
                j = paramInt - 1;
                i = m + 1;
              }
            }
            else
            {
              k = n;
              j = paramInt;
              i = m;
              if (i2 < 0)
              {
                ((ArrayList)localObject1).add(localBs);
                a.remove(paramInt);
                k = n - 1;
                j = paramInt - 1;
                i = m + 1;
              }
            }
            paramInt = j;
            m = i;
            if (i >= i1) {
              continue;
            }
          }
          paramInt += 1;
          n = k;
          continue;
        }
        return localObject1;
      }
      catch (Throwable localThrowable) {}
    }
    return null;
  }
}
