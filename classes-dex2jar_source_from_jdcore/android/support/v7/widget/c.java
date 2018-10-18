package android.support.v7.widget;

import android.support.v4.util.Pools.Pool;
import android.support.v4.util.Pools.SimplePool;
import java.util.ArrayList;
import java.util.List;

class c
  implements v.a
{
  final ArrayList<b> a = new ArrayList();
  final ArrayList<b> b = new ArrayList();
  final a c;
  Runnable d;
  final boolean e;
  final v f;
  private Pools.Pool<b> g = new Pools.SimplePool(30);
  private int h = 0;
  
  c(a paramA)
  {
    this(paramA, false);
  }
  
  c(a paramA, boolean paramBoolean)
  {
    c = paramA;
    e = paramBoolean;
    f = new v(this);
  }
  
  private void b(b paramB)
  {
    g(paramB);
  }
  
  private void c(b paramB)
  {
    int i2 = b;
    int m = b + d;
    int i = b;
    int n = 0;
    int j = -1;
    while (i < m)
    {
      int k;
      if ((c.a(i) == null) && (!d(i)))
      {
        if (j == 1)
        {
          g(a(2, i2, n, null));
          j = 1;
        }
        else
        {
          j = 0;
        }
        int i1 = 0;
        k = j;
        j = i1;
      }
      else
      {
        if (j == 0)
        {
          e(a(2, i2, n, null));
          k = 1;
        }
        else
        {
          k = 0;
        }
        j = 1;
      }
      if (k != 0)
      {
        i -= n;
        m -= n;
        k = 1;
      }
      else
      {
        k = n + 1;
      }
      i += 1;
      n = k;
    }
    b localB = paramB;
    if (n != d)
    {
      a(paramB);
      localB = a(2, i2, n, null);
    }
    if (j == 0)
    {
      e(localB);
      return;
    }
    g(localB);
  }
  
  private int d(int paramInt1, int paramInt2)
  {
    int i = b.size() - 1;
    b localB;
    for (int j = paramInt1; i >= 0; j = paramInt1)
    {
      localB = (b)b.get(i);
      if (a == 8)
      {
        int k;
        if (b < d)
        {
          paramInt1 = b;
          k = d;
        }
        else
        {
          paramInt1 = d;
          k = b;
        }
        if ((j >= paramInt1) && (j <= k))
        {
          if (paramInt1 == b)
          {
            if (paramInt2 == 1) {
              d += 1;
            } else if (paramInt2 == 2) {
              d -= 1;
            }
            paramInt1 = j + 1;
          }
          else
          {
            if (paramInt2 == 1) {
              b += 1;
            } else if (paramInt2 == 2) {
              b -= 1;
            }
            paramInt1 = j - 1;
          }
        }
        else
        {
          paramInt1 = j;
          if (j < b) {
            if (paramInt2 == 1)
            {
              b += 1;
              d += 1;
              paramInt1 = j;
            }
            else
            {
              paramInt1 = j;
              if (paramInt2 == 2)
              {
                b -= 1;
                d -= 1;
                paramInt1 = j;
              }
            }
          }
        }
      }
      else if (b <= j)
      {
        if (a == 1)
        {
          paramInt1 = j - d;
        }
        else
        {
          paramInt1 = j;
          if (a == 2) {
            paramInt1 = j + d;
          }
        }
      }
      else if (paramInt2 == 1)
      {
        b += 1;
        paramInt1 = j;
      }
      else
      {
        paramInt1 = j;
        if (paramInt2 == 2)
        {
          b -= 1;
          paramInt1 = j;
        }
      }
      i -= 1;
    }
    paramInt1 = b.size() - 1;
    while (paramInt1 >= 0)
    {
      localB = (b)b.get(paramInt1);
      if (a == 8)
      {
        if ((d == b) || (d < 0))
        {
          b.remove(paramInt1);
          a(localB);
        }
      }
      else if (d <= 0)
      {
        b.remove(paramInt1);
        a(localB);
      }
      paramInt1 -= 1;
    }
    return j;
  }
  
  private void d(b paramB)
  {
    int k = b;
    int i2 = b;
    int i3 = d;
    int i = b;
    int i1 = -1;
    int j = 0;
    while (i < i2 + i3)
    {
      int n;
      int m;
      if ((c.a(i) == null) && (!d(i)))
      {
        n = j;
        m = k;
        if (i1 == 1)
        {
          g(a(4, k, j, c));
          m = i;
          n = 0;
        }
        k = 0;
        j = n;
        n = k;
        k = m;
      }
      else
      {
        m = j;
        n = k;
        if (i1 == 0)
        {
          e(a(4, k, j, c));
          n = i;
          m = 0;
        }
        j = 1;
        k = n;
        n = j;
        j = m;
      }
      j += 1;
      i += 1;
      i1 = n;
    }
    Object localObject = paramB;
    if (j != d)
    {
      localObject = c;
      a(paramB);
      localObject = a(4, k, j, localObject);
    }
    if (i1 == 0)
    {
      e((b)localObject);
      return;
    }
    g((b)localObject);
  }
  
  private boolean d(int paramInt)
  {
    int k = b.size();
    int i = 0;
    while (i < k)
    {
      b localB = (b)b.get(i);
      if (a == 8)
      {
        if (a(d, i + 1) == paramInt) {
          return true;
        }
      }
      else if (a == 1)
      {
        int m = b;
        int n = d;
        int j = b;
        while (j < m + n)
        {
          if (a(j, i + 1) == paramInt) {
            return true;
          }
          j += 1;
        }
      }
      i += 1;
    }
    return false;
  }
  
  private void e(b paramB)
  {
    if ((a != 1) && (a != 8))
    {
      int n = d(b, a);
      int i = b;
      int j = a;
      int k;
      if (j != 2)
      {
        if (j == 4)
        {
          k = 1;
        }
        else
        {
          localObject = new StringBuilder();
          ((StringBuilder)localObject).append("op should be remove or update.");
          ((StringBuilder)localObject).append(paramB);
          throw new IllegalArgumentException(((StringBuilder)localObject).toString());
        }
      }
      else {
        k = 0;
      }
      int m = 1;
      for (int i1 = 1; m < d; i1 = j)
      {
        int i2 = d(b + k * m, a);
        j = a;
        if (j != 2)
        {
          if (j != 4) {}
          while (i2 != n + 1)
          {
            j = 0;
            break;
          }
        }
        for (;;)
        {
          j = 1;
          break label176;
          if (i2 != n) {
            break;
          }
        }
        label176:
        if (j != 0)
        {
          j = i1 + 1;
        }
        else
        {
          localObject = a(a, n, i1, c);
          a((b)localObject, i);
          a((b)localObject);
          j = i;
          if (a == 4) {
            j = i + i1;
          }
          n = i2;
          i1 = 1;
          i = j;
          j = i1;
        }
        m += 1;
      }
      Object localObject = c;
      a(paramB);
      if (i1 > 0)
      {
        paramB = a(a, n, i1, localObject);
        a(paramB, i);
        a(paramB);
      }
      return;
    }
    throw new IllegalArgumentException("should not dispatch add or move for pre layout");
  }
  
  private void f(b paramB)
  {
    g(paramB);
  }
  
  private void g(b paramB)
  {
    b.add(paramB);
    int i = a;
    if (i != 4)
    {
      if (i != 8)
      {
        switch (i)
        {
        default: 
          StringBuilder localStringBuilder = new StringBuilder();
          localStringBuilder.append("Unknown update op type for ");
          localStringBuilder.append(paramB);
          throw new IllegalArgumentException(localStringBuilder.toString());
        case 2: 
          c.b(b, d);
          return;
        }
        c.c(b, d);
        return;
      }
      c.d(b, d);
      return;
    }
    c.a(b, d, c);
  }
  
  int a(int paramInt1, int paramInt2)
  {
    int k = b.size();
    int j = paramInt2;
    for (paramInt2 = paramInt1; j < k; paramInt2 = paramInt1)
    {
      b localB = (b)b.get(j);
      if (a == 8)
      {
        if (b == paramInt2)
        {
          paramInt1 = d;
        }
        else
        {
          int i = paramInt2;
          if (b < paramInt2) {
            i = paramInt2 - 1;
          }
          paramInt1 = i;
          if (d <= i) {
            paramInt1 = i + 1;
          }
        }
      }
      else
      {
        paramInt1 = paramInt2;
        if (b <= paramInt2) {
          if (a == 2)
          {
            if (paramInt2 < b + d) {
              return -1;
            }
            paramInt1 = paramInt2 - d;
          }
          else
          {
            paramInt1 = paramInt2;
            if (a == 1) {
              paramInt1 = paramInt2 + d;
            }
          }
        }
      }
      j += 1;
    }
    return paramInt2;
  }
  
  public b a(int paramInt1, int paramInt2, int paramInt3, Object paramObject)
  {
    b localB = (b)g.acquire();
    if (localB == null) {
      return new b(paramInt1, paramInt2, paramInt3, paramObject);
    }
    a = paramInt1;
    b = paramInt2;
    d = paramInt3;
    c = paramObject;
    return localB;
  }
  
  void a()
  {
    a(a);
    a(b);
    h = 0;
  }
  
  public void a(b paramB)
  {
    if (!e)
    {
      c = null;
      g.release(paramB);
    }
  }
  
  void a(b paramB, int paramInt)
  {
    c.a(paramB);
    int i = a;
    if (i != 2)
    {
      if (i == 4)
      {
        c.a(paramInt, d, c);
        return;
      }
      throw new IllegalArgumentException("only remove and update ops can be dispatched in first pass");
    }
    c.a(paramInt, d);
  }
  
  void a(List<b> paramList)
  {
    int j = paramList.size();
    int i = 0;
    while (i < j)
    {
      a((b)paramList.get(i));
      i += 1;
    }
    paramList.clear();
  }
  
  boolean a(int paramInt)
  {
    return (paramInt & h) != 0;
  }
  
  boolean a(int paramInt1, int paramInt2, int paramInt3)
  {
    boolean bool = false;
    if (paramInt1 == paramInt2) {
      return false;
    }
    if (paramInt3 == 1)
    {
      a.add(a(8, paramInt1, paramInt2, null));
      h |= 0x8;
      if (a.size() == 1) {
        bool = true;
      }
      return bool;
    }
    throw new IllegalArgumentException("Moving more than 1 item is not supported yet");
  }
  
  boolean a(int paramInt1, int paramInt2, Object paramObject)
  {
    boolean bool = false;
    if (paramInt2 < 1) {
      return false;
    }
    a.add(a(4, paramInt1, paramInt2, paramObject));
    h |= 0x4;
    if (a.size() == 1) {
      bool = true;
    }
    return bool;
  }
  
  int b(int paramInt)
  {
    return a(paramInt, 0);
  }
  
  void b()
  {
    f.a(a);
    int j = a.size();
    int i = 0;
    while (i < j)
    {
      b localB = (b)a.get(i);
      int k = a;
      if (k != 4)
      {
        if (k != 8) {
          switch (k)
          {
          default: 
            break;
          case 2: 
            c(localB);
            break;
          case 1: 
            f(localB);
            break;
          }
        } else {
          b(localB);
        }
      }
      else {
        d(localB);
      }
      if (d != null) {
        d.run();
      }
      i += 1;
    }
    a.clear();
  }
  
  boolean b(int paramInt1, int paramInt2)
  {
    boolean bool = false;
    if (paramInt2 < 1) {
      return false;
    }
    a.add(a(1, paramInt1, paramInt2, null));
    h |= 0x1;
    if (a.size() == 1) {
      bool = true;
    }
    return bool;
  }
  
  public int c(int paramInt)
  {
    int m = a.size();
    int k = 0;
    for (int i = paramInt; k < m; i = paramInt)
    {
      b localB = (b)a.get(k);
      paramInt = a;
      if (paramInt != 8)
      {
        switch (paramInt)
        {
        default: 
          paramInt = i;
          break;
        case 2: 
          paramInt = i;
          if (b > i) {
            break;
          }
          if (b + d > i) {
            return -1;
          }
          paramInt = i - d;
          break;
        case 1: 
          paramInt = i;
          if (b > i) {
            break;
          }
          paramInt = i + d;
          break;
        }
      }
      else if (b == i)
      {
        paramInt = d;
      }
      else
      {
        int j = i;
        if (b < i) {
          j = i - 1;
        }
        paramInt = j;
        if (d <= j) {
          paramInt = j + 1;
        }
      }
      k += 1;
    }
    return i;
  }
  
  void c()
  {
    int j = b.size();
    int i = 0;
    while (i < j)
    {
      c.b((b)b.get(i));
      i += 1;
    }
    a(b);
    h = 0;
  }
  
  boolean c(int paramInt1, int paramInt2)
  {
    boolean bool = false;
    if (paramInt2 < 1) {
      return false;
    }
    a.add(a(2, paramInt1, paramInt2, null));
    h |= 0x2;
    if (a.size() == 1) {
      bool = true;
    }
    return bool;
  }
  
  boolean d()
  {
    return a.size() > 0;
  }
  
  void e()
  {
    c();
    int j = a.size();
    int i = 0;
    while (i < j)
    {
      b localB = (b)a.get(i);
      int k = a;
      if (k != 4)
      {
        if (k != 8)
        {
          switch (k)
          {
          default: 
            break;
          case 2: 
            c.b(localB);
            c.a(b, d);
            break;
          case 1: 
            c.b(localB);
            c.c(b, d);
            break;
          }
        }
        else
        {
          c.b(localB);
          c.d(b, d);
        }
      }
      else
      {
        c.b(localB);
        c.a(b, d, c);
      }
      if (d != null) {
        d.run();
      }
      i += 1;
    }
    a(a);
    h = 0;
  }
  
  boolean f()
  {
    return (!b.isEmpty()) && (!a.isEmpty());
  }
  
  static abstract interface a
  {
    public abstract RecyclerView.ViewHolder a(int paramInt);
    
    public abstract void a(int paramInt1, int paramInt2);
    
    public abstract void a(int paramInt1, int paramInt2, Object paramObject);
    
    public abstract void a(c.b paramB);
    
    public abstract void b(int paramInt1, int paramInt2);
    
    public abstract void b(c.b paramB);
    
    public abstract void c(int paramInt1, int paramInt2);
    
    public abstract void d(int paramInt1, int paramInt2);
  }
  
  static class b
  {
    int a;
    int b;
    Object c;
    int d;
    
    b(int paramInt1, int paramInt2, int paramInt3, Object paramObject)
    {
      a = paramInt1;
      b = paramInt2;
      d = paramInt3;
      c = paramObject;
    }
    
    String a()
    {
      int i = a;
      if (i != 4)
      {
        if (i != 8)
        {
          switch (i)
          {
          default: 
            return "??";
          case 2: 
            return "rm";
          }
          return "add";
        }
        return "mv";
      }
      return "up";
    }
    
    public boolean equals(Object paramObject)
    {
      if (this == paramObject) {
        return true;
      }
      if (paramObject != null)
      {
        if (getClass() != paramObject.getClass()) {
          return false;
        }
        paramObject = (b)paramObject;
        if (a != a) {
          return false;
        }
        if ((a == 8) && (Math.abs(d - b) == 1) && (d == b) && (b == d)) {
          return true;
        }
        if (d != d) {
          return false;
        }
        if (b != b) {
          return false;
        }
        if (c != null)
        {
          if (!c.equals(c)) {
            return false;
          }
        }
        else if (c != null) {
          return false;
        }
        return true;
      }
      return false;
    }
    
    public int hashCode()
    {
      return (a * 31 + b) * 31 + d;
    }
    
    public String toString()
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append(Integer.toHexString(System.identityHashCode(this)));
      localStringBuilder.append("[");
      localStringBuilder.append(a());
      localStringBuilder.append(",s:");
      localStringBuilder.append(b);
      localStringBuilder.append("c:");
      localStringBuilder.append(d);
      localStringBuilder.append(",p:");
      localStringBuilder.append(c);
      localStringBuilder.append("]");
      return localStringBuilder.toString();
    }
  }
}
