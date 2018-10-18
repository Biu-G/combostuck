package android.support.v4.util;

public final class CircularArray<E>
{
  private E[] a;
  private int b;
  private int c;
  private int d;
  
  public CircularArray()
  {
    this(8);
  }
  
  public CircularArray(int paramInt)
  {
    if (paramInt >= 1)
    {
      if (paramInt <= 1073741824)
      {
        int i = paramInt;
        if (Integer.bitCount(paramInt) != 1) {
          i = Integer.highestOneBit(paramInt - 1) << 1;
        }
        d = (i - 1);
        a = ((Object[])new Object[i]);
        return;
      }
      throw new IllegalArgumentException("capacity must be <= 2^30");
    }
    throw new IllegalArgumentException("capacity must be >= 1");
  }
  
  private void a()
  {
    int i = a.length;
    int j = i - b;
    int k = i << 1;
    if (k >= 0)
    {
      Object[] arrayOfObject = new Object[k];
      System.arraycopy(a, b, arrayOfObject, 0, j);
      System.arraycopy(a, 0, arrayOfObject, j, b);
      a = ((Object[])arrayOfObject);
      b = 0;
      c = i;
      d = (k - 1);
      return;
    }
    throw new RuntimeException("Max array capacity exceeded");
  }
  
  public void addFirst(E paramE)
  {
    b = (b - 1 & d);
    a[b] = paramE;
    if (b == c) {
      a();
    }
  }
  
  public void addLast(E paramE)
  {
    a[c] = paramE;
    c = (c + 1 & d);
    if (c == b) {
      a();
    }
  }
  
  public void clear()
  {
    removeFromStart(size());
  }
  
  public E get(int paramInt)
  {
    if ((paramInt >= 0) && (paramInt < size()))
    {
      Object[] arrayOfObject = a;
      int i = b;
      return arrayOfObject[(d & i + paramInt)];
    }
    throw new ArrayIndexOutOfBoundsException();
  }
  
  public E getFirst()
  {
    if (b != c) {
      return a[b];
    }
    throw new ArrayIndexOutOfBoundsException();
  }
  
  public E getLast()
  {
    if (b != c) {
      return a[(c - 1 & d)];
    }
    throw new ArrayIndexOutOfBoundsException();
  }
  
  public boolean isEmpty()
  {
    return b == c;
  }
  
  public E popFirst()
  {
    if (b != c)
    {
      Object localObject = a[b];
      a[b] = null;
      b = (b + 1 & d);
      return localObject;
    }
    throw new ArrayIndexOutOfBoundsException();
  }
  
  public E popLast()
  {
    if (b != c)
    {
      int i = c - 1 & d;
      Object localObject = a[i];
      a[i] = null;
      c = i;
      return localObject;
    }
    throw new ArrayIndexOutOfBoundsException();
  }
  
  public void removeFromEnd(int paramInt)
  {
    if (paramInt <= 0) {
      return;
    }
    if (paramInt <= size())
    {
      int i = 0;
      if (paramInt < c) {
        i = c - paramInt;
      }
      int j = i;
      while (j < c)
      {
        a[j] = null;
        j += 1;
      }
      i = c - i;
      paramInt -= i;
      c -= i;
      if (paramInt > 0)
      {
        c = a.length;
        i = c - paramInt;
        paramInt = i;
        while (paramInt < c)
        {
          a[paramInt] = null;
          paramInt += 1;
        }
        c = i;
      }
      return;
    }
    throw new ArrayIndexOutOfBoundsException();
  }
  
  public void removeFromStart(int paramInt)
  {
    if (paramInt <= 0) {
      return;
    }
    if (paramInt <= size())
    {
      int j = a.length;
      int i = j;
      if (paramInt < j - b) {
        i = b + paramInt;
      }
      j = b;
      while (j < i)
      {
        a[j] = null;
        j += 1;
      }
      j = i - b;
      i = paramInt - j;
      paramInt = b;
      b = (d & paramInt + j);
      if (i > 0)
      {
        paramInt = 0;
        while (paramInt < i)
        {
          a[paramInt] = null;
          paramInt += 1;
        }
        b = i;
      }
      return;
    }
    throw new ArrayIndexOutOfBoundsException();
  }
  
  public int size()
  {
    return c - b & d;
  }
}
