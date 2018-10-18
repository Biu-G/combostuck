package android.arch.lifecycle;

import android.support.annotation.Nullable;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

class a
{
  static a a = new a();
  private final Map<Class, a> b = new HashMap();
  private final Map<Class, Boolean> c = new HashMap();
  
  a() {}
  
  private a a(Class paramClass, @Nullable Method[] paramArrayOfMethod)
  {
    Object localObject1 = paramClass.getSuperclass();
    HashMap localHashMap = new HashMap();
    if (localObject1 != null)
    {
      localObject1 = b((Class)localObject1);
      if (localObject1 != null) {
        localHashMap.putAll(b);
      }
    }
    localObject1 = paramClass.getInterfaces();
    int j = localObject1.length;
    int i = 0;
    Object localObject2;
    Object localObject3;
    while (i < j)
    {
      localObject2 = bb.entrySet().iterator();
      while (((Iterator)localObject2).hasNext())
      {
        localObject3 = (Map.Entry)((Iterator)localObject2).next();
        a(localHashMap, (b)((Map.Entry)localObject3).getKey(), (Lifecycle.Event)((Map.Entry)localObject3).getValue(), paramClass);
      }
      i += 1;
    }
    if (paramArrayOfMethod == null) {
      paramArrayOfMethod = c(paramClass);
    }
    int k = paramArrayOfMethod.length;
    j = 0;
    boolean bool = false;
    while (j < k)
    {
      localObject1 = paramArrayOfMethod[j];
      localObject3 = (OnLifecycleEvent)((Method)localObject1).getAnnotation(OnLifecycleEvent.class);
      if (localObject3 != null)
      {
        localObject2 = ((Method)localObject1).getParameterTypes();
        if (localObject2.length > 0)
        {
          if (localObject2[0].isAssignableFrom(LifecycleOwner.class)) {
            i = 1;
          } else {
            throw new IllegalArgumentException("invalid parameter type. Must be one and instanceof LifecycleOwner");
          }
        }
        else {
          i = 0;
        }
        localObject3 = ((OnLifecycleEvent)localObject3).value();
        if (localObject2.length > 1) {
          if (localObject2[1].isAssignableFrom(Lifecycle.Event.class))
          {
            if (localObject3 == Lifecycle.Event.ON_ANY) {
              i = 2;
            } else {
              throw new IllegalArgumentException("Second arg is supported only for ON_ANY value");
            }
          }
          else {
            throw new IllegalArgumentException("invalid parameter type. second arg must be an event");
          }
        }
        if (localObject2.length <= 2)
        {
          a(localHashMap, new b(i, (Method)localObject1), (Lifecycle.Event)localObject3, paramClass);
          bool = true;
        }
      }
      else
      {
        j += 1;
        continue;
      }
      throw new IllegalArgumentException("cannot have more than 2 params");
    }
    paramArrayOfMethod = new a(localHashMap);
    b.put(paramClass, paramArrayOfMethod);
    c.put(paramClass, Boolean.valueOf(bool));
    return paramArrayOfMethod;
  }
  
  private void a(Map<b, Lifecycle.Event> paramMap, b paramB, Lifecycle.Event paramEvent, Class paramClass)
  {
    Lifecycle.Event localEvent = (Lifecycle.Event)paramMap.get(paramB);
    if ((localEvent != null) && (paramEvent != localEvent))
    {
      paramMap = b;
      paramB = new StringBuilder();
      paramB.append("Method ");
      paramB.append(paramMap.getName());
      paramB.append(" in ");
      paramB.append(paramClass.getName());
      paramB.append(" already declared with different @OnLifecycleEvent value: previous value ");
      paramB.append(localEvent);
      paramB.append(", new value ");
      paramB.append(paramEvent);
      throw new IllegalArgumentException(paramB.toString());
    }
    if (localEvent == null) {
      paramMap.put(paramB, paramEvent);
    }
  }
  
