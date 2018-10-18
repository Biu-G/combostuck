package com.dropbox.core.util;

import java.util.ArrayList;

public abstract class Collector<E, L>
{
  public Collector() {}
  
  public abstract void add(E paramE);
  
  public abstract L finish();
  
  public static final class ArrayListCollector<E>
    extends Collector<E, ArrayList<E>>
  {
    private ArrayList<E> a = new ArrayList();
    
    public ArrayListCollector() {}
    
    public void add(E paramE)
    {
      if (a != null)
      {
        a.add(paramE);
        return;
      }
      throw new IllegalStateException("already called finish()");
    }
    
    public ArrayList<E> finish()
    {
      ArrayList localArrayList = a;
      if (localArrayList != null)
      {
        a = null;
        return localArrayList;
      }
      throw new IllegalStateException("already called finish()");
    }
  }
  
  public static final class NullSkipper<E, L>
    extends Collector<E, L>
  {
    private final Collector<E, L> a;
    
    public NullSkipper(Collector<E, L> paramCollector)
    {
      a = paramCollector;
    }
    
    public static <E, L> Collector<E, L> mk(Collector<E, L> paramCollector)
    {
      return new NullSkipper(paramCollector);
    }
    
    public void add(E paramE)
    {
      if (paramE != null) {
        a.add(paramE);
      }
    }
    
    public L finish()
    {
      return a.finish();
    }
  }
}
