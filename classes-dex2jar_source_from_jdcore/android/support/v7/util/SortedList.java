package android.support.v7.util;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import java.lang.reflect.Array;
import java.util.Arrays;
import java.util.Collection;
import java.util.Comparator;

public class SortedList<T>
{
  public static final int INVALID_POSITION = -1;
  T[] a;
  private T[] b;
  private int c;
  private int d;
  private int e;
  private Callback f;
  private BatchedCallback g;
  private int h;
  private final Class<T> i;
  
  public SortedList(@NonNull Class<T> paramClass, @NonNull Callback<T> paramCallback)
  {
    this(paramClass, paramCallback, 10);
  }
  
  public SortedList(@NonNull Class<T> paramClass, @NonNull Callback<T> paramCallback, int paramInt)
  {
    i = paramClass;
    a = ((Object[])Array.newInstance(paramClass, paramInt));
    f = paramCallback;
    h = 0;
  }
  
  private int a(T paramT, int paramInt1, int paramInt2, int paramInt3)
  {
    int k = paramInt1 - 1;
    int j;
    Object localObject;
    for (;;)
    {
      j = paramInt1;
      if (k < paramInt2) {
        break;
      }
      localObject = a[k];
      if (f.compare(localObject, paramT) != 0)
      {
        j = paramInt1;
        break;
      }
      if (f.areItemsTheSame(localObject, paramT)) {
        return k;
      }
      k -= 1;
    }
    do
    {
      paramInt1 = j + 1;
      if (paramInt1 >= paramInt3) {
        break;
      }
      localObject = a[paramInt1];
      if (f.compare(localObject, paramT) != 0) {
        break;
      }
      j = paramInt1;
    } while (!f.areItemsTheSame(localObject, paramT));
    return paramInt1;
    return -1;
  }
  
  private int a(T paramT, boolean paramBoolean)
  {
    int k = a(paramT, a, 0, h, 1);
    int j;
    if (k == -1)
    {
      j = 0;
    }
    else
    {
      j = k;
      if (k < h)
      {
        Object localObject = a[k];
        j = k;
        if (f.areItemsTheSame(localObject, paramT))
        {
          if (f.areContentsTheSame(localObject, paramT))
          {
            a[k] = paramT;
            return k;
          }
          a[k] = paramT;
          f.onChanged(k, 1, f.getChangePayload(localObject, paramT));
          return k;
        }
      }
    }
    a(j, paramT);
    if (paramBoolean) {
      f.onInserted(j, 1);
    }
    return j;
  }
  
  private int a(T paramT, T[] paramArrayOfT, int paramInt1, int paramInt2)
  {
    while (paramInt1 < paramInt2)
    {
      if (f.areItemsTheSame(paramArrayOfT[paramInt1], paramT)) {
        return paramInt1;
      }
      paramInt1 += 1;
    }
    return -1;
  }
  
  private int a(T paramT, T[] paramArrayOfT, int paramInt1, int paramInt2, int paramInt3)
  {
    int j = paramInt1;
    while (j < paramInt2)
    {
      paramInt1 = (j + paramInt2) / 2;
      T ? = paramArrayOfT[paramInt1];
      int k = f.compare(?, paramT);
      if (k < 0)
      {
        j = paramInt1 + 1;
      }
      else
      {
        if (k == 0)
        {
          if (f.areItemsTheSame(?, paramT)) {
            return paramInt1;
          }
          j = a(paramT, paramInt1, j, paramInt2);
          if (paramInt3 == 1)
          {
            paramInt2 = j;
            if (j == -1) {
              paramInt2 = paramInt1;
            }
            return paramInt2;
          }
          return j;
        }
        paramInt2 = paramInt1;
      }
    }
    if (paramInt3 == 1) {
      return j;
    }
    return -1;
  }
  
  private void a()
  {
    h -= 1;
    c += 1;
    f.onRemoved(e, 1);
  }
  
