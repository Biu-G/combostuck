package android.support.v4.widget;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.RestrictTo;
import android.support.v4.util.Pools.Pool;
import android.support.v4.util.Pools.SimplePool;
import android.support.v4.util.SimpleArrayMap;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;

@RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY})
public final class DirectedAcyclicGraph<T>
{
  private final Pools.Pool<ArrayList<T>> a = new Pools.SimplePool(10);
  private final SimpleArrayMap<T, ArrayList<T>> b = new SimpleArrayMap();
  private final ArrayList<T> c = new ArrayList();
  private final HashSet<T> d = new HashSet();
  
  public DirectedAcyclicGraph() {}
  
  @NonNull
  private ArrayList<T> a()
  {
    ArrayList localArrayList2 = (ArrayList)a.acquire();
    ArrayList localArrayList1 = localArrayList2;
    if (localArrayList2 == null) {
      localArrayList1 = new ArrayList();
    }
    return localArrayList1;
  }
  
  private void a(T paramT, ArrayList<T> paramArrayList, HashSet<T> paramHashSet)
  {
    if (paramArrayList.contains(paramT)) {
      return;
    }
    if (!paramHashSet.contains(paramT))
    {
      paramHashSet.add(paramT);
      ArrayList localArrayList = (ArrayList)b.get(paramT);
      if (localArrayList != null)
      {
        int i = 0;
        int j = localArrayList.size();
        while (i < j)
        {
          a(localArrayList.get(i), paramArrayList, paramHashSet);
          i += 1;
        }
      }
      paramHashSet.remove(paramT);
      paramArrayList.add(paramT);
      return;
    }
    throw new RuntimeException("This graph contains cyclic dependencies");
  }
  
  private void a(@NonNull ArrayList<T> paramArrayList)
  {
    paramArrayList.clear();
    a.release(paramArrayList);
  }
  
  public void addEdge(@NonNull T paramT1, @NonNull T paramT2)
  {
    if ((b.containsKey(paramT1)) && (b.containsKey(paramT2)))
    {
      ArrayList localArrayList2 = (ArrayList)b.get(paramT1);
      ArrayList localArrayList1 = localArrayList2;
      if (localArrayList2 == null)
      {
        localArrayList1 = a();
        b.put(paramT1, localArrayList1);
      }
      localArrayList1.add(paramT2);
      return;
    }
    throw new IllegalArgumentException("All nodes must be present in the graph before being added as an edge");
  }
  
  public void addNode(@NonNull T paramT)
  {
    if (!b.containsKey(paramT)) {
      b.put(paramT, null);
    }
  }
  
  public void clear()
  {
    int j = b.size();
    int i = 0;
    while (i < j)
    {
      ArrayList localArrayList = (ArrayList)b.valueAt(i);
      if (localArrayList != null) {
        a(localArrayList);
      }
      i += 1;
    }
    b.clear();
  }
  
  public boolean contains(@NonNull T paramT)
  {
    return b.containsKey(paramT);
  }
  
  @Nullable
  public List getIncomingEdges(@NonNull T paramT)
  {
    return (List)b.get(paramT);
  }
  
  @Nullable
  public List<T> getOutgoingEdges(@NonNull T paramT)
  {
    int j = b.size();
    Object localObject1 = null;
    int i = 0;
    while (i < j)
    {
      ArrayList localArrayList = (ArrayList)b.valueAt(i);
      Object localObject2 = localObject1;
      if (localArrayList != null)
      {
        localObject2 = localObject1;
        if (localArrayList.contains(paramT))
        {
          localObject2 = localObject1;
          if (localObject1 == null) {
            localObject2 = new ArrayList();
          }
          ((ArrayList)localObject2).add(b.keyAt(i));
        }
      }
      i += 1;
      localObject1 = localObject2;
    }
    return localObject1;
  }
  
  @NonNull
  public ArrayList<T> getSortedList()
  {
    c.clear();
    d.clear();
    int j = b.size();
    int i = 0;
    while (i < j)
    {
      a(b.keyAt(i), c, d);
      i += 1;
    }
    return c;
  }
  
  public boolean hasOutgoingEdges(@NonNull T paramT)
  {
    int j = b.size();
    int i = 0;
    while (i < j)
    {
      ArrayList localArrayList = (ArrayList)b.valueAt(i);
      if ((localArrayList != null) && (localArrayList.contains(paramT))) {
        return true;
      }
      i += 1;
    }
    return false;
  }
}
