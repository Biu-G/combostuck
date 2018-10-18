package android.support.v7.util;

import android.support.annotation.IntRange;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v7.widget.RecyclerView.Adapter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;

public class DiffUtil
{
  private static final Comparator<c> a = new Comparator()
  {
    public int a(DiffUtil.c paramAnonymousC1, DiffUtil.c paramAnonymousC2)
    {
      int j = a - a;
      int i = j;
      if (j == 0) {
        i = b - b;
      }
      return i;
    }
  };
  
  private DiffUtil() {}
  
  private static c a(Callback paramCallback, int paramInt1, int paramInt2, int paramInt3, int paramInt4, int[] paramArrayOfInt1, int[] paramArrayOfInt2, int paramInt5)
  {
    paramInt2 -= paramInt1;
    paramInt4 -= paramInt3;
    if ((paramInt2 >= 1) && (paramInt4 >= 1))
    {
      int i3 = paramInt2 - paramInt4;
      int i = (paramInt2 + paramInt4 + 1) / 2;
      int j = paramInt5 - i - 1;
      int k = paramInt5 + i + 1;
      Arrays.fill(paramArrayOfInt1, j, k, 0);
      Arrays.fill(paramArrayOfInt2, j + i3, k + i3, paramInt2);
      if (i3 % 2 != 0) {
        k = 1;
      } else {
        k = 0;
      }
      int m = 0;
      while (m <= i)
      {
        int n = -m;
        int i1 = n;
        boolean bool;
        label202:
        int i2;
        while (i1 <= m)
        {
          if (i1 != n) {
            if (i1 != m)
            {
              j = paramInt5 + i1;
              if (paramArrayOfInt1[(j - 1)] < paramArrayOfInt1[(j + 1)]) {}
            }
            else
            {
              j = paramArrayOfInt1[(paramInt5 + i1 - 1)] + 1;
              bool = true;
              break label202;
            }
          }
          j = paramArrayOfInt1[(paramInt5 + i1 + 1)];
          bool = false;
          i2 = j - i1;
          while ((j < paramInt2) && (i2 < paramInt4) && (paramCallback.areItemsTheSame(paramInt1 + j, paramInt3 + i2)))
          {
            j += 1;
            i2 += 1;
          }
          i2 = paramInt5 + i1;
          paramArrayOfInt1[i2] = j;
          if ((k != 0) && (i1 >= i3 - m + 1) && (i1 <= i3 + m - 1) && (paramArrayOfInt1[i2] >= paramArrayOfInt2[i2]))
          {
            paramCallback = new c();
            a = paramArrayOfInt2[i2];
            b = (a - i1);
            c = (paramArrayOfInt1[i2] - paramArrayOfInt2[i2]);
            d = bool;
            e = false;
            return paramCallback;
          }
          i1 += 2;
        }
        i1 = n;
        while (i1 <= m)
        {
          int i4 = i1 + i3;
          if (i4 != m + i3) {
            if (i4 != n + i3)
            {
              j = paramInt5 + i4;
              if (paramArrayOfInt2[(j - 1)] < paramArrayOfInt2[(j + 1)]) {}
            }
            else
            {
              j = paramArrayOfInt2[(paramInt5 + i4 + 1)] - 1;
              bool = true;
              break label473;
            }
          }
          j = paramArrayOfInt2[(paramInt5 + i4 - 1)];
          bool = false;
          label473:
          i2 = j - i4;
          while ((j > 0) && (i2 > 0) && (paramCallback.areItemsTheSame(paramInt1 + j - 1, paramInt3 + i2 - 1)))
          {
            j -= 1;
            i2 -= 1;
          }
          i2 = paramInt5 + i4;
          paramArrayOfInt2[i2] = j;
          if ((k == 0) && (i4 >= n) && (i4 <= m) && (paramArrayOfInt1[i2] >= paramArrayOfInt2[i2]))
          {
            paramCallback = new c();
            a = paramArrayOfInt2[i2];
            b = (a - i4);
            c = (paramArrayOfInt1[i2] - paramArrayOfInt2[i2]);
            d = bool;
            e = true;
            return paramCallback;
          }
          i1 += 2;
        }
        m += 1;
      }
      throw new IllegalStateException("DiffUtil hit an unexpected case while trying to calculate the optimal path. Please make sure your data is not changing during the diff calculation.");
    }
    return null;
  }
  
  @NonNull
  public static DiffResult calculateDiff(@NonNull Callback paramCallback)
  {
    return calculateDiff(paramCallback, true);
  }
  
