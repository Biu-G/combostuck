package com.amap.api.mapcore2d;

import java.util.ArrayList;
import java.util.Iterator;

class l
{
  private static l a = new l();
  private ArrayList<a> b = new ArrayList();
  
  l() {}
  
  public static l a()
  {
    return a;
  }
  
  public void a(a paramA)
  {
    if (paramA != null) {
      b.add(paramA);
    }
  }
  
  public void b()
  {
    Iterator localIterator = b.iterator();
    while (localIterator.hasNext())
    {
      a localA = (a)localIterator.next();
      if (localA != null) {
        localA.v();
      }
    }
  }
  
  public void b(a paramA)
  {
    if (paramA != null) {
      b.remove(paramA);
    }
  }
  
  public static abstract interface a
  {
    public abstract void v();
  }
}
