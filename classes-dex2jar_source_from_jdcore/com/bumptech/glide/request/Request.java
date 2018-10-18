package com.bumptech.glide.request;

public abstract interface Request
{
  public abstract void begin();
  
  public abstract void clear();
  
  public abstract boolean isCancelled();
  
  public abstract boolean isComplete();
  
  public abstract boolean isEquivalentTo(Request paramRequest);
  
  public abstract boolean isFailed();
  
  public abstract boolean isPaused();
  
  public abstract boolean isResourceSet();
  
  public abstract boolean isRunning();
  
  public abstract void pause();
  
  public abstract void recycle();
}