  @NonNull
  public static DiffResult calculateDiff(@NonNull Callback paramCallback, boolean paramBoolean)
  {
    int i = paramCallback.getOldListSize();
    int j = paramCallback.getNewListSize();
    ArrayList localArrayList1 = new ArrayList();
    ArrayList localArrayList2 = new ArrayList();
    localArrayList2.add(new b(0, i, 0, j));
    i = Math.abs(i - j) + (i + j);
    j = i * 2;
    int[] arrayOfInt1 = new int[j];
    int[] arrayOfInt2 = new int[j];
    ArrayList localArrayList3 = new ArrayList();
    while (!localArrayList2.isEmpty())
    {
      b localB2 = (b)localArrayList2.remove(localArrayList2.size() - 1);
      c localC = a(paramCallback, a, b, c, d, arrayOfInt1, arrayOfInt2, i);
      if (localC != null)
      {
        if (c > 0) {
          localArrayList1.add(localC);
        }
        a += a;
        b += c;
        b localB1;
        if (localArrayList3.isEmpty()) {
          localB1 = new b();
        } else {
          localB1 = (b)localArrayList3.remove(localArrayList3.size() - 1);
        }
        a = a;
        c = c;
        if (e)
        {
          b = a;
          d = b;
        }
        else if (d)
        {
          b = (a - 1);
          d = b;
        }
        else
        {
          b = a;
          d = (b - 1);
        }
        localArrayList2.add(localB1);
        if (e)
        {
          if (d)
          {
            a = (a + c + 1);
            c = (b + c);
          }
          else
          {
            a = (a + c);
            c = (b + c + 1);
          }
        }
        else
        {
          a = (a + c);
          c = (b + c);
        }
        localArrayList2.add(localB2);
      }
      else
      {
        localArrayList3.add(localB2);
      }
    }
    Collections.sort(localArrayList1, a);
    return new DiffResult(paramCallback, localArrayList1, arrayOfInt1, arrayOfInt2, paramBoolean);
  }
  
  public static abstract class Callback
  {
    public Callback() {}
    
    public abstract boolean areContentsTheSame(int paramInt1, int paramInt2);
    
    public abstract boolean areItemsTheSame(int paramInt1, int paramInt2);
    
    @Nullable
    public Object getChangePayload(int paramInt1, int paramInt2)
    {
      return null;
    }
    
    public abstract int getNewListSize();
    
    public abstract int getOldListSize();
  }
  
  public static class DiffResult
  {
    public static final int NO_POSITION = -1;
    private final List<DiffUtil.c> a;
    private final int[] b;
    private final int[] c;
    private final DiffUtil.Callback d;
    private final int e;
    private final int f;
    private final boolean g;
    
    DiffResult(DiffUtil.Callback paramCallback, List<DiffUtil.c> paramList, int[] paramArrayOfInt1, int[] paramArrayOfInt2, boolean paramBoolean)
    {
      a = paramList;
      b = paramArrayOfInt1;
      c = paramArrayOfInt2;
      Arrays.fill(b, 0);
      Arrays.fill(c, 0);
      d = paramCallback;
      e = paramCallback.getOldListSize();
      f = paramCallback.getNewListSize();
      g = paramBoolean;
      a();
      b();
    }
    
    private static DiffUtil.a a(List<DiffUtil.a> paramList, int paramInt, boolean paramBoolean)
    {
      int i = paramList.size() - 1;
      while (i >= 0)
      {
        DiffUtil.a localA1 = (DiffUtil.a)paramList.get(i);
        if ((a == paramInt) && (c == paramBoolean))
        {
          paramList.remove(i);
          while (i < paramList.size())
          {
            DiffUtil.a localA2 = (DiffUtil.a)paramList.get(i);
            int j = b;
            if (paramBoolean) {
              paramInt = 1;
            } else {
              paramInt = -1;
            }
            b = (j + paramInt);
            i += 1;
          }
          return localA1;
        }
        i -= 1;
      }
      return null;
    }
    
    private void a()
    {
      DiffUtil.c localC;
      if (a.isEmpty()) {
        localC = null;
      } else {
        localC = (DiffUtil.c)a.get(0);
      }
      if ((localC == null) || (a != 0) || (b != 0))
      {
        localC = new DiffUtil.c();
        a = 0;
        b = 0;
        d = false;
        c = 0;
        e = false;
        a.add(0, localC);
      }
    }
    
    private void a(int paramInt1, int paramInt2, int paramInt3)
    {
      if (b[(paramInt1 - 1)] != 0) {
        return;
      }
      a(paramInt1, paramInt2, paramInt3, false);
    }
    
