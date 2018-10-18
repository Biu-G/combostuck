package android.support.v7.util;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.UiThread;
import android.support.annotation.WorkerThread;
import android.util.Log;
import android.util.SparseBooleanArray;
import android.util.SparseIntArray;

public class AsyncListUtil<T>
{
  final Class<T> a;
  final int b;
  final DataCallback<T> c;
  final ViewCallback d;
  final TileList<T> e;
  final ThreadUtil.MainThreadCallback<T> f;
  final ThreadUtil.BackgroundCallback<T> g;
  final int[] h = new int[2];
  final int[] i = new int[2];
  final int[] j = new int[2];
  boolean k;
  int l = 0;
  int m = 0;
  int n = m;
  final SparseIntArray o = new SparseIntArray();
  private int p = 0;
  private final ThreadUtil.MainThreadCallback<T> q = new ThreadUtil.MainThreadCallback()
  {
    private void a()
    {
      int i = 0;
      while (i < e.a())
      {
        g.recycleTile(e.b(i));
        i += 1;
      }
      e.b();
    }
    
    private boolean a(int paramAnonymousInt)
    {
      return paramAnonymousInt == n;
    }
    
    public void addTile(int paramAnonymousInt, TileList.Tile<T> paramAnonymousTile)
    {
      if (!a(paramAnonymousInt))
      {
        g.recycleTile(paramAnonymousTile);
        return;
      }
      TileList.Tile localTile = e.a(paramAnonymousTile);
      if (localTile != null)
      {
        StringBuilder localStringBuilder = new StringBuilder();
        localStringBuilder.append("duplicate tile @");
        localStringBuilder.append(mStartPosition);
        Log.e("AsyncListUtil", localStringBuilder.toString());
        g.recycleTile(localTile);
      }
      int i = mStartPosition;
      int j = mItemCount;
      paramAnonymousInt = 0;
      while (paramAnonymousInt < o.size())
      {
        int k = o.keyAt(paramAnonymousInt);
        if ((mStartPosition <= k) && (k < i + j))
        {
          o.removeAt(paramAnonymousInt);
          d.onItemLoaded(k);
        }
        else
        {
          paramAnonymousInt += 1;
        }
      }
    }
    
    public void removeTile(int paramAnonymousInt1, int paramAnonymousInt2)
    {
      if (!a(paramAnonymousInt1)) {
        return;
      }
      Object localObject = e.c(paramAnonymousInt2);
      if (localObject == null)
      {
        localObject = new StringBuilder();
        ((StringBuilder)localObject).append("tile not found @");
        ((StringBuilder)localObject).append(paramAnonymousInt2);
        Log.e("AsyncListUtil", ((StringBuilder)localObject).toString());
        return;
      }
      g.recycleTile((TileList.Tile)localObject);
    }
    
    public void updateItemCount(int paramAnonymousInt1, int paramAnonymousInt2)
    {
      if (!a(paramAnonymousInt1)) {
        return;
      }
      l = paramAnonymousInt2;
      d.onDataRefresh();
      m = n;
      a();
      k = false;
      AsyncListUtil.this.a();
    }
  };
  private final ThreadUtil.BackgroundCallback<T> r = new ThreadUtil.BackgroundCallback()
  {
    final SparseBooleanArray a = new SparseBooleanArray();
    private TileList.Tile<T> c;
    private int d;
    private int e;
    private int f;
    private int g;
    
    private int a(int paramAnonymousInt)
    {
      return paramAnonymousInt - paramAnonymousInt % b;
    }
    
    private TileList.Tile<T> a()
    {
      if (c != null)
      {
        TileList.Tile localTile = c;
        c = c.a;
        return localTile;
      }
      return new TileList.Tile(a, b);
    }
    
    private void a(int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3, boolean paramAnonymousBoolean)
    {
      int i = paramAnonymousInt1;
      while (i <= paramAnonymousInt2)
      {
        int j;
        if (paramAnonymousBoolean) {
          j = paramAnonymousInt2 + paramAnonymousInt1 - i;
        } else {
          j = i;
        }
        g.loadTile(j, paramAnonymousInt3);
        i += b;
      }
    }
    
    private void a(TileList.Tile<T> paramAnonymousTile)
    {
      a.put(mStartPosition, true);
      f.addTile(d, paramAnonymousTile);
    }
    
    private boolean b(int paramAnonymousInt)
    {
      return a.get(paramAnonymousInt);
    }
    
    private void c(int paramAnonymousInt)
    {
      a.delete(paramAnonymousInt);
      f.removeTile(d, paramAnonymousInt);
    }
    
    private void d(int paramAnonymousInt)
    {
      int i = c.getMaxCachedTiles();
      while (a.size() >= i)
      {
        int j = a.keyAt(0);
        int k = a.keyAt(a.size() - 1);
        int m = f - j;
        int n = k - g;
        if ((m > 0) && ((m >= n) || (paramAnonymousInt == 2))) {
          c(j);
        } else if ((n > 0) && ((m < n) || (paramAnonymousInt == 1))) {
          c(k);
        } else {}
      }
    }
    
    public void loadTile(int paramAnonymousInt1, int paramAnonymousInt2)
    {
      if (b(paramAnonymousInt1)) {
        return;
      }
      TileList.Tile localTile = a();
      mStartPosition = paramAnonymousInt1;
      mItemCount = Math.min(b, e - mStartPosition);
      c.fillData(mItems, mStartPosition, mItemCount);
      d(paramAnonymousInt2);
      a(localTile);
    }
    
    public void recycleTile(TileList.Tile<T> paramAnonymousTile)
    {
      c.recycleData(mItems, mItemCount);
      a = c;
      c = paramAnonymousTile;
    }
    
    public void refresh(int paramAnonymousInt)
    {
      d = paramAnonymousInt;
      a.clear();
      e = c.refreshData();
      f.updateItemCount(d, e);
    }
    
    public void updateRange(int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3, int paramAnonymousInt4, int paramAnonymousInt5)
    {
      if (paramAnonymousInt1 > paramAnonymousInt2) {
        return;
      }
      paramAnonymousInt1 = a(paramAnonymousInt1);
      paramAnonymousInt2 = a(paramAnonymousInt2);
      f = a(paramAnonymousInt3);
      g = a(paramAnonymousInt4);
      if (paramAnonymousInt5 == 1)
      {
        a(f, paramAnonymousInt2, paramAnonymousInt5, true);
        a(paramAnonymousInt2 + b, g, paramAnonymousInt5, false);
        return;
      }
      a(paramAnonymousInt1, g, paramAnonymousInt5, false);
      a(f, paramAnonymousInt1 - b, paramAnonymousInt5, true);
    }
  };
  
