package android.support.v7.widget;

import android.view.View;
import java.lang.annotation.Annotation;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

class ViewBoundsCheck
{
  final b a;
  a b;
  
  ViewBoundsCheck(b paramB)
  {
    a = paramB;
    b = new a();
  }
  
  View a(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    int j = a.a();
    int k = a.b();
    int i;
    if (paramInt2 > paramInt1) {
      i = 1;
    } else {
      i = -1;
    }
    Object localObject2;
    for (Object localObject1 = null; paramInt1 != paramInt2; localObject1 = localObject2)
    {
      View localView = a.a(paramInt1);
      int m = a.a(localView);
      int n = a.b(localView);
      b.a(j, k, m, n);
      if (paramInt3 != 0)
      {
        b.a();
        b.a(paramInt3);
        if (b.b()) {
          return localView;
        }
      }
      localObject2 = localObject1;
      if (paramInt4 != 0)
      {
        b.a();
        b.a(paramInt4);
        localObject2 = localObject1;
        if (b.b()) {
          localObject2 = localView;
        }
      }
      paramInt1 += i;
    }
    return localObject1;
  }
  
  boolean a(View paramView, int paramInt)
  {
    b.a(a.a(), a.b(), a.a(paramView), a.b(paramView));
    if (paramInt != 0)
    {
      b.a();
      b.a(paramInt);
      return b.b();
    }
    return false;
  }
  
  @Retention(RetentionPolicy.SOURCE)
  public static @interface ViewBounds {}
  
  static class a
  {
    int a = 0;
    int b;
    int c;
    int d;
    int e;
    
    a() {}
    
    int a(int paramInt1, int paramInt2)
    {
      if (paramInt1 > paramInt2) {
        return 1;
      }
      if (paramInt1 == paramInt2) {
        return 2;
      }
      return 4;
    }
    
    void a()
    {
      a = 0;
    }
    
    void a(int paramInt)
    {
      a = (paramInt | a);
    }
    
    void a(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
    {
      b = paramInt1;
      c = paramInt2;
      d = paramInt3;
      e = paramInt4;
    }
    
    boolean b()
    {
      if (((a & 0x7) != 0) && ((a & a(d, b) << 0) == 0)) {
        return false;
      }
      if (((a & 0x70) != 0) && ((a & a(d, c) << 4) == 0)) {
        return false;
      }
      if (((a & 0x700) != 0) && ((a & a(e, b) << 8) == 0)) {
        return false;
      }
      return ((a & 0x7000) == 0) || ((a & a(e, c) << 12) != 0);
    }
  }
  
  static abstract interface b
  {
    public abstract int a();
    
    public abstract int a(View paramView);
    
    public abstract View a(int paramInt);
    
    public abstract int b();
    
    public abstract int b(View paramView);
  }
}
