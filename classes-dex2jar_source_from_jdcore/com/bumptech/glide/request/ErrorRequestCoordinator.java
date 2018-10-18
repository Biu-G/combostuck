package com.bumptech.glide.request;

import android.support.annotation.Nullable;

public final class ErrorRequestCoordinator
  implements Request, RequestCoordinator
{
  @Nullable
  private final RequestCoordinator a;
  private Request b;
  private Request c;
  
  public ErrorRequestCoordinator(@Nullable RequestCoordinator paramRequestCoordinator)
  {
    a = paramRequestCoordinator;
  }
  
  private boolean a()
  {
    return (a == null) || (a.canSetImage(this));
  }
  
  private boolean a(Request paramRequest)
  {
    return (paramRequest.equals(b)) || ((b.isFailed()) && (paramRequest.equals(c)));
  }
  
  private boolean b()
  {
    return (a == null) || (a.canNotifyCleared(this));
  }
  
  private boolean c()
  {
    return (a == null) || (a.canNotifyStatusChanged(this));
  }
  
  private boolean d()
  {
    return (a != null) && (a.isAnyResourceSet());
  }
  
  public void begin()
  {
    if (!b.isRunning()) {
      b.begin();
    }
  }
  
  public boolean canNotifyCleared(Request paramRequest)
  {
    return (b()) && (a(paramRequest));
  }
  
  public boolean canNotifyStatusChanged(Request paramRequest)
  {
    return (c()) && (a(paramRequest));
  }
  
  public boolean canSetImage(Request paramRequest)
  {
    return (a()) && (a(paramRequest));
  }
  
  public void clear()
  {
    b.clear();
    if (c.isRunning()) {
      c.clear();
    }
  }
  
  public boolean isAnyResourceSet()
  {
    return (d()) || (isResourceSet());
  }
  
  public boolean isCancelled()
  {
    if (b.isFailed()) {}
    for (Request localRequest = c;; localRequest = b) {
      return localRequest.isCancelled();
    }
  }
  
  public boolean isComplete()
  {
    if (b.isFailed()) {}
    for (Request localRequest = c;; localRequest = b) {
      return localRequest.isComplete();
    }
  }
  
  public boolean isEquivalentTo(Request paramRequest)
  {
    boolean bool1 = paramRequest instanceof ErrorRequestCoordinator;
    boolean bool2 = false;
    if (bool1)
    {
      paramRequest = (ErrorRequestCoordinator)paramRequest;
      bool1 = bool2;
      if (b.isEquivalentTo(b))
      {
        bool1 = bool2;
        if (c.isEquivalentTo(c)) {
          bool1 = true;
        }
      }
      return bool1;
    }
    return false;
  }
  
  public boolean isFailed()
  {
    return (b.isFailed()) && (c.isFailed());
  }
  
  public boolean isPaused()
  {
    if (b.isFailed()) {}
    for (Request localRequest = c;; localRequest = b) {
      return localRequest.isPaused();
    }
  }
  
  public boolean isResourceSet()
  {
    if (b.isFailed()) {}
    for (Request localRequest = c;; localRequest = b) {
      return localRequest.isResourceSet();
    }
  }
  
  public boolean isRunning()
  {
    if (b.isFailed()) {}
    for (Request localRequest = c;; localRequest = b) {
      return localRequest.isRunning();
    }
  }
  
  public void onRequestFailed(Request paramRequest)
  {
    if (!paramRequest.equals(c))
    {
      if (!c.isRunning()) {
        c.begin();
      }
      return;
    }
    if (a != null) {
      a.onRequestFailed(this);
    }
  }
  
  public void onRequestSuccess(Request paramRequest)
  {
    if (a != null) {
      a.onRequestSuccess(this);
    }
  }
  
  public void pause()
  {
    if (!b.isFailed()) {
      b.pause();
    }
    if (c.isRunning()) {
      c.pause();
    }
  }
  
  public void recycle()
  {
    b.recycle();
    c.recycle();
  }
  
  public void setRequests(Request paramRequest1, Request paramRequest2)
  {
    b = paramRequest1;
    c = paramRequest2;
  }
}
