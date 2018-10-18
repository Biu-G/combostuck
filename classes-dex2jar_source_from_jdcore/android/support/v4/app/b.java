package android.support.v4.app;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.text.TextUtils;
import android.util.Log;
import android.util.SparseArray;
import java.util.ArrayList;

final class b
  implements Parcelable
{
  public static final Parcelable.Creator<b> CREATOR = new Parcelable.Creator()
  {
    public b a(Parcel paramAnonymousParcel)
    {
      return new b(paramAnonymousParcel);
    }
    
    public b[] a(int paramAnonymousInt)
    {
      return new b[paramAnonymousInt];
    }
  };
  final int[] a;
  final int b;
  final int c;
  final String d;
  final int e;
  final int f;
  final CharSequence g;
  final int h;
  final CharSequence i;
  final ArrayList<String> j;
  final ArrayList<String> k;
  final boolean l;
  
  public b(Parcel paramParcel)
  {
    a = paramParcel.createIntArray();
    b = paramParcel.readInt();
    c = paramParcel.readInt();
    d = paramParcel.readString();
    e = paramParcel.readInt();
    f = paramParcel.readInt();
    g = ((CharSequence)TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(paramParcel));
    h = paramParcel.readInt();
    i = ((CharSequence)TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(paramParcel));
    j = paramParcel.createStringArrayList();
    k = paramParcel.createStringArrayList();
    boolean bool;
    if (paramParcel.readInt() != 0) {
      bool = true;
    } else {
      bool = false;
    }
    l = bool;
  }
  
  public b(a paramA)
  {
    int i1 = b.size();
    a = new int[i1 * 6];
    if (i)
    {
      int m = 0;
      int n = 0;
      while (m < i1)
      {
        a.a localA = (a.a)b.get(m);
        int[] arrayOfInt = a;
        int i2 = n + 1;
        arrayOfInt[n] = a;
        arrayOfInt = a;
        int i3 = i2 + 1;
        if (b != null) {
          n = b.mIndex;
        } else {
          n = -1;
        }
        arrayOfInt[i2] = n;
        arrayOfInt = a;
        n = i3 + 1;
        arrayOfInt[i3] = c;
        arrayOfInt = a;
        i2 = n + 1;
        arrayOfInt[n] = d;
        arrayOfInt = a;
        n = i2 + 1;
        arrayOfInt[i2] = e;
        a[n] = f;
        m += 1;
        n += 1;
      }
      b = g;
      c = h;
      d = k;
      e = m;
      f = n;
      g = o;
      h = p;
      i = q;
      j = r;
      k = s;
      l = t;
      return;
    }
    throw new IllegalStateException("Not on back stack");
  }
  
  public a a(c paramC)
  {
    a localA = new a(paramC);
    int n = 0;
    int m = 0;
    while (n < a.length)
    {
      a.a localA1 = new a.a();
      Object localObject = a;
      int i1 = n + 1;
      a = localObject[n];
      if (c.a)
      {
        localObject = new StringBuilder();
        ((StringBuilder)localObject).append("Instantiate ");
        ((StringBuilder)localObject).append(localA);
        ((StringBuilder)localObject).append(" op #");
        ((StringBuilder)localObject).append(m);
        ((StringBuilder)localObject).append(" base fragment #");
        ((StringBuilder)localObject).append(a[i1]);
        Log.v("FragmentManager", ((StringBuilder)localObject).toString());
      }
      localObject = a;
      n = i1 + 1;
      i1 = localObject[i1];
      if (i1 >= 0) {
        b = ((Fragment)f.get(i1));
      } else {
        b = null;
      }
      localObject = a;
      i1 = n + 1;
      c = localObject[n];
      localObject = a;
      n = i1 + 1;
      d = localObject[i1];
      localObject = a;
      i1 = n + 1;
      e = localObject[n];
      f = a[i1];
      c = c;
      d = d;
      e = e;
      f = f;
      localA.a(localA1);
      m += 1;
      n = i1 + 1;
    }
    g = b;
    h = c;
    k = d;
    m = e;
    i = true;
    n = f;
    o = g;
    p = h;
    q = i;
    r = j;
    s = k;
    t = l;
    localA.a(1);
    return localA;
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
