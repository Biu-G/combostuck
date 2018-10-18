package android.support.v7.widget;

class z
{
  private int a = 0;
  private int b = 0;
  private int c = Integer.MIN_VALUE;
  private int d = Integer.MIN_VALUE;
  private int e = 0;
  private int f = 0;
  private boolean g = false;
  private boolean h = false;
  
  z() {}
  
  public int a()
  {
    return a;
  }
  
  public void a(int paramInt1, int paramInt2)
  {
    c = paramInt1;
    d = paramInt2;
    h = true;
    if (g)
    {
      if (paramInt2 != Integer.MIN_VALUE) {
        a = paramInt2;
      }
      if (paramInt1 != Integer.MIN_VALUE) {
        b = paramInt1;
      }
    }
    else
    {
      if (paramInt1 != Integer.MIN_VALUE) {
        a = paramInt1;
      }
      if (paramInt2 != Integer.MIN_VALUE) {
        b = paramInt2;
      }
    }
  }
  
  public void a(boolean paramBoolean)
  {
    if (paramBoolean == g) {
      return;
    }
    g = paramBoolean;
    if (h)
    {
      int i;
      if (paramBoolean)
      {
        if (d != Integer.MIN_VALUE) {
          i = d;
        } else {
          i = e;
        }
        a = i;
        if (c != Integer.MIN_VALUE) {
          i = c;
        } else {
          i = f;
        }
        b = i;
        return;
      }
      if (c != Integer.MIN_VALUE) {
        i = c;
      } else {
        i = e;
      }
      a = i;
      if (d != Integer.MIN_VALUE) {
        i = d;
      } else {
        i = f;
      }
      b = i;
      return;
    }
    a = e;
    b = f;
  }
  
  public int b()
  {
    return b;
  }
  
  public void b(int paramInt1, int paramInt2)
  {
    h = false;
    if (paramInt1 != Integer.MIN_VALUE)
    {
      e = paramInt1;
      a = paramInt1;
    }
    if (paramInt2 != Integer.MIN_VALUE)
    {
      f = paramInt2;
      b = paramInt2;
    }
  }
  
  public int c()
  {
    if (g) {
      return b;
    }
    return a;
  }
  
  public int d()
  {
    if (g) {
      return a;
    }
    return b;
  }
}
