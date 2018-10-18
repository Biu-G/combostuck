package android.support.v4.util;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.RestrictTo;
import java.lang.reflect.Array;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

public final class ArraySet<E>
  implements Collection<E>, Set<E>
{
  private static final int[] c = new int[0];
  private static final Object[] d = new Object[0];
  @Nullable
  private static Object[] e;
  private static int f;
  @Nullable
  private static Object[] g;
  private static int h;
  Object[] a;
  int b;
  private int[] i;
  private b<E, E> j;
  
  public ArraySet()
  {
    this(0);
  }
  
  public ArraySet(int paramInt)
  {
    if (paramInt == 0)
    {
      i = c;
      a = d;
    }
    else
    {
      a(paramInt);
    }
    b = 0;
  }
  
  public ArraySet(@Nullable ArraySet<E> paramArraySet)
  {
    this();
    if (paramArraySet != null) {
      addAll(paramArraySet);
    }
  }
  
  public ArraySet(@Nullable Collection<E> paramCollection)
  {
    this();
    if (paramCollection != null) {
      addAll(paramCollection);
    }
  }
  
  private int a()
  {
    int m = b;
    if (m == 0) {
      return -1;
    }
    int n = a.a(i, m, 0);
    if (n < 0) {
      return n;
    }
    if (a[n] == null) {
      return n;
    }
    int k = n + 1;
    while ((k < m) && (i[k] == 0))
    {
      if (a[k] == null) {
        return k;
      }
      k += 1;
    }
    m = n - 1;
    while ((m >= 0) && (i[m] == 0))
    {
      if (a[m] == null) {
        return m;
      }
      m -= 1;
    }
    return k;
  }
  
  private int a(Object paramObject, int paramInt)
  {
    int m = b;
    if (m == 0) {
      return -1;
    }
    int n = a.a(i, m, paramInt);
    if (n < 0) {
      return n;
    }
    if (paramObject.equals(a[n])) {
      return n;
    }
    int k = n + 1;
    while ((k < m) && (i[k] == paramInt))
    {
      if (paramObject.equals(a[k])) {
        return k;
      }
      k += 1;
    }
    m = n - 1;
    while ((m >= 0) && (i[m] == paramInt))
    {
      if (paramObject.equals(a[m])) {
        return m;
      }
      m -= 1;
    }
    return k;
  }
  
  private void a(int paramInt)
  {
    if (paramInt == 8) {
      try
      {
        if (g != null)
        {
          Object[] arrayOfObject1 = g;
          a = arrayOfObject1;
          g = (Object[])arrayOfObject1[0];
          i = ((int[])arrayOfObject1[1]);
          arrayOfObject1[1] = null;
          arrayOfObject1[0] = null;
          h -= 1;
          return;
        }
      }
      finally {}
    }
    if (paramInt == 4) {
      try
      {
        if (e != null)
        {
          Object[] arrayOfObject2 = e;
          a = arrayOfObject2;
          e = (Object[])arrayOfObject2[0];
          i = ((int[])arrayOfObject2[1]);
          arrayOfObject2[1] = null;
          arrayOfObject2[0] = null;
          f -= 1;
          return;
        }
      }
      finally {}
    }
    i = new int[paramInt];
    a = new Object[paramInt];
  }
  
  private static void a(int[] paramArrayOfInt, Object[] paramArrayOfObject, int paramInt)
  {
    if (paramArrayOfInt.length == 8) {
      try
      {
        if (h < 10)
        {
          paramArrayOfObject[0] = g;
          paramArrayOfObject[1] = paramArrayOfInt;
          paramInt -= 1;
          break label114;
          g = paramArrayOfObject;
          h += 1;
        }
        return;
      }
      finally {}
    }
    if (paramArrayOfInt.length == 4) {}
    for (;;)
    {
      try
      {
        if (f < 10)
        {
          paramArrayOfObject[0] = e;
          paramArrayOfObject[1] = paramArrayOfInt;
          paramInt -= 1;
          break label130;
          e = paramArrayOfObject;
          f += 1;
        }
        return;
      }
      finally {}
      return;
      label114:
      while (paramInt >= 2)
      {
        paramArrayOfObject[paramInt] = null;
        paramInt -= 1;
      }
      break;
      label130:
      while (paramInt >= 2)
      {
        paramArrayOfObject[paramInt] = null;
        paramInt -= 1;
      }
    }
  }
  
  private b<E, E> b()
  {
    if (j == null) {
      j = new b()
      {
        protected int a()
        {
          return b;
        }
        
        protected int a(Object paramAnonymousObject)
        {
          return indexOf(paramAnonymousObject);
        }
        
        protected Object a(int paramAnonymousInt1, int paramAnonymousInt2)
        {
          return a[paramAnonymousInt1];
        }
        
        protected E a(int paramAnonymousInt, E paramAnonymousE)
        {
          throw new UnsupportedOperationException("not a map");
        }
        
        protected void a(int paramAnonymousInt)
        {
          removeAt(paramAnonymousInt);
        }
        
        protected void a(E paramAnonymousE1, E paramAnonymousE2)
        {
          add(paramAnonymousE1);
        }
        
        protected int b(Object paramAnonymousObject)
        {
          return indexOf(paramAnonymousObject);
        }
        
        protected Map<E, E> b()
        {
          throw new UnsupportedOperationException("not a map");
        }
        
        protected void c()
        {
          clear();
        }
      };
    }
    return j;
  }
  
  public boolean add(@Nullable E paramE)
  {
    int k;
    int m;
    if (paramE == null)
    {
      k = a();
      m = 0;
    }
    else
    {
      m = paramE.hashCode();
      k = a(paramE, m);
    }
    if (k >= 0) {
      return false;
    }
    int n = k;
    int[] arrayOfInt;
    Object localObject;
    if (b >= i.length)
    {
      int i1 = b;
      k = 4;
      if (i1 >= 8)
      {
        k = b;
        k = (b >> 1) + k;
      }
      else if (b >= 4)
      {
        k = 8;
      }
      arrayOfInt = i;
      localObject = a;
      a(k);
      if (i.length > 0)
      {
        System.arraycopy(arrayOfInt, 0, i, 0, arrayOfInt.length);
        System.arraycopy(localObject, 0, a, 0, localObject.length);
      }
      a(arrayOfInt, (Object[])localObject, b);
    }
    if (n < b)
    {
      arrayOfInt = i;
      localObject = i;
      k = n + 1;
      System.arraycopy(arrayOfInt, n, localObject, k, b - n);
      System.arraycopy(a, n, a, k, b - n);
    }
    i[n] = m;
    a[n] = paramE;
    b += 1;
    return true;
  }
  
  public void addAll(@NonNull ArraySet<? extends E> paramArraySet)
  {
    int m = b;
    ensureCapacity(b + m);
    int n = b;
    int k = 0;
    if (n == 0)
    {
      if (m > 0)
      {
        System.arraycopy(i, 0, i, 0, m);
        System.arraycopy(a, 0, a, 0, m);
        b = m;
      }
    }
    else {
      while (k < m)
      {
        add(paramArraySet.valueAt(k));
        k += 1;
      }
    }
  }
  
  public boolean addAll(@NonNull Collection<? extends E> paramCollection)
  {
    ensureCapacity(b + paramCollection.size());
    paramCollection = paramCollection.iterator();
    boolean bool = false;
    while (paramCollection.hasNext()) {
      bool |= add(paramCollection.next());
    }
    return bool;
  }
  
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
  public void append(E paramE)
  {
    int m = b;
    int k;
    if (paramE == null) {
      k = 0;
    } else {
      k = paramE.hashCode();
    }
    if (m < i.length)
    {
      if ((m > 0) && (i[(m - 1)] > k))
      {
        add(paramE);
        return;
      }
      b = (m + 1);
      i[m] = k;
      a[m] = paramE;
      return;
    }
    throw new IllegalStateException("Array is full");
  }
  
  public void clear()
  {
    if (b != 0)
    {
      a(i, a, b);
      i = c;
      a = d;
      b = 0;
    }
  }
  
  public boolean contains(@Nullable Object paramObject)
  {
    return indexOf(paramObject) >= 0;
  }
  
  public boolean containsAll(@NonNull Collection<?> paramCollection)
  {
    paramCollection = paramCollection.iterator();
    while (paramCollection.hasNext()) {
      if (!contains(paramCollection.next())) {
        return false;
      }
    }
    return true;
  }
  
  public void ensureCapacity(int paramInt)
  {
    if (i.length < paramInt)
    {
      int[] arrayOfInt = i;
      Object[] arrayOfObject = a;
      a(paramInt);
      if (b > 0)
      {
        System.arraycopy(arrayOfInt, 0, i, 0, b);
        System.arraycopy(arrayOfObject, 0, a, 0, b);
      }
      a(arrayOfInt, arrayOfObject, b);
    }
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {
      return true;
    }
    int k;
    if ((paramObject instanceof Set))
    {
      paramObject = (Set)paramObject;
      if (size() != paramObject.size()) {
        return false;
      }
      k = 0;
    }
    try
    {
      while (k < b)
      {
        boolean bool = paramObject.contains(valueAt(k));
        if (!bool) {
          return false;
        }
        k += 1;
      }
      return true;
    }
    catch (NullPointerException paramObject)
    {
      return false;
    }
    catch (ClassCastException paramObject) {}
    return false;
    return false;
  }
  
  public int hashCode()
  {
    int[] arrayOfInt = i;
    int n = b;
    int k = 0;
    int m = 0;
    while (k < n)
    {
      m += arrayOfInt[k];
      k += 1;
    }
    return m;
  }
  
  public int indexOf(@Nullable Object paramObject)
  {
    if (paramObject == null) {
      return a();
    }
    return a(paramObject, paramObject.hashCode());
  }
  
  public boolean isEmpty()
  {
    return b <= 0;
  }
  
  public Iterator<E> iterator()
  {
    return b().e().iterator();
  }
  
  public boolean remove(@Nullable Object paramObject)
  {
    int k = indexOf(paramObject);
    if (k >= 0)
    {
      removeAt(k);
      return true;
    }
    return false;
  }
  
  public boolean removeAll(@NonNull ArraySet<? extends E> paramArraySet)
  {
    int m = b;
    int n = b;
    boolean bool = false;
    int k = 0;
    while (k < m)
    {
      remove(paramArraySet.valueAt(k));
      k += 1;
    }
    if (n != b) {
      bool = true;
    }
    return bool;
  }
  
  public boolean removeAll(@NonNull Collection<?> paramCollection)
  {
    paramCollection = paramCollection.iterator();
    boolean bool = false;
    while (paramCollection.hasNext()) {
      bool |= remove(paramCollection.next());
    }
    return bool;
  }
  
  public E removeAt(int paramInt)
  {
    Object localObject = a[paramInt];
    if (b <= 1)
    {
      a(i, a, b);
      i = c;
      a = d;
      b = 0;
      return localObject;
    }
    int m = i.length;
    int k = 8;
    int[] arrayOfInt;
    if ((m > 8) && (b < i.length / 3))
    {
      if (b > 8)
      {
        k = b;
        k = (b >> 1) + k;
      }
      arrayOfInt = i;
      Object[] arrayOfObject = a;
      a(k);
      b -= 1;
      if (paramInt > 0)
      {
        System.arraycopy(arrayOfInt, 0, i, 0, paramInt);
        System.arraycopy(arrayOfObject, 0, a, 0, paramInt);
      }
      if (paramInt < b)
      {
        k = paramInt + 1;
        System.arraycopy(arrayOfInt, k, i, paramInt, b - paramInt);
        System.arraycopy(arrayOfObject, k, a, paramInt, b - paramInt);
        return localObject;
      }
    }
    else
    {
      b -= 1;
      if (paramInt < b)
      {
        arrayOfInt = i;
        k = paramInt + 1;
        System.arraycopy(arrayOfInt, k, i, paramInt, b - paramInt);
        System.arraycopy(a, k, a, paramInt, b - paramInt);
      }
      a[b] = null;
    }
    return localObject;
  }
  
  public boolean retainAll(@NonNull Collection<?> paramCollection)
  {
    int k = b - 1;
    boolean bool = false;
    while (k >= 0)
    {
      if (!paramCollection.contains(a[k]))
      {
        removeAt(k);
        bool = true;
      }
      k -= 1;
    }
    return bool;
  }
  
  public int size()
  {
    return b;
  }
  
  @NonNull
  public Object[] toArray()
  {
    Object[] arrayOfObject = new Object[b];
    System.arraycopy(a, 0, arrayOfObject, 0, b);
    return arrayOfObject;
  }
  
  @NonNull
  public <T> T[] toArray(@NonNull T[] paramArrayOfT)
  {
    Object localObject = paramArrayOfT;
    if (paramArrayOfT.length < b) {
      localObject = (Object[])Array.newInstance(paramArrayOfT.getClass().getComponentType(), b);
    }
    System.arraycopy(a, 0, localObject, 0, b);
    if (localObject.length > b) {
      localObject[b] = null;
    }
    return localObject;
  }
  
  public String toString()
  {
    if (isEmpty()) {
      return "{}";
    }
    StringBuilder localStringBuilder = new StringBuilder(b * 14);
    localStringBuilder.append('{');
    int k = 0;
    while (k < b)
    {
      if (k > 0) {
        localStringBuilder.append(", ");
      }
      Object localObject = valueAt(k);
      if (localObject != this) {
        localStringBuilder.append(localObject);
      } else {
        localStringBuilder.append("(this Set)");
      }
      k += 1;
    }
    localStringBuilder.append('}');
    return localStringBuilder.toString();
  }
  
  @Nullable
  public E valueAt(int paramInt)
  {
    return a[paramInt];
  }
}
