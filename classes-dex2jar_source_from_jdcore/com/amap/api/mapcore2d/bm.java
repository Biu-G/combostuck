package com.amap.api.mapcore2d;

import java.util.ArrayList;
import java.util.Iterator;

class bm
{
  private static bm a = new bm();
  private ArrayList<a> b = new ArrayList();
  
  bm() {}
  
  public static bm a()
  {
    return a;
  }
  
  public void a(a paramA)
  {
    if (paramA != null) {}
    try
    {
      b.remove(paramA);
    }
    finally {}
  }
  
  public void b()
  {
    try
    {
      Iterator localIterator = b.iterator();
      while (localIterator.hasNext())
      {
        a localA = (a)localIterator.next();
        if (localA != null) {
          localA.u();
        }
      }
      return;
    }
    finally {}
  }
  
  public static abstract interface a
  {
    public abstract void u();
  }
}
