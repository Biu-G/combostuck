package android.support.v7.widget;

import android.view.View;
import android.view.ViewGroup.LayoutParams;
import java.util.ArrayList;
import java.util.List;

class q
{
  final b a;
  final a b;
  final List<View> c;
  
  q(b paramB)
  {
    a = paramB;
    b = new a();
    c = new ArrayList();
  }
  
  private int f(int paramInt)
  {
    if (paramInt < 0) {
      return -1;
    }
    int j = a.a();
    int i = paramInt;
    while (i < j)
    {
      int k = paramInt - (i - b.e(i));
      if (k == 0)
      {
        while (b.c(i)) {
          i += 1;
        }
        return i;
      }
      i += k;
    }
    return -1;
  }
  
  private void g(View paramView)
  {
    c.add(paramView);
    a.c(paramView);
  }
  
  private boolean h(View paramView)
  {
    if (c.remove(paramView))
    {
      a.d(paramView);
      return true;
    }
    return false;
  }
  
  void a()
  {
    b.a();
    int i = c.size() - 1;
    while (i >= 0)
    {
      a.d((View)c.get(i));
      c.remove(i);
      i -= 1;
    }
    a.b();
  }
  
  void a(int paramInt)
  {
    paramInt = f(paramInt);
    View localView = a.b(paramInt);
    if (localView == null) {
      return;
    }
    if (b.d(paramInt)) {
      h(localView);
    }
    a.a(paramInt);
  }
  
  void a(View paramView)
  {
    int i = a.a(paramView);
    if (i < 0) {
      return;
    }
    if (b.d(i)) {
      h(paramView);
    }
    a.a(i);
  }
  
  void a(View paramView, int paramInt, ViewGroup.LayoutParams paramLayoutParams, boolean paramBoolean)
  {
    if (paramInt < 0) {
      paramInt = a.a();
    } else {
      paramInt = f(paramInt);
    }
    b.a(paramInt, paramBoolean);
    if (paramBoolean) {
      g(paramView);
    }
    a.a(paramView, paramInt, paramLayoutParams);
  }
  
  void a(View paramView, int paramInt, boolean paramBoolean)
  {
    if (paramInt < 0) {
      paramInt = a.a();
    } else {
      paramInt = f(paramInt);
    }
    b.a(paramInt, paramBoolean);
    if (paramBoolean) {
      g(paramView);
    }
    a.a(paramView, paramInt);
  }
  
  void a(View paramView, boolean paramBoolean)
  {
    a(paramView, -1, paramBoolean);
  }
  
  int b()
  {
    return a.a() - c.size();
  }
  
  int b(View paramView)
  {
    int i = a.a(paramView);
    if (i == -1) {
      return -1;
    }
    if (b.c(i)) {
      return -1;
    }
    return i - b.e(i);
  }
  
  View b(int paramInt)
  {
    paramInt = f(paramInt);
    return a.b(paramInt);
  }
  
  int c()
  {
    return a.a();
  }
  
  View c(int paramInt)
  {
    int j = c.size();
    int i = 0;
    while (i < j)
    {
      View localView = (View)c.get(i);
      RecyclerView.ViewHolder localViewHolder = a.b(localView);
      if ((localViewHolder.getLayoutPosition() == paramInt) && (!localViewHolder.j()) && (!localViewHolder.m())) {
        return localView;
      }
      i += 1;
    }
    return null;
  }
  
  boolean c(View paramView)
  {
    return c.contains(paramView);
  }
  
  View d(int paramInt)
  {
    return a.b(paramInt);
  }
  
