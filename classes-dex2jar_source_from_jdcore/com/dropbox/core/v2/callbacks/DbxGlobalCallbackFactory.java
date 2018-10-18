package com.dropbox.core.v2.callbacks;

public abstract interface DbxGlobalCallbackFactory
{
  public abstract DbxNetworkErrorCallback createNetworkErrorCallback(String paramString);
  
  public abstract <T> DbxRouteErrorCallback<T> createRouteErrorCallback(String paramString, T paramT);
}
