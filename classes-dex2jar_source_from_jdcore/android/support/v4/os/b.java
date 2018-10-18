package android.support.v4.os;

import android.os.Build.VERSION;
import android.support.annotation.GuardedBy;
import android.support.annotation.IntRange;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.RestrictTo;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Locale;

@RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
final class b
{
  private static final Locale[] c = new Locale[0];
  private static final b d = new b(new Locale[0]);
  private static final Locale e = new Locale("en", "XA");
  private static final Locale f = new Locale("ar", "XB");
  private static final Locale g = a.a("en-Latn");
  private static final Object h = new Object();
  @GuardedBy("sLock")
  private static b i = null;
  @GuardedBy("sLock")
  private static b j = null;
  @GuardedBy("sLock")
  private static b k = null;
  @GuardedBy("sLock")
  private static Locale l = null;
  private final Locale[] a;
  @NonNull
  private final String b;
  
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
  b(@NonNull Locale... paramVarArgs)
  {
    if (paramVarArgs.length == 0)
    {
      a = c;
      b = "";
      return;
    }
    Locale[] arrayOfLocale = new Locale[paramVarArgs.length];
    HashSet localHashSet = new HashSet();
    StringBuilder localStringBuilder = new StringBuilder();
    int m = 0;
    while (m < paramVarArgs.length)
    {
      Locale localLocale = paramVarArgs[m];
      if (localLocale != null)
      {
        if (!localHashSet.contains(localLocale))
        {
          localLocale = (Locale)localLocale.clone();
          arrayOfLocale[m] = localLocale;
          localStringBuilder.append(a.a(localLocale));
          if (m < paramVarArgs.length - 1) {
            localStringBuilder.append(',');
          }
          localHashSet.add(localLocale);
          m += 1;
        }
        else
        {
          paramVarArgs = new StringBuilder();
          paramVarArgs.append("list[");
          paramVarArgs.append(m);
          paramVarArgs.append("] is a repetition");
          throw new IllegalArgumentException(paramVarArgs.toString());
        }
      }
      else
      {
        paramVarArgs = new StringBuilder();
        paramVarArgs.append("list[");
        paramVarArgs.append(m);
        paramVarArgs.append("] is null");
        throw new NullPointerException(paramVarArgs.toString());
      }
    }
    a = arrayOfLocale;
    b = localStringBuilder.toString();
  }
  
  private int a(Collection<String> paramCollection, boolean paramBoolean)
  {
    if (a.length == 1) {
      return 0;
    }
    if (a.length == 0) {
      return -1;
    }
    int m;
    if (paramBoolean)
    {
      m = d(g);
      if (m == 0) {
        return 0;
      }
      if (m < Integer.MAX_VALUE) {}
    }
    else
    {
      m = Integer.MAX_VALUE;
    }
    paramCollection = paramCollection.iterator();
    while (paramCollection.hasNext())
    {
      int n = d(a.a((String)paramCollection.next()));
      if (n == 0) {
        return 0;
      }
      if (n < m) {
        m = n;
      }
    }
    if (m == Integer.MAX_VALUE) {
      return 0;
    }
    return m;
  }
  
