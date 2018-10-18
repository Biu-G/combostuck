package com.bumptech.glide.request;

import android.support.annotation.Nullable;
import android.support.annotation.VisibleForTesting;

public class ThumbnailRequestCoordinator
  implements Request, RequestCoordinator
{
  @Nullable
  private final RequestCoordinator a;
  private Request b;
  private Request c;
  private boolean d;
  
  @VisibleForTesting
  ThumbnailRequestCoordinator()
  {
    this(null);
  }
  
  public ThumbnailRequestCoordinator(@Nullable RequestCoordinator paramRequestCoordinator)
  {
    a = paramRequestCoordinator;
  }
  
  private boolean a()
  {
    return (a == null) || (a.canSetImage(this));
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
    d = true;
    if ((!b.isComplete()) && (!c.isRunning())) {
      c.begin();
    }
    if ((d) && (!b.isRunning())) {
      b.begin();
    }
  }
  
  public boolean canNotifyCleared(Request paramRequest)
  {
    return (b()) && (paramRequest.equals(b));
  }
  
  public boolean canNotifyStatusChanged(Request paramRequest)
  {
    return (c()) && (paramRequest.equals(b)) && (!isAnyResourceSet());
  }
  
  public boolean canSetImage(Request paramRequest)
  {
    return (a()) && ((paramRequest.equals(b)) || (!b.isResourceSet()));
  }
  
  public void clear()
  {
    d = false;
    c.clear();
    b.clear();
  }
  
  public boolean isAnyResourceSet()
  {
    return (d()) || (isResourceSet());
  }
  
  public boolean isCancelled()
  {
    return b.isCancelled();
  }
  
  public boolean isComplete()
  {
    return (b.isComplete()) || (c.isComplete());
  }
  
  public boolean isEquivalentTo(Request paramRequest)
  {
    boolean bool1 = paramRequest instanceof ThumbnailRequestCoordinator;
    boolean bool2 = false;
    if (bool1)
    {
      paramRequest = (ThumbnailRequestCoordinator)paramRequest;
      if (b == null)
      {
        bool1 = bool2;
        if (b != null) {
          break label92;
        }
      }
      else
      {
        bool1 = bool2;
        if (!b.isEquivalentTo(b)) {
          break label92;
        }
      }
      if (c == null)
      {
        bool1 = bool2;
        if (c != null) {
          break label92;
        }
      }
      else
      {
        bool1 = bool2;
        if (!c.isEquivalentTo(c)) {
          break label92;
        }
      }
      bool1 = true;
      label92:
      return bool1;
    }
    return false;
  }
  
  public boolean isFailed()
  {
    return b.isFailed();
  }
  
  public boolean isPaused()
  {
    return b.isPaused();
  }
  
  public boolean isResourceSet()
  {
    return (b.isResourceSet()) || (c.isResourceSet());
  }
  
  public boolean isRunning()
  {
    return b.isRunning();
  }
  
  public void onRequestFailed(Request paramRequest)
  {
    if (!paramRequest.equals(b)) {
      return;
    }
    if (a != null) {
      a.onRequestFailed(this);
    }
  }
  
  public void onRequestSuccess(Request paramRequest)
  {
    if (paramRequest.equals(c)) {
      return;
    }
    if (a != null) {
      a.onRequestSuccess(this);
    }
    if (!c.isComplete()) {
      c.clear();
    }
  }
  
  public void pause()
  {
    d = false;
    b.pause();
    c.pause();
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
