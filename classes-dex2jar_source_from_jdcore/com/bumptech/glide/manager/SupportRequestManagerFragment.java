package com.bumptech.glide.manager;

import android.annotation.SuppressLint;
import android.content.Context;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.VisibleForTesting;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.util.Log;
import com.bumptech.glide.Glide;
import com.bumptech.glide.RequestManager;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

public class SupportRequestManagerFragment
  extends Fragment
{
  private final a a;
  private final RequestManagerTreeNode b = new a();
  private final Set<SupportRequestManagerFragment> c = new HashSet();
  @Nullable
  private SupportRequestManagerFragment d;
  @Nullable
  private RequestManager e;
  @Nullable
  private Fragment f;
  
  public SupportRequestManagerFragment()
  {
    this(new a());
  }
  
  @SuppressLint({"ValidFragment"})
  @VisibleForTesting
  public SupportRequestManagerFragment(@NonNull a paramA)
  {
    a = paramA;
  }
  
  private void a(@NonNull FragmentActivity paramFragmentActivity)
  {
    d();
    d = Glide.get(paramFragmentActivity).getRequestManagerRetriever().a(paramFragmentActivity.getSupportFragmentManager(), null);
    if (!equals(d)) {
      d.a(this);
    }
  }
  
  private void a(SupportRequestManagerFragment paramSupportRequestManagerFragment)
  {
    c.add(paramSupportRequestManagerFragment);
  }
  
  private void b(SupportRequestManagerFragment paramSupportRequestManagerFragment)
  {
    c.remove(paramSupportRequestManagerFragment);
  }
  
  private boolean b(@NonNull Fragment paramFragment)
  {
    Fragment localFragment1 = c();
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
  
  @Nullable
  private Fragment c()
  {
    Fragment localFragment = getParentFragment();
    if (localFragment != null) {
      return localFragment;
    }
    return f;
  }
  
  private void d()
  {
    if (d != null)
    {
      d.b(this);
      d = null;
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
  
  @NonNull
  Set<SupportRequestManagerFragment> b()
  {
    if (d == null) {
      return Collections.emptySet();
    }
    if (equals(d)) {
      return Collections.unmodifiableSet(c);
    }
    HashSet localHashSet = new HashSet();
    Iterator localIterator = d.b().iterator();
    while (localIterator.hasNext())
    {
      SupportRequestManagerFragment localSupportRequestManagerFragment = (SupportRequestManagerFragment)localIterator.next();
      if (b(localSupportRequestManagerFragment.c())) {
        localHashSet.add(localSupportRequestManagerFragment);
      }
    }
    return Collections.unmodifiableSet(localHashSet);
  }
  
  @Nullable
  public RequestManager getRequestManager()
  {
    return e;
  }
  
  @NonNull
  public RequestManagerTreeNode getRequestManagerTreeNode()
  {
    return b;
  }
  
  public void onAttach(Context paramContext)
  {
    super.onAttach(paramContext);
    try
    {
      a(getActivity());
      return;
    }
    catch (IllegalStateException paramContext)
    {
      if (Log.isLoggable("SupportRMFragment", 5)) {
        Log.w("SupportRMFragment", "Unable to register fragment with root", paramContext);
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
    f = null;
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
    e = paramRequestManager;
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
        SupportRequestManagerFragment localSupportRequestManagerFragment = (SupportRequestManagerFragment)((Iterator)localObject).next();
        if (localSupportRequestManagerFragment.getRequestManager() != null) {
          localHashSet.add(localSupportRequestManagerFragment.getRequestManager());
        }
      }
      return localHashSet;
    }
    
    public String toString()
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append(super.toString());
      localStringBuilder.append("{fragment=");
      localStringBuilder.append(SupportRequestManagerFragment.this);
      localStringBuilder.append("}");
      return localStringBuilder.toString();
    }
  }
}