  private Method[] c(Class paramClass)
  {
    try
    {
      paramClass = paramClass.getDeclaredMethods();
      return paramClass;
    }
    catch (NoClassDefFoundError paramClass)
    {
      throw new IllegalArgumentException("The observer class has some methods that use newer APIs which are not available in the current OS version. Lifecycles cannot access even other methods so you should make sure that your observer classes only access framework classes that are available in your min API level OR use lifecycle:compiler annotation processor.", paramClass);
    }
  }
  
  boolean a(Class paramClass)
  {
    if (c.containsKey(paramClass)) {
      return ((Boolean)c.get(paramClass)).booleanValue();
    }
    Method[] arrayOfMethod = c(paramClass);
    int j = arrayOfMethod.length;
    int i = 0;
    while (i < j)
    {
      if ((OnLifecycleEvent)arrayOfMethod[i].getAnnotation(OnLifecycleEvent.class) != null)
      {
        a(paramClass, arrayOfMethod);
        return true;
      }
      i += 1;
    }
    c.put(paramClass, Boolean.valueOf(false));
    return false;
  }
  
  a b(Class paramClass)
  {
    a localA = (a)b.get(paramClass);
    if (localA != null) {
      return localA;
    }
    return a(paramClass, null);
  }
  
  static class a
  {
    final Map<Lifecycle.Event, List<a.b>> a;
    final Map<a.b, Lifecycle.Event> b;
    
    a(Map<a.b, Lifecycle.Event> paramMap)
    {
      b = paramMap;
      a = new HashMap();
      Iterator localIterator = paramMap.entrySet().iterator();
      while (localIterator.hasNext())
      {
        Map.Entry localEntry = (Map.Entry)localIterator.next();
        Lifecycle.Event localEvent = (Lifecycle.Event)localEntry.getValue();
        List localList = (List)a.get(localEvent);
        paramMap = localList;
        if (localList == null)
        {
          paramMap = new ArrayList();
          a.put(localEvent, paramMap);
        }
        paramMap.add(localEntry.getKey());
      }
    }
    
    private static void a(List<a.b> paramList, LifecycleOwner paramLifecycleOwner, Lifecycle.Event paramEvent, Object paramObject)
    {
      if (paramList != null)
      {
        int i = paramList.size() - 1;
        while (i >= 0)
        {
          ((a.b)paramList.get(i)).a(paramLifecycleOwner, paramEvent, paramObject);
          i -= 1;
        }
      }
    }
    
    void a(LifecycleOwner paramLifecycleOwner, Lifecycle.Event paramEvent, Object paramObject)
    {
      a((List)a.get(paramEvent), paramLifecycleOwner, paramEvent, paramObject);
      a((List)a.get(Lifecycle.Event.ON_ANY), paramLifecycleOwner, paramEvent, paramObject);
    }
  }
  
  static class b
  {
    final int a;
    final Method b;
    
    b(int paramInt, Method paramMethod)
    {
      a = paramInt;
      b = paramMethod;
      b.setAccessible(true);
    }
    
    void a(LifecycleOwner paramLifecycleOwner, Lifecycle.Event paramEvent, Object paramObject)
    {
      try
      {
        switch (a)
        {
        case 2: 
          b.invoke(paramObject, new Object[] { paramLifecycleOwner, paramEvent });
          return;
        }
      }
      catch (IllegalAccessException paramLifecycleOwner)
      {
        throw new RuntimeException(paramLifecycleOwner);
      }
      catch (InvocationTargetException paramLifecycleOwner)
      {
        throw new RuntimeException("Failed to call observer method", paramLifecycleOwner.getCause());
      }
      b.invoke(paramObject, new Object[] { paramLifecycleOwner });
      return;
      b.invoke(paramObject, new Object[0]);
      return;
    }
    
    public boolean equals(Object paramObject)
    {
      if (this == paramObject) {
        return true;
      }
      if (paramObject != null)
      {
        if (getClass() != paramObject.getClass()) {
          return false;
        }
        paramObject = (b)paramObject;
        return (a == a) && (b.getName().equals(b.getName()));
      }
      return false;
    }
    
    public int hashCode()
    {
      return a * 31 + b.getName().hashCode();
    }
  }
}
