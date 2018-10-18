package android.support.v4.app;

import android.graphics.Rect;
import android.os.Build.VERSION;
import android.support.v4.util.ArrayMap;
import android.support.v4.view.ViewCompat;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import java.lang.reflect.Constructor;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

class f
{
  private static final int[] a = { 0, 3, 0, 1, 5, 4, 7, 6, 9, 8 };
  private static final FragmentTransitionImpl b;
  private static final FragmentTransitionImpl c = b();
  
  static
  {
    g localG;
    if (Build.VERSION.SDK_INT >= 21) {
      localG = new g();
    } else {
      localG = null;
    }
    b = localG;
  }
  
  private static FragmentTransitionImpl a(Fragment paramFragment1, Fragment paramFragment2)
  {
    ArrayList localArrayList = new ArrayList();
    if (paramFragment1 != null)
    {
      Object localObject = paramFragment1.getExitTransition();
      if (localObject != null) {
        localArrayList.add(localObject);
      }
      localObject = paramFragment1.getReturnTransition();
      if (localObject != null) {
        localArrayList.add(localObject);
      }
      paramFragment1 = paramFragment1.getSharedElementReturnTransition();
      if (paramFragment1 != null) {
        localArrayList.add(paramFragment1);
      }
    }
    if (paramFragment2 != null)
    {
      paramFragment1 = paramFragment2.getEnterTransition();
      if (paramFragment1 != null) {
        localArrayList.add(paramFragment1);
      }
      paramFragment1 = paramFragment2.getReenterTransition();
      if (paramFragment1 != null) {
        localArrayList.add(paramFragment1);
      }
      paramFragment1 = paramFragment2.getSharedElementEnterTransition();
      if (paramFragment1 != null) {
        localArrayList.add(paramFragment1);
      }
    }
    if (localArrayList.isEmpty()) {
      return null;
    }
    if ((b != null) && (a(b, localArrayList))) {
      return b;
    }
    if ((c != null) && (a(c, localArrayList))) {
      return c;
    }
    if ((b == null) && (c == null)) {
      return null;
    }
    throw new IllegalArgumentException("Invalid Transition types");
  }
  
  private static a a(a paramA, SparseArray<a> paramSparseArray, int paramInt)
  {
    a localA = paramA;
    if (paramA == null)
    {
      localA = new a();
      paramSparseArray.put(paramInt, localA);
    }
    return localA;
  }
  
  private static ArrayMap<String, String> a(int paramInt1, ArrayList<a> paramArrayList, ArrayList<Boolean> paramArrayList1, int paramInt2, int paramInt3)
  {
    ArrayMap localArrayMap = new ArrayMap();
    paramInt3 -= 1;
    while (paramInt3 >= paramInt2)
    {
      Object localObject = (a)paramArrayList.get(paramInt3);
      if (((a)localObject).b(paramInt1))
      {
        boolean bool = ((Boolean)paramArrayList1.get(paramInt3)).booleanValue();
        if (r != null)
        {
          int j = r.size();
          ArrayList localArrayList2;
          ArrayList localArrayList1;
          if (bool)
          {
            localArrayList2 = r;
            localArrayList1 = s;
          }
          else
          {
            localArrayList1 = r;
            localArrayList2 = s;
          }
          int i = 0;
          while (i < j)
          {
            localObject = (String)localArrayList1.get(i);
            String str1 = (String)localArrayList2.get(i);
            String str2 = (String)localArrayMap.remove(str1);
            if (str2 != null) {
              localArrayMap.put(localObject, str2);
            } else {
              localArrayMap.put(localObject, str1);
            }
            i += 1;
          }
        }
      }
      paramInt3 -= 1;
    }
    return localArrayMap;
  }
  
