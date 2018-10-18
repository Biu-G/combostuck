package android.support.v4.app;

import android.content.Context;
import android.support.annotation.Nullable;
import android.support.v4.util.LogWriter;
import android.support.v4.view.ViewCompat;
import android.util.Log;
import android.view.View;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.lang.reflect.Modifier;
import java.util.ArrayList;

final class a
  extends FragmentTransaction
  implements FragmentManager.BackStackEntry, c.h
{
  final c a;
  ArrayList<a> b = new ArrayList();
  int c;
  int d;
  int e;
  int f;
  int g;
  int h;
  boolean i;
  boolean j = true;
  @Nullable
  String k;
  boolean l;
  int m = -1;
  int n;
  CharSequence o;
  int p;
  CharSequence q;
  ArrayList<String> r;
  ArrayList<String> s;
  boolean t = false;
  ArrayList<Runnable> u;
  
  public a(c paramC)
  {
    a = paramC;
  }
  
  private void a(int paramInt1, Fragment paramFragment, @Nullable String paramString, int paramInt2)
  {
    Object localObject = paramFragment.getClass();
    int i1 = ((Class)localObject).getModifiers();
    if ((!((Class)localObject).isAnonymousClass()) && (Modifier.isPublic(i1)) && ((!((Class)localObject).isMemberClass()) || (Modifier.isStatic(i1))))
    {
      mFragmentManager = a;
      if (paramString != null)
      {
        if ((mTag != null) && (!paramString.equals(mTag)))
        {
          localObject = new StringBuilder();
          ((StringBuilder)localObject).append("Can't change tag of fragment ");
          ((StringBuilder)localObject).append(paramFragment);
          ((StringBuilder)localObject).append(": was ");
          ((StringBuilder)localObject).append(mTag);
          ((StringBuilder)localObject).append(" now ");
          ((StringBuilder)localObject).append(paramString);
          throw new IllegalStateException(((StringBuilder)localObject).toString());
        }
        mTag = paramString;
      }
      if (paramInt1 != 0) {
        if (paramInt1 != -1)
        {
          if ((mFragmentId != 0) && (mFragmentId != paramInt1))
          {
            paramString = new StringBuilder();
            paramString.append("Can't change container ID of fragment ");
            paramString.append(paramFragment);
            paramString.append(": was ");
            paramString.append(mFragmentId);
            paramString.append(" now ");
            paramString.append(paramInt1);
            throw new IllegalStateException(paramString.toString());
          }
          mFragmentId = paramInt1;
          mContainerId = paramInt1;
        }
        else
        {
          localObject = new StringBuilder();
          ((StringBuilder)localObject).append("Can't add fragment ");
          ((StringBuilder)localObject).append(paramFragment);
          ((StringBuilder)localObject).append(" with tag ");
          ((StringBuilder)localObject).append(paramString);
          ((StringBuilder)localObject).append(" to container view with no id");
          throw new IllegalArgumentException(((StringBuilder)localObject).toString());
        }
      }
      a(new a(paramInt2, paramFragment));
      return;
    }
    paramFragment = new StringBuilder();
    paramFragment.append("Fragment ");
    paramFragment.append(((Class)localObject).getCanonicalName());
    paramFragment.append(" must be a public static class to be  properly recreated from");
    paramFragment.append(" instance state.");
    throw new IllegalStateException(paramFragment.toString());
  }
  
  private static boolean b(a paramA)
  {
    paramA = b;
    return (paramA != null) && (mAdded) && (mView != null) && (!mDetached) && (!mHidden) && (paramA.isPostponed());
  }
  
  int a(boolean paramBoolean)
  {
    if (!l)
    {
      if (c.a)
      {
        Object localObject = new StringBuilder();
        ((StringBuilder)localObject).append("Commit: ");
        ((StringBuilder)localObject).append(this);
        Log.v("FragmentManager", ((StringBuilder)localObject).toString());
        localObject = new PrintWriter(new LogWriter("FragmentManager"));
        a("  ", null, (PrintWriter)localObject, null);
        ((PrintWriter)localObject).close();
      }
      l = true;
      if (i) {
        m = a.a(this);
      } else {
        m = -1;
      }
      a.a(this, paramBoolean);
      return m;
    }
    throw new IllegalStateException("commit already called");
  }
  
  Fragment a(ArrayList<Fragment> paramArrayList, Fragment paramFragment)
  {
    int i1 = 0;
    for (Fragment localFragment1 = paramFragment; i1 < b.size(); localFragment1 = paramFragment)
    {
      a localA = (a)b.get(i1);
      int i2;
      switch (a)
      {
      case 4: 
      case 5: 
      default: 
        paramFragment = localFragment1;
        i2 = i1;
        break;
      case 8: 
        b.add(i1, new a(9, localFragment1));
        i2 = i1 + 1;
        paramFragment = b;
        break;
      case 3: 
      case 6: 
        paramArrayList.remove(b);
        paramFragment = localFragment1;
        i2 = i1;
        if (b == localFragment1)
        {
          b.add(i1, new a(9, b));
          i2 = i1 + 1;
          paramFragment = null;
        }
        break;
      case 2: 
        Fragment localFragment2 = b;
        int i6 = mContainerId;
        i2 = paramArrayList.size() - 1;
        paramFragment = localFragment1;
        int i5;
        for (int i3 = 0; i2 >= 0; i3 = i5)
        {
          Fragment localFragment3 = (Fragment)paramArrayList.get(i2);
          int i4 = i1;
          localFragment1 = paramFragment;
          i5 = i3;
          if (mContainerId == i6) {
            if (localFragment3 == localFragment2)
            {
              i5 = 1;
              i4 = i1;
              localFragment1 = paramFragment;
            }
            else
            {
              i4 = i1;
              localFragment1 = paramFragment;
              if (localFragment3 == paramFragment)
              {
                b.add(i1, new a(9, localFragment3));
                i4 = i1 + 1;
                localFragment1 = null;
              }
              paramFragment = new a(3, localFragment3);
              c = c;
              e = e;
              d = d;
              f = f;
              b.add(i4, paramFragment);
              paramArrayList.remove(localFragment3);
              i4 += 1;
              i5 = i3;
            }
          }
          i2 -= 1;
          i1 = i4;
          paramFragment = localFragment1;
        }
        if (i3 != 0)
        {
          b.remove(i1);
          i1 -= 1;
        }
        for (;;)
        {
          break;
          a = 1;
          paramArrayList.add(localFragment2);
        }
        i2 = i1;
        break;
      case 1: 
      case 7: 
        paramArrayList.add(b);
        i2 = i1;
        paramFragment = localFragment1;
      }
      i1 = i2 + 1;
    }
    return localFragment1;
  }
  
  public void a()
  {
    if (u != null)
    {
      int i1 = 0;
      int i2 = u.size();
      while (i1 < i2)
      {
        ((Runnable)u.get(i1)).run();
        i1 += 1;
      }
      u = null;
    }
  }
  
  void a(int paramInt)
  {
    if (!i) {
      return;
    }
    Object localObject1;
    if (c.a)
    {
      localObject1 = new StringBuilder();
      ((StringBuilder)localObject1).append("Bump nesting in ");
      ((StringBuilder)localObject1).append(this);
      ((StringBuilder)localObject1).append(" by ");
      ((StringBuilder)localObject1).append(paramInt);
      Log.v("FragmentManager", ((StringBuilder)localObject1).toString());
    }
    int i2 = b.size();
    int i1 = 0;
    while (i1 < i2)
    {
      localObject1 = (a)b.get(i1);
      if (b != null)
      {
        Object localObject2 = b;
        mBackStackNesting += paramInt;
        if (c.a)
        {
          localObject2 = new StringBuilder();
          ((StringBuilder)localObject2).append("Bump nesting of ");
          ((StringBuilder)localObject2).append(b);
          ((StringBuilder)localObject2).append(" to ");
          ((StringBuilder)localObject2).append(b.mBackStackNesting);
          Log.v("FragmentManager", ((StringBuilder)localObject2).toString());
        }
      }
      i1 += 1;
    }
  }
  
  void a(Fragment.b paramB)
  {
    int i1 = 0;
    while (i1 < b.size())
    {
      a localA = (a)b.get(i1);
      if (b(localA)) {
        b.setOnStartEnterTransitionListener(paramB);
      }
      i1 += 1;
    }
  }
  
  void a(a paramA)
  {
    b.add(paramA);
    c = c;
    d = d;
    e = e;
    f = f;
  }
  
  public void a(String paramString, FileDescriptor paramFileDescriptor, PrintWriter paramPrintWriter, String[] paramArrayOfString)
  {
    a(paramString, paramPrintWriter, true);
  }
  
  public void a(String paramString, PrintWriter paramPrintWriter, boolean paramBoolean)
  {
    if (paramBoolean)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("mName=");
      paramPrintWriter.print(k);
      paramPrintWriter.print(" mIndex=");
      paramPrintWriter.print(m);
      paramPrintWriter.print(" mCommitted=");
      paramPrintWriter.println(l);
      if (g != 0)
      {
        paramPrintWriter.print(paramString);
        paramPrintWriter.print("mTransition=#");
        paramPrintWriter.print(Integer.toHexString(g));
        paramPrintWriter.print(" mTransitionStyle=#");
        paramPrintWriter.println(Integer.toHexString(h));
      }
      if ((c != 0) || (d != 0))
      {
        paramPrintWriter.print(paramString);
        paramPrintWriter.print("mEnterAnim=#");
        paramPrintWriter.print(Integer.toHexString(c));
        paramPrintWriter.print(" mExitAnim=#");
        paramPrintWriter.println(Integer.toHexString(d));
      }
      if ((e != 0) || (f != 0))
      {
        paramPrintWriter.print(paramString);
        paramPrintWriter.print("mPopEnterAnim=#");
        paramPrintWriter.print(Integer.toHexString(e));
        paramPrintWriter.print(" mPopExitAnim=#");
        paramPrintWriter.println(Integer.toHexString(f));
      }
      if ((n != 0) || (o != null))
      {
        paramPrintWriter.print(paramString);
        paramPrintWriter.print("mBreadCrumbTitleRes=#");
        paramPrintWriter.print(Integer.toHexString(n));
        paramPrintWriter.print(" mBreadCrumbTitleText=");
        paramPrintWriter.println(o);
      }
      if ((p != 0) || (q != null))
      {
        paramPrintWriter.print(paramString);
        paramPrintWriter.print("mBreadCrumbShortTitleRes=#");
        paramPrintWriter.print(Integer.toHexString(p));
        paramPrintWriter.print(" mBreadCrumbShortTitleText=");
        paramPrintWriter.println(q);
      }
    }
    if (!b.isEmpty())
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.println("Operations:");
      Object localObject = new StringBuilder();
      ((StringBuilder)localObject).append(paramString);
      ((StringBuilder)localObject).append("    ");
      ((StringBuilder)localObject).toString();
      int i2 = b.size();
      int i1 = 0;
      while (i1 < i2)
      {
        a localA = (a)b.get(i1);
        switch (a)
        {
        default: 
          localObject = new StringBuilder();
          ((StringBuilder)localObject).append("cmd=");
          ((StringBuilder)localObject).append(a);
          localObject = ((StringBuilder)localObject).toString();
          break;
        case 9: 
          localObject = "UNSET_PRIMARY_NAV";
          break;
        case 8: 
          localObject = "SET_PRIMARY_NAV";
          break;
        case 7: 
          localObject = "ATTACH";
          break;
        case 6: 
          localObject = "DETACH";
          break;
        case 5: 
          localObject = "SHOW";
          break;
        case 4: 
          localObject = "HIDE";
          break;
        case 3: 
          localObject = "REMOVE";
          break;
        case 2: 
          localObject = "REPLACE";
          break;
        case 1: 
          localObject = "ADD";
          break;
        case 0: 
          localObject = "NULL";
        }
        paramPrintWriter.print(paramString);
        paramPrintWriter.print("  Op #");
        paramPrintWriter.print(i1);
        paramPrintWriter.print(": ");
        paramPrintWriter.print((String)localObject);
        paramPrintWriter.print(" ");
        paramPrintWriter.println(b);
        if (paramBoolean)
        {
          if ((c != 0) || (d != 0))
          {
            paramPrintWriter.print(paramString);
            paramPrintWriter.print("enterAnim=#");
            paramPrintWriter.print(Integer.toHexString(c));
            paramPrintWriter.print(" exitAnim=#");
            paramPrintWriter.println(Integer.toHexString(d));
          }
          if ((e != 0) || (f != 0))
          {
            paramPrintWriter.print(paramString);
            paramPrintWriter.print("popEnterAnim=#");
            paramPrintWriter.print(Integer.toHexString(e));
            paramPrintWriter.print(" popExitAnim=#");
            paramPrintWriter.println(Integer.toHexString(f));
          }
        }
        i1 += 1;
      }
    }
  }
  
  boolean a(ArrayList<a> paramArrayList, int paramInt1, int paramInt2)
  {
    if (paramInt2 == paramInt1) {
      return false;
    }
    int i6 = b.size();
    int i2 = 0;
    int i4;
    for (int i3 = -1; i2 < i6; i3 = i4)
    {
      Object localObject = (a)b.get(i2);
      int i1;
      if (b != null) {
        i1 = b.mContainerId;
      } else {
        i1 = 0;
      }
      i4 = i3;
      if (i1 != 0)
      {
        i4 = i3;
        if (i1 != i3)
        {
          i3 = paramInt1;
          while (i3 < paramInt2)
          {
            localObject = (a)paramArrayList.get(i3);
            int i7 = b.size();
            i4 = 0;
            while (i4 < i7)
            {
              a localA = (a)b.get(i4);
              int i5;
              if (b != null) {
                i5 = b.mContainerId;
              } else {
                i5 = 0;
              }
              if (i5 == i1) {
                return true;
              }
              i4 += 1;
            }
            i3 += 1;
          }
          i4 = i1;
        }
      }
      i2 += 1;
    }
    return false;
  }
  
  public boolean a(ArrayList<a> paramArrayList, ArrayList<Boolean> paramArrayList1)
  {
    if (c.a)
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("Run: ");
      localStringBuilder.append(this);
      Log.v("FragmentManager", localStringBuilder.toString());
    }
    paramArrayList.add(this);
    paramArrayList1.add(Boolean.valueOf(false));
    if (i) {
      a.b(this);
    }
    return true;
  }
  
  public FragmentTransaction add(int paramInt, Fragment paramFragment)
  {
    a(paramInt, paramFragment, null, 1);
    return this;
  }
  
  public FragmentTransaction add(int paramInt, Fragment paramFragment, @Nullable String paramString)
  {
    a(paramInt, paramFragment, paramString, 1);
    return this;
  }
  
  public FragmentTransaction add(Fragment paramFragment, @Nullable String paramString)
  {
    a(0, paramFragment, paramString, 1);
    return this;
  }
  
  public FragmentTransaction addSharedElement(View paramView, String paramString)
  {
    if (f.a())
    {
      paramView = ViewCompat.getTransitionName(paramView);
      if (paramView != null)
      {
        if (r == null)
        {
          r = new ArrayList();
          s = new ArrayList();
        }
        else
        {
          if (s.contains(paramString)) {
            break label131;
          }
          if (r.contains(paramView)) {
            break label89;
          }
        }
        r.add(paramView);
        s.add(paramString);
        return this;
        label89:
        paramString = new StringBuilder();
        paramString.append("A shared element with the source name '");
        paramString.append(paramView);
        paramString.append(" has already been added to the transaction.");
        throw new IllegalArgumentException(paramString.toString());
        label131:
        paramView = new StringBuilder();
        paramView.append("A shared element with the target name '");
        paramView.append(paramString);
        paramView.append("' has already been added to the transaction.");
        throw new IllegalArgumentException(paramView.toString());
      }
      throw new IllegalArgumentException("Unique transitionNames are required for all sharedElements");
    }
    return this;
  }
  
  public FragmentTransaction addToBackStack(@Nullable String paramString)
  {
    if (j)
    {
      i = true;
      k = paramString;
      return this;
    }
    throw new IllegalStateException("This FragmentTransaction is not allowed to be added to the back stack.");
  }
  
  public FragmentTransaction attach(Fragment paramFragment)
  {
    a(new a(7, paramFragment));
    return this;
  }
  
  Fragment b(ArrayList<Fragment> paramArrayList, Fragment paramFragment)
  {
    int i1 = 0;
    while (i1 < b.size())
    {
      a localA = (a)b.get(i1);
      int i2 = a;
      if (i2 != 1)
      {
        if (i2 != 3) {}
        switch (i2)
        {
        default: 
          break;
        case 9: 
          paramFragment = b;
          break;
        case 8: 
          paramFragment = null;
          break;
        case 6: 
          paramArrayList.add(b);
          break;
        }
      }
      else
      {
        paramArrayList.remove(b);
      }
      i1 += 1;
    }
    return paramFragment;
  }
  
  void b()
  {
    int i2 = b.size();
    int i1 = 0;
    while (i1 < i2)
    {
      a localA = (a)b.get(i1);
      Object localObject = b;
      if (localObject != null) {
        ((Fragment)localObject).setNextTransition(g, h);
      }
      int i3 = a;
      if (i3 != 1)
      {
        switch (i3)
        {
        default: 
          localObject = new StringBuilder();
          ((StringBuilder)localObject).append("Unknown cmd: ");
          ((StringBuilder)localObject).append(a);
          throw new IllegalArgumentException(((StringBuilder)localObject).toString());
        case 9: 
          a.o(null);
          break;
        case 8: 
          a.o((Fragment)localObject);
          break;
        case 7: 
          ((Fragment)localObject).setNextAnim(c);
          a.l((Fragment)localObject);
          break;
        case 6: 
          ((Fragment)localObject).setNextAnim(d);
          a.k((Fragment)localObject);
          break;
        case 5: 
          ((Fragment)localObject).setNextAnim(c);
          a.j((Fragment)localObject);
          break;
        case 4: 
          ((Fragment)localObject).setNextAnim(d);
          a.i((Fragment)localObject);
          break;
        case 3: 
          ((Fragment)localObject).setNextAnim(d);
          a.h((Fragment)localObject);
          break;
        }
      }
      else
      {
        ((Fragment)localObject).setNextAnim(c);
        a.a((Fragment)localObject, false);
      }
      if ((!t) && (a != 1) && (localObject != null)) {
        a.e((Fragment)localObject);
      }
      i1 += 1;
    }
    if (!t) {
      a.a(a.l, true);
    }
  }
  
  void b(boolean paramBoolean)
  {
    int i1 = b.size() - 1;
    while (i1 >= 0)
    {
      a localA = (a)b.get(i1);
      Object localObject = b;
      if (localObject != null) {
        ((Fragment)localObject).setNextTransition(c.c(g), h);
      }
      int i2 = a;
      if (i2 != 1)
      {
        switch (i2)
        {
        default: 
          localObject = new StringBuilder();
          ((StringBuilder)localObject).append("Unknown cmd: ");
          ((StringBuilder)localObject).append(a);
          throw new IllegalArgumentException(((StringBuilder)localObject).toString());
        case 9: 
          a.o((Fragment)localObject);
          break;
        case 8: 
          a.o(null);
          break;
        case 7: 
          ((Fragment)localObject).setNextAnim(f);
          a.k((Fragment)localObject);
          break;
        case 6: 
          ((Fragment)localObject).setNextAnim(e);
          a.l((Fragment)localObject);
          break;
        case 5: 
          ((Fragment)localObject).setNextAnim(f);
          a.i((Fragment)localObject);
          break;
        case 4: 
          ((Fragment)localObject).setNextAnim(e);
          a.j((Fragment)localObject);
          break;
        case 3: 
          ((Fragment)localObject).setNextAnim(e);
          a.a((Fragment)localObject, false);
          break;
        }
      }
      else
      {
        ((Fragment)localObject).setNextAnim(f);
        a.h((Fragment)localObject);
      }
      if ((!t) && (a != 3) && (localObject != null)) {
        a.e((Fragment)localObject);
      }
      i1 -= 1;
    }
    if ((!t) && (paramBoolean)) {
      a.a(a.l, true);
    }
  }
  
  boolean b(int paramInt)
  {
    int i3 = b.size();
    int i1 = 0;
    while (i1 < i3)
    {
      a localA = (a)b.get(i1);
      int i2;
      if (b != null) {
        i2 = b.mContainerId;
      } else {
        i2 = 0;
      }
      if ((i2 != 0) && (i2 == paramInt)) {
        return true;
      }
      i1 += 1;
    }
    return false;
  }
  
  boolean c()
  {
    int i1 = 0;
    while (i1 < b.size())
    {
      if (b((a)b.get(i1))) {
        return true;
      }
      i1 += 1;
    }
    return false;
  }
  
  public int commit()
  {
    return a(false);
  }
  
  public int commitAllowingStateLoss()
  {
    return a(true);
  }
  
  public void commitNow()
  {
    disallowAddToBackStack();
    a.b(this, false);
  }
  
  public void commitNowAllowingStateLoss()
  {
    disallowAddToBackStack();
    a.b(this, true);
  }
  
  public FragmentTransaction detach(Fragment paramFragment)
  {
    a(new a(6, paramFragment));
    return this;
  }
  
  public FragmentTransaction disallowAddToBackStack()
  {
    if (!i)
    {
      j = false;
      return this;
    }
    throw new IllegalStateException("This transaction is already being added to the back stack");
  }
  
  @Nullable
  public CharSequence getBreadCrumbShortTitle()
  {
    if (p != 0) {
      return a.m.c().getText(p);
    }
    return q;
  }
  
  public int getBreadCrumbShortTitleRes()
  {
    return p;
  }
  
  @Nullable
  public CharSequence getBreadCrumbTitle()
  {
    if (n != 0) {
      return a.m.c().getText(n);
    }
    return o;
  }
  
  public int getBreadCrumbTitleRes()
  {
    return n;
  }
  
  public int getId()
  {
    return m;
  }
  
  @Nullable
  public String getName()
  {
    return k;
  }
  
  public FragmentTransaction hide(Fragment paramFragment)
  {
    a(new a(4, paramFragment));
    return this;
  }
  
  public boolean isAddToBackStackAllowed()
  {
    return j;
  }
  
  public boolean isEmpty()
  {
    return b.isEmpty();
  }
  
  public FragmentTransaction remove(Fragment paramFragment)
  {
    a(new a(3, paramFragment));
    return this;
  }
  
  public FragmentTransaction replace(int paramInt, Fragment paramFragment)
  {
    return replace(paramInt, paramFragment, null);
  }
  
  public FragmentTransaction replace(int paramInt, Fragment paramFragment, @Nullable String paramString)
  {
    if (paramInt != 0)
    {
      a(paramInt, paramFragment, paramString, 2);
      return this;
    }
    throw new IllegalArgumentException("Must use non-zero containerViewId");
  }
  
  public FragmentTransaction runOnCommit(Runnable paramRunnable)
  {
    if (paramRunnable != null)
    {
      disallowAddToBackStack();
      if (u == null) {
        u = new ArrayList();
      }
      u.add(paramRunnable);
      return this;
    }
    throw new IllegalArgumentException("runnable cannot be null");
  }
  
  public FragmentTransaction setAllowOptimization(boolean paramBoolean)
  {
    return setReorderingAllowed(paramBoolean);
  }
  
  public FragmentTransaction setBreadCrumbShortTitle(int paramInt)
  {
    p = paramInt;
    q = null;
    return this;
  }
  
  public FragmentTransaction setBreadCrumbShortTitle(@Nullable CharSequence paramCharSequence)
  {
    p = 0;
    q = paramCharSequence;
    return this;
  }
  
  public FragmentTransaction setBreadCrumbTitle(int paramInt)
  {
    n = paramInt;
    o = null;
    return this;
  }
  
  public FragmentTransaction setBreadCrumbTitle(@Nullable CharSequence paramCharSequence)
  {
    n = 0;
    o = paramCharSequence;
    return this;
  }
  
  public FragmentTransaction setCustomAnimations(int paramInt1, int paramInt2)
  {
    return setCustomAnimations(paramInt1, paramInt2, 0, 0);
  }
  
  public FragmentTransaction setCustomAnimations(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    c = paramInt1;
    d = paramInt2;
    e = paramInt3;
    f = paramInt4;
    return this;
  }
  
  public FragmentTransaction setPrimaryNavigationFragment(@Nullable Fragment paramFragment)
  {
    a(new a(8, paramFragment));
    return this;
  }
  
  public FragmentTransaction setReorderingAllowed(boolean paramBoolean)
  {
    t = paramBoolean;
    return this;
  }
  
  public FragmentTransaction setTransition(int paramInt)
  {
    g = paramInt;
    return this;
  }
  
  public FragmentTransaction setTransitionStyle(int paramInt)
  {
    h = paramInt;
    return this;
  }
  
  public FragmentTransaction show(Fragment paramFragment)
  {
    a(new a(5, paramFragment));
    return this;
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder(128);
    localStringBuilder.append("BackStackEntry{");
    localStringBuilder.append(Integer.toHexString(System.identityHashCode(this)));
    if (m >= 0)
    {
      localStringBuilder.append(" #");
      localStringBuilder.append(m);
    }
    if (k != null)
    {
      localStringBuilder.append(" ");
      localStringBuilder.append(k);
    }
    localStringBuilder.append("}");
    return localStringBuilder.toString();
  }
  
  static final class a
  {
    int a;
    Fragment b;
    int c;
    int d;
    int e;
    int f;
    
    a() {}
    
    a(int paramInt, Fragment paramFragment)
    {
      a = paramInt;
      b = paramFragment;
    }
  }
}
