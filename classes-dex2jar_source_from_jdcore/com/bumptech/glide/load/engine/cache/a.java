package com.bumptech.glide.load.engine.cache;

import com.bumptech.glide.util.Preconditions;
import java.util.ArrayDeque;
import java.util.HashMap;
import java.util.Map;
import java.util.Queue;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

final class a
{
  private final Map<String, a> a = new HashMap();
  private final b b = new b();
  
  a() {}
  
  void a(String paramString)
  {
    try
    {
      a localA2 = (a)a.get(paramString);
      a localA1 = localA2;
      if (localA2 == null)
      {
        localA1 = b.a();
        a.put(paramString, localA1);
      }
      b += 1;
      a.lock();
      return;
    }
    finally {}
  }
  
  void b(String paramString)
  {
    try
    {
      a localA = (a)Preconditions.checkNotNull(a.get(paramString));
      if (b >= 1)
      {
        b -= 1;
        if (b == 0)
        {
          localObject = (a)a.remove(paramString);
          if (localObject.equals(localA))
          {
            b.a((a)localObject);
          }
          else
          {
            StringBuilder localStringBuilder = new StringBuilder();
            localStringBuilder.append("Removed the wrong lock, expected to remove: ");
            localStringBuilder.append(localA);
            localStringBuilder.append(", but actually removed: ");
            localStringBuilder.append(localObject);
            localStringBuilder.append(", safeKey: ");
            localStringBuilder.append(paramString);
            throw new IllegalStateException(localStringBuilder.toString());
          }
        }
        a.unlock();
        return;
      }
      Object localObject = new StringBuilder();
      ((StringBuilder)localObject).append("Cannot release a lock that is not held, safeKey: ");
      ((StringBuilder)localObject).append(paramString);
      ((StringBuilder)localObject).append(", interestedThreads: ");
      ((StringBuilder)localObject).append(b);
      throw new IllegalStateException(((StringBuilder)localObject).toString());
    }
    finally {}
  }
  
  private static class a
  {
    final Lock a = new ReentrantLock();
    int b;
    
    a() {}
  }
  
  private static class b
  {
    private final Queue<a.a> a = new ArrayDeque();
    
    b() {}
    
    a.a a()
    {
      synchronized (a)
      {
        a.a localA = (a.a)a.poll();
        ??? = localA;
        if (localA == null) {
          ??? = new a.a();
        }
        return ???;
      }
    }
    
    void a(a.a paramA)
    {
      synchronized (a)
      {
        if (a.size() < 10) {
          a.offer(paramA);
        }
        return;
      }
    }
  }
}