  static ArrayMap<String, View> a(FragmentTransitionImpl paramFragmentTransitionImpl, ArrayMap<String, String> paramArrayMap, Object paramObject, a paramA)
  {
    Fragment localFragment = a;
    View localView = localFragment.getView();
    if ((!paramArrayMap.isEmpty()) && (paramObject != null) && (localView != null))
    {
      ArrayMap localArrayMap = new ArrayMap();
      paramFragmentTransitionImpl.a(localArrayMap, localView);
      paramFragmentTransitionImpl = c;
      if (b)
      {
        paramObject = localFragment.getExitTransitionCallback();
        paramFragmentTransitionImpl = r;
      }
      else
      {
        paramObject = localFragment.getEnterTransitionCallback();
        paramFragmentTransitionImpl = s;
      }
      if (paramFragmentTransitionImpl != null)
      {
        localArrayMap.retainAll(paramFragmentTransitionImpl);
        localArrayMap.retainAll(paramArrayMap.values());
      }
      if (paramObject != null)
      {
        paramObject.onMapSharedElements(paramFragmentTransitionImpl, localArrayMap);
        int i = paramFragmentTransitionImpl.size() - 1;
        while (i >= 0)
        {
          paramA = (String)paramFragmentTransitionImpl.get(i);
          paramObject = (View)localArrayMap.get(paramA);
          if (paramObject == null)
          {
            paramObject = a(paramArrayMap, paramA);
            if (paramObject != null) {
              paramArrayMap.remove(paramObject);
            }
          }
          else if (!paramA.equals(ViewCompat.getTransitionName(paramObject)))
          {
            paramA = a(paramArrayMap, paramA);
            if (paramA != null) {
              paramArrayMap.put(paramA, ViewCompat.getTransitionName(paramObject));
            }
          }
          i -= 1;
        }
      }
      a(paramArrayMap, localArrayMap);
      return localArrayMap;
    }
    paramArrayMap.clear();
    return null;
  }
  
  static View a(ArrayMap<String, View> paramArrayMap, a paramA, Object paramObject, boolean paramBoolean)
  {
    paramA = c;
    if ((paramObject != null) && (paramArrayMap != null) && (r != null) && (!r.isEmpty()))
    {
      if (paramBoolean) {
        paramA = (String)r.get(0);
      } else {
        paramA = (String)s.get(0);
      }
      return (View)paramArrayMap.get(paramA);
    }
    return null;
  }
  
  private static Object a(FragmentTransitionImpl paramFragmentTransitionImpl, Fragment paramFragment1, Fragment paramFragment2, boolean paramBoolean)
  {
    if ((paramFragment1 != null) && (paramFragment2 != null))
    {
      if (paramBoolean) {
        paramFragment1 = paramFragment2.getSharedElementReturnTransition();
      } else {
        paramFragment1 = paramFragment1.getSharedElementEnterTransition();
      }
      return paramFragmentTransitionImpl.wrapTransitionInSet(paramFragmentTransitionImpl.cloneTransition(paramFragment1));
    }
    return null;
  }
  
  private static Object a(FragmentTransitionImpl paramFragmentTransitionImpl, Fragment paramFragment, boolean paramBoolean)
  {
    if (paramFragment == null) {
      return null;
    }
    if (paramBoolean) {
      paramFragment = paramFragment.getReenterTransition();
    } else {
      paramFragment = paramFragment.getEnterTransition();
    }
    return paramFragmentTransitionImpl.cloneTransition(paramFragment);
  }
  