    private void a(List<DiffUtil.a> paramList, ListUpdateCallback paramListUpdateCallback, int paramInt1, int paramInt2, int paramInt3)
    {
      if (!g)
      {
        paramListUpdateCallback.onInserted(paramInt1, paramInt2);
        return;
      }
      paramInt2 -= 1;
      while (paramInt2 >= 0)
      {
        Object localObject = c;
        int i = paramInt3 + paramInt2;
        int j = localObject[i] & 0x1F;
        if (j != 0)
        {
          if ((j != 4) && (j != 8))
          {
            if (j == 16)
            {
              paramList.add(new DiffUtil.a(i, paramInt1, false));
            }
            else
            {
              paramList = new StringBuilder();
              paramList.append("unknown flag for pos ");
              paramList.append(i);
              paramList.append(" ");
              paramList.append(Long.toBinaryString(j));
              throw new IllegalStateException(paramList.toString());
            }
          }
          else
          {
            int k = c[i] >> 5;
            paramListUpdateCallback.onMoved(ab, paramInt1);
            if (j == 4) {
              paramListUpdateCallback.onChanged(paramInt1, 1, d.getChangePayload(k, i));
            }
          }
        }
        else
        {
          paramListUpdateCallback.onInserted(paramInt1, 1);
          localObject = paramList.iterator();
          while (((Iterator)localObject).hasNext())
          {
            DiffUtil.a localA = (DiffUtil.a)((Iterator)localObject).next();
            b += 1;
          }
        }
        paramInt2 -= 1;
      }
    }
    
    private boolean a(int paramInt1, int paramInt2, int paramInt3, boolean paramBoolean)
    {
      int i;
      int j;
      int k;
      if (paramBoolean)
      {
        i = paramInt2 - 1;
        paramInt2 = paramInt1;
        j = i;
      }
      else
      {
        k = paramInt1 - 1;
        j = k;
        i = paramInt2;
        paramInt2 = k;
      }
      while (paramInt3 >= 0)
      {
        Object localObject = (DiffUtil.c)a.get(paramInt3);
        int m = a;
        int n = c;
        int i1 = b;
        int i2 = c;
        k = 4;
        if (paramBoolean)
        {
          paramInt2 -= 1;
          while (paramInt2 >= m + n)
          {
            if (d.areItemsTheSame(paramInt2, j))
            {
              if (d.areContentsTheSame(paramInt2, j)) {
                k = 8;
              }
              c[j] = (paramInt2 << 5 | 0x10);
              b[paramInt2] = (j << 5 | k);
              return true;
            }
            paramInt2 -= 1;
          }
        }
        paramInt2 = i - 1;
        while (paramInt2 >= i1 + i2)
        {
          if (d.areItemsTheSame(j, paramInt2))
          {
            if (d.areContentsTheSame(j, paramInt2)) {
              k = 8;
            }
            localObject = b;
            paramInt1 -= 1;
            localObject[paramInt1] = (paramInt2 << 5 | 0x10);
            c[paramInt2] = (paramInt1 << 5 | k);
            return true;
          }
          paramInt2 -= 1;
        }
        paramInt2 = a;
        i = b;
        paramInt3 -= 1;
      }
      return false;
    }
    
    private void b()
    {
      int j = e;
      int i = f;
      int k = a.size() - 1;
      while (k >= 0)
      {
        DiffUtil.c localC = (DiffUtil.c)a.get(k);
        int i2 = a;
        int i3 = c;
        int n = b;
        int i1 = c;
        int m;
        if (g)
        {
          for (;;)
          {
            m = i;
            if (j <= i2 + i3) {
              break;
            }
            a(j, i, k);
            j -= 1;
          }
          while (m > n + i1)
          {
            b(j, m, k);
            m -= 1;
          }
        }
        i = 0;
        while (i < c)
        {
          m = a + i;
          n = b + i;
          if (d.areContentsTheSame(m, n)) {
            j = 1;
          } else {
            j = 2;
          }
          b[m] = (n << 5 | j);
          c[n] = (m << 5 | j);
          i += 1;
        }
        j = a;
        i = b;
        k -= 1;
      }
    }
    
    private void b(int paramInt1, int paramInt2, int paramInt3)
    {
      if (c[(paramInt2 - 1)] != 0) {
        return;
      }
      a(paramInt1, paramInt2, paramInt3, true);
    }
    
