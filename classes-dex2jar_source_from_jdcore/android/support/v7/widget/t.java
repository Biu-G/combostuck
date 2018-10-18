package android.support.v7.widget;

import android.support.annotation.Nullable;
import android.support.v4.os.TraceCompat;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.concurrent.TimeUnit;

final class t
  implements Runnable
{
  static final ThreadLocal<t> a = new ThreadLocal();
  static Comparator<b> e = new Comparator()
  {
    public int a(t.b paramAnonymousB1, t.b paramAnonymousB2)
    {
      RecyclerView localRecyclerView = d;
      int k = 1;
      if (localRecyclerView == null) {
        i = 1;
      } else {
        i = 0;
      }
      int j;
      if (d == null) {
        j = 1;
      } else {
        j = 0;
      }
      if (i != j)
      {
        if (d == null) {
          return 1;
        }
        return -1;
      }
      if (a != a)
      {
        i = k;
        if (a) {
          i = -1;
        }
        return i;
      }
      int i = b - b;
      if (i != 0) {
        return i;
      }
      i = c - c;
      if (i != 0) {
        return i;
      }
      return 0;
    }
  };
  ArrayList<RecyclerView> b = new ArrayList();
  long c;
  long d;
  private ArrayList<b> f = new ArrayList();
  
  t() {}
  
  private RecyclerView.ViewHolder a(RecyclerView paramRecyclerView, int paramInt, long paramLong)
  {
    if (a(paramRecyclerView, paramInt)) {
      return null;
    }
    RecyclerView.Recycler localRecycler = e;
    try
    {
      paramRecyclerView.k();
      RecyclerView.ViewHolder localViewHolder = localRecycler.a(paramInt, false, paramLong);
      if (localViewHolder != null) {
        if ((localViewHolder.l()) && (!localViewHolder.j())) {
          localRecycler.recycleView(itemView);
        } else {
          localRecycler.a(localViewHolder, false);
        }
      }
      return localViewHolder;
    }
    finally
    {
      paramRecyclerView.b(false);
    }
  }
  
  private void a()
  {
    int m = b.size();
    int i = 0;
    Object localObject;
    int k;
    for (int j = 0; i < m; j = k)
    {
      localObject = (RecyclerView)b.get(i);
      k = j;
      if (((RecyclerView)localObject).getWindowVisibility() == 0)
      {
        C.a((RecyclerView)localObject, false);
        k = j + C.d;
      }
      i += 1;
    }
    f.ensureCapacity(j);
    j = 0;
    i = 0;
    while (j < m)
    {
      RecyclerView localRecyclerView = (RecyclerView)b.get(j);
      if (localRecyclerView.getWindowVisibility() == 0)
      {
        a localA = C;
        int n = Math.abs(a) + Math.abs(b);
        k = 0;
        while (k < d * 2)
        {
          if (i >= f.size())
          {
            localObject = new b();
            f.add(localObject);
          }
          else
          {
            localObject = (b)f.get(i);
          }
          int i1 = c[(k + 1)];
          boolean bool;
          if (i1 <= n) {
            bool = true;
          } else {
            bool = false;
          }
          a = bool;
          b = n;
          c = i1;
          d = localRecyclerView;
          e = c[k];
          i += 1;
          k += 2;
        }
      }
      j += 1;
    }
    Collections.sort(f, e);
  }
  
  private void a(@Nullable RecyclerView paramRecyclerView, long paramLong)
  {
    if (paramRecyclerView == null) {
      return;
    }
    if ((x) && (g.c() != 0)) {
      paramRecyclerView.c();
    }
    a localA = C;
    localA.a(paramRecyclerView, true);
    if (d != 0) {
      try
      {
        TraceCompat.beginSection("RV Nested Prefetch");
        D.a(m);
        int i = 0;
        while (i < d * 2)
        {
          a(paramRecyclerView, c[i], paramLong);
          i += 2;
        }
        return;
      }
      finally
      {
        TraceCompat.endSection();
      }
    }
  }
  
  private void a(b paramB, long paramLong)
  {
    long l;
    if (a) {
      l = Long.MAX_VALUE;
    } else {
      l = paramLong;
    }
    paramB = a(d, e, l);
    if ((paramB != null) && (a != null) && (paramB.l()) && (!paramB.j())) {
      a((RecyclerView)a.get(), paramLong);
    }
  }
  
  static boolean a(RecyclerView paramRecyclerView, int paramInt)
  {
    int j = g.c();
    int i = 0;
    while (i < j)
    {
      RecyclerView.ViewHolder localViewHolder = RecyclerView.b(g.d(i));
      if ((b == paramInt) && (!localViewHolder.j())) {
        return true;
      }
      i += 1;
    }
    return false;
  }
  
  private void b(long paramLong)
  {
    int i = 0;
    while (i < f.size())
    {
      b localB = (b)f.get(i);
      if (d == null) {
        return;
      }
      a(localB, paramLong);
      localB.a();
      i += 1;
    }
  }
  
  void a(long paramLong)
  {
    a();
    b(paramLong);
  }
  
  public void a(RecyclerView paramRecyclerView)
  {
    b.add(paramRecyclerView);
  }
  
  void a(RecyclerView paramRecyclerView, int paramInt1, int paramInt2)
  {
    if ((paramRecyclerView.isAttachedToWindow()) && (c == 0L))
    {
      c = paramRecyclerView.getNanoTime();
      paramRecyclerView.post(this);
    }
    C.a(paramInt1, paramInt2);
  }
  
  public void b(RecyclerView paramRecyclerView)
  {
    b.remove(paramRecyclerView);
  }
  
  public void run()
  {
    try
    {
      TraceCompat.beginSection("RV Prefetch");
      boolean bool = b.isEmpty();
      if (bool) {
        return;
      }
      int j = b.size();
      int i = 0;
      long l2;
      for (long l1 = 0L; i < j; l1 = l2)
      {
        RecyclerView localRecyclerView = (RecyclerView)b.get(i);
        l2 = l1;
        if (localRecyclerView.getWindowVisibility() == 0) {
          l2 = Math.max(localRecyclerView.getDrawingTime(), l1);
        }
        i += 1;
      }
      if (l1 == 0L) {
        return;
      }
      a(TimeUnit.MILLISECONDS.toNanos(l1) + d);
      return;
    }
    finally
    {
      c = 0L;
      TraceCompat.endSection();
    }
  }
  
  static class a
    implements RecyclerView.LayoutManager.LayoutPrefetchRegistry
  {
    int a;
    int b;
    int[] c;
    int d;
    
    a() {}
    
    void a()
    {
      if (c != null) {
        Arrays.fill(c, -1);
      }
      d = 0;
    }
    
    void a(int paramInt1, int paramInt2)
    {
      a = paramInt1;
      b = paramInt2;
    }
    
    void a(RecyclerView paramRecyclerView, boolean paramBoolean)
    {
      d = 0;
      if (c != null) {
        Arrays.fill(c, -1);
      }
      RecyclerView.LayoutManager localLayoutManager = n;
      if ((m != null) && (localLayoutManager != null) && (localLayoutManager.isItemPrefetchEnabled()))
      {
        if (paramBoolean)
        {
          if (!f.d()) {
            localLayoutManager.collectInitialPrefetchPositions(m.getItemCount(), this);
          }
        }
        else if (!paramRecyclerView.hasPendingAdapterUpdates()) {
          localLayoutManager.collectAdjacentPrefetchPositions(a, b, D, this);
        }
        if (d > x)
        {
          x = d;
          y = paramBoolean;
          e.a();
        }
      }
    }
    
    boolean a(int paramInt)
    {
      if (c != null)
      {
        int j = d;
        int i = 0;
        while (i < j * 2)
        {
          if (c[i] == paramInt) {
            return true;
          }
          i += 2;
        }
      }
      return false;
    }
    
    public void addPosition(int paramInt1, int paramInt2)
    {
      if (paramInt1 >= 0)
      {
        if (paramInt2 >= 0)
        {
          int i = d * 2;
          if (c == null)
          {
            c = new int[4];
            Arrays.fill(c, -1);
          }
          else if (i >= c.length)
          {
            int[] arrayOfInt = c;
            c = new int[i * 2];
            System.arraycopy(arrayOfInt, 0, c, 0, arrayOfInt.length);
          }
          c[i] = paramInt1;
          c[(i + 1)] = paramInt2;
          d += 1;
          return;
        }
        throw new IllegalArgumentException("Pixel distance must be non-negative");
      }
      throw new IllegalArgumentException("Layout positions must be non-negative");
    }
  }
  
  static class b
  {
    public boolean a;
    public int b;
    public int c;
    public RecyclerView d;
    public int e;
    
    b() {}
    
    public void a()
    {
      a = false;
      b = 0;
      c = 0;
      d = null;
      e = 0;
    }
  }
}