  private static Object a(final FragmentTransitionImpl paramFragmentTransitionImpl, ViewGroup paramViewGroup, View paramView, ArrayMap<String, String> paramArrayMap, final a paramA, final ArrayList<View> paramArrayList1, ArrayList<View> paramArrayList2, Object paramObject1, Object paramObject2)
  {
    Fragment localFragment1 = a;
    final Fragment localFragment2 = d;
    if (localFragment1 != null) {
      localFragment1.getView().setVisibility(0);
    }
    if (localFragment1 != null)
    {
      if (localFragment2 == null) {
        return null;
      }
      final boolean bool = b;
      Object localObject;
      if (paramArrayMap.isEmpty()) {
        localObject = null;
      } else {
        localObject = a(paramFragmentTransitionImpl, localFragment1, localFragment2, bool);
      }
      ArrayMap localArrayMap2 = b(paramFragmentTransitionImpl, paramArrayMap, localObject, paramA);
      final ArrayMap localArrayMap1 = a(paramFragmentTransitionImpl, paramArrayMap, localObject, paramA);
      if (paramArrayMap.isEmpty())
      {
        if (localArrayMap2 != null) {
          localArrayMap2.clear();
        }
        if (localArrayMap1 != null) {
          localArrayMap1.clear();
        }
        paramArrayMap = null;
      }
      else
      {
        a(paramArrayList1, localArrayMap2, paramArrayMap.keySet());
        a(paramArrayList2, localArrayMap1, paramArrayMap.values());
        paramArrayMap = localObject;
      }
      if ((paramObject1 == null) && (paramObject2 == null) && (paramArrayMap == null)) {
        return null;
      }
      a(localFragment1, localFragment2, bool, localArrayMap2, true);
      if (paramArrayMap != null)
      {
        paramArrayList2.add(paramView);
        paramFragmentTransitionImpl.setSharedElementTargets(paramArrayMap, paramView, paramArrayList1);
        a(paramFragmentTransitionImpl, paramArrayMap, paramObject2, localArrayMap2, e, f);
        paramView = new Rect();
        paramA = a(localArrayMap1, paramA, paramObject1, bool);
        if (paramA != null) {
          paramFragmentTransitionImpl.setEpicenter(paramObject1, paramView);
        }
        paramArrayList1 = paramView;
      }
      else
      {
        paramView = null;
        paramArrayList1 = paramView;
        paramA = paramView;
      }
      j.a(paramViewGroup, new Runnable()
      {
        public void run()
        {
          f.a(a, localFragment2, bool, localArrayMap1, false);
          if (paramA != null) {
            paramFragmentTransitionImpl.getBoundsOnScreen(paramA, paramArrayList1);
          }
        }
      });
      return paramArrayMap;
    }
    return null;
  }
  
  private static Object a(FragmentTransitionImpl paramFragmentTransitionImpl, Object paramObject1, Object paramObject2, Object paramObject3, Fragment paramFragment, boolean paramBoolean)
  {
    if ((paramObject1 != null) && (paramObject2 != null) && (paramFragment != null))
    {
      if (paramBoolean) {
        paramBoolean = paramFragment.getAllowReturnTransitionOverlap();
      } else {
        paramBoolean = paramFragment.getAllowEnterTransitionOverlap();
      }
    }
    else {
      paramBoolean = true;
    }
    if (paramBoolean) {
      return paramFragmentTransitionImpl.mergeTransitionsTogether(paramObject2, paramObject1, paramObject3);
    }
    return paramFragmentTransitionImpl.mergeTransitionsInSequence(paramObject2, paramObject1, paramObject3);
  }
  
  private static String a(ArrayMap<String, String> paramArrayMap, String paramString)
  {
    int j = paramArrayMap.size();
    int i = 0;
    while (i < j)
    {
      if (paramString.equals(paramArrayMap.valueAt(i))) {
        return (String)paramArrayMap.keyAt(i);
      }
      i += 1;
    }
    return null;
  }
  
  static ArrayList<View> a(FragmentTransitionImpl paramFragmentTransitionImpl, Object paramObject, Fragment paramFragment, ArrayList<View> paramArrayList, View paramView)
  {
    if (paramObject != null)
    {
      ArrayList localArrayList = new ArrayList();
      paramFragment = paramFragment.getView();
      if (paramFragment != null) {
        paramFragmentTransitionImpl.a(localArrayList, paramFragment);
      }
      if (paramArrayList != null) {
        localArrayList.removeAll(paramArrayList);
      }
      paramFragment = localArrayList;
      if (!localArrayList.isEmpty())
      {
        localArrayList.add(paramView);
        paramFragmentTransitionImpl.addTargets(paramObject, localArrayList);
        return localArrayList;
      }
    }
    else
    {
      paramFragment = null;
    }
    return paramFragment;
  }
  