    private void b(List<DiffUtil.a> paramList, ListUpdateCallback paramListUpdateCallback, int paramInt1, int paramInt2, int paramInt3)
    {
      if (!g)
      {
        paramListUpdateCallback.onRemoved(paramInt1, paramInt2);
        return;
      }
      paramInt2 -= 1;
      while (paramInt2 >= 0)
      {
        Object localObject = b;
        int i = paramInt3 + paramInt2;
        int j = localObject[i] & 0x1F;
        if (j != 0)
        {
          if ((j != 4) && (j != 8))
          {
            if (j == 16)
            {
              paramList.add(new DiffUtil.a(i, paramInt1 + paramInt2, true));
            }
            else
            {
              paramList = new StringBuilder();
              paramList.append("unknown flag for pos ");
              paramList.append(i);
              paramList.append(" ");
              paramList.append(Long.toBinaryString(j));
              throw new IllegalStateException(paramList.toString());
            }
          }
          else
          {
            int k = b[i] >> 5;
            localObject = a(paramList, k, false);
            paramListUpdateCallback.onMoved(paramInt1 + paramInt2, b - 1);
            if (j == 4) {
              paramListUpdateCallback.onChanged(b - 1, 1, d.getChangePayload(i, k));
            }
          }
        }
        else
        {
          paramListUpdateCallback.onRemoved(paramInt1 + paramInt2, 1);
          localObject = paramList.iterator();
          while (((Iterator)localObject).hasNext())
          {
            DiffUtil.a localA = (DiffUtil.a)((Iterator)localObject).next();
            b -= 1;
          }
        }
        paramInt2 -= 1;
      }
    }
    
    public int convertNewPositionToOld(@IntRange(from=0L) int paramInt)
    {
      if ((paramInt >= 0) && (paramInt < c.length))
      {
        paramInt = c[paramInt];
        if ((paramInt & 0x1F) == 0) {
          return -1;
        }
        return paramInt >> 5;
      }
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("Index out of bounds - passed position = ");
      localStringBuilder.append(paramInt);
      localStringBuilder.append(", new list size = ");
      localStringBuilder.append(c.length);
      throw new IndexOutOfBoundsException(localStringBuilder.toString());
    }
    
    public int convertOldPositionToNew(@IntRange(from=0L) int paramInt)
    {
      if ((paramInt >= 0) && (paramInt < b.length))
      {
        paramInt = b[paramInt];
        if ((paramInt & 0x1F) == 0) {
          return -1;
        }
        return paramInt >> 5;
      }
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("Index out of bounds - passed position = ");
      localStringBuilder.append(paramInt);
      localStringBuilder.append(", old list size = ");
      localStringBuilder.append(b.length);
      throw new IndexOutOfBoundsException(localStringBuilder.toString());
    }
    
    public void dispatchUpdatesTo(@NonNull ListUpdateCallback paramListUpdateCallback)
    {
      if ((paramListUpdateCallback instanceof BatchingListUpdateCallback)) {
        paramListUpdateCallback = (BatchingListUpdateCallback)paramListUpdateCallback;
      } else {
        paramListUpdateCallback = new BatchingListUpdateCallback(paramListUpdateCallback);
      }
      ArrayList localArrayList = new ArrayList();
      int j = e;
      int k = f;
      int i = a.size();
      i -= 1;
      while (i >= 0)
      {
        DiffUtil.c localC = (DiffUtil.c)a.get(i);
        int m = c;
        int n = a + m;
        int i1 = b + m;
        if (n < j) {
          b(localArrayList, paramListUpdateCallback, n, j - n, n);
        }
        if (i1 < k) {
          a(localArrayList, paramListUpdateCallback, n, k - i1, i1);
        }
        j = m - 1;
        while (j >= 0)
        {
          if ((b[(a + j)] & 0x1F) == 2) {
            paramListUpdateCallback.onChanged(a + j, 1, d.getChangePayload(a + j, b + j));
          }
          j -= 1;
        }
        j = a;
        k = b;
        i -= 1;
      }
      paramListUpdateCallback.dispatchLastEvent();
    }
    
    public void dispatchUpdatesTo(@NonNull RecyclerView.Adapter paramAdapter)
    {
      dispatchUpdatesTo(new AdapterListUpdateCallback(paramAdapter));
    }
  }
  
  public static abstract class ItemCallback<T>
  {
    public ItemCallback() {}
    
    public abstract boolean areContentsTheSame(@NonNull T paramT1, @NonNull T paramT2);
    
    public abstract boolean areItemsTheSame(@NonNull T paramT1, @NonNull T paramT2);
    
    @Nullable
    public Object getChangePayload(@NonNull T paramT1, @NonNull T paramT2)
    {
      return null;
    }
  }
  
  private static class a
  {
    int a;
    int b;
    boolean c;
    
    public a(int paramInt1, int paramInt2, boolean paramBoolean)
    {
      a = paramInt1;
      b = paramInt2;
      c = paramBoolean;
    }
  }
  
  static class b
  {
    int a;
    int b;
    int c;
    int d;
    
    public b() {}
    
    public b(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
    {
      a = paramInt1;
      b = paramInt2;
      c = paramInt3;
      d = paramInt4;
    }
  }
  
  static class c
  {
    int a;
    int b;
    int c;
    boolean d;
    boolean e;
    
    c() {}
  }
}