  private void a(int paramInt, T paramT)
  {
    if (paramInt <= h)
    {
      if (h == a.length)
      {
        Object[] arrayOfObject = (Object[])Array.newInstance(i, a.length + 10);
        System.arraycopy(a, 0, arrayOfObject, 0, paramInt);
        arrayOfObject[paramInt] = paramT;
        System.arraycopy(a, paramInt, arrayOfObject, paramInt + 1, h - paramInt);
        a = arrayOfObject;
      }
      else
      {
        System.arraycopy(a, paramInt, a, paramInt + 1, h - paramInt);
        a[paramInt] = paramT;
      }
      h += 1;
      return;
    }
    paramT = new StringBuilder();
    paramT.append("cannot add item to ");
    paramT.append(paramInt);
    paramT.append(" because size is ");
    paramT.append(h);
    throw new IndexOutOfBoundsException(paramT.toString());
  }
  
  private void a(int paramInt, boolean paramBoolean)
  {
    System.arraycopy(a, paramInt + 1, a, paramInt, h - paramInt - 1);
    h -= 1;
    a[h] = null;
    if (paramBoolean) {
      f.onRemoved(paramInt, 1);
    }
  }
  
  private void a(T paramT)
  {
    a[e] = paramT;
    e += 1;
    h += 1;
    f.onInserted(e - 1, 1);
  }
  
  private void a(T[] paramArrayOfT)
  {
    if (paramArrayOfT.length < 1) {
      return;
    }
    int j = c(paramArrayOfT);
    if (h == 0)
    {
      a = paramArrayOfT;
      h = j;
      f.onInserted(0, j);
      return;
    }
    a(paramArrayOfT, j);
  }
  
  private void a(T[] paramArrayOfT, int paramInt)
  {
    boolean bool = f instanceof BatchedCallback;
    int j = 0;
    int k;
    if (!bool) {
      k = 1;
    } else {
      k = 0;
    }
    if (k != 0) {
      beginBatchedUpdates();
    }
    b = a;
    c = 0;
    d = h;
    int m = h;
    a = ((Object[])Array.newInstance(i, m + paramInt + 10));
    e = 0;
    for (;;)
    {
      if ((c < d) || (j < paramInt)) {
        if (c == d)
        {
          paramInt -= j;
          System.arraycopy(paramArrayOfT, j, a, e, paramInt);
          e += paramInt;
          h += paramInt;
          f.onInserted(e - paramInt, paramInt);
        }
        else
        {
          if (j != paramInt) {
            break label229;
          }
          paramInt = d - c;
          System.arraycopy(b, c, a, e, paramInt);
          e += paramInt;
        }
      }
      b = null;
      if (k != 0) {
        endBatchedUpdates();
      }
      return;
      label229:
      Object localObject1 = b[c];
      Object localObject2 = paramArrayOfT[j];
      m = f.compare(localObject1, localObject2);
      if (m > 0)
      {
        localObject1 = a;
        m = e;
        e = (m + 1);
        localObject1[m] = localObject2;
        h += 1;
        j += 1;
        f.onInserted(e - 1, 1);
      }
      else if ((m == 0) && (f.areItemsTheSame(localObject1, localObject2)))
      {
        Object[] arrayOfObject = a;
        m = e;
        e = (m + 1);
        arrayOfObject[m] = localObject2;
        m = j + 1;
        c += 1;
        j = m;
        if (!f.areContentsTheSame(localObject1, localObject2))
        {
          f.onChanged(e - 1, 1, f.getChangePayload(localObject1, localObject2));
          j = m;
        }
      }
      else
      {
        localObject2 = a;
        m = e;
        e = (m + 1);
        localObject2[m] = localObject1;
        c += 1;
      }
    }
  }
  
  private void b()
  {
    if (b == null) {
      return;
    }
    throw new IllegalStateException("Data cannot be mutated in the middle of a batch update operation such as addAll or replaceAll.");
  }
  
  private void b(@NonNull T[] paramArrayOfT)
  {
    int j;
    if (!(f instanceof BatchedCallback)) {
      j = 1;
    } else {
      j = 0;
    }
    if (j != 0) {
      beginBatchedUpdates();
    }
    c = 0;
    d = h;
    b = a;
    e = 0;
    int k = c(paramArrayOfT);
    a = ((Object[])Array.newInstance(i, k));
    for (;;)
    {
      if ((e < k) || (c < d)) {
        if (c >= d)
        {
          m = e;
          k -= e;
          System.arraycopy(paramArrayOfT, m, a, m, k);
          e += k;
          h += k;
          f.onInserted(m, k);
        }
        else
        {
          if (e < k) {
            break label215;
          }
          k = d - c;
          h -= k;
          f.onRemoved(e, k);
        }
      }
      b = null;
      if (j != 0) {
        endBatchedUpdates();
      }
      return;
      label215:
      Object localObject = b[c];
      T ? = paramArrayOfT[e];
      int m = f.compare(localObject, ?);
      if (m < 0)
      {
        a();
      }
      else if (m > 0)
      {
        a(?);
      }
      else if (!f.areItemsTheSame(localObject, ?))
      {
        a();
        a(?);
      }
      else
      {
        a[e] = ?;
        c += 1;
        e += 1;
        if (!f.areContentsTheSame(localObject, ?)) {
          f.onChanged(e - 1, 1, f.getChangePayload(localObject, ?));
        }
      }
    }
  }
  
