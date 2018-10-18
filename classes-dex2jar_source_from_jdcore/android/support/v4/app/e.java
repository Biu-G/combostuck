package android.support.v4.app;

import android.arch.lifecycle.ViewModelStore;
import android.content.Context;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.util.Log;

final class e
  implements Parcelable
{
  public static final Parcelable.Creator<e> CREATOR = new Parcelable.Creator()
  {
    public e a(Parcel paramAnonymousParcel)
    {
      return new e(paramAnonymousParcel);
    }
    
    public e[] a(int paramAnonymousInt)
    {
      return new e[paramAnonymousInt];
    }
  };
  final String a;
  final int b;
  final boolean c;
  final int d;
  final int e;
  final String f;
  final boolean g;
  final boolean h;
  final Bundle i;
  final boolean j;
  Bundle k;
  Fragment l;
  
  e(Parcel paramParcel)
  {
    a = paramParcel.readString();
    b = paramParcel.readInt();
    int m = paramParcel.readInt();
    boolean bool2 = false;
    if (m != 0) {
      bool1 = true;
    } else {
      bool1 = false;
    }
    c = bool1;
    d = paramParcel.readInt();
    e = paramParcel.readInt();
    f = paramParcel.readString();
    if (paramParcel.readInt() != 0) {
      bool1 = true;
    } else {
      bool1 = false;
    }
    g = bool1;
    if (paramParcel.readInt() != 0) {
      bool1 = true;
    } else {
      bool1 = false;
    }
    h = bool1;
    i = paramParcel.readBundle();
    boolean bool1 = bool2;
    if (paramParcel.readInt() != 0) {
      bool1 = true;
    }
    j = bool1;
    k = paramParcel.readBundle();
  }
  
  e(Fragment paramFragment)
  {
    a = paramFragment.getClass().getName();
    b = mIndex;
    c = mFromLayout;
    d = mFragmentId;
    e = mContainerId;
    f = mTag;
    g = mRetainInstance;
    h = mDetached;
    i = mArguments;
    j = mHidden;
  }
  
  public Fragment a(FragmentHostCallback paramFragmentHostCallback, FragmentContainer paramFragmentContainer, Fragment paramFragment, FragmentManagerNonConfig paramFragmentManagerNonConfig, ViewModelStore paramViewModelStore)
  {
    if (l == null)
    {
      Context localContext = paramFragmentHostCallback.c();
      if (i != null) {
        i.setClassLoader(localContext.getClassLoader());
      }
      if (paramFragmentContainer != null) {
        l = paramFragmentContainer.instantiate(localContext, a, i);
      } else {
        l = Fragment.instantiate(localContext, a, i);
      }
      if (k != null)
      {
        k.setClassLoader(localContext.getClassLoader());
        l.mSavedFragmentState = k;
      }
      l.setIndex(b, paramFragment);
      l.mFromLayout = c;
      l.mRestored = true;
      l.mFragmentId = d;
      l.mContainerId = e;
      l.mTag = f;
      l.mRetainInstance = g;
      l.mDetached = h;
      l.mHidden = j;
      l.mFragmentManager = b;
      if (c.a)
      {
        paramFragmentHostCallback = new StringBuilder();
        paramFragmentHostCallback.append("Instantiated fragment ");
        paramFragmentHostCallback.append(l);
        Log.v("FragmentManager", paramFragmentHostCallback.toString());
      }
    }
    l.mChildNonConfig = paramFragmentManagerNonConfig;
    l.mViewModelStore = paramViewModelStore;
    return l;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    throw new Runtime("d2j fail translate: java.lang.RuntimeException: can not merge I and Z\n\tat com.googlecode.dex2jar.ir.TypeClass.merge(TypeClass.java:100)\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer$TypeRef.updateTypeClass(TypeTransformer.java:174)\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer$TypeAnalyze.provideAs(TypeTransformer.java:780)\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer$TypeAnalyze.e1expr(TypeTransformer.java:496)\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer$TypeAnalyze.exExpr(TypeTransformer.java:713)\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer$TypeAnalyze.exExpr(TypeTransformer.java:703)\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer$TypeAnalyze.enexpr(TypeTransformer.java:698)\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer$TypeAnalyze.exExpr(TypeTransformer.java:719)\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer$TypeAnalyze.exExpr(TypeTransformer.java:703)\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer$TypeAnalyze.s1stmt(TypeTransformer.java:810)\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer$TypeAnalyze.sxStmt(TypeTransformer.java:840)\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer$TypeAnalyze.analyze(TypeTransformer.java:206)\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer.transform(TypeTransformer.java:44)\n\tat com.googlecode.d2j.dex.Dex2jar$2.optimize(Dex2jar.java:162)\n\tat com.googlecode.d2j.dex.Dex2Asm.convertCode(Dex2Asm.java:414)\n\tat com.googlecode.d2j.dex.ExDex2Asm.convertCode(ExDex2Asm.java:42)\n\tat com.googlecode.d2j.dex.Dex2jar$2.convertCode(Dex2jar.java:128)\n\tat com.googlecode.d2j.dex.Dex2Asm.convertMethod(Dex2Asm.java:509)\n\tat com.googlecode.d2j.dex.Dex2Asm.convertClass(Dex2Asm.java:406)\n\tat com.googlecode.d2j.dex.Dex2Asm.convertDex(Dex2Asm.java:422)\n\tat com.googlecode.d2j.dex.Dex2jar.doTranslate(Dex2jar.java:172)\n\tat com.googlecode.d2j.dex.Dex2jar.to(Dex2jar.java:272)\n\tat com.googlecode.dex2jar.tools.Dex2jarCmd.doCommandLine(Dex2jarCmd.java:108)\n\tat com.googlecode.dex2jar.tools.BaseCmd.doMain(BaseCmd.java:288)\n\tat com.googlecode.dex2jar.tools.Dex2jarCmd.main(Dex2jarCmd.java:32)\n");
  }
}
