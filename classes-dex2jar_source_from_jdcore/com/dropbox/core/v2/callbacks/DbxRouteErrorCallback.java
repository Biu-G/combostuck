package com.dropbox.core.v2.callbacks;

public abstract class DbxRouteErrorCallback<T>
  implements Runnable
{
  private T a = null;
  
  public DbxRouteErrorCallback() {}
  
  public T getRouteError()
  {
    return a;
  }
  
  public void setRouteError(T paramT)
  {
    a = paramT;
  }
}