  @IntRange(from=0L, to=1L)
  private static int a(Locale paramLocale1, Locale paramLocale2)
  {
    throw new Runtime("d2j fail translate: java.lang.RuntimeException: can not merge I and Z\n\tat com.googlecode.dex2jar.ir.TypeClass.merge(TypeClass.java:100)\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer$TypeRef.updateTypeClass(TypeTransformer.java:174)\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer$TypeAnalyze.provideAs(TypeTransformer.java:780)\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer$TypeAnalyze.enexpr(TypeTransformer.java:659)\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer$TypeAnalyze.exExpr(TypeTransformer.java:719)\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer$TypeAnalyze.exExpr(TypeTransformer.java:703)\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer$TypeAnalyze.s1stmt(TypeTransformer.java:810)\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer$TypeAnalyze.sxStmt(TypeTransformer.java:840)\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer$TypeAnalyze.analyze(TypeTransformer.java:206)\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer.transform(TypeTransformer.java:44)\n\tat com.googlecode.d2j.dex.Dex2jar$2.optimize(Dex2jar.java:162)\n\tat com.googlecode.d2j.dex.Dex2Asm.convertCode(Dex2Asm.java:414)\n\tat com.googlecode.d2j.dex.ExDex2Asm.convertCode(ExDex2Asm.java:42)\n\tat com.googlecode.d2j.dex.Dex2jar$2.convertCode(Dex2jar.java:128)\n\tat com.googlecode.d2j.dex.Dex2Asm.convertMethod(Dex2Asm.java:509)\n\tat com.googlecode.d2j.dex.Dex2Asm.convertClass(Dex2Asm.java:406)\n\tat com.googlecode.d2j.dex.Dex2Asm.convertDex(Dex2Asm.java:422)\n\tat com.googlecode.d2j.dex.Dex2jar.doTranslate(Dex2jar.java:172)\n\tat com.googlecode.d2j.dex.Dex2jar.to(Dex2jar.java:272)\n\tat com.googlecode.dex2jar.tools.Dex2jarCmd.doCommandLine(Dex2jarCmd.java:108)\n\tat com.googlecode.dex2jar.tools.BaseCmd.doMain(BaseCmd.java:288)\n\tat com.googlecode.dex2jar.tools.Dex2jarCmd.main(Dex2jarCmd.java:32)\n");
  }
  
  private static String b(Locale paramLocale)
  {
    if (Build.VERSION.SDK_INT >= 21)
    {
      paramLocale = paramLocale.getScript();
      if (!paramLocale.isEmpty()) {
        return paramLocale;
      }
      return "";
    }
    return "";
  }
  
  private Locale b(Collection<String> paramCollection, boolean paramBoolean)
  {
    int m = a(paramCollection, paramBoolean);
    if (m == -1) {
      return null;
    }
    return a[m];
  }
  
  private static boolean c(Locale paramLocale)
  {
    return (e.equals(paramLocale)) || (f.equals(paramLocale));
  }
  
  private int d(Locale paramLocale)
  {
    int m = 0;
    while (m < a.length)
    {
      if (a(paramLocale, a[m]) > 0) {
        return m;
      }
      m += 1;
    }
    return Integer.MAX_VALUE;
  }
  
  @IntRange(from=-1L)
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
  int a(Locale paramLocale)
  {
    int m = 0;
    while (m < a.length)
    {
      if (a[m].equals(paramLocale)) {
        return m;
      }
      m += 1;
    }
    return -1;
  }
  
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
  Locale a(int paramInt)
  {
    if ((paramInt >= 0) && (paramInt < a.length)) {
      return a[paramInt];
    }
    return null;
  }
  
  @Nullable
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
  Locale a(String[] paramArrayOfString)
  {
    return b(Arrays.asList(paramArrayOfString), false);
  }
  
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
  boolean a()
  {
    return a.length == 0;
  }
  
  @IntRange(from=0L)
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
  int b()
  {
    return a.length;
  }
  
  @NonNull
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
  String c()
  {
    return b;
  }
  
  public boolean equals(Object paramObject)
  {
    if (paramObject == this) {
      return true;
    }
    if (!(paramObject instanceof b)) {
      return false;
    }
    paramObject = a;
    if (a.length != paramObject.length) {
      return false;
    }
    int m = 0;
    while (m < a.length)
    {
      if (!a[m].equals(paramObject[m])) {
        return false;
      }
      m += 1;
    }
    return true;
  }
  
  public int hashCode()
  {
    int n = 1;
    int m = 0;
    while (m < a.length)
    {
      n = n * 31 + a[m].hashCode();
      m += 1;
    }
    return n;
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("[");
    int m = 0;
    while (m < a.length)
    {
      localStringBuilder.append(a[m]);
      if (m < a.length - 1) {
        localStringBuilder.append(',');
      }
      m += 1;
    }
    localStringBuilder.append("]");
    return localStringBuilder.toString();
  }
}