  void d(View paramView)
  {
    int i = a.a(paramView);
    if (i >= 0)
    {
      b.a(i);
      g(paramView);
      return;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("view is not a child, cannot hide ");
    localStringBuilder.append(paramView);
    throw new IllegalArgumentException(localStringBuilder.toString());
  }
  
  void e(int paramInt)
  {
    paramInt = f(paramInt);
    b.d(paramInt);
    a.c(paramInt);
  }
  
  void e(View paramView)
  {
    int i = a.a(paramView);
    if (i >= 0)
    {
      if (b.c(i))
      {
        b.b(i);
        h(paramView);
        return;
      }
      localStringBuilder = new StringBuilder();
      localStringBuilder.append("trying to unhide a view that was not hidden");
      localStringBuilder.append(paramView);
      throw new RuntimeException(localStringBuilder.toString());
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("view is not a child, cannot hide ");
    localStringBuilder.append(paramView);
    throw new IllegalArgumentException(localStringBuilder.toString());
  }
  
  boolean f(View paramView)
  {
    int i = a.a(paramView);
    if (i == -1)
    {
      h(paramView);
      return true;
    }
    if (b.c(i))
    {
      b.d(i);
      h(paramView);
      a.a(i);
      return true;
    }
    return false;
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(b.toString());
    localStringBuilder.append(", hidden list:");
    localStringBuilder.append(c.size());
    return localStringBuilder.toString();
  }
  
  static class a
  {
    long a = 0L;
    a b;
    
    a() {}
    
    private void b()
    {
      if (b == null) {
        b = new a();
      }
    }
    
    void a()
    {
      a = 0L;
      if (b != null) {
        b.a();
      }
    }
    
    void a(int paramInt)
    {
      if (paramInt >= 64)
      {
        b();
        b.a(paramInt - 64);
        return;
      }
      a |= 1L << paramInt;
    }
    
    void a(int paramInt, boolean paramBoolean)
    {
      if (paramInt >= 64)
      {
        b();
        b.a(paramInt - 64, paramBoolean);
        return;
      }
      boolean bool;
      if ((a & 0x8000000000000000) != 0L) {
        bool = true;
      } else {
        bool = false;
      }
      long l = (1L << paramInt) - 1L;
      a = (a & l | (l & a) << 1);
      if (paramBoolean) {
        a(paramInt);
      } else {
        b(paramInt);
      }
      if ((bool) || (b != null))
      {
        b();
        b.a(0, bool);
      }
    }
    
    void b(int paramInt)
    {
      if (paramInt >= 64)
      {
        if (b != null) {
          b.b(paramInt - 64);
        }
      }
      else {
        a &= 1L << paramInt;
      }
    }
    
    boolean c(int paramInt)
    {
      if (paramInt >= 64)
      {
        b();
        return b.c(paramInt - 64);
      }
      return (a & 1L << paramInt) != 0L;
    }
    
    boolean d(int paramInt)
    {
      if (paramInt >= 64)
      {
        b();
        return b.d(paramInt - 64);
      }
      long l = 1L << paramInt;
      boolean bool;
      if ((a & l) != 0L) {
        bool = true;
      } else {
        bool = false;
      }
      a &= l;
      l -= 1L;
      a = (a & l | Long.rotateRight(l & a, 1));
      if (b != null)
      {
        if (b.c(0)) {
          a(63);
        }
        b.d(0);
      }
      return bool;
    }
    
    int e(int paramInt)
    {
      if (b == null)
      {
        if (paramInt >= 64) {
          return Long.bitCount(a);
        }
        return Long.bitCount(a & (1L << paramInt) - 1L);
      }
      if (paramInt < 64) {
        return Long.bitCount(a & (1L << paramInt) - 1L);
      }
      return b.e(paramInt - 64) + Long.bitCount(a);
    }
    
    public String toString()
    {
      if (b == null) {
        return Long.toBinaryString(a);
      }
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append(b.toString());
      localStringBuilder.append("xx");
      localStringBuilder.append(Long.toBinaryString(a));
      return localStringBuilder.toString();
    }
  }
  
  static abstract interface b
  {
    public abstract int a();
    
    public abstract int a(View paramView);
    
    public abstract void a(int paramInt);
    
    public abstract void a(View paramView, int paramInt);
    
    public abstract void a(View paramView, int paramInt, ViewGroup.LayoutParams paramLayoutParams);
    
    public abstract RecyclerView.ViewHolder b(View paramView);
    
    public abstract View b(int paramInt);
    
    public abstract void b();
    
    public abstract void c(int paramInt);
    
    public abstract void c(View paramView);
    
    public abstract void d(View paramView);
  }
}
