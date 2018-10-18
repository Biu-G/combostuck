package android.support.constraint.solver;

final class a
{
  static abstract interface a<T>
  {
    public abstract T a();
    
    public abstract void a(T[] paramArrayOfT, int paramInt);
    
    public abstract boolean a(T paramT);
  }
  
  static class b<T>
    implements a.a<T>
  {
    private final Object[] a;
    private int b;
    
    b(int paramInt)
    {
      if (paramInt > 0)
      {
        a = new Object[paramInt];
        return;
      }
      throw new IllegalArgumentException("The max pool size must be > 0");
    }
    
    public T a()
    {
      if (b > 0)
      {
        int i = b - 1;
        Object localObject = a[i];
        a[i] = null;
        b -= 1;
        return localObject;
      }
      return null;
    }
    
    public void a(T[] paramArrayOfT, int paramInt)
    {
      int i = paramInt;
      if (paramInt > paramArrayOfT.length) {
        i = paramArrayOfT.length;
      }
      paramInt = 0;
      while (paramInt < i)
      {
        T ? = paramArrayOfT[paramInt];
        if (b < a.length)
        {
          a[b] = ?;
          b += 1;
        }
        paramInt += 1;
      }
    }
    
    public boolean a(T paramT)
    {
      if (b < a.length)
      {
        a[b] = paramT;
        b += 1;
        return true;
      }
      return false;
    }
  }
}
