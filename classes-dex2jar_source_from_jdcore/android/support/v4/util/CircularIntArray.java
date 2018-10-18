package android.support.v4.util;

public final class CircularIntArray
{
  private int[] a;
  private int b;
  private int c;
  private int d;
  
  public CircularIntArray()
  {
    this(8);
  }
  
  public CircularIntArray(int paramInt)
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
        a = new int[i];
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
      int[] arrayOfInt = new int[k];
      System.arraycopy(a, b, arrayOfInt, 0, j);
      System.arraycopy(a, 0, arrayOfInt, j, b);
      a = arrayOfInt;
      b = 0;
      c = i;
      d = (k - 1);
      return;
    }
    throw new RuntimeException("Max array capacity exceeded");
  }
  
  public void addFirst(int paramInt)
  {
    b = (b - 1 & d);
    a[b] = paramInt;
    if (b == c) {
      a();
    }
  }
  
  public void addLast(int paramInt)
  {
    a[c] = paramInt;
    c = (c + 1 & d);
    if (c == b) {
      a();
    }
  }
  
  public void clear()
  {
    c = b;
  }
  
  public int get(int paramInt)
  {
    if ((paramInt >= 0) && (paramInt < size()))
    {
      int[] arrayOfInt = a;
      int i = b;
      return arrayOfInt[(d & i + paramInt)];
    }
    throw new ArrayIndexOutOfBoundsException();
  }
  
  public int getFirst()
  {
    if (b != c) {
      return a[b];
    }
    throw new ArrayIndexOutOfBoundsException();
  }
  
  public int getLast()
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
  
  public int popFirst()
  {
    if (b != c)
    {
      int i = a[b];
      b = (b + 1 & d);
      return i;
    }
    throw new ArrayIndexOutOfBoundsException();
  }
  
  public int popLast()
  {
    if (b != c)
    {
      int i = c - 1 & d;
      int j = a[i];
      c = i;
      return j;
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
      int i = c;
      c = (d & i - paramInt);
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
      int i = b;
      b = (d & i + paramInt);
      return;
    }
    throw new ArrayIndexOutOfBoundsException();
  }
  
  public int size()
  {
    return c - b & d;
  }
}
