package com.amap.api.mapcore2d;

import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;
import java.util.concurrent.Semaphore;

class bo<T>
{
  protected LinkedList<T> a = new LinkedList();
  protected final Semaphore b = new Semaphore(0, false);
  protected boolean c = true;
  
  bo() {}
  
  /* Error */
  public ArrayList<T> a(int paramInt, boolean paramBoolean)
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 21	com/amap/api/mapcore2d/bo:a	Ljava/util/LinkedList;
    //   4: astore_3
    //   5: aconst_null
    //   6: astore 4
    //   8: aload_3
    //   9: ifnull +61 -> 70
    //   12: aload_0
    //   13: getfield 21	com/amap/api/mapcore2d/bo:a	Ljava/util/LinkedList;
    //   16: invokevirtual 40	java/util/LinkedList:size	()I
    //   19: ifne +5 -> 24
    //   22: aconst_null
    //   23: areturn
    //   24: aload_0
    //   25: getfield 28	com/amap/api/mapcore2d/bo:b	Ljava/util/concurrent/Semaphore;
    //   28: invokevirtual 43	java/util/concurrent/Semaphore:acquire	()V
    //   31: aload 4
    //   33: astore_3
    //   34: aload_0
    //   35: getfield 30	com/amap/api/mapcore2d/bo:c	Z
    //   38: ifeq +23 -> 61
    //   41: aload_0
    //   42: iload_1
    //   43: iload_2
    //   44: invokevirtual 45	com/amap/api/mapcore2d/bo:b	(IZ)Ljava/util/ArrayList;
    //   47: astore_3
    //   48: goto +13 -> 61
    //   51: astore_3
    //   52: aload_0
    //   53: getfield 28	com/amap/api/mapcore2d/bo:b	Ljava/util/concurrent/Semaphore;
    //   56: invokevirtual 48	java/util/concurrent/Semaphore:release	()V
    //   59: aload_3
    //   60: athrow
    //   61: aload_0
    //   62: getfield 28	com/amap/api/mapcore2d/bo:b	Ljava/util/concurrent/Semaphore;
    //   65: invokevirtual 48	java/util/concurrent/Semaphore:release	()V
    //   68: aload_3
    //   69: areturn
    //   70: aconst_null
    //   71: areturn
    //   72: astore_3
    //   73: goto -42 -> 31
    //   76: astore_3
    //   77: aload 4
    //   79: astore_3
    //   80: goto -19 -> 61
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	83	0	this	bo
    //   0	83	1	paramInt	int
    //   0	83	2	paramBoolean	boolean
    //   4	44	3	localObject1	Object
    //   51	18	3	localArrayList	ArrayList<T>
    //   72	1	3	localInterruptedException	InterruptedException
    //   76	1	3	localThrowable	Throwable
    //   79	1	3	localObject2	Object
    //   6	72	4	localObject3	Object
    // Exception table:
    //   from	to	target	type
    //   34	48	51	finally
    //   24	31	72	java/lang/InterruptedException
    //   34	48	76	java/lang/Throwable
  }
  
  public void a()
  {
    c = false;
    b.release(100);
  }
  
  public void a(List<T> paramList, boolean paramBoolean)
  {
    for (;;)
    {
      try
      {
        LinkedList localLinkedList = a;
        if (localLinkedList == null) {
          return;
        }
        if (paramBoolean != true) {}
      }
      finally {}
      try
      {
        a.clear();
        if (paramList != null) {
          a.addAll(paramList);
        }
        b.release();
      }
      catch (Throwable paramList) {}
    }
  }
  
  protected ArrayList<T> b(int paramInt, boolean paramBoolean)
  {
    try
    {
      Object localObject1 = a;
      if (localObject1 == null) {
        return null;
      }
      int j = a.size();
      int i = paramInt;
      if (paramInt > j) {
        i = j;
      }
      localObject1 = new ArrayList(i);
      paramInt = 0;
      while (paramInt < i)
      {
        ((ArrayList)localObject1).add(a.get(0));
        a.removeFirst();
        paramInt += 1;
      }
      return localObject1;
    }
    finally {}
  }
  
  public void b()
  {
    if (a == null) {
      return;
    }
    a.clear();
  }
}
