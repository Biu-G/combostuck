package com.amap.api.mapcore2d;

public abstract class ff
  implements Runnable
{
  a d;
  
  public abstract void a();
  
  public final void run()
  {
    try
    {
      if (d != null) {
        d.a(this);
      }
      if (Thread.interrupted()) {
        return;
      }
      a();
      if (Thread.interrupted()) {
        return;
      }
      if (d != null)
      {
        d.b(this);
        return;
      }
    }
    catch (Throwable localThrowable)
    {
      dg.b(localThrowable, "ThreadTask", "run");
      localThrowable.printStackTrace();
    }
  }
  
  static abstract interface a
  {
    public abstract void a(ff paramFf);
    
    public abstract void b(ff paramFf);
  }
}
