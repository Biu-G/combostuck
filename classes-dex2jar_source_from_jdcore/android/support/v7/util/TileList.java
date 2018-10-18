package android.support.v7.util;

import android.util.SparseArray;
import java.lang.reflect.Array;

class TileList<T>
{
  final int a;
  Tile<T> b;
  private final SparseArray<Tile<T>> c = new SparseArray(10);
  
  public TileList(int paramInt)
  {
    a = paramInt;
  }
  
  public int a()
  {
    return c.size();
  }
  
  public Tile<T> a(Tile<T> paramTile)
  {
    int i = c.indexOfKey(mStartPosition);
    if (i < 0)
    {
      c.put(mStartPosition, paramTile);
      return null;
    }
    Tile localTile = (Tile)c.valueAt(i);
    c.setValueAt(i, paramTile);
    if (b == localTile) {
      b = paramTile;
    }
    return localTile;
  }
  
  public T a(int paramInt)
  {
    if ((b == null) || (!b.a(paramInt)))
    {
      int i = a;
      i = c.indexOfKey(paramInt - paramInt % i);
      if (i < 0) {
        return null;
      }
      b = ((Tile)c.valueAt(i));
    }
    return b.b(paramInt);
  }
  
  public Tile<T> b(int paramInt)
  {
    return (Tile)c.valueAt(paramInt);
  }
  
  public void b()
  {
    c.clear();
  }
  
  public Tile<T> c(int paramInt)
  {
    Tile localTile = (Tile)c.get(paramInt);
    if (b == localTile) {
      b = null;
    }
    c.delete(paramInt);
    return localTile;
  }
  
  public static class Tile<T>
  {
    Tile<T> a;
    public int mItemCount;
    public final T[] mItems;
    public int mStartPosition;
    
    public Tile(Class<T> paramClass, int paramInt)
    {
      mItems = ((Object[])Array.newInstance(paramClass, paramInt));
    }
    
    boolean a(int paramInt)
    {
      return (mStartPosition <= paramInt) && (paramInt < mStartPosition + mItemCount);
    }
    
    T b(int paramInt)
    {
      return mItems[(paramInt - mStartPosition)];
    }
  }
}