  private boolean b(T paramT, boolean paramBoolean)
  {
    int j = a(paramT, a, 0, h, 2);
    if (j == -1) {
      return false;
    }
    a(j, paramBoolean);
    return true;
  }
  
  private int c(@NonNull T[] paramArrayOfT)
  {
    int j = paramArrayOfT.length;
    int m = 0;
    if (j == 0) {
      return 0;
    }
    Arrays.sort(paramArrayOfT, f);
    int k = 1;
    j = 1;
    while (k < paramArrayOfT.length)
    {
      T ? = paramArrayOfT[k];
      int n;
      if (f.compare(paramArrayOfT[m], ?) == 0)
      {
        n = a(?, paramArrayOfT, m, j);
        if (n != -1)
        {
          paramArrayOfT[n] = ?;
        }
        else
        {
          if (j != k) {
            paramArrayOfT[j] = ?;
          }
          j += 1;
        }
      }
      else
      {
        if (j != k) {
          paramArrayOfT[j] = ?;
        }
        n = j + 1;
        m = j;
        j = n;
      }
      k += 1;
    }
    return j;
  }
  
  private T[] d(T[] paramArrayOfT)
  {
    Object[] arrayOfObject = (Object[])Array.newInstance(i, paramArrayOfT.length);
    System.arraycopy(paramArrayOfT, 0, arrayOfObject, 0, paramArrayOfT.length);
    return arrayOfObject;
  }
  
  public int add(T paramT)
  {
    b();
    return a(paramT, true);
  }
  
  public void addAll(@NonNull Collection<T> paramCollection)
  {
    addAll(paramCollection.toArray((Object[])Array.newInstance(i, paramCollection.size())), true);
  }
  
  public void addAll(@NonNull T... paramVarArgs)
  {
    addAll(paramVarArgs, false);
  }
  
  public void addAll(@NonNull T[] paramArrayOfT, boolean paramBoolean)
  {
    b();
    if (paramArrayOfT.length == 0) {
      return;
    }
    if (paramBoolean)
    {
      a(paramArrayOfT);
      return;
    }
    a(d(paramArrayOfT));
  }
  
  public void beginBatchedUpdates()
  {
    b();
    if ((f instanceof BatchedCallback)) {
      return;
    }
    if (g == null) {
      g = new BatchedCallback(f);
    }
    f = g;
  }
  
  public void clear()
  {
    b();
    if (h == 0) {
      return;
    }
    int j = h;
    Arrays.fill(a, 0, j, null);
    h = 0;
    f.onRemoved(0, j);
  }
  
  public void endBatchedUpdates()
  {
    b();
    if ((f instanceof BatchedCallback)) {
      ((BatchedCallback)f).dispatchLastEvent();
    }
    if (f == g) {
      f = g.a;
    }
  }
  