  static void a(Fragment paramFragment1, Fragment paramFragment2, boolean paramBoolean1, ArrayMap<String, View> paramArrayMap, boolean paramBoolean2)
  {
    if (paramBoolean1) {
      paramFragment1 = paramFragment2.getEnterTransitionCallback();
    } else {
      paramFragment1 = paramFragment1.getEnterTransitionCallback();
    }
    if (paramFragment1 != null)
    {
      paramFragment2 = new ArrayList();
      ArrayList localArrayList = new ArrayList();
      int j = 0;
      int i;
      if (paramArrayMap == null) {
        i = 0;
      } else {
        i = paramArrayMap.size();
      }
      while (j < i)
      {
        localArrayList.add(paramArrayMap.keyAt(j));
        paramFragment2.add(paramArrayMap.valueAt(j));
        j += 1;
      }
      if (paramBoolean2)
      {
        paramFragment1.onSharedElementStart(localArrayList, paramFragment2, null);
        return;
      }
      paramFragment1.onSharedElementEnd(localArrayList, paramFragment2, null);
    }
  }
  
  private static void a(final FragmentTransitionImpl paramFragmentTransitionImpl, ViewGroup paramViewGroup, final Fragment paramFragment, final View paramView, final ArrayList<View> paramArrayList1, Object paramObject1, final ArrayList<View> paramArrayList2, final Object paramObject2, final ArrayList<View> paramArrayList3)
  {
    j.a(paramViewGroup, new Runnable()
    {
      public void run()
      {
        ArrayList localArrayList;
        if (a != null)
        {
          paramFragmentTransitionImpl.removeTarget(a, paramView);
          localArrayList = f.a(paramFragmentTransitionImpl, a, paramFragment, paramArrayList1, paramView);
          paramArrayList2.addAll(localArrayList);
        }
        if (paramArrayList3 != null)
        {
          if (paramObject2 != null)
          {
            localArrayList = new ArrayList();
            localArrayList.add(paramView);
            paramFragmentTransitionImpl.replaceTargets(paramObject2, paramArrayList3, localArrayList);
          }
          paramArrayList3.clear();
          paramArrayList3.add(paramView);
        }
      }
    });
  }
  
  private static void a(FragmentTransitionImpl paramFragmentTransitionImpl, Object paramObject, Fragment paramFragment, ArrayList<View> paramArrayList)
  {
    if ((paramFragment != null) && (paramObject != null) && (mAdded) && (mHidden) && (mHiddenChanged))
    {
      paramFragment.setHideReplaced(true);
      paramFragmentTransitionImpl.scheduleHideFragmentView(paramObject, paramFragment.getView(), paramArrayList);
      j.a(mContainer, new Runnable()
      {
        public void run()
        {
          f.a(a, 4);
        }
      });
    }
  }
  
  private static void a(FragmentTransitionImpl paramFragmentTransitionImpl, Object paramObject1, Object paramObject2, ArrayMap<String, View> paramArrayMap, boolean paramBoolean, a paramA)
  {
    if ((r != null) && (!r.isEmpty()))
    {
      if (paramBoolean) {
        paramA = (String)s.get(0);
      } else {
        paramA = (String)r.get(0);
      }
      paramArrayMap = (View)paramArrayMap.get(paramA);
      paramFragmentTransitionImpl.setEpicenter(paramObject1, paramArrayMap);
      if (paramObject2 != null) {
        paramFragmentTransitionImpl.setEpicenter(paramObject2, paramArrayMap);
      }
    }
  }
  
