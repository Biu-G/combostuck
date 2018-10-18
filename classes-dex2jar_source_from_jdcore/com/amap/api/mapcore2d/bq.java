package com.amap.api.mapcore2d;

class bq
{
  private Thread[] a;
  
  public bq(int paramInt, Runnable paramRunnable1, Runnable paramRunnable2)
  {
    a = new Thread[paramInt];
    int i = 0;
    while (i < paramInt)
    {
      if ((i == 0) && (paramInt > 1)) {
        a[i] = new Thread(paramRunnable1);
      } else {
        a[i] = new Thread(paramRunnable2);
      }
      i += 1;
    }
  }
  
  public void a()
  {
    try
    {
      Thread[] arrayOfThread = a;
      int j = arrayOfThread.length;
      int i = 0;
      while (i < j)
      {
        Thread localThread = arrayOfThread[i];
        localThread.setDaemon(true);
        localThread.start();
        i += 1;
      }
      return;
    }
    catch (Throwable localThrowable)
    {
      cm.a(localThrowable, "ThreadPool", "start");
    }
  }
  
  public void b()
  {
    if (a == null) {
      return;
    }
    int j = a.length;
    int i = 0;
    while (i < j)
    {
      a[i].interrupt();
      a[i] = null;
      i += 1;
    }
    a = null;
  }
}
