package com.dropbox.core.v2.callbacks;

import com.dropbox.core.DbxException;

public abstract class DbxNetworkErrorCallback
{
  public DbxNetworkErrorCallback() {}
  
  public abstract void onNetworkError(DbxException paramDbxException);
}