  public AsyncListUtil(@NonNull Class<T> paramClass, int paramInt, @NonNull DataCallback<T> paramDataCallback, @NonNull ViewCallback paramViewCallback)
  {
    a = paramClass;
    b = paramInt;
    c = paramDataCallback;
    d = paramViewCallback;
    e = new TileList(b);
    paramClass = new a();
    f = paramClass.a(q);
    g = paramClass.a(r);
    refresh();
  }
  
  private boolean b()
  {
    return n != m;
  }
  
  void a()
  {
    d.getItemRangeInto(h);
    if (h[0] <= h[1])
    {
      if (h[0] < 0) {
        return;
      }
      if (h[1] >= l) {
        return;
      }
      if (!k) {
        p = 0;
      } else if ((h[0] <= i[1]) && (i[0] <= h[1]))
      {
        if (h[0] < i[0]) {
          p = 1;
        } else if (h[0] > i[0]) {
          p = 2;
        }
      }
      else {
        p = 0;
      }
      i[0] = h[0];
      i[1] = h[1];
      d.extendRangeInto(h, j, p);
      j[0] = Math.min(h[0], Math.max(j[0], 0));
      j[1] = Math.max(h[1], Math.min(j[1], l - 1));
      g.updateRange(h[0], h[1], j[0], j[1], p);
      return;
    }
  }
  
  @Nullable
  public T getItem(int paramInt)
  {
    if ((paramInt >= 0) && (paramInt < l))
    {
      localObject = e.a(paramInt);
      if ((localObject == null) && (!b())) {
        o.put(paramInt, 0);
      }
      return localObject;
    }
    Object localObject = new StringBuilder();
    ((StringBuilder)localObject).append(paramInt);
    ((StringBuilder)localObject).append(" is not within 0 and ");
    ((StringBuilder)localObject).append(l);
    throw new IndexOutOfBoundsException(((StringBuilder)localObject).toString());
  }
  
  public int getItemCount()
  {
    return l;
  }
  
  public void onRangeChanged()
  {
    if (b()) {
      return;
    }
    a();
    k = true;
  }
  
  public void refresh()
  {
    o.clear();
    ThreadUtil.BackgroundCallback localBackgroundCallback = g;
    int i1 = n + 1;
    n = i1;
    localBackgroundCallback.refresh(i1);
  }
  
  public static abstract class DataCallback<T>
  {
    public DataCallback() {}
    
    @WorkerThread
    public abstract void fillData(@NonNull T[] paramArrayOfT, int paramInt1, int paramInt2);
    
    @WorkerThread
    public int getMaxCachedTiles()
    {
      return 10;
    }
    
    @WorkerThread
    public void recycleData(@NonNull T[] paramArrayOfT, int paramInt) {}
    
    @WorkerThread
    public abstract int refreshData();
  }
  
  public static abstract class ViewCallback
  {
    public static final int HINT_SCROLL_ASC = 2;
    public static final int HINT_SCROLL_DESC = 1;
    public static final int HINT_SCROLL_NONE = 0;
    
    public ViewCallback() {}
    
    @UiThread
    public void extendRangeInto(@NonNull int[] paramArrayOfInt1, @NonNull int[] paramArrayOfInt2, int paramInt)
    {
      int i = paramArrayOfInt1[1] - paramArrayOfInt1[0] + 1;
      int j = i / 2;
      int m = paramArrayOfInt1[0];
      if (paramInt == 1) {
        k = i;
      } else {
        k = j;
      }
      paramArrayOfInt2[0] = (m - k);
      int k = paramArrayOfInt1[1];
      if (paramInt != 2) {
        i = j;
      }
      paramArrayOfInt2[1] = (k + i);
    }
    
    @UiThread
    public abstract void getItemRangeInto(@NonNull int[] paramArrayOfInt);
    
    @UiThread
    public abstract void onDataRefresh();
    
    @UiThread
    public abstract void onItemLoaded(int paramInt);
  }
}
