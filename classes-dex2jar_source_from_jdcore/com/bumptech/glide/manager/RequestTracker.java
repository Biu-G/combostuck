package com.bumptech.glide.manager;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import com.bumptech.glide.request.Request;
import com.bumptech.glide.util.Util;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.WeakHashMap;

public class RequestTracker
{
  private final Set<Request> a = Collections.newSetFromMap(new WeakHashMap());
  private final List<Request> b = new ArrayList();
  private boolean c;
  
  public RequestTracker() {}
  
  private boolean a(@Nullable Request paramRequest, boolean paramBoolean)
  {
    boolean bool2 = true;
    if (paramRequest == null) {
      return true;
    }
    boolean bool3 = a.remove(paramRequest);
    boolean bool1 = bool2;
    if (!b.remove(paramRequest)) {
      if (bool3) {
        bool1 = bool2;
      } else {
        bool1 = false;
      }
    }
    if (bool1)
    {
      paramRequest.clear();
      if (paramBoolean) {
        paramRequest.recycle();
      }
    }
    return bool1;
  }
  
  public boolean clearRemoveAndRecycle(@Nullable Request paramRequest)
  {
    return a(paramRequest, true);
  }
  
  public void clearRequests()
  {
    Iterator localIterator = Util.getSnapshot(a).iterator();
    while (localIterator.hasNext()) {
      a((Request)localIterator.next(), false);
    }
    b.clear();
  }
  
  public boolean isPaused()
  {
    return c;
  }
  
  public void pauseAllRequests()
  {
    c = true;
    Iterator localIterator = Util.getSnapshot(a).iterator();
    while (localIterator.hasNext())
    {
      Request localRequest = (Request)localIterator.next();
      if ((localRequest.isRunning()) || (localRequest.isComplete()))
      {
        localRequest.pause();
        b.add(localRequest);
      }
    }
  }
  
  public void pauseRequests()
  {
    c = true;
    Iterator localIterator = Util.getSnapshot(a).iterator();
    while (localIterator.hasNext())
    {
      Request localRequest = (Request)localIterator.next();
      if (localRequest.isRunning())
      {
        localRequest.pause();
        b.add(localRequest);
      }
    }
  }
  
  public void restartRequests()
  {
    Iterator localIterator = Util.getSnapshot(a).iterator();
    while (localIterator.hasNext())
    {
      Request localRequest = (Request)localIterator.next();
      if ((!localRequest.isComplete()) && (!localRequest.isCancelled()))
      {
        localRequest.pause();
        if (!c) {
          localRequest.begin();
        } else {
          b.add(localRequest);
        }
      }
    }
  }
  
  public void resumeRequests()
  {
    c = false;
    Iterator localIterator = Util.getSnapshot(a).iterator();
    while (localIterator.hasNext())
    {
      Request localRequest = (Request)localIterator.next();
      if ((!localRequest.isComplete()) && (!localRequest.isCancelled()) && (!localRequest.isRunning())) {
        localRequest.begin();
      }
    }
    b.clear();
  }
  
  public void runRequest(@NonNull Request paramRequest)
  {
    a.add(paramRequest);
    if (!c)
    {
      paramRequest.begin();
      return;
    }
    b.add(paramRequest);
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(super.toString());
    localStringBuilder.append("{numRequests=");
    localStringBuilder.append(a.size());
    localStringBuilder.append(", isPaused=");
    localStringBuilder.append(c);
    localStringBuilder.append("}");
    return localStringBuilder.toString();
  }
}
