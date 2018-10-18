package android.support.v7.widget;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.VisibleForTesting;
import android.support.v4.util.ArrayMap;
import android.support.v4.util.LongSparseArray;
import android.support.v4.util.Pools.Pool;
import android.support.v4.util.Pools.SimplePool;

class ah
{
  @VisibleForTesting
  final ArrayMap<RecyclerView.ViewHolder, a> a = new ArrayMap();
  @VisibleForTesting
  final LongSparseArray<RecyclerView.ViewHolder> b = new LongSparseArray();
  
  ah() {}
  
  private RecyclerView.ItemAnimator.ItemHolderInfo a(RecyclerView.ViewHolder paramViewHolder, int paramInt)
  {
    int i = a.indexOfKey(paramViewHolder);
    if (i < 0) {
      return null;
    }
    a localA = (a)a.valueAt(i);
    if ((localA != null) && ((a & paramInt) != 0))
    {
      a &= paramInt;
      if (paramInt == 4)
      {
        paramViewHolder = b;
      }
      else
      {
        if (paramInt != 8) {
          break label108;
        }
        paramViewHolder = c;
      }
      if ((a & 0xC) == 0)
      {
        a.removeAt(i);
        a.a(localA);
      }
      return paramViewHolder;
      label108:
      throw new IllegalArgumentException("Must provide flag PRE or POST");
    }
    return null;
  }
  
  RecyclerView.ViewHolder a(long paramLong)
  {
    return (RecyclerView.ViewHolder)b.get(paramLong);
  }
  
  void a()
  {
    a.clear();
    b.clear();
  }
  
  void a(long paramLong, RecyclerView.ViewHolder paramViewHolder)
  {
    b.put(paramLong, paramViewHolder);
  }
  
  void a(RecyclerView.ViewHolder paramViewHolder, RecyclerView.ItemAnimator.ItemHolderInfo paramItemHolderInfo)
  {
    a localA2 = (a)a.get(paramViewHolder);
    a localA1 = localA2;
    if (localA2 == null)
    {
      localA1 = a.a();
      a.put(paramViewHolder, localA1);
    }
    b = paramItemHolderInfo;
    a |= 0x4;
  }
  
  void a(b paramB)
  {
    int i = a.size() - 1;
    while (i >= 0)
    {
      RecyclerView.ViewHolder localViewHolder = (RecyclerView.ViewHolder)a.keyAt(i);
      a localA = (a)a.removeAt(i);
      if ((a & 0x3) == 3) {
        paramB.a(localViewHolder);
      } else if ((a & 0x1) != 0)
      {
        if (b == null) {
          paramB.a(localViewHolder);
        } else {
          paramB.a(localViewHolder, b, c);
        }
      }
      else if ((a & 0xE) == 14) {
        paramB.b(localViewHolder, b, c);
      } else if ((a & 0xC) == 12) {
        paramB.c(localViewHolder, b, c);
      } else if ((a & 0x4) != 0) {
        paramB.a(localViewHolder, b, null);
      } else if ((a & 0x8) != 0) {
        paramB.b(localViewHolder, b, c);
      } else {
        int j = a;
      }
      a.a(localA);
      i -= 1;
    }
  }
  
  boolean a(RecyclerView.ViewHolder paramViewHolder)
  {
    paramViewHolder = (a)a.get(paramViewHolder);
    return (paramViewHolder != null) && ((a & 0x1) != 0);
  }
  
  @Nullable
  RecyclerView.ItemAnimator.ItemHolderInfo b(RecyclerView.ViewHolder paramViewHolder)
  {
    return a(paramViewHolder, 4);
  }
  
  void b() {}
  
  void b(RecyclerView.ViewHolder paramViewHolder, RecyclerView.ItemAnimator.ItemHolderInfo paramItemHolderInfo)
  {
    a localA2 = (a)a.get(paramViewHolder);
    a localA1 = localA2;
    if (localA2 == null)
    {
      localA1 = a.a();
      a.put(paramViewHolder, localA1);
    }
    a |= 0x2;
    b = paramItemHolderInfo;
  }
  
  @Nullable
  RecyclerView.ItemAnimator.ItemHolderInfo c(RecyclerView.ViewHolder paramViewHolder)
  {
    return a(paramViewHolder, 8);
  }
  
  void c(RecyclerView.ViewHolder paramViewHolder, RecyclerView.ItemAnimator.ItemHolderInfo paramItemHolderInfo)
  {
    a localA2 = (a)a.get(paramViewHolder);
    a localA1 = localA2;
    if (localA2 == null)
    {
      localA1 = a.a();
      a.put(paramViewHolder, localA1);
    }
    c = paramItemHolderInfo;
    a |= 0x8;
  }
  
  boolean d(RecyclerView.ViewHolder paramViewHolder)
  {
    paramViewHolder = (a)a.get(paramViewHolder);
    return (paramViewHolder != null) && ((a & 0x4) != 0);
  }
  
  void e(RecyclerView.ViewHolder paramViewHolder)
  {
    a localA2 = (a)a.get(paramViewHolder);
    a localA1 = localA2;
    if (localA2 == null)
    {
      localA1 = a.a();
      a.put(paramViewHolder, localA1);
    }
    a |= 0x1;
  }
  
  void f(RecyclerView.ViewHolder paramViewHolder)
  {
    paramViewHolder = (a)a.get(paramViewHolder);
    if (paramViewHolder == null) {
      return;
    }
    a &= 0xFFFFFFFE;
  }
  
  void g(RecyclerView.ViewHolder paramViewHolder)
  {
    int i = b.size() - 1;
    while (i >= 0)
    {
      if (paramViewHolder == b.valueAt(i))
      {
        b.removeAt(i);
        break;
      }
      i -= 1;
    }
    paramViewHolder = (a)a.remove(paramViewHolder);
    if (paramViewHolder != null) {
      a.a(paramViewHolder);
    }
  }
  
  public void h(RecyclerView.ViewHolder paramViewHolder)
  {
    f(paramViewHolder);
  }
  
  static class a
  {
    static Pools.Pool<a> d = new Pools.SimplePool(20);
    int a;
    @Nullable
    RecyclerView.ItemAnimator.ItemHolderInfo b;
    @Nullable
    RecyclerView.ItemAnimator.ItemHolderInfo c;
    
    private a() {}
    
    static a a()
    {
      a localA2 = (a)d.acquire();
      a localA1 = localA2;
      if (localA2 == null) {
        localA1 = new a();
      }
      return localA1;
    }
    
    static void a(a paramA)
    {
      a = 0;
      b = null;
      c = null;
      d.release(paramA);
    }
    
    static void b()
    {
      while (d.acquire() != null) {}
    }
  }
  
  static abstract interface b
  {
    public abstract void a(RecyclerView.ViewHolder paramViewHolder);
    
    public abstract void a(RecyclerView.ViewHolder paramViewHolder, @NonNull RecyclerView.ItemAnimator.ItemHolderInfo paramItemHolderInfo1, @Nullable RecyclerView.ItemAnimator.ItemHolderInfo paramItemHolderInfo2);
    
    public abstract void b(RecyclerView.ViewHolder paramViewHolder, @Nullable RecyclerView.ItemAnimator.ItemHolderInfo paramItemHolderInfo1, RecyclerView.ItemAnimator.ItemHolderInfo paramItemHolderInfo2);
    
    public abstract void c(RecyclerView.ViewHolder paramViewHolder, @NonNull RecyclerView.ItemAnimator.ItemHolderInfo paramItemHolderInfo1, @NonNull RecyclerView.ItemAnimator.ItemHolderInfo paramItemHolderInfo2);
  }
}
