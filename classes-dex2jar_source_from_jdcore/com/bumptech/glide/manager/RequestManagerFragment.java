package com.bumptech.glide.manager;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.app.Activity;
import android.app.Fragment;
import android.os.Build.VERSION;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.VisibleForTesting;
import android.util.Log;
import com.bumptech.glide.Glide;
import com.bumptech.glide.RequestManager;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

public class RequestManagerFragment
  extends Fragment
{
  private final a a;
  private final RequestManagerTreeNode b = new a();
  private final Set<RequestManagerFragment> c = new HashSet();
  @Nullable
  private RequestManager d;
  @Nullable
  private RequestManagerFragment e;
  @Nullable
  private Fragment f;
  
  public RequestManagerFragment()
  {
    this(new a());
  }
  
  @SuppressLint({"ValidFragment"})
  @VisibleForTesting
  RequestManagerFragment(@NonNull a paramA)
  {
    a = paramA;
  }
  
  private void a(@NonNull Activity paramActivity)
  {
    d();
    e = Glide.get(paramActivity).getRequestManagerRetriever().a(paramActivity.getFragmentManager(), null);
    if (!equals(e)) {
      e.a(this);
    }
  }
  
  private void a(RequestManagerFragment paramRequestManagerFragment)
  {
    c.add(paramRequestManagerFragment);
  }
  
  private void b(RequestManagerFragment paramRequestManagerFragment)
  {
    c.remove(paramRequestManagerFragment);
  }
  
  @TargetApi(17)
  private boolean b(@NonNull Fragment paramFragment)
  {
    Fragment localFragment1 = getParentFragment();
    for (;;)
    {
      Fragment localFragment2 = paramFragment.getParentFragment();
      if (localFragment2 == null) {
        break;
      }
      if (localFragment2.equals(localFragment1)) {
        return true;
      }
      paramFragment = paramFragment.getParentFragment();
    }
    return false;
  }
  
  @TargetApi(17)
  @Nullable
  private Fragment c()
  {
    Fragment localFragment;
    if (Build.VERSION.SDK_INT >= 17) {
      localFragment = getParentFragment();
    } else {
      localFragment = null;
    }
    if (localFragment != null) {
      return localFragment;
    }
    return f;
  }
  
  private void d()
  {
    if (e != null)
    {
      e.b(this);
      e = null;
    }
  }
  
  @NonNull
  a a()
  {
    return a;
  }
  
  void a(@Nullable Fragment paramFragment)
  {
    f = paramFragment;
    if ((paramFragment != null) && (paramFragment.getActivity() != null)) {
      a(paramFragment.getActivity());
    }
  }
  
  @TargetApi(17)
  @NonNull
  Set<RequestManagerFragment> b()
  {
    if (equals(e)) {
      return Collections.unmodifiableSet(c);
    }
    if ((e != null) && (Build.VERSION.SDK_INT >= 17))
    {
      HashSet localHashSet = new HashSet();
      Iterator localIterator = e.b().iterator();
      while (localIterator.hasNext())
      {
        RequestManagerFragment localRequestManagerFragment = (RequestManagerFragment)localIterator.next();
        if (b(localRequestManagerFragment.getParentFragment())) {
          localHashSet.add(localRequestManagerFragment);
        }
      }
      return Collections.unmodifiableSet(localHashSet);
    }
    return Collections.emptySet();
  }
  
  @Nullable
  public RequestManager getRequestManager()
  {
    return d;
  }
  
  @NonNull
  public RequestManagerTreeNode getRequestManagerTreeNode()
  {
    return b;
  }
  
  public void onAttach(Activity paramActivity)
  {
    super.onAttach(paramActivity);
    try
    {
      a(paramActivity);
      return;
    }
    catch (IllegalStateException paramActivity)
    {
      if (Log.isLoggable("RMFragment", 5)) {
        Log.w("RMFragment", "Unable to register fragment with root", paramActivity);
      }
    }
  }
  
  public void onDestroy()
  {
    super.onDestroy();
    a.c();
    d();
  }
  
  public void onDetach()
  {
    super.onDetach();
    d();
  }
  
  public void onStart()
  {
    super.onStart();
    a.a();
  }
  
  public void onStop()
  {
    super.onStop();
    a.b();
  }
  
  public void setRequestManager(@Nullable RequestManager paramRequestManager)
  {
    d = paramRequestManager;
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(super.toString());
    localStringBuilder.append("{parent=");
    localStringBuilder.append(c());
    localStringBuilder.append("}");
    return localStringBuilder.toString();
  }
  
  private class a
    implements RequestManagerTreeNode
  {
    a() {}
    
    @NonNull
    public Set<RequestManager> getDescendants()
    {
      Object localObject = b();
      HashSet localHashSet = new HashSet(((Set)localObject).size());
      localObject = ((Set)localObject).iterator();
      while (((Iterator)localObject).hasNext())
      {
        RequestManagerFragment localRequestManagerFragment = (RequestManagerFragment)((Iterator)localObject).next();
        if (localRequestManagerFragment.getRequestManager() != null) {
          localHashSet.add(localRequestManagerFragment.getRequestManager());
        }
      }
      return localHashSet;
    }
    
    public String toString()
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append(super.toString());
      localStringBuilder.append("{fragment=");
      localStringBuilder.append(RequestManagerFragment.this);
      localStringBuilder.append("}");
      return localStringBuilder.toString();
    }
  }
}
