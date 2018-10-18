package android.support.v7.widget;

import java.util.List;

class v
{
  final a a;
  
  v(a paramA)
  {
    a = paramA;
  }
  
  private void a(List<c.b> paramList, int paramInt1, int paramInt2)
  {
    c.b localB1 = (c.b)paramList.get(paramInt1);
    c.b localB2 = (c.b)paramList.get(paramInt2);
    int i = a;
    if (i != 4)
    {
      switch (i)
      {
      default: 
        return;
      case 2: 
        a(paramList, paramInt1, localB1, paramInt2, localB2);
        return;
      }
      c(paramList, paramInt1, localB1, paramInt2, localB2);
      return;
    }
    b(paramList, paramInt1, localB1, paramInt2, localB2);
  }
  
  private int b(List<c.b> paramList)
  {
    int i = paramList.size() - 1;
    int k;
    for (int j = 0; i >= 0; j = k)
    {
      if (geta == 8)
      {
        k = j;
        if (j != 0) {
          return i;
        }
      }
      else
      {
        k = 1;
      }
      i -= 1;
    }
    return -1;
  }
  
  private void c(List<c.b> paramList, int paramInt1, c.b paramB1, int paramInt2, c.b paramB2)
  {
    int i;
    if (d < b) {
      i = -1;
    } else {
      i = 0;
    }
    int j = i;
    if (b < b) {
      j = i + 1;
    }
    if (b <= b) {
      b += d;
    }
    if (b <= d) {
      d += d;
    }
    b += j;
    paramList.set(paramInt1, paramB2);
    paramList.set(paramInt2, paramB1);
  }
  
  void a(List<c.b> paramList)
  {
    for (;;)
    {
      int i = b(paramList);
      if (i == -1) {
        break;
      }
      a(paramList, i, i + 1);
    }
  }
  
  void a(List<c.b> paramList, int paramInt1, c.b paramB1, int paramInt2, c.b paramB2)
  {
    int i = b;
    int k = d;
    int j = 0;
    if (i < k) {
      if ((b != b) || (d != d - b)) {}
    }
    for (i = 0;; i = 1)
    {
      j = 1;
      break label106;
      i = 0;
      break label106;
      if ((b != d + 1) || (d != b - d)) {
        break;
      }
    }
    i = 1;
    label106:
    if (d < b)
    {
      b -= 1;
    }
    else if (d < b + d)
    {
      d -= 1;
      a = 2;
      d = 1;
      if (d == 0)
      {
        paramList.remove(paramInt2);
        a.a(paramB2);
      }
      return;
    }
    k = b;
    int m = b;
    c.b localB = null;
    if (k <= m)
    {
      b += 1;
    }
    else if (b < b + d)
    {
      k = b;
      m = d;
      int n = b;
      localB = a.a(2, b + 1, k + m - n, null);
      d = (b - b);
    }
    if (j != 0)
    {
      paramList.set(paramInt1, paramB2);
      paramList.remove(paramInt2);
      a.a(paramB1);
      return;
    }
    if (i != 0)
    {
      if (localB != null)
      {
        if (b > b) {
          b -= d;
        }
        if (d > b) {
          d -= d;
        }
      }
      if (b > b) {
        b -= d;
      }
      if (d > b) {
        d -= d;
      }
    }
    else
    {
      if (localB != null)
      {
        if (b >= b) {
          b -= d;
        }
        if (d >= b) {
          d -= d;
        }
      }
      if (b >= b) {
        b -= d;
      }
      if (d >= b) {
        d -= d;
      }
    }
    paramList.set(paramInt1, paramB2);
    if (b != d) {
      paramList.set(paramInt2, paramB1);
    } else {
      paramList.remove(paramInt2);
    }
    if (localB != null) {
      paramList.add(paramInt1, localB);
    }
  }
  
  void b(List<c.b> paramList, int paramInt1, c.b paramB1, int paramInt2, c.b paramB2)
  {
    int i = d;
    int j = b;
    c.b localB2 = null;
    if (i < j)
    {
      b -= 1;
    }
    else if (d < b + d)
    {
      d -= 1;
      localB1 = a.a(4, b, 1, c);
      break label96;
    }
    c.b localB1 = null;
    label96:
    if (b <= b)
    {
      b += 1;
    }
    else if (b < b + d)
    {
      i = b + d - b;
      localB2 = a.a(4, b + 1, i, c);
      d -= i;
    }
    paramList.set(paramInt2, paramB1);
    if (d > 0)
    {
      paramList.set(paramInt1, paramB2);
    }
    else
    {
      paramList.remove(paramInt1);
      a.a(paramB2);
    }
    if (localB1 != null) {
      paramList.add(paramInt1, localB1);
    }
    if (localB2 != null) {
      paramList.add(paramInt1, localB2);
    }
  }
  
  static abstract interface a
  {
    public abstract c.b a(int paramInt1, int paramInt2, int paramInt3, Object paramObject);
    
    public abstract void a(c.b paramB);
  }
}
