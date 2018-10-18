package com.bumptech.glide.manager;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.content.ContextWrapper;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Handler;
import android.os.Handler.Callback;
import android.os.Looper;
import android.os.Message;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.VisibleForTesting;
import android.support.v4.app.FragmentActivity;
import android.support.v4.util.ArrayMap;
import android.util.Log;
import android.view.View;
import com.bumptech.glide.Glide;
import com.bumptech.glide.RequestManager;
import com.bumptech.glide.util.Preconditions;
import com.bumptech.glide.util.Util;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public class RequestManagerRetriever
  implements Handler.Callback
{
  private static final RequestManagerFactory i = new RequestManagerFactory()
  {
    @NonNull
    public RequestManager build(@NonNull Glide paramAnonymousGlide, @NonNull Lifecycle paramAnonymousLifecycle, @NonNull RequestManagerTreeNode paramAnonymousRequestManagerTreeNode, @NonNull Context paramAnonymousContext)
    {
      return new RequestManager(paramAnonymousGlide, paramAnonymousLifecycle, paramAnonymousRequestManagerTreeNode, paramAnonymousContext);
    }
  };
  @VisibleForTesting
  final Map<android.app.FragmentManager, RequestManagerFragment> a = new HashMap();
  @VisibleForTesting
  final Map<android.support.v4.app.FragmentManager, SupportRequestManagerFragment> b = new HashMap();
  private volatile RequestManager c;
  private final Handler d;
  private final RequestManagerFactory e;
  private final ArrayMap<View, android.support.v4.app.Fragment> f = new ArrayMap();
  private final ArrayMap<View, android.app.Fragment> g = new ArrayMap();
  private final Bundle h = new Bundle();
  
  public RequestManagerRetriever(@Nullable RequestManagerFactory paramRequestManagerFactory)
  {
    if (paramRequestManagerFactory == null) {
      paramRequestManagerFactory = i;
    }
    e = paramRequestManagerFactory;
    d = new Handler(Looper.getMainLooper(), this);
  }
  
  @Nullable
  private android.app.Fragment a(@NonNull View paramView, @NonNull Activity paramActivity)
  {
    g.clear();
    a(paramActivity.getFragmentManager(), g);
    View localView2 = paramActivity.findViewById(16908290);
    View localView1 = null;
    paramActivity = paramView;
    paramView = localView1;
    for (;;)
    {
      localView1 = paramView;
      if (paramActivity.equals(localView2)) {
        break;
      }
      paramView = (android.app.Fragment)g.get(paramActivity);
      if (paramView != null)
      {
        localView1 = paramView;
        break;
      }
      localView1 = paramView;
      if (!(paramActivity.getParent() instanceof View)) {
        break;
      }
      paramActivity = (View)paramActivity.getParent();
    }
    g.clear();
    return localView1;
  }
  
  @Nullable
  private android.support.v4.app.Fragment a(@NonNull View paramView, @NonNull FragmentActivity paramFragmentActivity)
  {
    f.clear();
    a(paramFragmentActivity.getSupportFragmentManager().getFragments(), f);
    View localView2 = paramFragmentActivity.findViewById(16908290);
    View localView1 = null;
    paramFragmentActivity = paramView;
    paramView = localView1;
    for (;;)
    {
      localView1 = paramView;
      if (paramFragmentActivity.equals(localView2)) {
        break;
      }
      paramView = (android.support.v4.app.Fragment)f.get(paramFragmentActivity);
      if (paramView != null)
      {
        localView1 = paramView;
        break;
      }
      localView1 = paramView;
      if (!(paramFragmentActivity.getParent() instanceof View)) {
        break;
      }
      paramFragmentActivity = (View)paramFragmentActivity.getParent();
    }
    f.clear();
    return localView1;
  }
  
  @NonNull
  private RequestManager a(@NonNull Context paramContext)
  {
    if (c == null) {
      try
      {
        if (c == null)
        {
          Glide localGlide = Glide.get(paramContext.getApplicationContext());
          c = e.build(localGlide, new b(), new d(), paramContext.getApplicationContext());
        }
      }
      finally {}
    }
    return c;
  }
  
  @NonNull
  private RequestManager a(@NonNull Context paramContext, @NonNull android.app.FragmentManager paramFragmentManager, @Nullable android.app.Fragment paramFragment)
  {
    RequestManagerFragment localRequestManagerFragment = a(paramFragmentManager, paramFragment);
    paramFragment = localRequestManagerFragment.getRequestManager();
    paramFragmentManager = paramFragment;
    if (paramFragment == null)
    {
      paramFragmentManager = Glide.get(paramContext);
      paramFragmentManager = e.build(paramFragmentManager, localRequestManagerFragment.a(), localRequestManagerFragment.getRequestManagerTreeNode(), paramContext);
      localRequestManagerFragment.setRequestManager(paramFragmentManager);
    }
    return paramFragmentManager;
  }
  
  @NonNull
  private RequestManager a(@NonNull Context paramContext, @NonNull android.support.v4.app.FragmentManager paramFragmentManager, @Nullable android.support.v4.app.Fragment paramFragment)
  {
    SupportRequestManagerFragment localSupportRequestManagerFragment = a(paramFragmentManager, paramFragment);
    paramFragment = localSupportRequestManagerFragment.getRequestManager();
    paramFragmentManager = paramFragment;
    if (paramFragment == null)
    {
      paramFragmentManager = Glide.get(paramContext);
      paramFragmentManager = e.build(paramFragmentManager, localSupportRequestManagerFragment.a(), localSupportRequestManagerFragment.getRequestManagerTreeNode(), paramContext);
      localSupportRequestManagerFragment.setRequestManager(paramFragmentManager);
    }
    return paramFragmentManager;
  }
  
  @TargetApi(17)
  private static void a(@NonNull Activity paramActivity)
  {
    if (Build.VERSION.SDK_INT >= 17)
    {
      if (!paramActivity.isDestroyed()) {
        return;
      }
      throw new IllegalArgumentException("You cannot start a load for a destroyed activity");
    }
  }
  
  @TargetApi(26)
  private void a(@NonNull android.app.FragmentManager paramFragmentManager, @NonNull ArrayMap<View, android.app.Fragment> paramArrayMap)
  {
    if (Build.VERSION.SDK_INT >= 26)
    {
      paramFragmentManager = paramFragmentManager.getFragments().iterator();
      while (paramFragmentManager.hasNext())
      {
        android.app.Fragment localFragment = (android.app.Fragment)paramFragmentManager.next();
        if (localFragment.getView() != null)
        {
          paramArrayMap.put(localFragment.getView(), localFragment);
          a(localFragment.getChildFragmentManager(), paramArrayMap);
        }
      }
    }
    b(paramFragmentManager, paramArrayMap);
  }
  
  private static void a(@Nullable Collection<android.support.v4.app.Fragment> paramCollection, @NonNull Map<View, android.support.v4.app.Fragment> paramMap)
  {
    if (paramCollection == null) {
      return;
    }
    paramCollection = paramCollection.iterator();
    while (paramCollection.hasNext())
    {
      android.support.v4.app.Fragment localFragment = (android.support.v4.app.Fragment)paramCollection.next();
      if ((localFragment != null) && (localFragment.getView() != null))
      {
        paramMap.put(localFragment.getView(), localFragment);
        a(localFragment.getChildFragmentManager().getFragments(), paramMap);
      }
    }
  }
  
  @Nullable
  private Activity b(@NonNull Context paramContext)
  {
    if ((paramContext instanceof Activity)) {
      return (Activity)paramContext;
    }
    if ((paramContext instanceof ContextWrapper)) {
      return b(((ContextWrapper)paramContext).getBaseContext());
    }
    return null;
  }
  
  private void b(@NonNull android.app.FragmentManager paramFragmentManager, @NonNull ArrayMap<View, android.app.Fragment> paramArrayMap)
  {
    int j = 0;
    for (;;)
    {
      h.putInt("key", j);
      Object localObject = null;
      try
      {
        android.app.Fragment localFragment = paramFragmentManager.getFragment(h, "key");
        localObject = localFragment;
      }
      catch (Exception localException)
      {
        for (;;) {}
      }
      if (localObject == null) {
        return;
      }
      if (localObject.getView() != null)
      {
        paramArrayMap.put(localObject.getView(), localObject);
        if (Build.VERSION.SDK_INT >= 17) {
          a(localObject.getChildFragmentManager(), paramArrayMap);
        }
      }
      j += 1;
    }
  }
  
  @NonNull
  RequestManagerFragment a(@NonNull android.app.FragmentManager paramFragmentManager, @Nullable android.app.Fragment paramFragment)
  {
    RequestManagerFragment localRequestManagerFragment2 = (RequestManagerFragment)paramFragmentManager.findFragmentByTag("com.bumptech.glide.manager");
    RequestManagerFragment localRequestManagerFragment1 = localRequestManagerFragment2;
    if (localRequestManagerFragment2 == null)
    {
      localRequestManagerFragment2 = (RequestManagerFragment)a.get(paramFragmentManager);
      localRequestManagerFragment1 = localRequestManagerFragment2;
      if (localRequestManagerFragment2 == null)
      {
        localRequestManagerFragment1 = new RequestManagerFragment();
        localRequestManagerFragment1.a(paramFragment);
        a.put(paramFragmentManager, localRequestManagerFragment1);
        paramFragmentManager.beginTransaction().add(localRequestManagerFragment1, "com.bumptech.glide.manager").commitAllowingStateLoss();
        d.obtainMessage(1, paramFragmentManager).sendToTarget();
      }
    }
    return localRequestManagerFragment1;
  }
  
  @NonNull
  SupportRequestManagerFragment a(@NonNull android.support.v4.app.FragmentManager paramFragmentManager, @Nullable android.support.v4.app.Fragment paramFragment)
  {
    SupportRequestManagerFragment localSupportRequestManagerFragment2 = (SupportRequestManagerFragment)paramFragmentManager.findFragmentByTag("com.bumptech.glide.manager");
    SupportRequestManagerFragment localSupportRequestManagerFragment1 = localSupportRequestManagerFragment2;
    if (localSupportRequestManagerFragment2 == null)
    {
      localSupportRequestManagerFragment2 = (SupportRequestManagerFragment)b.get(paramFragmentManager);
      localSupportRequestManagerFragment1 = localSupportRequestManagerFragment2;
      if (localSupportRequestManagerFragment2 == null)
      {
        localSupportRequestManagerFragment1 = new SupportRequestManagerFragment();
        localSupportRequestManagerFragment1.a(paramFragment);
        b.put(paramFragmentManager, localSupportRequestManagerFragment1);
        paramFragmentManager.beginTransaction().add(localSupportRequestManagerFragment1, "com.bumptech.glide.manager").commitAllowingStateLoss();
        d.obtainMessage(2, paramFragmentManager).sendToTarget();
      }
    }
    return localSupportRequestManagerFragment1;
  }
  
  @NonNull
  public RequestManager get(@NonNull Activity paramActivity)
  {
    if (Util.isOnBackgroundThread()) {
      return get(paramActivity.getApplicationContext());
    }
    a(paramActivity);
    return a(paramActivity, paramActivity.getFragmentManager(), null);
  }
  
  @TargetApi(17)
  @NonNull
  public RequestManager get(@NonNull android.app.Fragment paramFragment)
  {
    if (paramFragment.getActivity() != null)
    {
      if ((!Util.isOnBackgroundThread()) && (Build.VERSION.SDK_INT >= 17))
      {
        android.app.FragmentManager localFragmentManager = paramFragment.getChildFragmentManager();
        return a(paramFragment.getActivity(), localFragmentManager, paramFragment);
      }
      return get(paramFragment.getActivity().getApplicationContext());
    }
    throw new IllegalArgumentException("You cannot start a load on a fragment before it is attached");
  }
  
  @NonNull
  public RequestManager get(@NonNull Context paramContext)
  {
    if (paramContext != null)
    {
      if ((Util.isOnMainThread()) && (!(paramContext instanceof Application)))
      {
        if ((paramContext instanceof FragmentActivity)) {
          return get((FragmentActivity)paramContext);
        }
        if ((paramContext instanceof Activity)) {
          return get((Activity)paramContext);
        }
        if ((paramContext instanceof ContextWrapper)) {
          return get(((ContextWrapper)paramContext).getBaseContext());
        }
      }
      return a(paramContext);
    }
    throw new IllegalArgumentException("You cannot start a load on a null Context");
  }
  
  @NonNull
  public RequestManager get(@NonNull android.support.v4.app.Fragment paramFragment)
  {
    Preconditions.checkNotNull(paramFragment.getActivity(), "You cannot start a load on a fragment before it is attached or after it is destroyed");
    if (Util.isOnBackgroundThread()) {
      return get(paramFragment.getActivity().getApplicationContext());
    }
    android.support.v4.app.FragmentManager localFragmentManager = paramFragment.getChildFragmentManager();
    return a(paramFragment.getActivity(), localFragmentManager, paramFragment);
  }
  
  @NonNull
  public RequestManager get(@NonNull FragmentActivity paramFragmentActivity)
  {
    if (Util.isOnBackgroundThread()) {
      return get(paramFragmentActivity.getApplicationContext());
    }
    a(paramFragmentActivity);
    return a(paramFragmentActivity, paramFragmentActivity.getSupportFragmentManager(), null);
  }
  
  @NonNull
  public RequestManager get(@NonNull View paramView)
  {
    if (Util.isOnBackgroundThread()) {
      return get(paramView.getContext().getApplicationContext());
    }
    Preconditions.checkNotNull(paramView);
    Preconditions.checkNotNull(paramView.getContext(), "Unable to obtain a request manager for a view without a Context");
    Activity localActivity = b(paramView.getContext());
    if (localActivity == null) {
      return get(paramView.getContext().getApplicationContext());
    }
    if ((localActivity instanceof FragmentActivity))
    {
      paramView = a(paramView, (FragmentActivity)localActivity);
      if (paramView != null) {
        return get(paramView);
      }
      return get(localActivity);
    }
    paramView = a(paramView, localActivity);
    if (paramView == null) {
      return get(localActivity);
    }
    return get(paramView);
  }
  
  public boolean handleMessage(Message paramMessage)
  {
    int j = what;
    Object localObject1 = null;
    boolean bool = true;
    switch (j)
    {
    default: 
      bool = false;
      Object localObject2 = null;
      paramMessage = (Message)localObject1;
      localObject1 = localObject2;
      break;
    case 2: 
      paramMessage = (android.support.v4.app.FragmentManager)obj;
      localObject1 = b.remove(paramMessage);
      break;
    case 1: 
      paramMessage = (android.app.FragmentManager)obj;
      localObject1 = a.remove(paramMessage);
    }
    if ((bool) && (localObject1 == null) && (Log.isLoggable("RMRetriever", 5)))
    {
      localObject1 = new StringBuilder();
      ((StringBuilder)localObject1).append("Failed to remove expected request manager fragment, manager: ");
      ((StringBuilder)localObject1).append(paramMessage);
      Log.w("RMRetriever", ((StringBuilder)localObject1).toString());
    }
    return bool;
  }
  
  public static abstract interface RequestManagerFactory
  {
    @NonNull
    public abstract RequestManager build(@NonNull Glide paramGlide, @NonNull Lifecycle paramLifecycle, @NonNull RequestManagerTreeNode paramRequestManagerTreeNode, @NonNull Context paramContext);
  }
}
