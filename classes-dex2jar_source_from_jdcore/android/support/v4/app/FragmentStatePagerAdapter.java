package android.support.v4.app;

import android.os.Bundle;
import android.os.Parcelable;
import android.support.annotation.NonNull;
import android.support.v4.view.PagerAdapter;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;
import java.util.Iterator;

public abstract class FragmentStatePagerAdapter
  extends PagerAdapter
{
  private final FragmentManager a;
  private FragmentTransaction b = null;
  private ArrayList<Fragment.SavedState> c = new ArrayList();
  private ArrayList<Fragment> d = new ArrayList();
  private Fragment e = null;
  
  public FragmentStatePagerAdapter(FragmentManager paramFragmentManager)
  {
    a = paramFragmentManager;
  }
  
  public void destroyItem(@NonNull ViewGroup paramViewGroup, int paramInt, @NonNull Object paramObject)
  {
    paramObject = (Fragment)paramObject;
    if (b == null) {
      b = a.beginTransaction();
    }
    while (c.size() <= paramInt) {
      c.add(null);
    }
    ArrayList localArrayList = c;
    if (paramObject.isAdded()) {
      paramViewGroup = a.saveFragmentInstanceState(paramObject);
    } else {
      paramViewGroup = null;
    }
    localArrayList.set(paramInt, paramViewGroup);
    d.set(paramInt, null);
    b.remove(paramObject);
  }
  
  public void finishUpdate(@NonNull ViewGroup paramViewGroup)
  {
    if (b != null)
    {
      b.commitNowAllowingStateLoss();
      b = null;
    }
  }
  
  public abstract Fragment getItem(int paramInt);
  
  @NonNull
  public Object instantiateItem(@NonNull ViewGroup paramViewGroup, int paramInt)
  {
    if (d.size() > paramInt)
    {
      localFragment = (Fragment)d.get(paramInt);
      if (localFragment != null) {
        return localFragment;
      }
    }
    if (b == null) {
      b = a.beginTransaction();
    }
    Fragment localFragment = getItem(paramInt);
    if (c.size() > paramInt)
    {
      Fragment.SavedState localSavedState = (Fragment.SavedState)c.get(paramInt);
      if (localSavedState != null) {
        localFragment.setInitialSavedState(localSavedState);
      }
    }
    while (d.size() <= paramInt) {
      d.add(null);
    }
    localFragment.setMenuVisibility(false);
    localFragment.setUserVisibleHint(false);
    d.set(paramInt, localFragment);
    b.add(paramViewGroup.getId(), localFragment);
    return localFragment;
  }
  
  public boolean isViewFromObject(@NonNull View paramView, @NonNull Object paramObject)
  {
    return ((Fragment)paramObject).getView() == paramView;
  }
  
  public void restoreState(Parcelable paramParcelable, ClassLoader paramClassLoader)
  {
    if (paramParcelable != null)
    {
      paramParcelable = (Bundle)paramParcelable;
      paramParcelable.setClassLoader(paramClassLoader);
      paramClassLoader = paramParcelable.getParcelableArray("states");
      c.clear();
      d.clear();
      int i;
      if (paramClassLoader != null)
      {
        i = 0;
        while (i < paramClassLoader.length)
        {
          c.add((Fragment.SavedState)paramClassLoader[i]);
          i += 1;
        }
      }
      paramClassLoader = paramParcelable.keySet().iterator();
      while (paramClassLoader.hasNext())
      {
        String str = (String)paramClassLoader.next();
        if (str.startsWith("f"))
        {
          i = Integer.parseInt(str.substring(1));
          Object localObject = a.getFragment(paramParcelable, str);
          if (localObject != null)
          {
            while (d.size() <= i) {
              d.add(null);
            }
            ((Fragment)localObject).setMenuVisibility(false);
            d.set(i, localObject);
          }
          else
          {
            localObject = new StringBuilder();
            ((StringBuilder)localObject).append("Bad fragment at key ");
            ((StringBuilder)localObject).append(str);
            Log.w("FragmentStatePagerAdapt", ((StringBuilder)localObject).toString());
          }
        }
      }
    }
  }
  
  public Parcelable saveState()
  {
    Object localObject2;
    Object localObject1;
    if (c.size() > 0)
    {
      localObject2 = new Bundle();
      localObject1 = new Fragment.SavedState[c.size()];
      c.toArray((Object[])localObject1);
      ((Bundle)localObject2).putParcelableArray("states", (Parcelable[])localObject1);
    }
    else
    {
      localObject2 = null;
    }
    int i = 0;
    while (i < d.size())
    {
      Fragment localFragment = (Fragment)d.get(i);
      localObject1 = localObject2;
      if (localFragment != null)
      {
        localObject1 = localObject2;
        if (localFragment.isAdded())
        {
          localObject1 = localObject2;
          if (localObject2 == null) {
            localObject1 = new Bundle();
          }
          localObject2 = new StringBuilder();
          ((StringBuilder)localObject2).append("f");
          ((StringBuilder)localObject2).append(i);
          localObject2 = ((StringBuilder)localObject2).toString();
          a.putFragment((Bundle)localObject1, (String)localObject2, localFragment);
        }
      }
      i += 1;
      localObject2 = localObject1;
    }
    return localObject2;
  }
  
  public void setPrimaryItem(@NonNull ViewGroup paramViewGroup, int paramInt, @NonNull Object paramObject)
  {
    paramViewGroup = (Fragment)paramObject;
    if (paramViewGroup != e)
    {
      if (e != null)
      {
        e.setMenuVisibility(false);
        e.setUserVisibleHint(false);
      }
      paramViewGroup.setMenuVisibility(true);
      paramViewGroup.setUserVisibleHint(true);
      e = paramViewGroup;
    }
  }
  
  public void startUpdate(@NonNull ViewGroup paramViewGroup)
  {
    if (paramViewGroup.getId() != -1) {
      return;
    }
    paramViewGroup = new StringBuilder();
    paramViewGroup.append("ViewPager with adapter ");
    paramViewGroup.append(this);
    paramViewGroup.append(" requires a view id");
    throw new IllegalStateException(paramViewGroup.toString());
  }
}