  private static void a(a paramA, a.a paramA1, SparseArray<a> paramSparseArray, boolean paramBoolean1, boolean paramBoolean2)
  {
    Fragment localFragment = b;
    if (localFragment == null) {
      return;
    }
    int m = mContainerId;
    if (m == 0) {
      return;
    }
    if (paramBoolean1) {
      i = a[a];
    } else {
      i = a;
    }
    boolean bool2 = false;
    boolean bool1 = false;
    if (i != 1) {
      switch (i)
      {
      }
    }
    int k;
    int j;
    for (int i = 0;; i = 1)
    {
      k = 0;
      j = 0;
      break;
      if (paramBoolean2)
      {
        if ((!mHiddenChanged) || (mHidden) || (!mAdded)) {
          break label328;
        }
      }
      else
      {
        bool1 = mHidden;
        continue;
        if (paramBoolean2)
        {
          if ((!mHiddenChanged) || (!mAdded) || (!mHidden)) {}
        }
        else {
          for (;;)
          {
            break;
            if ((!mAdded) || (mHidden)) {
              break label249;
            }
            continue;
            if (!paramBoolean2) {
              break label255;
            }
            if ((mAdded) || (mView == null) || (mView.getVisibility() != 0) || (mPostponedAlpha < 0.0F)) {
              break label249;
            }
          }
        }
        for (;;)
        {
          i = 1;
          break;
          label249:
          label255:
          do
          {
            i = 0;
            break;
          } while ((!mAdded) || (mHidden));
        }
        j = i;
        i = 0;
        k = 1;
        bool1 = bool2;
        break;
        if (paramBoolean2)
        {
          bool1 = mIsNewlyAdded;
          continue;
        }
        if ((mAdded) || (mHidden)) {
          break label328;
        }
      }
      bool1 = true;
      continue;
      label328:
      bool1 = false;
    }
    Object localObject = (a)paramSparseArray.get(m);
    paramA1 = (a.a)localObject;
    if (bool1)
    {
      paramA1 = a((a)localObject, paramSparseArray, m);
      a = localFragment;
      b = paramBoolean1;
      c = paramA;
    }
    if ((!paramBoolean2) && (i != 0))
    {
      if ((paramA1 != null) && (d == localFragment)) {
        d = null;
      }
      localObject = a;
      if ((mState < 1) && (l >= 1) && (!t))
      {
        ((c)localObject).f(localFragment);
        ((c)localObject).a(localFragment, 1, 0, 0, false);
      }
    }
    localObject = paramA1;
    if (j != 0) {
      if (paramA1 != null)
      {
        localObject = paramA1;
        if (d != null) {}
      }
      else
      {
        localObject = a(paramA1, paramSparseArray, m);
        d = localFragment;
        e = paramBoolean1;
        f = paramA;
      }
    }
    if ((!paramBoolean2) && (k != 0) && (localObject != null) && (a == localFragment)) {
      a = null;
    }
  }
  
  public static void a(a paramA, SparseArray<a> paramSparseArray, boolean paramBoolean)
  {
    int j = b.size();
    int i = 0;
    while (i < j)
    {
      a(paramA, (a.a)b.get(i), paramSparseArray, false, paramBoolean);
      i += 1;
    }
  }
  
