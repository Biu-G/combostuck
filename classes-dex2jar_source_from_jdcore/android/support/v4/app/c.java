package android.support.v4.app;

import android.animation.Animator;
import android.animation.AnimatorInflater;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.PropertyValuesHolder;
import android.animation.ValueAnimator;
import android.arch.lifecycle.MutableLiveData;
import android.arch.lifecycle.ViewModelStore;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.Resources.NotFoundException;
import android.content.res.TypedArray;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Parcelable;
import android.support.annotation.CallSuper;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v4.util.ArraySet;
import android.support.v4.util.DebugUtils;
import android.support.v4.util.LogWriter;
import android.support.v4.view.ViewCompat;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.view.LayoutInflater.Factory2;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;
import android.view.animation.AnimationSet;
import android.view.animation.AnimationUtils;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import android.view.animation.ScaleAnimation;
import android.view.animation.Transformation;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

final class c
  extends FragmentManager
  implements LayoutInflater.Factory2
{
  static final Interpolator F = new DecelerateInterpolator(2.5F);
  static final Interpolator G = new DecelerateInterpolator(1.5F);
  static final Interpolator H = new AccelerateInterpolator(2.5F);
  static final Interpolator I = new AccelerateInterpolator(1.5F);
  static boolean a = false;
  static Field q;
  Bundle A = null;
  SparseArray<Parcelable> B = null;
  ArrayList<j> C;
  FragmentManagerNonConfig D;
  Runnable E = new Runnable()
  {
    public void run()
    {
      e();
    }
  };
  private final CopyOnWriteArrayList<f> J = new CopyOnWriteArrayList();
  ArrayList<h> b;
  boolean c;
  int d = 0;
  final ArrayList<Fragment> e = new ArrayList();
  SparseArray<Fragment> f;
  ArrayList<a> g;
  ArrayList<Fragment> h;
  ArrayList<a> i;
  ArrayList<Integer> j;
  ArrayList<FragmentManager.OnBackStackChangedListener> k;
  int l = 0;
  FragmentHostCallback m;
  FragmentContainer n;
  Fragment o;
  @Nullable
  Fragment p;
  boolean r;
  boolean s;
  boolean t;
  boolean u;
  String v;
  boolean w;
  ArrayList<a> x;
  ArrayList<Boolean> y;
  ArrayList<Fragment> z;
  
  c() {}
  
  private int a(ArrayList<a> paramArrayList, ArrayList<Boolean> paramArrayList1, int paramInt1, int paramInt2, ArraySet<Fragment> paramArraySet)
  {
    int i1 = paramInt2 - 1;
    int i3;
    for (int i2 = paramInt2; i1 >= paramInt1; i2 = i3)
    {
      a localA = (a)paramArrayList.get(i1);
      boolean bool = ((Boolean)paramArrayList1.get(i1)).booleanValue();
      int i4;
      if ((localA.c()) && (!localA.a(paramArrayList, i1 + 1, paramInt2))) {
        i4 = 1;
      } else {
        i4 = 0;
      }
      i3 = i2;
      if (i4 != 0)
      {
        if (C == null) {
          C = new ArrayList();
        }
        j localJ = new j(localA, bool);
        C.add(localJ);
        localA.a(localJ);
        if (bool) {
          localA.b();
        } else {
          localA.b(false);
        }
        i3 = i2 - 1;
        if (i1 != i3)
        {
          paramArrayList.remove(i1);
          paramArrayList.add(i3, localA);
        }
        b(paramArraySet);
      }
      i1 -= 1;
    }
    return i2;
  }
  
  static c a(Context paramContext, float paramFloat1, float paramFloat2)
  {
    paramContext = new AlphaAnimation(paramFloat1, paramFloat2);
    paramContext.setInterpolator(G);
    paramContext.setDuration(220L);
    return new c(paramContext);
  }
  
  static c a(Context paramContext, float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4)
  {
    paramContext = new AnimationSet(false);
    Object localObject = new ScaleAnimation(paramFloat1, paramFloat2, paramFloat1, paramFloat2, 1, 0.5F, 1, 0.5F);
    ((ScaleAnimation)localObject).setInterpolator(F);
    ((ScaleAnimation)localObject).setDuration(220L);
    paramContext.addAnimation((Animation)localObject);
    localObject = new AlphaAnimation(paramFloat3, paramFloat4);
    ((AlphaAnimation)localObject).setInterpolator(G);
    ((AlphaAnimation)localObject).setDuration(220L);
    paramContext.addAnimation((Animation)localObject);
    return new c(paramContext);
  }
  
  private static Animation.AnimationListener a(Animation paramAnimation)
  {
    try
    {
      if (q == null)
      {
        q = Animation.class.getDeclaredField("mListener");
        q.setAccessible(true);
      }
      paramAnimation = (Animation.AnimationListener)q.get(paramAnimation);
      return paramAnimation;
    }
    catch (IllegalAccessException paramAnimation)
    {
      Log.e("FragmentManager", "Cannot access Animation's mListener field", paramAnimation);
    }
    catch (NoSuchFieldException paramAnimation)
    {
      Log.e("FragmentManager", "No field with the name mListener is found in Animation class", paramAnimation);
    }
    return null;
  }
  
  private void a(@NonNull final Fragment paramFragment, @NonNull c paramC, int paramInt)
  {
    final View localView = mView;
    final ViewGroup localViewGroup = mContainer;
    localViewGroup.startViewTransition(localView);
    paramFragment.setStateAfterAnimating(paramInt);
    if (a != null)
    {
      localObject = new e(a, localViewGroup, localView);
      paramFragment.setAnimatingAway(mView);
      ((Animation)localObject).setAnimationListener(new b(a((Animation)localObject))
      {
        public void onAnimationEnd(Animation paramAnonymousAnimation)
        {
          super.onAnimationEnd(paramAnonymousAnimation);
          localViewGroup.post(new Runnable()
          {
            public void run()
            {
              if (b.getAnimatingAway() != null)
              {
                b.setAnimatingAway(null);
                a(b, b.getStateAfterAnimating(), 0, 0, false);
              }
            }
          });
        }
      });
      b(localView, paramC);
      mView.startAnimation((Animation)localObject);
      return;
    }
    Object localObject = b;
    paramFragment.setAnimator(b);
    ((Animator)localObject).addListener(new AnimatorListenerAdapter()
    {
      public void onAnimationEnd(Animator paramAnonymousAnimator)
      {
        localViewGroup.endViewTransition(localView);
        paramAnonymousAnimator = paramFragment.getAnimator();
        paramFragment.setAnimator(null);
        if ((paramAnonymousAnimator != null) && (localViewGroup.indexOfChild(localView) < 0)) {
          a(paramFragment, paramFragment.getStateAfterAnimating(), 0, 0, false);
        }
      }
    });
    ((Animator)localObject).setTarget(mView);
    b(mView, paramC);
    ((Animator)localObject).start();
  }
  
  private static void a(FragmentManagerNonConfig paramFragmentManagerNonConfig)
  {
    if (paramFragmentManagerNonConfig == null) {
      return;
    }
    Object localObject = paramFragmentManagerNonConfig.a();
    if (localObject != null)
    {
      localObject = ((List)localObject).iterator();
      while (((Iterator)localObject).hasNext()) {
        nextmRetaining = true;
      }
    }
    paramFragmentManagerNonConfig = paramFragmentManagerNonConfig.b();
    if (paramFragmentManagerNonConfig != null)
    {
      paramFragmentManagerNonConfig = paramFragmentManagerNonConfig.iterator();
      while (paramFragmentManagerNonConfig.hasNext()) {
        a((FragmentManagerNonConfig)paramFragmentManagerNonConfig.next());
      }
    }
  }
  
  private void a(ArraySet<Fragment> paramArraySet)
  {
    int i2 = paramArraySet.size();
    int i1 = 0;
    while (i1 < i2)
    {
      Fragment localFragment = (Fragment)paramArraySet.valueAt(i1);
      if (!mAdded)
      {
        View localView = localFragment.getView();
        mPostponedAlpha = localView.getAlpha();
        localView.setAlpha(0.0F);
      }
      i1 += 1;
    }
  }
  
  private void a(RuntimeException paramRuntimeException)
  {
    Log.e("FragmentManager", paramRuntimeException.getMessage());
    Log.e("FragmentManager", "Activity state:");
    PrintWriter localPrintWriter = new PrintWriter(new LogWriter("FragmentManager"));
    if (m != null) {
      try
      {
        m.onDump("  ", null, localPrintWriter, new String[0]);
      }
      catch (Exception localException1)
      {
        Log.e("FragmentManager", "Failed dumping state", localException1);
      }
    } else {
      try
      {
        dump("  ", null, localException1, new String[0]);
      }
      catch (Exception localException2)
      {
        Log.e("FragmentManager", "Failed dumping state", localException2);
      }
    }
    throw paramRuntimeException;
  }
  
  private void a(ArrayList<a> paramArrayList, ArrayList<Boolean> paramArrayList1)
  {
    if (C == null) {
      i1 = 0;
    } else {
      i1 = C.size();
    }
    int i3 = 0;
    int i2 = i1;
    int i1 = i3;
    while (i1 < i2)
    {
      j localJ = (j)C.get(i1);
      int i4;
      if ((paramArrayList != null) && (!a))
      {
        i3 = paramArrayList.indexOf(b);
        if ((i3 != -1) && (((Boolean)paramArrayList1.get(i3)).booleanValue()))
        {
          localJ.e();
          i4 = i1;
          i3 = i2;
          break label224;
        }
      }
      if (!localJ.c())
      {
        i4 = i1;
        i3 = i2;
        if (paramArrayList != null)
        {
          i4 = i1;
          i3 = i2;
          if (!b.a(paramArrayList, 0, paramArrayList.size())) {}
        }
      }
      else
      {
        C.remove(i1);
        i4 = i1 - 1;
        i3 = i2 - 1;
        if ((paramArrayList != null) && (!a))
        {
          i1 = paramArrayList.indexOf(b);
          if ((i1 != -1) && (((Boolean)paramArrayList1.get(i1)).booleanValue()))
          {
            localJ.e();
            break label224;
          }
        }
        localJ.d();
      }
      label224:
      i1 = i4 + 1;
      i2 = i3;
    }
  }
  
  private void a(ArrayList<a> paramArrayList, ArrayList<Boolean> paramArrayList1, int paramInt1, int paramInt2)
  {
    int i1 = paramInt1;
    boolean bool = gett;
    if (z == null) {
      z = new ArrayList();
    } else {
      z.clear();
    }
    z.addAll(e);
    Object localObject = getPrimaryNavigationFragment();
    int i3 = i1;
    int i2 = 0;
    while (i3 < paramInt2)
    {
      a localA = (a)paramArrayList.get(i3);
      if (!((Boolean)paramArrayList1.get(i3)).booleanValue()) {
        localObject = localA.a(z, (Fragment)localObject);
      } else {
        localObject = localA.b(z, (Fragment)localObject);
      }
      if ((i2 == 0) && (!i)) {
        i2 = 0;
      } else {
        i2 = 1;
      }
      i3 += 1;
    }
    z.clear();
    if (!bool) {
      f.a(this, paramArrayList, paramArrayList1, paramInt1, paramInt2, false);
    }
    b(paramArrayList, paramArrayList1, paramInt1, paramInt2);
    if (bool)
    {
      localObject = new ArraySet();
      b((ArraySet)localObject);
      i3 = a(paramArrayList, paramArrayList1, paramInt1, paramInt2, (ArraySet)localObject);
      a((ArraySet)localObject);
    }
    else
    {
      i3 = paramInt2;
    }
    int i4 = i1;
    if (i3 != i1)
    {
      i4 = i1;
      if (bool)
      {
        f.a(this, paramArrayList, paramArrayList1, paramInt1, i3, true);
        a(l, true);
        i4 = i1;
      }
    }
    while (i4 < paramInt2)
    {
      localObject = (a)paramArrayList.get(i4);
      if ((((Boolean)paramArrayList1.get(i4)).booleanValue()) && (m >= 0))
      {
        b(m);
        m = -1;
      }
      ((a)localObject).a();
      i4 += 1;
    }
    if (i2 != 0) {
      g();
    }
  }
  
  static boolean a(Animator paramAnimator)
  {
    if (paramAnimator == null) {
      return false;
    }
    int i1;
    if ((paramAnimator instanceof ValueAnimator))
    {
      paramAnimator = ((ValueAnimator)paramAnimator).getValues();
      i1 = 0;
      while (i1 < paramAnimator.length)
      {
        if ("alpha".equals(paramAnimator[i1].getPropertyName())) {
          return true;
        }
        i1 += 1;
      }
    }
    if ((paramAnimator instanceof AnimatorSet))
    {
      paramAnimator = ((AnimatorSet)paramAnimator).getChildAnimations();
      i1 = 0;
      while (i1 < paramAnimator.size())
      {
        if (a((Animator)paramAnimator.get(i1))) {
          return true;
        }
        i1 += 1;
      }
    }
    return false;
  }
  
  static boolean a(c paramC)
  {
    if ((a instanceof AlphaAnimation)) {
      return true;
    }
    if ((a instanceof AnimationSet))
    {
      paramC = ((AnimationSet)a).getAnimations();
      int i1 = 0;
      while (i1 < paramC.size())
      {
        if ((paramC.get(i1) instanceof AlphaAnimation)) {
          return true;
        }
        i1 += 1;
      }
      return false;
    }
    return a(b);
  }
  
  static boolean a(View paramView, c paramC)
  {
    boolean bool2 = false;
    if (paramView != null)
    {
      if (paramC == null) {
        return false;
      }
      boolean bool1 = bool2;
      if (Build.VERSION.SDK_INT >= 19)
      {
        bool1 = bool2;
        if (paramView.getLayerType() == 0)
        {
          bool1 = bool2;
          if (ViewCompat.hasOverlappingRendering(paramView))
          {
            bool1 = bool2;
            if (a(paramC)) {
              bool1 = true;
            }
          }
        }
      }
      return bool1;
    }
    return false;
  }
  
  private boolean a(String paramString, int paramInt1, int paramInt2)
  {
    e();
    c(true);
    if ((p != null) && (paramInt1 < 0) && (paramString == null))
    {
      FragmentManager localFragmentManager = p.peekChildFragmentManager();
      if ((localFragmentManager != null) && (localFragmentManager.popBackStackImmediate())) {
        return true;
      }
    }
    boolean bool = a(x, y, paramString, paramInt1, paramInt2);
    if (bool) {
      c = true;
    }
    try
    {
      b(x, y);
      w();
    }
    finally
    {
      w();
    }
    z();
    return bool;
  }
  
  public static int b(int paramInt, boolean paramBoolean)
  {
    if (paramInt != 4097)
    {
      if (paramInt != 4099)
      {
        if (paramInt != 8194) {
          return -1;
        }
        if (paramBoolean) {
          return 3;
        }
        return 4;
      }
      if (paramBoolean) {
        return 5;
      }
      return 6;
    }
    if (paramBoolean) {
      return 1;
    }
    return 2;
  }
  
  private void b(ArraySet<Fragment> paramArraySet)
  {
    if (l < 1) {
      return;
    }
    int i2 = Math.min(l, 3);
    int i3 = e.size();
    int i1 = 0;
    while (i1 < i3)
    {
      Fragment localFragment = (Fragment)e.get(i1);
      if (mState < i2)
      {
        a(localFragment, i2, localFragment.getNextAnim(), localFragment.getNextTransition(), false);
        if ((mView != null) && (!mHidden) && (mIsNewlyAdded)) {
          paramArraySet.add(localFragment);
        }
      }
      i1 += 1;
    }
  }
  
  private static void b(View paramView, c paramC)
  {
    if (paramView != null)
    {
      if (paramC == null) {
        return;
      }
      if (a(paramView, paramC))
      {
        if (b != null)
        {
          b.addListener(new d(paramView));
          return;
        }
        Animation.AnimationListener localAnimationListener = a(a);
        paramView.setLayerType(2, null);
        a.setAnimationListener(new a(paramView, localAnimationListener));
      }
      return;
    }
  }
  
  private void b(ArrayList<a> paramArrayList, ArrayList<Boolean> paramArrayList1)
  {
    if (paramArrayList != null)
    {
      if (paramArrayList.isEmpty()) {
        return;
      }
      if ((paramArrayList1 != null) && (paramArrayList.size() == paramArrayList1.size()))
      {
        a(paramArrayList, paramArrayList1);
        int i5 = paramArrayList.size();
        int i1 = 0;
        int i2;
        for (int i3 = 0; i1 < i5; i3 = i2)
        {
          int i4 = i1;
          i2 = i3;
          if (!gett)
          {
            if (i3 != i1) {
              a(paramArrayList, paramArrayList1, i3, i1);
            }
            i3 = i1 + 1;
            i2 = i3;
            if (((Boolean)paramArrayList1.get(i1)).booleanValue()) {
              for (;;)
              {
                i2 = i3;
                if (i3 >= i5) {
                  break;
                }
                i2 = i3;
                if (!((Boolean)paramArrayList1.get(i3)).booleanValue()) {
                  break;
                }
                i2 = i3;
                if (gett) {
                  break;
                }
                i3 += 1;
              }
            }
            a(paramArrayList, paramArrayList1, i1, i2);
            i4 = i2 - 1;
          }
          i1 = i4 + 1;
        }
        if (i3 != i5) {
          a(paramArrayList, paramArrayList1, i3, i5);
        }
        return;
      }
      throw new IllegalStateException("Internal error with the back stack records");
    }
  }
  
  private static void b(ArrayList<a> paramArrayList, ArrayList<Boolean> paramArrayList1, int paramInt1, int paramInt2)
  {
    while (paramInt1 < paramInt2)
    {
      a localA = (a)paramArrayList.get(paramInt1);
      boolean bool2 = ((Boolean)paramArrayList1.get(paramInt1)).booleanValue();
      boolean bool1 = true;
      if (bool2)
      {
        localA.a(-1);
        if (paramInt1 != paramInt2 - 1) {
          bool1 = false;
        }
        localA.b(bool1);
      }
      else
      {
        localA.a(1);
        localA.b();
      }
      paramInt1 += 1;
    }
  }
  
  public static int c(int paramInt)
  {
    int i1 = 8194;
    if (paramInt != 4097)
    {
      if (paramInt != 4099)
      {
        if (paramInt != 8194) {
          return 0;
        }
        return 4097;
      }
      i1 = 4099;
    }
    return i1;
  }
  
  private void c(boolean paramBoolean)
  {
    if (!c)
    {
      if (m != null)
      {
        if (Looper.myLooper() == m.d().getLooper())
        {
          if (!paramBoolean) {
            v();
          }
          if (x == null)
          {
            x = new ArrayList();
            y = new ArrayList();
          }
          c = true;
          try
          {
            a(null, null);
            return;
          }
          finally
          {
            c = false;
          }
        }
        throw new IllegalStateException("Must be called from main thread of fragment host");
      }
      throw new IllegalStateException("Fragment host has been destroyed");
    }
    throw new IllegalStateException("FragmentManager is already executing transactions");
  }
  
  private boolean c(ArrayList<a> paramArrayList, ArrayList<Boolean> paramArrayList1)
  {
    try
    {
      ArrayList localArrayList = b;
      int i1 = 0;
      if ((localArrayList != null) && (b.size() != 0))
      {
        int i2 = b.size();
        boolean bool = false;
        while (i1 < i2)
        {
          bool |= ((h)b.get(i1)).a(paramArrayList, paramArrayList1);
          i1 += 1;
        }
        b.clear();
        m.d().removeCallbacks(E);
        return bool;
      }
      return false;
    }
    finally {}
  }
  
  private void d(int paramInt)
  {
    try
    {
      c = true;
      a(paramInt, false);
      c = false;
      e();
      return;
    }
    finally
    {
      c = false;
    }
  }
  
  private Fragment p(Fragment paramFragment)
  {
    ViewGroup localViewGroup = mContainer;
    View localView = mView;
    if (localViewGroup != null)
    {
      if (localView == null) {
        return null;
      }
      int i1 = e.indexOf(paramFragment) - 1;
      while (i1 >= 0)
      {
        paramFragment = (Fragment)e.get(i1);
        if ((mContainer == localViewGroup) && (mView != null)) {
          return paramFragment;
        }
        i1 -= 1;
      }
      return null;
    }
    return null;
  }
  
  private void v()
  {
    if (!isStateSaved())
    {
      if (v == null) {
        return;
      }
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("Can not perform this action inside of ");
      localStringBuilder.append(v);
      throw new IllegalStateException(localStringBuilder.toString());
    }
    throw new IllegalStateException("Can not perform this action after onSaveInstanceState");
  }
  
  private void w()
  {
    c = false;
    y.clear();
    x.clear();
  }
  
  private void x()
  {
    if (C != null) {
      while (!C.isEmpty()) {
        ((j)C.remove(0)).d();
      }
    }
  }
  
  private void y()
  {
    Object localObject = f;
    int i2 = 0;
    int i1;
    if (localObject == null) {
      i1 = 0;
    } else {
      i1 = f.size();
    }
    while (i2 < i1)
    {
      localObject = (Fragment)f.valueAt(i2);
      if (localObject != null) {
        if (((Fragment)localObject).getAnimatingAway() != null)
        {
          int i3 = ((Fragment)localObject).getStateAfterAnimating();
          View localView = ((Fragment)localObject).getAnimatingAway();
          Animation localAnimation = localView.getAnimation();
          if (localAnimation != null)
          {
            localAnimation.cancel();
            localView.clearAnimation();
          }
          ((Fragment)localObject).setAnimatingAway(null);
          a((Fragment)localObject, i3, 0, 0, false);
        }
        else if (((Fragment)localObject).getAnimator() != null)
        {
          ((Fragment)localObject).getAnimator().end();
        }
      }
      i2 += 1;
    }
  }
  
  private void z()
  {
    if (f != null)
    {
      int i1 = f.size() - 1;
      while (i1 >= 0)
      {
        if (f.valueAt(i1) == null) {
          f.delete(f.keyAt(i1));
        }
        i1 -= 1;
      }
    }
  }
  
  public int a(a paramA)
  {
    try
    {
      StringBuilder localStringBuilder;
      if ((j != null) && (j.size() > 0))
      {
        i1 = ((Integer)j.remove(j.size() - 1)).intValue();
        if (a)
        {
          localStringBuilder = new StringBuilder();
          localStringBuilder.append("Adding back stack index ");
          localStringBuilder.append(i1);
          localStringBuilder.append(" with ");
          localStringBuilder.append(paramA);
          Log.v("FragmentManager", localStringBuilder.toString());
        }
        i.set(i1, paramA);
        return i1;
      }
      if (i == null) {
        i = new ArrayList();
      }
      int i1 = i.size();
      if (a)
      {
        localStringBuilder = new StringBuilder();
        localStringBuilder.append("Setting back stack index ");
        localStringBuilder.append(i1);
        localStringBuilder.append(" to ");
        localStringBuilder.append(paramA);
        Log.v("FragmentManager", localStringBuilder.toString());
      }
      i.add(paramA);
      return i1;
    }
    finally {}
  }
  
  public Fragment a(String paramString)
  {
    if ((f != null) && (paramString != null))
    {
      int i1 = f.size() - 1;
      while (i1 >= 0)
      {
        Fragment localFragment = (Fragment)f.valueAt(i1);
        if (localFragment != null)
        {
          localFragment = localFragment.findFragmentByWho(paramString);
          if (localFragment != null) {
            return localFragment;
          }
        }
        i1 -= 1;
      }
    }
    return null;
  }
  
  c a(Fragment paramFragment, int paramInt1, boolean paramBoolean, int paramInt2)
  {
    int i3 = paramFragment.getNextAnim();
    Animation localAnimation = paramFragment.onCreateAnimation(paramInt1, paramBoolean, i3);
    if (localAnimation != null) {
      return new c(localAnimation);
    }
    paramFragment = paramFragment.onCreateAnimator(paramInt1, paramBoolean, i3);
    if (paramFragment != null) {
      return new c(paramFragment);
    }
    boolean bool;
    if (i3 != 0)
    {
      bool = "anim".equals(m.c().getResources().getResourceTypeName(i3));
      i2 = 0;
      i1 = i2;
      if (!bool) {}
    }
    try
    {
      try
      {
        paramFragment = AnimationUtils.loadAnimation(m.c(), i3);
        if (paramFragment != null)
        {
          paramFragment = new c(paramFragment);
          return paramFragment;
        }
        i1 = 1;
      }
      catch (Resources.NotFoundException paramFragment)
      {
        throw paramFragment;
      }
    }
    catch (RuntimeException paramFragment)
    {
      for (;;)
      {
        i1 = i2;
      }
    }
    if (i1 == 0) {
      try
      {
        paramFragment = AnimatorInflater.loadAnimator(m.c(), i3);
        if (paramFragment != null)
        {
          paramFragment = new c(paramFragment);
          return paramFragment;
        }
      }
      catch (RuntimeException paramFragment)
      {
        if (!bool)
        {
          paramFragment = AnimationUtils.loadAnimation(m.c(), i3);
          if (paramFragment != null) {
            return new c(paramFragment);
          }
        }
        else
        {
          throw paramFragment;
        }
      }
    }
    if (paramInt1 == 0) {
      return null;
    }
    paramInt1 = b(paramInt1, paramBoolean);
    if (paramInt1 < 0) {
      return null;
    }
    switch (paramInt1)
    {
    default: 
      paramInt1 = paramInt2;
      if (paramInt2 == 0)
      {
        paramInt1 = paramInt2;
        if (m.onHasWindowAnimations()) {
          paramInt1 = m.onGetWindowAnimations();
        }
      }
      break;
    case 6: 
      return a(m.c(), 1.0F, 0.0F);
    case 5: 
      return a(m.c(), 0.0F, 1.0F);
    case 4: 
      return a(m.c(), 1.0F, 1.075F, 1.0F, 0.0F);
    case 3: 
      return a(m.c(), 0.975F, 1.0F, 0.0F, 1.0F);
    case 2: 
      return a(m.c(), 1.0F, 0.975F, 1.0F, 0.0F);
    case 1: 
      return a(m.c(), 1.125F, 1.0F, 0.0F, 1.0F);
    }
    if (paramInt1 == 0) {
      return null;
    }
    return null;
  }
  
  List<Fragment> a()
  {
    if (f == null) {
      return null;
    }
    int i2 = f.size();
    ArrayList localArrayList = new ArrayList(i2);
    int i1 = 0;
    while (i1 < i2)
    {
      localArrayList.add(f.valueAt(i1));
      i1 += 1;
    }
    return localArrayList;
  }
  
  public void a(int paramInt, a paramA)
  {
    try
    {
      if (i == null) {
        i = new ArrayList();
      }
      int i2 = i.size();
      int i1 = i2;
      StringBuilder localStringBuilder;
      if (paramInt < i2)
      {
        if (a)
        {
          localStringBuilder = new StringBuilder();
          localStringBuilder.append("Setting back stack index ");
          localStringBuilder.append(paramInt);
          localStringBuilder.append(" to ");
          localStringBuilder.append(paramA);
          Log.v("FragmentManager", localStringBuilder.toString());
        }
        i.set(paramInt, paramA);
      }
      else
      {
        while (i1 < paramInt)
        {
          i.add(null);
          if (j == null) {
            j = new ArrayList();
          }
          if (a)
          {
            localStringBuilder = new StringBuilder();
            localStringBuilder.append("Adding available back stack index ");
            localStringBuilder.append(i1);
            Log.v("FragmentManager", localStringBuilder.toString());
          }
          j.add(Integer.valueOf(i1));
          i1 += 1;
        }
        if (a)
        {
          localStringBuilder = new StringBuilder();
          localStringBuilder.append("Adding back stack index ");
          localStringBuilder.append(paramInt);
          localStringBuilder.append(" with ");
          localStringBuilder.append(paramA);
          Log.v("FragmentManager", localStringBuilder.toString());
        }
        i.add(paramA);
      }
      return;
    }
    finally {}
  }
  
  void a(int paramInt, boolean paramBoolean)
  {
    if ((m == null) && (paramInt != 0)) {
      throw new IllegalStateException("No activity");
    }
    if ((!paramBoolean) && (paramInt == l)) {
      return;
    }
    l = paramInt;
    if (f != null)
    {
      int i1 = e.size();
      paramInt = 0;
      while (paramInt < i1)
      {
        e((Fragment)e.get(paramInt));
        paramInt += 1;
      }
      i1 = f.size();
      paramInt = 0;
      while (paramInt < i1)
      {
        Fragment localFragment = (Fragment)f.valueAt(paramInt);
        if ((localFragment != null) && ((mRemoving) || (mDetached)) && (!mIsNewlyAdded)) {
          e(localFragment);
        }
        paramInt += 1;
      }
      c();
      if ((r) && (m != null) && (l == 4))
      {
        m.onSupportInvalidateOptionsMenu();
        r = false;
      }
    }
  }
  
  public void a(Configuration paramConfiguration)
  {
    int i1 = 0;
    while (i1 < e.size())
    {
      Fragment localFragment = (Fragment)e.get(i1);
      if (localFragment != null) {
        localFragment.performConfigurationChanged(paramConfiguration);
      }
      i1 += 1;
    }
  }
  
  void a(Parcelable paramParcelable, FragmentManagerNonConfig arg2)
  {
    if (paramParcelable == null) {
      return;
    }
    d localD = (d)paramParcelable;
    if (a == null) {
      return;
    }
    Object localObject4;
    Object localObject2;
    Object localObject3;
    int i2;
    if (??? != null)
    {
      localObject4 = ???.a();
      localObject2 = ???.b();
      localObject3 = ???.c();
      if (localObject4 != null) {
        i1 = ((List)localObject4).size();
      } else {
        i1 = 0;
      }
      i2 = 0;
      for (;;)
      {
        localObject1 = localObject2;
        paramParcelable = (Parcelable)localObject3;
        if (i2 >= i1) {
          break;
        }
        paramParcelable = (Fragment)((List)localObject4).get(i2);
        if (a)
        {
          localObject1 = new StringBuilder();
          ((StringBuilder)localObject1).append("restoreAllState: re-attaching retained ");
          ((StringBuilder)localObject1).append(paramParcelable);
          Log.v("FragmentManager", ((StringBuilder)localObject1).toString());
        }
        int i3 = 0;
        while ((i3 < a.length) && (a[i3].b != mIndex)) {
          i3 += 1;
        }
        if (i3 == a.length)
        {
          localObject1 = new StringBuilder();
          ((StringBuilder)localObject1).append("Could not find active fragment with index ");
          ((StringBuilder)localObject1).append(mIndex);
          a(new IllegalStateException(((StringBuilder)localObject1).toString()));
        }
        localObject1 = a[i3];
        l = paramParcelable;
        mSavedViewState = null;
        mBackStackNesting = 0;
        mInLayout = false;
        mAdded = false;
        mTarget = null;
        if (k != null)
        {
          k.setClassLoader(m.c().getClassLoader());
          mSavedViewState = k.getSparseParcelableArray("android:view_state");
          mSavedFragmentState = k;
        }
        i2 += 1;
      }
    }
    Object localObject1 = null;
    paramParcelable = (Parcelable)localObject1;
    f = new SparseArray(a.length);
    int i1 = 0;
    while (i1 < a.length)
    {
      localObject4 = a[i1];
      if (localObject4 != null)
      {
        if ((localObject1 != null) && (i1 < ((List)localObject1).size())) {
          localObject2 = (FragmentManagerNonConfig)((List)localObject1).get(i1);
        } else {
          localObject2 = null;
        }
        if ((paramParcelable != null) && (i1 < paramParcelable.size())) {
          localObject3 = (ViewModelStore)paramParcelable.get(i1);
        } else {
          localObject3 = null;
        }
        localObject2 = ((e)localObject4).a(m, n, o, (FragmentManagerNonConfig)localObject2, (ViewModelStore)localObject3);
        if (a)
        {
          localObject3 = new StringBuilder();
          ((StringBuilder)localObject3).append("restoreAllState: active #");
          ((StringBuilder)localObject3).append(i1);
          ((StringBuilder)localObject3).append(": ");
          ((StringBuilder)localObject3).append(localObject2);
          Log.v("FragmentManager", ((StringBuilder)localObject3).toString());
        }
        f.put(mIndex, localObject2);
        l = null;
      }
      i1 += 1;
    }
    if (??? != null)
    {
      paramParcelable = ???.a();
      if (paramParcelable != null) {
        i1 = paramParcelable.size();
      } else {
        i1 = 0;
      }
      i2 = 0;
      while (i2 < i1)
      {
        ??? = (Fragment)paramParcelable.get(i2);
        if (mTargetIndex >= 0)
        {
          mTarget = ((Fragment)f.get(mTargetIndex));
          if (mTarget == null)
          {
            localObject1 = new StringBuilder();
            ((StringBuilder)localObject1).append("Re-attaching retained fragment ");
            ((StringBuilder)localObject1).append(???);
            ((StringBuilder)localObject1).append(" target no longer exists: ");
            ((StringBuilder)localObject1).append(mTargetIndex);
            Log.w("FragmentManager", ((StringBuilder)localObject1).toString());
          }
        }
        i2 += 1;
      }
    }
    e.clear();
    if (b != null)
    {
      i1 = 0;
      for (;;)
      {
        if (i1 >= b.length) {
          break label899;
        }
        paramParcelable = (Fragment)f.get(b[i1]);
        if (paramParcelable == null)
        {
          ??? = new StringBuilder();
          ???.append("No instantiated fragment for index #");
          ???.append(b[i1]);
          a(new IllegalStateException(???.toString()));
        }
        mAdded = true;
        if (a)
        {
          ??? = new StringBuilder();
          ???.append("restoreAllState: added #");
          ???.append(i1);
          ???.append(": ");
          ???.append(paramParcelable);
          Log.v("FragmentManager", ???.toString());
        }
        if (!e.contains(paramParcelable)) {
          synchronized (e)
          {
            e.add(paramParcelable);
            i1 += 1;
          }
        }
      }
      throw new IllegalStateException("Already added!");
    }
    label899:
    if (c != null)
    {
      g = new ArrayList(c.length);
      i1 = 0;
      while (i1 < c.length)
      {
        paramParcelable = c[i1].a(this);
        if (a)
        {
          ??? = new StringBuilder();
          ???.append("restoreAllState: back stack #");
          ???.append(i1);
          ???.append(" (index ");
          ???.append(m);
          ???.append("): ");
          ???.append(paramParcelable);
          Log.v("FragmentManager", ???.toString());
          ??? = new PrintWriter(new LogWriter("FragmentManager"));
          paramParcelable.a("  ", ???, false);
          ???.close();
        }
        g.add(paramParcelable);
        if (m >= 0) {
          a(m, paramParcelable);
        }
        i1 += 1;
      }
    }
    g = null;
    if (d >= 0) {
      p = ((Fragment)f.get(d));
    }
    d = e;
  }
  
  public void a(Fragment paramFragment)
  {
    if (mDeferStart)
    {
      if (c)
      {
        w = true;
        return;
      }
      mDeferStart = false;
      a(paramFragment, l, 0, 0, false);
    }
  }
  
  void a(Fragment paramFragment, int paramInt1, int paramInt2, int paramInt3, boolean paramBoolean)
  {
    boolean bool2 = mAdded;
    int i2 = 1;
    boolean bool1 = true;
    if ((bool2) && (!mDetached)) {
      break label44;
    }
    int i1 = paramInt1;
    paramInt1 = i1;
    if (i1 > 1) {
      paramInt1 = 1;
    }
    label44:
    i1 = paramInt1;
    if (mRemoving)
    {
      i1 = paramInt1;
      if (paramInt1 > mState) {
        if ((mState == 0) && (paramFragment.isInBackStack())) {
          i1 = 1;
        } else {
          i1 = mState;
        }
      }
    }
    if ((mDeferStart) && (mState < 3) && (i1 > 2)) {
      paramInt1 = 2;
    } else {
      paramInt1 = i1;
    }
    ViewGroup localViewGroup;
    if (mState <= paramInt1)
    {
      if ((mFromLayout) && (!mInLayout)) {
        return;
      }
      if ((paramFragment.getAnimatingAway() != null) || (paramFragment.getAnimator() != null))
      {
        paramFragment.setAnimatingAway(null);
        paramFragment.setAnimator(null);
        a(paramFragment, paramFragment.getStateAfterAnimating(), 0, 0, true);
      }
      paramInt3 = paramInt1;
      i1 = paramInt1;
      paramInt2 = paramInt1;
      switch (mState)
      {
      default: 
        i1 = paramInt1;
        break;
      case 0: 
        paramInt3 = paramInt1;
        if (paramInt1 > 0)
        {
          if (a)
          {
            localObject = new StringBuilder();
            ((StringBuilder)localObject).append("moveto CREATED: ");
            ((StringBuilder)localObject).append(paramFragment);
            Log.v("FragmentManager", ((StringBuilder)localObject).toString());
          }
          paramInt3 = paramInt1;
          if (mSavedFragmentState != null)
          {
            mSavedFragmentState.setClassLoader(m.c().getClassLoader());
            mSavedViewState = mSavedFragmentState.getSparseParcelableArray("android:view_state");
            mTarget = getFragment(mSavedFragmentState, "android:target_state");
            if (mTarget != null) {
              mTargetRequestCode = mSavedFragmentState.getInt("android:target_req_state", 0);
            }
            if (mSavedUserVisibleHint != null)
            {
              mUserVisibleHint = mSavedUserVisibleHint.booleanValue();
              mSavedUserVisibleHint = null;
            }
            else
            {
              mUserVisibleHint = mSavedFragmentState.getBoolean("android:user_visible_hint", true);
            }
            paramInt3 = paramInt1;
            if (!mUserVisibleHint)
            {
              mDeferStart = true;
              paramInt3 = paramInt1;
              if (paramInt1 > 2) {
                paramInt3 = 2;
              }
            }
          }
          mHost = m;
          mParentFragment = o;
          if (o != null) {
            localObject = o.mChildFragmentManager;
          } else {
            localObject = m.e();
          }
          mFragmentManager = ((c)localObject);
          if (mTarget != null) {
            if (f.get(mTarget.mIndex) == mTarget)
            {
              if (mTarget.mState < 1) {
                a(mTarget, 1, 0, 0, true);
              }
            }
            else
            {
              localObject = new StringBuilder();
              ((StringBuilder)localObject).append("Fragment ");
              ((StringBuilder)localObject).append(paramFragment);
              ((StringBuilder)localObject).append(" declared target fragment ");
              ((StringBuilder)localObject).append(mTarget);
              ((StringBuilder)localObject).append(" that does not belong to this FragmentManager!");
              throw new IllegalStateException(((StringBuilder)localObject).toString());
            }
          }
          a(paramFragment, m.c(), false);
          mCalled = false;
          paramFragment.onAttach(m.c());
          if (mCalled)
          {
            if (mParentFragment == null) {
              m.a(paramFragment);
            } else {
              mParentFragment.onAttachFragment(paramFragment);
            }
            b(paramFragment, m.c(), false);
            if (!mIsCreated)
            {
              a(paramFragment, mSavedFragmentState, false);
              paramFragment.performCreate(mSavedFragmentState);
              b(paramFragment, mSavedFragmentState, false);
            }
            else
            {
              paramFragment.restoreChildFragmentState(mSavedFragmentState);
              mState = 1;
            }
            mRetaining = false;
          }
          else
          {
            localObject = new StringBuilder();
            ((StringBuilder)localObject).append("Fragment ");
            ((StringBuilder)localObject).append(paramFragment);
            ((StringBuilder)localObject).append(" did not call through to super.onAttach()");
            throw new k(((StringBuilder)localObject).toString());
          }
        }
      case 1: 
        c(paramFragment);
        i1 = paramInt3;
        if (paramInt3 > 1)
        {
          if (a)
          {
            localObject = new StringBuilder();
            ((StringBuilder)localObject).append("moveto ACTIVITY_CREATED: ");
            ((StringBuilder)localObject).append(paramFragment);
            Log.v("FragmentManager", ((StringBuilder)localObject).toString());
          }
          if (!mFromLayout) {
            if (mContainerId != 0)
            {
              if (mContainerId == -1)
              {
                localObject = new StringBuilder();
                ((StringBuilder)localObject).append("Cannot create fragment ");
                ((StringBuilder)localObject).append(paramFragment);
                ((StringBuilder)localObject).append(" for a container view with no id");
                a(new IllegalArgumentException(((StringBuilder)localObject).toString()));
              }
              localViewGroup = (ViewGroup)n.onFindViewById(mContainerId);
              localObject = localViewGroup;
              if (localViewGroup != null) {
                break label1049;
              }
              localObject = localViewGroup;
              if (mRestored) {
                break label1049;
              }
            }
          }
        }
        break;
      }
    }
    try
    {
      localObject = paramFragment.getResources().getResourceName(mContainerId);
    }
    catch (Resources.NotFoundException localNotFoundException)
    {
      StringBuilder localStringBuilder;
      for (;;) {}
    }
    Object localObject = "unknown";
    localStringBuilder = new StringBuilder();
    localStringBuilder.append("No view found for id 0x");
    localStringBuilder.append(Integer.toHexString(mContainerId));
    localStringBuilder.append(" (");
    localStringBuilder.append((String)localObject);
    localStringBuilder.append(") for fragment ");
    localStringBuilder.append(paramFragment);
    a(new IllegalArgumentException(localStringBuilder.toString()));
    localObject = localViewGroup;
    break label1049;
    localObject = null;
    label1049:
    mContainer = ((ViewGroup)localObject);
    paramFragment.performCreateView(paramFragment.performGetLayoutInflater(mSavedFragmentState), (ViewGroup)localObject, mSavedFragmentState);
    if (mView != null)
    {
      mInnerView = mView;
      mView.setSaveFromParentEnabled(false);
      if (localObject != null) {
        ((ViewGroup)localObject).addView(mView);
      }
      if (mHidden) {
        mView.setVisibility(8);
      }
      paramFragment.onViewCreated(mView, mSavedFragmentState);
      a(paramFragment, mView, mSavedFragmentState, false);
      if ((mView.getVisibility() == 0) && (mContainer != null)) {
        paramBoolean = bool1;
      } else {
        paramBoolean = false;
      }
      mIsNewlyAdded = paramBoolean;
    }
    else
    {
      mInnerView = null;
    }
    paramFragment.performActivityCreated(mSavedFragmentState);
    c(paramFragment, mSavedFragmentState, false);
    if (mView != null) {
      paramFragment.restoreViewState(mSavedFragmentState);
    }
    mSavedFragmentState = null;
    i1 = paramInt3;
    paramInt2 = i1;
    if (i1 > 2)
    {
      if (a)
      {
        localObject = new StringBuilder();
        ((StringBuilder)localObject).append("moveto STARTED: ");
        ((StringBuilder)localObject).append(paramFragment);
        Log.v("FragmentManager", ((StringBuilder)localObject).toString());
      }
      paramFragment.performStart();
      b(paramFragment, false);
      paramInt2 = i1;
    }
    i1 = paramInt2;
    if (paramInt2 > 3)
    {
      if (a)
      {
        localObject = new StringBuilder();
        ((StringBuilder)localObject).append("moveto RESUMED: ");
        ((StringBuilder)localObject).append(paramFragment);
        Log.v("FragmentManager", ((StringBuilder)localObject).toString());
      }
      paramFragment.performResume();
      c(paramFragment, false);
      mSavedFragmentState = null;
      mSavedViewState = null;
      i1 = paramInt2;
      break label1996;
      i1 = paramInt1;
      if (mState > paramInt1)
      {
        switch (mState)
        {
        default: 
          i1 = paramInt1;
          break;
        case 4: 
          if (paramInt1 < 4)
          {
            if (a)
            {
              localObject = new StringBuilder();
              ((StringBuilder)localObject).append("movefrom RESUMED: ");
              ((StringBuilder)localObject).append(paramFragment);
              Log.v("FragmentManager", ((StringBuilder)localObject).toString());
            }
            paramFragment.performPause();
            d(paramFragment, false);
          }
        case 3: 
          if (paramInt1 < 3)
          {
            if (a)
            {
              localObject = new StringBuilder();
              ((StringBuilder)localObject).append("movefrom STARTED: ");
              ((StringBuilder)localObject).append(paramFragment);
              Log.v("FragmentManager", ((StringBuilder)localObject).toString());
            }
            paramFragment.performStop();
            e(paramFragment, false);
          }
        case 2: 
          if (paramInt1 < 2)
          {
            if (a)
            {
              localObject = new StringBuilder();
              ((StringBuilder)localObject).append("movefrom ACTIVITY_CREATED: ");
              ((StringBuilder)localObject).append(paramFragment);
              Log.v("FragmentManager", ((StringBuilder)localObject).toString());
            }
            if ((mView != null) && (m.onShouldSaveFragmentState(paramFragment)) && (mSavedViewState == null)) {
              m(paramFragment);
            }
            paramFragment.performDestroyView();
            f(paramFragment, false);
            if ((mView != null) && (mContainer != null))
            {
              mContainer.endViewTransition(mView);
              mView.clearAnimation();
              if ((l > 0) && (!u) && (mView.getVisibility() == 0) && (mPostponedAlpha >= 0.0F)) {
                localObject = a(paramFragment, paramInt2, false, paramInt3);
              } else {
                localObject = null;
              }
              mPostponedAlpha = 0.0F;
              if (localObject != null) {
                a(paramFragment, (c)localObject, paramInt1);
              }
              mContainer.removeView(mView);
            }
            mContainer = null;
            mView = null;
            mViewLifecycleOwner = null;
            mViewLifecycleOwnerLiveData.setValue(null);
            mInnerView = null;
            mInLayout = false;
          }
          break;
        }
        i1 = paramInt1;
        if (paramInt1 < 1)
        {
          if (u) {
            if (paramFragment.getAnimatingAway() != null)
            {
              localObject = paramFragment.getAnimatingAway();
              paramFragment.setAnimatingAway(null);
              ((View)localObject).clearAnimation();
            }
            else if (paramFragment.getAnimator() != null)
            {
              localObject = paramFragment.getAnimator();
              paramFragment.setAnimator(null);
              ((Animator)localObject).cancel();
            }
          }
          if ((paramFragment.getAnimatingAway() == null) && (paramFragment.getAnimator() == null))
          {
            if (a)
            {
              localObject = new StringBuilder();
              ((StringBuilder)localObject).append("movefrom CREATED: ");
              ((StringBuilder)localObject).append(paramFragment);
              Log.v("FragmentManager", ((StringBuilder)localObject).toString());
            }
            if (!mRetaining)
            {
              paramFragment.performDestroy();
              g(paramFragment, false);
            }
            else
            {
              mState = 0;
            }
            paramFragment.performDetach();
            h(paramFragment, false);
            i1 = paramInt1;
            if (!paramBoolean) {
              if (!mRetaining)
              {
                g(paramFragment);
                i1 = paramInt1;
              }
              else
              {
                mHost = null;
                mParentFragment = null;
                mFragmentManager = null;
                i1 = paramInt1;
              }
            }
          }
          else
          {
            paramFragment.setStateAfterAnimating(paramInt1);
            i1 = i2;
          }
        }
      }
    }
    label1996:
    if (mState != i1)
    {
      localObject = new StringBuilder();
      ((StringBuilder)localObject).append("moveToState: Fragment state for ");
      ((StringBuilder)localObject).append(paramFragment);
      ((StringBuilder)localObject).append(" not updated inline; ");
      ((StringBuilder)localObject).append("expected state ");
      ((StringBuilder)localObject).append(i1);
      ((StringBuilder)localObject).append(" found ");
      ((StringBuilder)localObject).append(mState);
      Log.w("FragmentManager", ((StringBuilder)localObject).toString());
      mState = i1;
    }
  }
  
  void a(@NonNull Fragment paramFragment, @NonNull Context paramContext, boolean paramBoolean)
  {
    if (o != null)
    {
      localObject = o.getFragmentManager();
      if ((localObject instanceof c)) {
        ((c)localObject).a(paramFragment, paramContext, true);
      }
    }
    Object localObject = J.iterator();
    while (((Iterator)localObject).hasNext())
    {
      f localF = (f)((Iterator)localObject).next();
      if ((!paramBoolean) || (b)) {
        a.onFragmentPreAttached(this, paramFragment, paramContext);
      }
    }
  }
  
  void a(@NonNull Fragment paramFragment, @Nullable Bundle paramBundle, boolean paramBoolean)
  {
    if (o != null)
    {
      localObject = o.getFragmentManager();
      if ((localObject instanceof c)) {
        ((c)localObject).a(paramFragment, paramBundle, true);
      }
    }
    Object localObject = J.iterator();
    while (((Iterator)localObject).hasNext())
    {
      f localF = (f)((Iterator)localObject).next();
      if ((!paramBoolean) || (b)) {
        a.onFragmentPreCreated(this, paramFragment, paramBundle);
      }
    }
  }
  
  void a(@NonNull Fragment paramFragment, @NonNull View paramView, @Nullable Bundle paramBundle, boolean paramBoolean)
  {
    if (o != null)
    {
      localObject = o.getFragmentManager();
      if ((localObject instanceof c)) {
        ((c)localObject).a(paramFragment, paramView, paramBundle, true);
      }
    }
    Object localObject = J.iterator();
    while (((Iterator)localObject).hasNext())
    {
      f localF = (f)((Iterator)localObject).next();
      if ((!paramBoolean) || (b)) {
        a.onFragmentViewCreated(this, paramFragment, paramView, paramBundle);
      }
    }
  }
  
  public void a(Fragment paramFragment, boolean paramBoolean)
  {
    if (a)
    {
      ??? = new StringBuilder();
      ((StringBuilder)???).append("add: ");
      ((StringBuilder)???).append(paramFragment);
      Log.v("FragmentManager", ((StringBuilder)???).toString());
    }
    f(paramFragment);
    if (!mDetached)
    {
      if (!e.contains(paramFragment)) {
        synchronized (e)
        {
          e.add(paramFragment);
          mAdded = true;
          mRemoving = false;
          if (mView == null) {
            mHiddenChanged = false;
          }
          if ((mHasMenu) && (mMenuVisible)) {
            r = true;
          }
          if (!paramBoolean) {
            return;
          }
          b(paramFragment);
          return;
        }
      }
      ??? = new StringBuilder();
      ((StringBuilder)???).append("Fragment already added: ");
      ((StringBuilder)???).append(paramFragment);
      throw new IllegalStateException(((StringBuilder)???).toString());
    }
  }
  
  public void a(FragmentHostCallback paramFragmentHostCallback, FragmentContainer paramFragmentContainer, Fragment paramFragment)
  {
    if (m == null)
    {
      m = paramFragmentHostCallback;
      n = paramFragmentContainer;
      o = paramFragment;
      return;
    }
    throw new IllegalStateException("Already attached");
  }
  
  void a(a paramA, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3)
  {
    if (paramBoolean1) {
      paramA.b(paramBoolean3);
    } else {
      paramA.b();
    }
    Object localObject = new ArrayList(1);
    ArrayList localArrayList = new ArrayList(1);
    ((ArrayList)localObject).add(paramA);
    localArrayList.add(Boolean.valueOf(paramBoolean1));
    if (paramBoolean2) {
      f.a(this, (ArrayList)localObject, localArrayList, 0, 1, true);
    }
    if (paramBoolean3) {
      a(l, true);
    }
    if (f != null)
    {
      int i2 = f.size();
      int i1 = 0;
      while (i1 < i2)
      {
        localObject = (Fragment)f.valueAt(i1);
        if ((localObject != null) && (mView != null) && (mIsNewlyAdded) && (paramA.b(mContainerId)))
        {
          if (mPostponedAlpha > 0.0F) {
            mView.setAlpha(mPostponedAlpha);
          }
          if (paramBoolean3)
          {
            mPostponedAlpha = 0.0F;
          }
          else
          {
            mPostponedAlpha = -1.0F;
            mIsNewlyAdded = false;
          }
        }
        i1 += 1;
      }
    }
  }
  
  public void a(h paramH, boolean paramBoolean)
  {
    if (!paramBoolean) {
      v();
    }
    try
    {
      if ((!u) && (m != null))
      {
        if (b == null) {
          b = new ArrayList();
        }
        b.add(paramH);
        d();
        return;
      }
      if (paramBoolean) {
        return;
      }
      throw new IllegalStateException("Activity has been destroyed");
    }
    finally {}
  }
  
  public void a(boolean paramBoolean)
  {
    int i1 = e.size() - 1;
    while (i1 >= 0)
    {
      Fragment localFragment = (Fragment)e.get(i1);
      if (localFragment != null) {
        localFragment.performMultiWindowModeChanged(paramBoolean);
      }
      i1 -= 1;
    }
  }
  
  boolean a(int paramInt)
  {
    return l >= paramInt;
  }
  
  public boolean a(Menu paramMenu)
  {
    int i2 = l;
    int i1 = 0;
    if (i2 < 1) {
      return false;
    }
    boolean bool2;
    for (boolean bool1 = false; i1 < e.size(); bool1 = bool2)
    {
      Fragment localFragment = (Fragment)e.get(i1);
      bool2 = bool1;
      if (localFragment != null)
      {
        bool2 = bool1;
        if (localFragment.performPrepareOptionsMenu(paramMenu)) {
          bool2 = true;
        }
      }
      i1 += 1;
    }
    return bool1;
  }
  
  public boolean a(Menu paramMenu, MenuInflater paramMenuInflater)
  {
    int i1 = l;
    int i2 = 0;
    if (i1 < 1) {
      return false;
    }
    Object localObject1 = null;
    i1 = 0;
    boolean bool2;
    for (boolean bool1 = false; i1 < e.size(); bool1 = bool2)
    {
      Fragment localFragment = (Fragment)e.get(i1);
      Object localObject2 = localObject1;
      bool2 = bool1;
      if (localFragment != null)
      {
        localObject2 = localObject1;
        bool2 = bool1;
        if (localFragment.performCreateOptionsMenu(paramMenu, paramMenuInflater))
        {
          localObject2 = localObject1;
          if (localObject1 == null) {
            localObject2 = new ArrayList();
          }
          ((ArrayList)localObject2).add(localFragment);
          bool2 = true;
        }
      }
      i1 += 1;
      localObject1 = localObject2;
    }
    if (h != null)
    {
      i1 = i2;
      while (i1 < h.size())
      {
        paramMenu = (Fragment)h.get(i1);
        if ((localObject1 == null) || (!localObject1.contains(paramMenu))) {
          paramMenu.onDestroyOptionsMenu();
        }
        i1 += 1;
      }
    }
    h = localObject1;
    return bool1;
  }
  
  public boolean a(MenuItem paramMenuItem)
  {
    if (l < 1) {
      return false;
    }
    int i1 = 0;
    while (i1 < e.size())
    {
      Fragment localFragment = (Fragment)e.get(i1);
      if ((localFragment != null) && (localFragment.performOptionsItemSelected(paramMenuItem))) {
        return true;
      }
      i1 += 1;
    }
    return false;
  }
  
  boolean a(ArrayList<a> paramArrayList, ArrayList<Boolean> paramArrayList1, String paramString, int paramInt1, int paramInt2)
  {
    if (g == null) {
      return false;
    }
    if ((paramString == null) && (paramInt1 < 0) && ((paramInt2 & 0x1) == 0))
    {
      paramInt1 = g.size() - 1;
      if (paramInt1 < 0) {
        return false;
      }
      paramArrayList.add(g.remove(paramInt1));
      paramArrayList1.add(Boolean.valueOf(true));
      return true;
    }
    int i1;
    if ((paramString == null) && (paramInt1 < 0))
    {
      i1 = -1;
    }
    else
    {
      int i2 = g.size() - 1;
      a localA;
      while (i2 >= 0)
      {
        localA = (a)g.get(i2);
        if (((paramString != null) && (paramString.equals(localA.getName()))) || ((paramInt1 >= 0) && (paramInt1 == m))) {
          break;
        }
        i2 -= 1;
      }
      if (i2 < 0) {
        return false;
      }
      i1 = i2;
      if ((paramInt2 & 0x1) != 0)
      {
        paramInt2 = i2 - 1;
        for (;;)
        {
          i1 = paramInt2;
          if (paramInt2 < 0) {
            break;
          }
          localA = (a)g.get(paramInt2);
          if ((paramString == null) || (!paramString.equals(localA.getName())))
          {
            i1 = paramInt2;
            if (paramInt1 < 0) {
              break;
            }
            i1 = paramInt2;
            if (paramInt1 != m) {
              break;
            }
          }
          paramInt2 -= 1;
        }
      }
    }
    if (i1 == g.size() - 1) {
      return false;
    }
    paramInt1 = g.size() - 1;
    while (paramInt1 > i1)
    {
      paramArrayList.add(g.remove(paramInt1));
      paramArrayList1.add(Boolean.valueOf(true));
      paramInt1 -= 1;
    }
    return true;
  }
  
  public void addOnBackStackChangedListener(FragmentManager.OnBackStackChangedListener paramOnBackStackChangedListener)
  {
    if (k == null) {
      k = new ArrayList();
    }
    k.add(paramOnBackStackChangedListener);
  }
  
  int b()
  {
    if (f == null) {
      return 0;
    }
    return f.size();
  }
  
  public void b(int paramInt)
  {
    try
    {
      i.set(paramInt, null);
      if (j == null) {
        j = new ArrayList();
      }
      if (a)
      {
        StringBuilder localStringBuilder = new StringBuilder();
        localStringBuilder.append("Freeing back stack index ");
        localStringBuilder.append(paramInt);
        Log.v("FragmentManager", localStringBuilder.toString());
      }
      j.add(Integer.valueOf(paramInt));
      return;
    }
    finally {}
  }
  
  void b(Fragment paramFragment)
  {
    a(paramFragment, l, 0, 0, false);
  }
  
  void b(@NonNull Fragment paramFragment, @NonNull Context paramContext, boolean paramBoolean)
  {
    if (o != null)
    {
      localObject = o.getFragmentManager();
      if ((localObject instanceof c)) {
        ((c)localObject).b(paramFragment, paramContext, true);
      }
    }
    Object localObject = J.iterator();
    while (((Iterator)localObject).hasNext())
    {
      f localF = (f)((Iterator)localObject).next();
      if ((!paramBoolean) || (b)) {
        a.onFragmentAttached(this, paramFragment, paramContext);
      }
    }
  }
  
  void b(@NonNull Fragment paramFragment, @Nullable Bundle paramBundle, boolean paramBoolean)
  {
    if (o != null)
    {
      localObject = o.getFragmentManager();
      if ((localObject instanceof c)) {
        ((c)localObject).b(paramFragment, paramBundle, true);
      }
    }
    Object localObject = J.iterator();
    while (((Iterator)localObject).hasNext())
    {
      f localF = (f)((Iterator)localObject).next();
      if ((!paramBoolean) || (b)) {
        a.onFragmentCreated(this, paramFragment, paramBundle);
      }
    }
  }
  
  void b(@NonNull Fragment paramFragment, boolean paramBoolean)
  {
    if (o != null)
    {
      localObject = o.getFragmentManager();
      if ((localObject instanceof c)) {
        ((c)localObject).b(paramFragment, true);
      }
    }
    Object localObject = J.iterator();
    while (((Iterator)localObject).hasNext())
    {
      f localF = (f)((Iterator)localObject).next();
      if ((!paramBoolean) || (b)) {
        a.onFragmentStarted(this, paramFragment);
      }
    }
  }
  
  void b(a paramA)
  {
    if (g == null) {
      g = new ArrayList();
    }
    g.add(paramA);
  }
  
  public void b(h paramH, boolean paramBoolean)
  {
    if ((paramBoolean) && ((m == null) || (u))) {
      return;
    }
    c(paramBoolean);
    if (paramH.a(x, y)) {
      c = true;
    }
    try
    {
      b(x, y);
      w();
    }
    finally
    {
      w();
    }
    z();
  }
  
  public void b(Menu paramMenu)
  {
    if (l < 1) {
      return;
    }
    int i1 = 0;
    while (i1 < e.size())
    {
      Fragment localFragment = (Fragment)e.get(i1);
      if (localFragment != null) {
        localFragment.performOptionsMenuClosed(paramMenu);
      }
      i1 += 1;
    }
  }
  
  public void b(boolean paramBoolean)
  {
    int i1 = e.size() - 1;
    while (i1 >= 0)
    {
      Fragment localFragment = (Fragment)e.get(i1);
      if (localFragment != null) {
        localFragment.performPictureInPictureModeChanged(paramBoolean);
      }
      i1 -= 1;
    }
  }
  
  public boolean b(MenuItem paramMenuItem)
  {
    if (l < 1) {
      return false;
    }
    int i1 = 0;
    while (i1 < e.size())
    {
      Fragment localFragment = (Fragment)e.get(i1);
      if ((localFragment != null) && (localFragment.performContextItemSelected(paramMenuItem))) {
        return true;
      }
      i1 += 1;
    }
    return false;
  }
  
  public FragmentTransaction beginTransaction()
  {
    return new a(this);
  }
  
  void c()
  {
    if (f == null) {
      return;
    }
    int i1 = 0;
    while (i1 < f.size())
    {
      Fragment localFragment = (Fragment)f.valueAt(i1);
      if (localFragment != null) {
        a(localFragment);
      }
      i1 += 1;
    }
  }
  
  void c(Fragment paramFragment)
  {
    if ((mFromLayout) && (!mPerformedCreateView))
    {
      paramFragment.performCreateView(paramFragment.performGetLayoutInflater(mSavedFragmentState), null, mSavedFragmentState);
      if (mView != null)
      {
        mInnerView = mView;
        mView.setSaveFromParentEnabled(false);
        if (mHidden) {
          mView.setVisibility(8);
        }
        paramFragment.onViewCreated(mView, mSavedFragmentState);
        a(paramFragment, mView, mSavedFragmentState, false);
        return;
      }
      mInnerView = null;
    }
  }
  
  void c(@NonNull Fragment paramFragment, @Nullable Bundle paramBundle, boolean paramBoolean)
  {
    if (o != null)
    {
      localObject = o.getFragmentManager();
      if ((localObject instanceof c)) {
        ((c)localObject).c(paramFragment, paramBundle, true);
      }
    }
    Object localObject = J.iterator();
    while (((Iterator)localObject).hasNext())
    {
      f localF = (f)((Iterator)localObject).next();
      if ((!paramBoolean) || (b)) {
        a.onFragmentActivityCreated(this, paramFragment, paramBundle);
      }
    }
  }
  
  void c(@NonNull Fragment paramFragment, boolean paramBoolean)
  {
    if (o != null)
    {
      localObject = o.getFragmentManager();
      if ((localObject instanceof c)) {
        ((c)localObject).c(paramFragment, true);
      }
    }
    Object localObject = J.iterator();
    while (((Iterator)localObject).hasNext())
    {
      f localF = (f)((Iterator)localObject).next();
      if ((!paramBoolean) || (b)) {
        a.onFragmentResumed(this, paramFragment);
      }
    }
  }
  
  void d()
  {
    for (;;)
    {
      int i2;
      try
      {
        ArrayList localArrayList = C;
        int i3 = 0;
        if ((localArrayList == null) || (C.isEmpty())) {
          break label96;
        }
        i1 = 1;
        i2 = i3;
        if (b == null) {
          break label101;
        }
        i2 = i3;
        if (b.size() != 1) {
          break label101;
        }
        i2 = 1;
      }
      finally {}
      m.d().removeCallbacks(E);
      m.d().post(E);
      return;
      label96:
      int i1 = 0;
      continue;
      label101:
      if (i1 == 0) {
        if (i2 == 0) {}
      }
    }
  }
  
  void d(final Fragment paramFragment)
  {
    if (mView != null)
    {
      c localC = a(paramFragment, paramFragment.getNextTransition(), mHidden ^ true, paramFragment.getNextTransitionStyle());
      if ((localC != null) && (b != null))
      {
        b.setTarget(mView);
        if (mHidden)
        {
          if (paramFragment.isHideReplaced())
          {
            paramFragment.setHideReplaced(false);
          }
          else
          {
            final ViewGroup localViewGroup = mContainer;
            final View localView = mView;
            localViewGroup.startViewTransition(localView);
            b.addListener(new AnimatorListenerAdapter()
            {
              public void onAnimationEnd(Animator paramAnonymousAnimator)
              {
                localViewGroup.endViewTransition(localView);
                paramAnonymousAnimator.removeListener(this);
                if (paramFragmentmView != null) {
                  paramFragmentmView.setVisibility(8);
                }
              }
            });
          }
        }
        else {
          mView.setVisibility(0);
        }
        b(mView, localC);
        b.start();
      }
      else
      {
        if (localC != null)
        {
          b(mView, localC);
          mView.startAnimation(a);
          a.start();
        }
        int i1;
        if ((mHidden) && (!paramFragment.isHideReplaced())) {
          i1 = 8;
        } else {
          i1 = 0;
        }
        mView.setVisibility(i1);
        if (paramFragment.isHideReplaced()) {
          paramFragment.setHideReplaced(false);
        }
      }
    }
    if ((mAdded) && (mHasMenu) && (mMenuVisible)) {
      r = true;
    }
    mHiddenChanged = false;
    paramFragment.onHiddenChanged(mHidden);
  }
  
  void d(@NonNull Fragment paramFragment, @NonNull Bundle paramBundle, boolean paramBoolean)
  {
    if (o != null)
    {
      localObject = o.getFragmentManager();
      if ((localObject instanceof c)) {
        ((c)localObject).d(paramFragment, paramBundle, true);
      }
    }
    Object localObject = J.iterator();
    while (((Iterator)localObject).hasNext())
    {
      f localF = (f)((Iterator)localObject).next();
      if ((!paramBoolean) || (b)) {
        a.onFragmentSaveInstanceState(this, paramFragment, paramBundle);
      }
    }
  }
  
  void d(@NonNull Fragment paramFragment, boolean paramBoolean)
  {
    if (o != null)
    {
      localObject = o.getFragmentManager();
      if ((localObject instanceof c)) {
        ((c)localObject).d(paramFragment, true);
      }
    }
    Object localObject = J.iterator();
    while (((Iterator)localObject).hasNext())
    {
      f localF = (f)((Iterator)localObject).next();
      if ((!paramBoolean) || (b)) {
        a.onFragmentPaused(this, paramFragment);
      }
    }
  }
  
  public void dump(String paramString, FileDescriptor paramFileDescriptor, PrintWriter paramPrintWriter, String[] paramArrayOfString)
  {
    Object localObject1 = new StringBuilder();
    ((StringBuilder)localObject1).append(paramString);
    ((StringBuilder)localObject1).append("    ");
    localObject1 = ((StringBuilder)localObject1).toString();
    Object localObject2 = f;
    int i2 = 0;
    int i1;
    if (localObject2 != null)
    {
      i3 = f.size();
      if (i3 > 0)
      {
        paramPrintWriter.print(paramString);
        paramPrintWriter.print("Active Fragments in ");
        paramPrintWriter.print(Integer.toHexString(System.identityHashCode(this)));
        paramPrintWriter.println(":");
        i1 = 0;
        while (i1 < i3)
        {
          localObject2 = (Fragment)f.valueAt(i1);
          paramPrintWriter.print(paramString);
          paramPrintWriter.print("  #");
          paramPrintWriter.print(i1);
          paramPrintWriter.print(": ");
          paramPrintWriter.println(localObject2);
          if (localObject2 != null) {
            ((Fragment)localObject2).dump((String)localObject1, paramFileDescriptor, paramPrintWriter, paramArrayOfString);
          }
          i1 += 1;
        }
      }
    }
    int i3 = e.size();
    if (i3 > 0)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.println("Added Fragments:");
      i1 = 0;
      while (i1 < i3)
      {
        localObject2 = (Fragment)e.get(i1);
        paramPrintWriter.print(paramString);
        paramPrintWriter.print("  #");
        paramPrintWriter.print(i1);
        paramPrintWriter.print(": ");
        paramPrintWriter.println(((Fragment)localObject2).toString());
        i1 += 1;
      }
    }
    if (h != null)
    {
      i3 = h.size();
      if (i3 > 0)
      {
        paramPrintWriter.print(paramString);
        paramPrintWriter.println("Fragments Created Menus:");
        i1 = 0;
        while (i1 < i3)
        {
          localObject2 = (Fragment)h.get(i1);
          paramPrintWriter.print(paramString);
          paramPrintWriter.print("  #");
          paramPrintWriter.print(i1);
          paramPrintWriter.print(": ");
          paramPrintWriter.println(((Fragment)localObject2).toString());
          i1 += 1;
        }
      }
    }
    if (g != null)
    {
      i3 = g.size();
      if (i3 > 0)
      {
        paramPrintWriter.print(paramString);
        paramPrintWriter.println("Back Stack:");
        i1 = 0;
        while (i1 < i3)
        {
          localObject2 = (a)g.get(i1);
          paramPrintWriter.print(paramString);
          paramPrintWriter.print("  #");
          paramPrintWriter.print(i1);
          paramPrintWriter.print(": ");
          paramPrintWriter.println(((a)localObject2).toString());
          ((a)localObject2).a((String)localObject1, paramFileDescriptor, paramPrintWriter, paramArrayOfString);
          i1 += 1;
        }
      }
    }
    try
    {
      if (i != null)
      {
        i3 = i.size();
        if (i3 > 0)
        {
          paramPrintWriter.print(paramString);
          paramPrintWriter.println("Back Stack Indices:");
          i1 = 0;
          while (i1 < i3)
          {
            paramFileDescriptor = (a)i.get(i1);
            paramPrintWriter.print(paramString);
            paramPrintWriter.print("  #");
            paramPrintWriter.print(i1);
            paramPrintWriter.print(": ");
            paramPrintWriter.println(paramFileDescriptor);
            i1 += 1;
          }
        }
      }
      if ((j != null) && (j.size() > 0))
      {
        paramPrintWriter.print(paramString);
        paramPrintWriter.print("mAvailBackStackIndices: ");
        paramPrintWriter.println(Arrays.toString(j.toArray()));
      }
      if (b != null)
      {
        i3 = b.size();
        if (i3 > 0)
        {
          paramPrintWriter.print(paramString);
          paramPrintWriter.println("Pending Actions:");
          i1 = i2;
          while (i1 < i3)
          {
            paramFileDescriptor = (h)b.get(i1);
            paramPrintWriter.print(paramString);
            paramPrintWriter.print("  #");
            paramPrintWriter.print(i1);
            paramPrintWriter.print(": ");
            paramPrintWriter.println(paramFileDescriptor);
            i1 += 1;
          }
        }
      }
      paramPrintWriter.print(paramString);
      paramPrintWriter.println("FragmentManager misc state:");
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("  mHost=");
      paramPrintWriter.println(m);
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("  mContainer=");
      paramPrintWriter.println(n);
      if (o != null)
      {
        paramPrintWriter.print(paramString);
        paramPrintWriter.print("  mParent=");
        paramPrintWriter.println(o);
      }
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("  mCurState=");
      paramPrintWriter.print(l);
      paramPrintWriter.print(" mStateSaved=");
      paramPrintWriter.print(s);
      paramPrintWriter.print(" mStopped=");
      paramPrintWriter.print(t);
      paramPrintWriter.print(" mDestroyed=");
      paramPrintWriter.println(u);
      if (r)
      {
        paramPrintWriter.print(paramString);
        paramPrintWriter.print("  mNeedMenuInvalidate=");
        paramPrintWriter.println(r);
      }
      if (v != null)
      {
        paramPrintWriter.print(paramString);
        paramPrintWriter.print("  mNoTransactionsBecause=");
        paramPrintWriter.println(v);
      }
      return;
    }
    finally {}
  }
  
  void e(Fragment paramFragment)
  {
    if (paramFragment == null) {
      return;
    }
    int i2 = l;
    int i1 = i2;
    if (mRemoving) {
      if (paramFragment.isInBackStack()) {
        i1 = Math.min(i2, 1);
      } else {
        i1 = Math.min(i2, 0);
      }
    }
    a(paramFragment, i1, paramFragment.getNextTransition(), paramFragment.getNextTransitionStyle(), false);
    if (mView != null)
    {
      Object localObject = p(paramFragment);
      if (localObject != null)
      {
        localObject = mView;
        ViewGroup localViewGroup = mContainer;
        i1 = localViewGroup.indexOfChild((View)localObject);
        i2 = localViewGroup.indexOfChild(mView);
        if (i2 < i1)
        {
          localViewGroup.removeViewAt(i2);
          localViewGroup.addView(mView, i1);
        }
      }
      if ((mIsNewlyAdded) && (mContainer != null))
      {
        if (mPostponedAlpha > 0.0F) {
          mView.setAlpha(mPostponedAlpha);
        }
        mPostponedAlpha = 0.0F;
        mIsNewlyAdded = false;
        localObject = a(paramFragment, paramFragment.getNextTransition(), true, paramFragment.getNextTransitionStyle());
        if (localObject != null)
        {
          b(mView, (c)localObject);
          if (a != null)
          {
            mView.startAnimation(a);
          }
          else
          {
            b.setTarget(mView);
            b.start();
          }
        }
      }
    }
    if (mHiddenChanged) {
      d(paramFragment);
    }
  }
  
  void e(@NonNull Fragment paramFragment, boolean paramBoolean)
  {
    if (o != null)
    {
      localObject = o.getFragmentManager();
      if ((localObject instanceof c)) {
        ((c)localObject).e(paramFragment, true);
      }
    }
    Object localObject = J.iterator();
    while (((Iterator)localObject).hasNext())
    {
      f localF = (f)((Iterator)localObject).next();
      if ((!paramBoolean) || (b)) {
        a.onFragmentStopped(this, paramFragment);
      }
    }
  }
  
  public boolean e()
  {
    c(true);
    boolean bool = false;
    for (;;)
    {
      if (c(x, y)) {
        c = true;
      }
      try
      {
        b(x, y);
        w();
        bool = true;
      }
      finally
      {
        w();
      }
    }
    z();
    return bool;
  }
  
  public boolean executePendingTransactions()
  {
    boolean bool = e();
    x();
    return bool;
  }
  
  void f()
  {
    if (w)
    {
      w = false;
      c();
    }
  }
  
  void f(Fragment paramFragment)
  {
    if (mIndex >= 0) {
      return;
    }
    int i1 = d;
    d = (i1 + 1);
    paramFragment.setIndex(i1, o);
    if (f == null) {
      f = new SparseArray();
    }
    f.put(mIndex, paramFragment);
    if (a)
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("Allocated fragment index ");
      localStringBuilder.append(paramFragment);
      Log.v("FragmentManager", localStringBuilder.toString());
    }
  }
  
  void f(@NonNull Fragment paramFragment, boolean paramBoolean)
  {
    if (o != null)
    {
      localObject = o.getFragmentManager();
      if ((localObject instanceof c)) {
        ((c)localObject).f(paramFragment, true);
      }
    }
    Object localObject = J.iterator();
    while (((Iterator)localObject).hasNext())
    {
      f localF = (f)((Iterator)localObject).next();
      if ((!paramBoolean) || (b)) {
        a.onFragmentViewDestroyed(this, paramFragment);
      }
    }
  }
  
  @Nullable
  public Fragment findFragmentById(int paramInt)
  {
    int i1 = e.size() - 1;
    Fragment localFragment;
    while (i1 >= 0)
    {
      localFragment = (Fragment)e.get(i1);
      if ((localFragment != null) && (mFragmentId == paramInt)) {
        return localFragment;
      }
      i1 -= 1;
    }
    if (f != null)
    {
      i1 = f.size() - 1;
      while (i1 >= 0)
      {
        localFragment = (Fragment)f.valueAt(i1);
        if ((localFragment != null) && (mFragmentId == paramInt)) {
          return localFragment;
        }
        i1 -= 1;
      }
    }
    return null;
  }
  
  @Nullable
  public Fragment findFragmentByTag(@Nullable String paramString)
  {
    int i1;
    Fragment localFragment;
    if (paramString != null)
    {
      i1 = e.size() - 1;
      while (i1 >= 0)
      {
        localFragment = (Fragment)e.get(i1);
        if ((localFragment != null) && (paramString.equals(mTag))) {
          return localFragment;
        }
        i1 -= 1;
      }
    }
    if ((f != null) && (paramString != null))
    {
      i1 = f.size() - 1;
      while (i1 >= 0)
      {
        localFragment = (Fragment)f.valueAt(i1);
        if ((localFragment != null) && (paramString.equals(mTag))) {
          return localFragment;
        }
        i1 -= 1;
      }
    }
    return null;
  }
  
  void g()
  {
    if (k != null)
    {
      int i1 = 0;
      while (i1 < k.size())
      {
        ((FragmentManager.OnBackStackChangedListener)k.get(i1)).onBackStackChanged();
        i1 += 1;
      }
    }
  }
  
  void g(Fragment paramFragment)
  {
    if (mIndex < 0) {
      return;
    }
    if (a)
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("Freeing fragment index ");
      localStringBuilder.append(paramFragment);
      Log.v("FragmentManager", localStringBuilder.toString());
    }
    f.put(mIndex, null);
    paramFragment.initState();
  }
  
  void g(@NonNull Fragment paramFragment, boolean paramBoolean)
  {
    if (o != null)
    {
      localObject = o.getFragmentManager();
      if ((localObject instanceof c)) {
        ((c)localObject).g(paramFragment, true);
      }
    }
    Object localObject = J.iterator();
    while (((Iterator)localObject).hasNext())
    {
      f localF = (f)((Iterator)localObject).next();
      if ((!paramBoolean) || (b)) {
        a.onFragmentDestroyed(this, paramFragment);
      }
    }
  }
  
  public FragmentManager.BackStackEntry getBackStackEntryAt(int paramInt)
  {
    return (FragmentManager.BackStackEntry)g.get(paramInt);
  }
  
  public int getBackStackEntryCount()
  {
    if (g != null) {
      return g.size();
    }
    return 0;
  }
  
  @Nullable
  public Fragment getFragment(Bundle paramBundle, String paramString)
  {
    int i1 = paramBundle.getInt(paramString, -1);
    if (i1 == -1) {
      return null;
    }
    paramBundle = (Fragment)f.get(i1);
    if (paramBundle == null)
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("Fragment no longer exists for key ");
      localStringBuilder.append(paramString);
      localStringBuilder.append(": index ");
      localStringBuilder.append(i1);
      a(new IllegalStateException(localStringBuilder.toString()));
    }
    return paramBundle;
  }
  
  public List<Fragment> getFragments()
  {
    if (e.isEmpty()) {
      return Collections.emptyList();
    }
    synchronized (e)
    {
      List localList = (List)e.clone();
      return localList;
    }
  }
  
  @Nullable
  public Fragment getPrimaryNavigationFragment()
  {
    return p;
  }
  
  FragmentManagerNonConfig h()
  {
    a(D);
    return D;
  }
  
  public void h(Fragment paramFragment)
  {
    if (a)
    {
      ??? = new StringBuilder();
      ((StringBuilder)???).append("remove: ");
      ((StringBuilder)???).append(paramFragment);
      ((StringBuilder)???).append(" nesting=");
      ((StringBuilder)???).append(mBackStackNesting);
      Log.v("FragmentManager", ((StringBuilder)???).toString());
    }
    boolean bool = paramFragment.isInBackStack();
    if ((!mDetached) || ((bool ^ true))) {}
    synchronized (e)
    {
      e.remove(paramFragment);
      if ((mHasMenu) && (mMenuVisible)) {
        r = true;
      }
      mAdded = false;
      mRemoving = true;
      return;
    }
  }
  
  void h(@NonNull Fragment paramFragment, boolean paramBoolean)
  {
    if (o != null)
    {
      localObject = o.getFragmentManager();
      if ((localObject instanceof c)) {
        ((c)localObject).h(paramFragment, true);
      }
    }
    Object localObject = J.iterator();
    while (((Iterator)localObject).hasNext())
    {
      f localF = (f)((Iterator)localObject).next();
      if ((!paramBoolean) || (b)) {
        a.onFragmentDetached(this, paramFragment);
      }
    }
  }
  
  void i()
  {
    if (f != null)
    {
      localObject1 = null;
      Object localObject3 = localObject1;
      Object localObject2 = localObject3;
      int i1 = 0;
      for (;;)
      {
        localObject6 = localObject1;
        localObject5 = localObject3;
        localObject4 = localObject2;
        if (i1 >= f.size()) {
          break;
        }
        Fragment localFragment = (Fragment)f.valueAt(i1);
        localObject5 = localObject1;
        localObject6 = localObject3;
        Object localObject7 = localObject2;
        if (localFragment != null)
        {
          localObject4 = localObject1;
          int i2;
          if (mRetainInstance)
          {
            localObject5 = localObject1;
            if (localObject1 == null) {
              localObject5 = new ArrayList();
            }
            ((ArrayList)localObject5).add(localFragment);
            if (mTarget != null) {
              i2 = mTarget.mIndex;
            } else {
              i2 = -1;
            }
            mTargetIndex = i2;
            localObject4 = localObject5;
            if (a)
            {
              localObject1 = new StringBuilder();
              ((StringBuilder)localObject1).append("retainNonConfig: keeping retained ");
              ((StringBuilder)localObject1).append(localFragment);
              Log.v("FragmentManager", ((StringBuilder)localObject1).toString());
              localObject4 = localObject5;
            }
          }
          if (mChildFragmentManager != null)
          {
            mChildFragmentManager.i();
            localObject5 = mChildFragmentManager.D;
          }
          else
          {
            localObject5 = mChildNonConfig;
          }
          localObject1 = localObject3;
          if (localObject3 == null)
          {
            localObject1 = localObject3;
            if (localObject5 != null)
            {
              localObject3 = new ArrayList(f.size());
              i2 = 0;
              for (;;)
              {
                localObject1 = localObject3;
                if (i2 >= i1) {
                  break;
                }
                ((ArrayList)localObject3).add(null);
                i2 += 1;
              }
            }
          }
          if (localObject1 != null) {
            ((ArrayList)localObject1).add(localObject5);
          }
          localObject3 = localObject2;
          if (localObject2 == null)
          {
            localObject3 = localObject2;
            if (mViewModelStore != null)
            {
              localObject2 = new ArrayList(f.size());
              i2 = 0;
              for (;;)
              {
                localObject3 = localObject2;
                if (i2 >= i1) {
                  break;
                }
                ((ArrayList)localObject2).add(null);
                i2 += 1;
              }
            }
          }
          localObject5 = localObject4;
          localObject6 = localObject1;
          localObject7 = localObject3;
          if (localObject3 != null)
          {
            ((ArrayList)localObject3).add(mViewModelStore);
            localObject7 = localObject3;
            localObject6 = localObject1;
            localObject5 = localObject4;
          }
        }
        i1 += 1;
        localObject1 = localObject5;
        localObject3 = localObject6;
        localObject2 = localObject7;
      }
    }
    Object localObject6 = null;
    Object localObject1 = localObject6;
    Object localObject4 = localObject1;
    Object localObject5 = localObject1;
    if ((localObject6 == null) && (localObject5 == null) && (localObject4 == null))
    {
      D = null;
      return;
    }
    D = new FragmentManagerNonConfig(localObject6, (List)localObject5, localObject4);
  }
  
  public void i(Fragment paramFragment)
  {
    if (a)
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("hide: ");
      localStringBuilder.append(paramFragment);
      Log.v("FragmentManager", localStringBuilder.toString());
    }
    if (!mHidden)
    {
      mHidden = true;
      mHiddenChanged = (true ^ mHiddenChanged);
    }
  }
  
  public boolean isDestroyed()
  {
    return u;
  }
  
  public boolean isStateSaved()
  {
    return (s) || (t);
  }
  
  Parcelable j()
  {
    x();
    y();
    e();
    s = true;
    Object localObject3 = null;
    D = null;
    if (f != null)
    {
      if (f.size() <= 0) {
        return null;
      }
      int i4 = f.size();
      e[] arrayOfE = new e[i4];
      int i3 = 0;
      int i1 = 0;
      int i2 = 0;
      while (i1 < i4)
      {
        localObject1 = (Fragment)f.valueAt(i1);
        if (localObject1 != null)
        {
          if (mIndex < 0)
          {
            localObject2 = new StringBuilder();
            ((StringBuilder)localObject2).append("Failure saving state: active ");
            ((StringBuilder)localObject2).append(localObject1);
            ((StringBuilder)localObject2).append(" has cleared index: ");
            ((StringBuilder)localObject2).append(mIndex);
            a(new IllegalStateException(((StringBuilder)localObject2).toString()));
          }
          localObject2 = new e((Fragment)localObject1);
          arrayOfE[i1] = localObject2;
          StringBuilder localStringBuilder;
          if ((mState > 0) && (k == null))
          {
            k = n((Fragment)localObject1);
            if (mTarget != null)
            {
              if (mTarget.mIndex < 0)
              {
                localStringBuilder = new StringBuilder();
                localStringBuilder.append("Failure saving state: ");
                localStringBuilder.append(localObject1);
                localStringBuilder.append(" has target not in fragment manager: ");
                localStringBuilder.append(mTarget);
                a(new IllegalStateException(localStringBuilder.toString()));
              }
              if (k == null) {
                k = new Bundle();
              }
              putFragment(k, "android:target_state", mTarget);
              if (mTargetRequestCode != 0) {
                k.putInt("android:target_req_state", mTargetRequestCode);
              }
            }
          }
          else
          {
            k = mSavedFragmentState;
          }
          if (a)
          {
            localStringBuilder = new StringBuilder();
            localStringBuilder.append("Saved state of ");
            localStringBuilder.append(localObject1);
            localStringBuilder.append(": ");
            localStringBuilder.append(k);
            Log.v("FragmentManager", localStringBuilder.toString());
          }
          i2 = 1;
        }
        i1 += 1;
      }
      if (i2 == 0)
      {
        if (a) {
          Log.v("FragmentManager", "saveAllState: no fragments!");
        }
        return null;
      }
      i2 = e.size();
      if (i2 > 0)
      {
        localObject2 = new int[i2];
        i1 = 0;
        for (;;)
        {
          localObject1 = localObject2;
          if (i1 >= i2) {
            break;
          }
          localObject2[i1] = e.get(i1)).mIndex;
          if (localObject2[i1] < 0)
          {
            localObject1 = new StringBuilder();
            ((StringBuilder)localObject1).append("Failure saving state: active ");
            ((StringBuilder)localObject1).append(e.get(i1));
            ((StringBuilder)localObject1).append(" has cleared index: ");
            ((StringBuilder)localObject1).append(localObject2[i1]);
            a(new IllegalStateException(((StringBuilder)localObject1).toString()));
          }
          if (a)
          {
            localObject1 = new StringBuilder();
            ((StringBuilder)localObject1).append("saveAllState: adding fragment #");
            ((StringBuilder)localObject1).append(i1);
            ((StringBuilder)localObject1).append(": ");
            ((StringBuilder)localObject1).append(e.get(i1));
            Log.v("FragmentManager", ((StringBuilder)localObject1).toString());
          }
          i1 += 1;
        }
      }
      Object localObject1 = null;
      Object localObject2 = localObject3;
      if (g != null)
      {
        i2 = g.size();
        localObject2 = localObject3;
        if (i2 > 0)
        {
          localObject3 = new b[i2];
          i1 = i3;
          for (;;)
          {
            localObject2 = localObject3;
            if (i1 >= i2) {
              break;
            }
            localObject3[i1] = new b((a)g.get(i1));
            if (a)
            {
              localObject2 = new StringBuilder();
              ((StringBuilder)localObject2).append("saveAllState: adding back stack #");
              ((StringBuilder)localObject2).append(i1);
              ((StringBuilder)localObject2).append(": ");
              ((StringBuilder)localObject2).append(g.get(i1));
              Log.v("FragmentManager", ((StringBuilder)localObject2).toString());
            }
            i1 += 1;
          }
        }
      }
      localObject3 = new d();
      a = arrayOfE;
      b = ((int[])localObject1);
      c = ((b[])localObject2);
      if (p != null) {
        d = p.mIndex;
      }
      e = d;
      i();
      return localObject3;
    }
    return null;
  }
  
  public void j(Fragment paramFragment)
  {
    if (a)
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("show: ");
      localStringBuilder.append(paramFragment);
      Log.v("FragmentManager", localStringBuilder.toString());
    }
    if (mHidden)
    {
      mHidden = false;
      mHiddenChanged ^= true;
    }
  }
  
  public void k()
  {
    D = null;
    int i1 = 0;
    s = false;
    t = false;
    int i2 = e.size();
    while (i1 < i2)
    {
      Fragment localFragment = (Fragment)e.get(i1);
      if (localFragment != null) {
        localFragment.noteStateNotSaved();
      }
      i1 += 1;
    }
  }
  
  public void k(Fragment paramFragment)
  {
    if (a)
    {
      ??? = new StringBuilder();
      ((StringBuilder)???).append("detach: ");
      ((StringBuilder)???).append(paramFragment);
      Log.v("FragmentManager", ((StringBuilder)???).toString());
    }
    if (!mDetached)
    {
      mDetached = true;
      if (mAdded)
      {
        if (a)
        {
          ??? = new StringBuilder();
          ((StringBuilder)???).append("remove from detach: ");
          ((StringBuilder)???).append(paramFragment);
          Log.v("FragmentManager", ((StringBuilder)???).toString());
        }
        synchronized (e)
        {
          e.remove(paramFragment);
          if ((mHasMenu) && (mMenuVisible)) {
            r = true;
          }
          mAdded = false;
          return;
        }
      }
    }
  }
  
  public void l()
  {
    s = false;
    t = false;
    d(1);
  }
  
  public void l(Fragment paramFragment)
  {
    if (a)
    {
      ??? = new StringBuilder();
      ((StringBuilder)???).append("attach: ");
      ((StringBuilder)???).append(paramFragment);
      Log.v("FragmentManager", ((StringBuilder)???).toString());
    }
    if (mDetached)
    {
      mDetached = false;
      if (!mAdded)
      {
        if (!e.contains(paramFragment))
        {
          if (a)
          {
            ??? = new StringBuilder();
            ((StringBuilder)???).append("add from attach: ");
            ((StringBuilder)???).append(paramFragment);
            Log.v("FragmentManager", ((StringBuilder)???).toString());
          }
          synchronized (e)
          {
            e.add(paramFragment);
            mAdded = true;
            if ((!mHasMenu) || (!mMenuVisible)) {
              return;
            }
            r = true;
            return;
          }
        }
        ??? = new StringBuilder();
        ((StringBuilder)???).append("Fragment already added: ");
        ((StringBuilder)???).append(paramFragment);
        throw new IllegalStateException(((StringBuilder)???).toString());
      }
    }
  }
  
  public void m()
  {
    s = false;
    t = false;
    d(2);
  }
  
  void m(Fragment paramFragment)
  {
    if (mInnerView == null) {
      return;
    }
    if (B == null) {
      B = new SparseArray();
    } else {
      B.clear();
    }
    mInnerView.saveHierarchyState(B);
    if (B.size() > 0)
    {
      mSavedViewState = B;
      B = null;
    }
  }
  
  Bundle n(Fragment paramFragment)
  {
    if (A == null) {
      A = new Bundle();
    }
    paramFragment.performSaveInstanceState(A);
    d(paramFragment, A, false);
    if (!A.isEmpty())
    {
      localObject2 = A;
      A = null;
    }
    else
    {
      localObject2 = null;
    }
    if (mView != null) {
      m(paramFragment);
    }
    Object localObject1 = localObject2;
    if (mSavedViewState != null)
    {
      localObject1 = localObject2;
      if (localObject2 == null) {
        localObject1 = new Bundle();
      }
      ((Bundle)localObject1).putSparseParcelableArray("android:view_state", mSavedViewState);
    }
    Object localObject2 = localObject1;
    if (!mUserVisibleHint)
    {
      localObject2 = localObject1;
      if (localObject1 == null) {
        localObject2 = new Bundle();
      }
      ((Bundle)localObject2).putBoolean("android:user_visible_hint", mUserVisibleHint);
    }
    return localObject2;
  }
  
  public void n()
  {
    s = false;
    t = false;
    d(3);
  }
  
  public void o()
  {
    s = false;
    t = false;
    d(4);
  }
  
  public void o(Fragment paramFragment)
  {
    if ((paramFragment != null) && ((f.get(mIndex) != paramFragment) || ((mHost != null) && (paramFragment.getFragmentManager() != this))))
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("Fragment ");
      localStringBuilder.append(paramFragment);
      localStringBuilder.append(" is not an active fragment of FragmentManager ");
      localStringBuilder.append(this);
      throw new IllegalArgumentException(localStringBuilder.toString());
    }
    p = paramFragment;
  }
  
  public View onCreateView(View paramView, String paramString, Context paramContext, AttributeSet paramAttributeSet)
  {
    if (!"fragment".equals(paramString)) {
      return null;
    }
    paramString = paramAttributeSet.getAttributeValue(null, "class");
    TypedArray localTypedArray = paramContext.obtainStyledAttributes(paramAttributeSet, g.a);
    int i1 = 0;
    String str1 = paramString;
    if (paramString == null) {
      str1 = localTypedArray.getString(0);
    }
    int i3 = localTypedArray.getResourceId(1, -1);
    String str2 = localTypedArray.getString(2);
    localTypedArray.recycle();
    if (!Fragment.isSupportFragmentClass(m.c(), str1)) {
      return null;
    }
    if (paramView != null) {
      i1 = paramView.getId();
    }
    if ((i1 == -1) && (i3 == -1) && (str2 == null))
    {
      paramView = new StringBuilder();
      paramView.append(paramAttributeSet.getPositionDescription());
      paramView.append(": Must specify unique android:id, android:tag, or have a parent with an id for ");
      paramView.append(str1);
      throw new IllegalArgumentException(paramView.toString());
    }
    if (i3 != -1) {
      paramString = findFragmentById(i3);
    } else {
      paramString = null;
    }
    paramView = paramString;
    if (paramString == null)
    {
      paramView = paramString;
      if (str2 != null) {
        paramView = findFragmentByTag(str2);
      }
    }
    paramString = paramView;
    if (paramView == null)
    {
      paramString = paramView;
      if (i1 != -1) {
        paramString = findFragmentById(i1);
      }
    }
    if (a)
    {
      paramView = new StringBuilder();
      paramView.append("onCreateView: id=0x");
      paramView.append(Integer.toHexString(i3));
      paramView.append(" fname=");
      paramView.append(str1);
      paramView.append(" existing=");
      paramView.append(paramString);
      Log.v("FragmentManager", paramView.toString());
    }
    if (paramString == null)
    {
      paramView = n.instantiate(paramContext, str1, null);
      mFromLayout = true;
      int i2;
      if (i3 != 0) {
        i2 = i3;
      } else {
        i2 = i1;
      }
      mFragmentId = i2;
      mContainerId = i1;
      mTag = str2;
      mInLayout = true;
      mFragmentManager = this;
      mHost = m;
      paramView.onInflate(m.c(), paramAttributeSet, mSavedFragmentState);
      a(paramView, true);
    }
    else
    {
      if (mInLayout) {
        break label565;
      }
      mInLayout = true;
      mHost = m;
      if (!mRetaining) {
        paramString.onInflate(m.c(), paramAttributeSet, mSavedFragmentState);
      }
      paramView = paramString;
    }
    if ((l < 1) && (mFromLayout)) {
      a(paramView, 1, 0, 0, false);
    } else {
      b(paramView);
    }
    if (mView != null)
    {
      if (i3 != 0) {
        mView.setId(i3);
      }
      if (mView.getTag() == null) {
        mView.setTag(str2);
      }
      return mView;
    }
    paramView = new StringBuilder();
    paramView.append("Fragment ");
    paramView.append(str1);
    paramView.append(" did not create a view.");
    throw new IllegalStateException(paramView.toString());
    label565:
    paramView = new StringBuilder();
    paramView.append(paramAttributeSet.getPositionDescription());
    paramView.append(": Duplicate id 0x");
    paramView.append(Integer.toHexString(i3));
    paramView.append(", tag ");
    paramView.append(str2);
    paramView.append(", or parent id 0x");
    paramView.append(Integer.toHexString(i1));
    paramView.append(" with another fragment for ");
    paramView.append(str1);
    throw new IllegalArgumentException(paramView.toString());
  }
  
  public View onCreateView(String paramString, Context paramContext, AttributeSet paramAttributeSet)
  {
    return onCreateView(null, paramString, paramContext, paramAttributeSet);
  }
  
  public void p()
  {
    d(3);
  }
  
  public void popBackStack()
  {
    a(new i(null, -1, 0), false);
  }
  
  public void popBackStack(int paramInt1, int paramInt2)
  {
    if (paramInt1 >= 0)
    {
      a(new i(null, paramInt1, paramInt2), false);
      return;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Bad id: ");
    localStringBuilder.append(paramInt1);
    throw new IllegalArgumentException(localStringBuilder.toString());
  }
  
  public void popBackStack(@Nullable String paramString, int paramInt)
  {
    a(new i(paramString, -1, paramInt), false);
  }
  
  public boolean popBackStackImmediate()
  {
    v();
    return a(null, -1, 0);
  }
  
  public boolean popBackStackImmediate(int paramInt1, int paramInt2)
  {
    v();
    e();
    if (paramInt1 >= 0) {
      return a(null, paramInt1, paramInt2);
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Bad id: ");
    localStringBuilder.append(paramInt1);
    throw new IllegalArgumentException(localStringBuilder.toString());
  }
  
  public boolean popBackStackImmediate(@Nullable String paramString, int paramInt)
  {
    v();
    return a(paramString, -1, paramInt);
  }
  
  public void putFragment(Bundle paramBundle, String paramString, Fragment paramFragment)
  {
    if (mIndex < 0)
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("Fragment ");
      localStringBuilder.append(paramFragment);
      localStringBuilder.append(" is not currently in the FragmentManager");
      a(new IllegalStateException(localStringBuilder.toString()));
    }
    paramBundle.putInt(paramString, mIndex);
  }
  
  public void q()
  {
    t = true;
    d(2);
  }
  
  public void r()
  {
    d(1);
  }
  
  public void registerFragmentLifecycleCallbacks(FragmentManager.FragmentLifecycleCallbacks paramFragmentLifecycleCallbacks, boolean paramBoolean)
  {
    J.add(new f(paramFragmentLifecycleCallbacks, paramBoolean));
  }
  
  public void removeOnBackStackChangedListener(FragmentManager.OnBackStackChangedListener paramOnBackStackChangedListener)
  {
    if (k != null) {
      k.remove(paramOnBackStackChangedListener);
    }
  }
  
  public void s()
  {
    u = true;
    e();
    d(0);
    m = null;
    n = null;
    o = null;
  }
  
  @Nullable
  public Fragment.SavedState saveFragmentInstanceState(Fragment paramFragment)
  {
    if (mIndex < 0)
    {
      localStringBuilder = new StringBuilder();
      localStringBuilder.append("Fragment ");
      localStringBuilder.append(paramFragment);
      localStringBuilder.append(" is not currently in the FragmentManager");
      a(new IllegalStateException(localStringBuilder.toString()));
    }
    int i1 = mState;
    StringBuilder localStringBuilder = null;
    if (i1 > 0)
    {
      Bundle localBundle = n(paramFragment);
      paramFragment = localStringBuilder;
      if (localBundle != null) {
        paramFragment = new Fragment.SavedState(localBundle);
      }
      return paramFragment;
    }
    return null;
  }
  
  public void t()
  {
    int i1 = 0;
    while (i1 < e.size())
    {
      Fragment localFragment = (Fragment)e.get(i1);
      if (localFragment != null) {
        localFragment.performLowMemory();
      }
      i1 += 1;
    }
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder(128);
    localStringBuilder.append("FragmentManager{");
    localStringBuilder.append(Integer.toHexString(System.identityHashCode(this)));
    localStringBuilder.append(" in ");
    if (o != null) {
      DebugUtils.buildShortClassTag(o, localStringBuilder);
    } else {
      DebugUtils.buildShortClassTag(m, localStringBuilder);
    }
    localStringBuilder.append("}}");
    return localStringBuilder.toString();
  }
  
  LayoutInflater.Factory2 u()
  {
    return this;
  }
  
  public void unregisterFragmentLifecycleCallbacks(FragmentManager.FragmentLifecycleCallbacks paramFragmentLifecycleCallbacks)
  {
    CopyOnWriteArrayList localCopyOnWriteArrayList = J;
    int i1 = 0;
    for (;;)
    {
      try
      {
        int i2 = J.size();
        if (i1 < i2)
        {
          if (J.get(i1)).a != paramFragmentLifecycleCallbacks) {
            break label64;
          }
          J.remove(i1);
        }
        return;
      }
      finally {}
      label64:
      i1 += 1;
    }
  }
  
  private static class a
    extends c.b
  {
    View a;
    
    a(View paramView, Animation.AnimationListener paramAnimationListener)
    {
      super();
      a = paramView;
    }
    
    @CallSuper
    public void onAnimationEnd(Animation paramAnimation)
    {
      if ((!ViewCompat.isAttachedToWindow(a)) && (Build.VERSION.SDK_INT < 24)) {
        a.setLayerType(0, null);
      } else {
        a.post(new Runnable()
        {
          public void run()
          {
            a.setLayerType(0, null);
          }
        });
      }
      super.onAnimationEnd(paramAnimation);
    }
  }
  
  private static class b
    implements Animation.AnimationListener
  {
    private final Animation.AnimationListener a;
    
    b(Animation.AnimationListener paramAnimationListener)
    {
      a = paramAnimationListener;
    }
    
    @CallSuper
    public void onAnimationEnd(Animation paramAnimation)
    {
      if (a != null) {
        a.onAnimationEnd(paramAnimation);
      }
    }
    
    @CallSuper
    public void onAnimationRepeat(Animation paramAnimation)
    {
      if (a != null) {
        a.onAnimationRepeat(paramAnimation);
      }
    }
    
    @CallSuper
    public void onAnimationStart(Animation paramAnimation)
    {
      if (a != null) {
        a.onAnimationStart(paramAnimation);
      }
    }
  }
  
  private static class c
  {
    public final Animation a;
    public final Animator b;
    
    c(Animator paramAnimator)
    {
      a = null;
      b = paramAnimator;
      if (paramAnimator != null) {
        return;
      }
      throw new IllegalStateException("Animator cannot be null");
    }
    
    c(Animation paramAnimation)
    {
      a = paramAnimation;
      b = null;
      if (paramAnimation != null) {
        return;
      }
      throw new IllegalStateException("Animation cannot be null");
    }
  }
  
  private static class d
    extends AnimatorListenerAdapter
  {
    View a;
    
    d(View paramView)
    {
      a = paramView;
    }
    
    public void onAnimationEnd(Animator paramAnimator)
    {
      a.setLayerType(0, null);
      paramAnimator.removeListener(this);
    }
    
    public void onAnimationStart(Animator paramAnimator)
    {
      a.setLayerType(2, null);
    }
  }
  
  private static class e
    extends AnimationSet
    implements Runnable
  {
    private final ViewGroup a;
    private final View b;
    private boolean c;
    private boolean d;
    private boolean e = true;
    
    e(@NonNull Animation paramAnimation, @NonNull ViewGroup paramViewGroup, @NonNull View paramView)
    {
      super();
      a = paramViewGroup;
      b = paramView;
      addAnimation(paramAnimation);
      a.post(this);
    }
    
    public boolean getTransformation(long paramLong, Transformation paramTransformation)
    {
      e = true;
      if (c) {
        return d ^ true;
      }
      if (!super.getTransformation(paramLong, paramTransformation))
      {
        c = true;
        j.a(a, this);
      }
      return true;
    }
    
    public boolean getTransformation(long paramLong, Transformation paramTransformation, float paramFloat)
    {
      e = true;
      if (c) {
        return d ^ true;
      }
      if (!super.getTransformation(paramLong, paramTransformation, paramFloat))
      {
        c = true;
        j.a(a, this);
      }
      return true;
    }
    
    public void run()
    {
      if ((!c) && (e))
      {
        e = false;
        a.post(this);
        return;
      }
      a.endViewTransition(b);
      d = true;
    }
  }
  
  private static final class f
  {
    final FragmentManager.FragmentLifecycleCallbacks a;
    final boolean b;
    
    f(FragmentManager.FragmentLifecycleCallbacks paramFragmentLifecycleCallbacks, boolean paramBoolean)
    {
      a = paramFragmentLifecycleCallbacks;
      b = paramBoolean;
    }
  }
  
  static class g
  {
    public static final int[] a = { 16842755, 16842960, 16842961 };
  }
  
  static abstract interface h
  {
    public abstract boolean a(ArrayList<a> paramArrayList, ArrayList<Boolean> paramArrayList1);
  }
  
  private class i
    implements c.h
  {
    final String a;
    final int b;
    final int c;
    
    i(String paramString, int paramInt1, int paramInt2)
    {
      a = paramString;
      b = paramInt1;
      c = paramInt2;
    }
    
    public boolean a(ArrayList<a> paramArrayList, ArrayList<Boolean> paramArrayList1)
    {
      if ((p != null) && (b < 0) && (a == null))
      {
        FragmentManager localFragmentManager = p.peekChildFragmentManager();
        if ((localFragmentManager != null) && (localFragmentManager.popBackStackImmediate())) {
          return false;
        }
      }
      return a(paramArrayList, paramArrayList1, a, b, c);
    }
  }
  
  static class j
    implements Fragment.b
  {
    final boolean a;
    final a b;
    private int c;
    
    j(a paramA, boolean paramBoolean)
    {
      a = paramBoolean;
      b = paramA;
    }
    
    public void a()
    {
      c -= 1;
      if (c != 0) {
        return;
      }
      b.a.d();
    }
    
    public void b()
    {
      c += 1;
    }
    
    public boolean c()
    {
      return c == 0;
    }
    
    public void d()
    {
      int i = c;
      int j = 0;
      if (i > 0) {
        i = 1;
      } else {
        i = 0;
      }
      c localC = b.a;
      int k = e.size();
      while (j < k)
      {
        Fragment localFragment = (Fragment)e.get(j);
        localFragment.setOnStartEnterTransitionListener(null);
        if ((i != 0) && (localFragment.isPostponed())) {
          localFragment.startPostponedEnterTransition();
        }
        j += 1;
      }
      b.a.a(b, a, i ^ 0x1, true);
    }
    
    public void e()
    {
      b.a.a(b, a, false, false);
    }
  }
}