  public T get(int paramInt)
    throws IndexOutOfBoundsException
  {
    if ((paramInt < h) && (paramInt >= 0))
    {
      if ((b != null) && (paramInt >= e)) {
        return b[(paramInt - e + c)];
      }
      return a[paramInt];
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Asked to get item at ");
    localStringBuilder.append(paramInt);
    localStringBuilder.append(" but size is ");
    localStringBuilder.append(h);
    throw new IndexOutOfBoundsException(localStringBuilder.toString());
  }
  
  public int indexOf(T paramT)
  {
    if (b != null)
    {
      int j = a(paramT, a, 0, e, 4);
      if (j != -1) {
        return j;
      }
      j = a(paramT, b, c, d, 4);
      if (j != -1) {
        return j - c + e;
      }
      return -1;
    }
    return a(paramT, a, 0, h, 4);
  }
  
  public void recalculatePositionOfItemAt(int paramInt)
  {
    b();
    Object localObject = get(paramInt);
    a(paramInt, false);
    int j = a(localObject, false);
    if (paramInt != j) {
      f.onMoved(paramInt, j);
    }
  }
  
  public boolean remove(T paramT)
  {
    b();
    return b(paramT, true);
  }
  
  public T removeItemAt(int paramInt)
  {
    b();
    Object localObject = get(paramInt);
    a(paramInt, true);
    return localObject;
  }
  
  public void replaceAll(@NonNull Collection<T> paramCollection)
  {
    replaceAll(paramCollection.toArray((Object[])Array.newInstance(i, paramCollection.size())), true);
  }
  
  public void replaceAll(@NonNull T... paramVarArgs)
  {
    replaceAll(paramVarArgs, false);
  }
  
  public void replaceAll(@NonNull T[] paramArrayOfT, boolean paramBoolean)
  {
    b();
    if (paramBoolean)
    {
      b(paramArrayOfT);
      return;
    }
    b(d(paramArrayOfT));
  }
  
  public int size()
  {
    return h;
  }
  
  public void updateItemAt(int paramInt, T paramT)
  {
    b();
    Object localObject = get(paramInt);
    if ((localObject != paramT) && (f.areContentsTheSame(localObject, paramT))) {
      j = 0;
    } else {
      j = 1;
    }
    if ((localObject != paramT) && (f.compare(localObject, paramT) == 0))
    {
      a[paramInt] = paramT;
      if (j != 0) {
        f.onChanged(paramInt, 1, f.getChangePayload(localObject, paramT));
      }
      return;
    }
    if (j != 0) {
      f.onChanged(paramInt, 1, f.getChangePayload(localObject, paramT));
    }
    a(paramInt, false);
    int j = a(paramT, false);
    if (paramInt != j) {
      f.onMoved(paramInt, j);
    }
  }
  
  public static class BatchedCallback<T2>
    extends SortedList.Callback<T2>
  {
    final SortedList.Callback<T2> a;
    private final BatchingListUpdateCallback b;
    
    public BatchedCallback(SortedList.Callback<T2> paramCallback)
    {
      a = paramCallback;
      b = new BatchingListUpdateCallback(a);
    }
    
    public boolean areContentsTheSame(T2 paramT21, T2 paramT22)
    {
      return a.areContentsTheSame(paramT21, paramT22);
    }
    
    public boolean areItemsTheSame(T2 paramT21, T2 paramT22)
    {
      return a.areItemsTheSame(paramT21, paramT22);
    }
    
    public int compare(T2 paramT21, T2 paramT22)
    {
      return a.compare(paramT21, paramT22);
    }
    
    public void dispatchLastEvent()
    {
      b.dispatchLastEvent();
    }
    
    @Nullable
    public Object getChangePayload(T2 paramT21, T2 paramT22)
    {
      return a.getChangePayload(paramT21, paramT22);
    }
    
    public void onChanged(int paramInt1, int paramInt2)
    {
      b.onChanged(paramInt1, paramInt2, null);
    }
    
    public void onChanged(int paramInt1, int paramInt2, Object paramObject)
    {
      b.onChanged(paramInt1, paramInt2, paramObject);
    }
    
    public void onInserted(int paramInt1, int paramInt2)
    {
      b.onInserted(paramInt1, paramInt2);
    }
    
    public void onMoved(int paramInt1, int paramInt2)
    {
      b.onMoved(paramInt1, paramInt2);
    }
    
    public void onRemoved(int paramInt1, int paramInt2)
    {
      b.onRemoved(paramInt1, paramInt2);
    }
  }
  
  public static abstract class Callback<T2>
    implements ListUpdateCallback, Comparator<T2>
  {
    public Callback() {}
    
    public abstract boolean areContentsTheSame(T2 paramT21, T2 paramT22);
    
    public abstract boolean areItemsTheSame(T2 paramT21, T2 paramT22);
    
    public abstract int compare(T2 paramT21, T2 paramT22);
    
    @Nullable
    public Object getChangePayload(T2 paramT21, T2 paramT22)
    {
      return null;
    }
    
    public abstract void onChanged(int paramInt1, int paramInt2);
    
    public void onChanged(int paramInt1, int paramInt2, Object paramObject)
    {
      onChanged(paramInt1, paramInt2);
    }
  }
}