  private static void a(c paramC, int paramInt, a paramA, View paramView, ArrayMap<String, String> paramArrayMap)
  {
    if (n.onHasView()) {
      paramC = (ViewGroup)n.onFindViewById(paramInt);
    } else {
      paramC = null;
    }
    if (paramC == null) {
      return;
    }
    Object localObject5 = a;
    Object localObject3 = d;
    FragmentTransitionImpl localFragmentTransitionImpl = a((Fragment)localObject3, (Fragment)localObject5);
    if (localFragmentTransitionImpl == null) {
      return;
    }
    boolean bool1 = b;
    boolean bool2 = e;
    ArrayList localArrayList1 = new ArrayList();
    ArrayList localArrayList2 = new ArrayList();
    Object localObject2 = a(localFragmentTransitionImpl, (Fragment)localObject5, bool1);
    Object localObject1 = b(localFragmentTransitionImpl, (Fragment)localObject3, bool2);
    Object localObject4 = a(localFragmentTransitionImpl, paramC, paramView, paramArrayMap, paramA, localArrayList2, localArrayList1, localObject2, localObject1);
    if ((localObject2 == null) && (localObject4 == null) && (localObject1 == null)) {
      return;
    }
    paramA = (a)localObject1;
    localObject1 = a(localFragmentTransitionImpl, paramA, (Fragment)localObject3, localArrayList2, paramView);
    paramView = a(localFragmentTransitionImpl, localObject2, (Fragment)localObject5, localArrayList1, paramView);
    a(paramView, 4);
    localObject5 = a(localFragmentTransitionImpl, localObject2, paramA, localObject4, (Fragment)localObject5, bool1);
    if (localObject5 != null)
    {
      a(localFragmentTransitionImpl, paramA, (Fragment)localObject3, (ArrayList)localObject1);
      localObject3 = localFragmentTransitionImpl.a(localArrayList1);
      localFragmentTransitionImpl.scheduleRemoveTargets(localObject5, localObject2, paramView, paramA, (ArrayList)localObject1, localObject4, localArrayList1);
      localFragmentTransitionImpl.beginDelayedTransition(paramC, localObject5);
      localFragmentTransitionImpl.a(paramC, localArrayList2, localArrayList1, (ArrayList)localObject3, paramArrayMap);
      a(paramView, 0);
      localFragmentTransitionImpl.swapSharedElementTargets(localObject4, localArrayList2, localArrayList1);
    }
  }
  
  static void a(c paramC, ArrayList<a> paramArrayList, ArrayList<Boolean> paramArrayList1, int paramInt1, int paramInt2, boolean paramBoolean)
  {
    if (l < 1) {
      return;
    }
    SparseArray localSparseArray = new SparseArray();
    int i = paramInt1;
    Object localObject;
    while (i < paramInt2)
    {
      localObject = (a)paramArrayList.get(i);
      if (((Boolean)paramArrayList1.get(i)).booleanValue()) {
        b((a)localObject, localSparseArray, paramBoolean);
      } else {
        a((a)localObject, localSparseArray, paramBoolean);
      }
      i += 1;
    }
    if (localSparseArray.size() != 0)
    {
      localObject = new View(m.c());
      int j = localSparseArray.size();
      i = 0;
      while (i < j)
      {
        int k = localSparseArray.keyAt(i);
        ArrayMap localArrayMap = a(k, paramArrayList, paramArrayList1, paramInt1, paramInt2);
        a localA = (a)localSparseArray.valueAt(i);
        if (paramBoolean) {
          a(paramC, k, localA, (View)localObject, localArrayMap);
        } else {
          b(paramC, k, localA, (View)localObject, localArrayMap);
        }
        i += 1;
      }
    }
  }
  
  private static void a(ArrayMap<String, String> paramArrayMap, ArrayMap<String, View> paramArrayMap1)
  {
    int i = paramArrayMap.size() - 1;
    while (i >= 0)
    {
      if (!paramArrayMap1.containsKey((String)paramArrayMap.valueAt(i))) {
        paramArrayMap.removeAt(i);
      }
      i -= 1;
    }
  }
  
  static void a(ArrayList<View> paramArrayList, int paramInt)
  {
    if (paramArrayList == null) {
      return;
    }
    int i = paramArrayList.size() - 1;
    while (i >= 0)
    {
      ((View)paramArrayList.get(i)).setVisibility(paramInt);
      i -= 1;
    }
  }
  
  private static void a(ArrayList<View> paramArrayList, ArrayMap<String, View> paramArrayMap, Collection<String> paramCollection)
  {
    int i = paramArrayMap.size() - 1;
    while (i >= 0)
    {
      View localView = (View)paramArrayMap.valueAt(i);
      if (paramCollection.contains(ViewCompat.getTransitionName(localView))) {
        paramArrayList.add(localView);
      }
      i -= 1;
    }
  }
  
  static boolean a()
  {
    return (b != null) || (c != null);
  }
  
  private static boolean a(FragmentTransitionImpl paramFragmentTransitionImpl, List<Object> paramList)
  {
    int j = paramList.size();
    int i = 0;
    while (i < j)
    {
      if (!paramFragmentTransitionImpl.canHandle(paramList.get(i))) {
        return false;
      }
      i += 1;
    }
    return true;
  }
  
