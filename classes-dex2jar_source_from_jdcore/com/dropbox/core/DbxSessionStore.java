package com.dropbox.core;

public abstract interface DbxSessionStore
{
  public abstract void clear();
  
  public abstract String get();
  
  public abstract void set(String paramString);
}