  private static FragmentTransitionImpl b()
  {
    try
    {
      FragmentTransitionImpl localFragmentTransitionImpl = (FragmentTransitionImpl)Class.forName("android.support.transition.FragmentTransitionSupport").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
      return localFragmentTransitionImpl;
    }
    catch (Exception localException)
    {
      for (;;) {}
    }
    return null;
  }
  
  private static ArrayMap<String, View> b(FragmentTransitionImpl paramFragmentTransitionImpl, ArrayMap<String, String> paramArrayMap, Object paramObject, a paramA)
  {
    if ((!paramArrayMap.isEmpty()) && (paramObject != null))
    {
      paramObject = d;
      ArrayMap localArrayMap = new ArrayMap();
      paramFragmentTransitionImpl.a(localArrayMap, paramObject.getView());
      paramFragmentTransitionImpl = f;
      if (e)
      {
        paramObject = paramObject.getEnterTransitionCallback();
        paramFragmentTransitionImpl = s;
      }
      else
      {
        paramObject = paramObject.getExitTransitionCallback();
        paramFragmentTransitionImpl = r;
      }
      localArrayMap.retainAll(paramFragmentTransitionImpl);
      if (paramObject != null)
      {
        paramObject.onMapSharedElements(paramFragmentTransitionImpl, localArrayMap);
        int i = paramFragmentTransitionImpl.size() - 1;
        while (i >= 0)
        {
          paramA = (String)paramFragmentTransitionImpl.get(i);
          paramObject = (View)localArrayMap.get(paramA);
          if (paramObject == null)
          {
            paramArrayMap.remove(paramA);
          }
          else if (!paramA.equals(ViewCompat.getTransitionName(paramObject)))
          {
            paramA = (String)paramArrayMap.remove(paramA);
            paramArrayMap.put(ViewCompat.getTransitionName(paramObject), paramA);
          }
          i -= 1;
        }
      }
      paramArrayMap.retainAll(localArrayMap.keySet());
      return localArrayMap;
    }
    paramArrayMap.clear();
    return null;
  }
  
  private static Object b(FragmentTransitionImpl paramFragmentTransitionImpl, Fragment paramFragment, boolean paramBoolean)
  {
    if (paramFragment == null) {
      return null;
    }
    if (paramBoolean) {
      paramFragment = paramFragment.getReturnTransition();
    } else {
      paramFragment = paramFragment.getExitTransition();
    }
    return paramFragmentTransitionImpl.cloneTransition(paramFragment);
  }
  
  private static Object b(FragmentTransitionImpl paramFragmentTransitionImpl, ViewGroup paramViewGroup, final View paramView, final ArrayMap<String, String> paramArrayMap, final a paramA, final ArrayList<View> paramArrayList1, final ArrayList<View> paramArrayList2, final Object paramObject1, final Object paramObject2)
  {
    final Fragment localFragment1 = a;
    final Fragment localFragment2 = d;
    if (localFragment1 != null)
    {
      if (localFragment2 == null) {
        return null;
      }
      final boolean bool = b;
      final Object localObject;
      if (paramArrayMap.isEmpty()) {
        localObject = null;
      } else {
        localObject = a(paramFragmentTransitionImpl, localFragment1, localFragment2, bool);
      }
      ArrayMap localArrayMap = b(paramFragmentTransitionImpl, paramArrayMap, localObject, paramA);
      if (paramArrayMap.isEmpty()) {
        localObject = null;
      } else {
        paramArrayList1.addAll(localArrayMap.values());
      }
      if ((paramObject1 == null) && (paramObject2 == null) && (localObject == null)) {
        return null;
      }
      a(localFragment1, localFragment2, bool, localArrayMap, true);
      if (localObject != null)
      {
        Rect localRect = new Rect();
        paramFragmentTransitionImpl.setSharedElementTargets(localObject, paramView, paramArrayList1);
        a(paramFragmentTransitionImpl, localObject, paramObject2, localArrayMap, e, f);
        paramObject2 = localRect;
        if (paramObject1 != null)
        {
          paramFragmentTransitionImpl.setEpicenter(paramObject1, localRect);
          paramObject2 = localRect;
        }
      }
      else
      {
        paramObject2 = null;
      }
      j.a(paramViewGroup, new Runnable()
      {
        public void run()
        {
          Object localObject = f.a(a, paramArrayMap, localObject, paramA);
          if (localObject != null)
          {
            paramArrayList2.addAll(((ArrayMap)localObject).values());
            paramArrayList2.add(paramView);
          }
          f.a(localFragment1, localFragment2, bool, (ArrayMap)localObject, false);
          if (localObject != null)
          {
            a.swapSharedElementTargets(localObject, paramArrayList1, paramArrayList2);
            localObject = f.a((ArrayMap)localObject, paramA, paramObject1, bool);
            if (localObject != null) {
              a.getBoundsOnScreen((View)localObject, paramObject2);
            }
          }
        }
      });
      return localObject;
    }
    return null;
  }
  
  public static void b(a paramA, SparseArray<a> paramSparseArray, boolean paramBoolean)
  {
    if (!a.n.onHasView()) {
      return;
    }
    int i = b.size() - 1;
    while (i >= 0)
    {
      a(paramA, (a.a)b.get(i), paramSparseArray, true, paramBoolean);
      i -= 1;
    }
  }
  
  private static void b(c paramC, int paramInt, a paramA, View paramView, ArrayMap<String, String> paramArrayMap)
  {
    if (n.onHasView()) {
      paramC = (ViewGroup)n.onFindViewById(paramInt);
    } else {
      paramC = null;
    }
    if (paramC == null) {
      return;
    }
    Fragment localFragment = a;
    Object localObject4 = d;
    FragmentTransitionImpl localFragmentTransitionImpl = a((Fragment)localObject4, localFragment);
    if (localFragmentTransitionImpl == null) {
      return;
    }
    boolean bool1 = b;
    boolean bool2 = e;
    Object localObject2 = a(localFragmentTransitionImpl, localFragment, bool1);
    Object localObject1 = b(localFragmentTransitionImpl, (Fragment)localObject4, bool2);
    ArrayList localArrayList2 = new ArrayList();
    ArrayList localArrayList1 = new ArrayList();
    Object localObject3 = b(localFragmentTransitionImpl, paramC, paramView, paramArrayMap, paramA, localArrayList2, localArrayList1, localObject2, localObject1);
    if ((localObject2 == null) && (localObject3 == null) && (localObject1 == null)) {
      return;
    }
    localObject4 = a(localFragmentTransitionImpl, localObject1, (Fragment)localObject4, localArrayList2, paramView);
    if ((localObject4 != null) && (!((ArrayList)localObject4).isEmpty())) {
      break label183;
    }
    localObject1 = null;
    label183:
    localFragmentTransitionImpl.addTarget(localObject2, paramView);
    paramA = a(localFragmentTransitionImpl, localObject2, localObject1, localObject3, localFragment, b);
    if (paramA != null)
    {
      localArrayList2 = new ArrayList();
      localFragmentTransitionImpl.scheduleRemoveTargets(paramA, localObject2, localArrayList2, localObject1, (ArrayList)localObject4, localObject3, localArrayList1);
      a(localFragmentTransitionImpl, paramC, localFragment, paramView, localArrayList1, localObject2, localArrayList2, localObject1, (ArrayList)localObject4);
      localFragmentTransitionImpl.a(paramC, localArrayList1, paramArrayMap);
      localFragmentTransitionImpl.beginDelayedTransition(paramC, paramA);
      localFragmentTransitionImpl.a(paramC, localArrayList1, paramArrayMap);
    }
  }
  
  static class a
  {
    public Fragment a;
    public boolean b;
    public a c;
    public Fragment d;
    public boolean e;
    public a f;
    
    a() {}
  }
}
