package android.support.v4.text;

import java.nio.CharBuffer;
import java.util.Locale;

public final class TextDirectionHeuristicsCompat
{
  public static final TextDirectionHeuristicCompat ANYRTL_LTR = new e(a.a, false);
  public static final TextDirectionHeuristicCompat FIRSTSTRONG_LTR;
  public static final TextDirectionHeuristicCompat FIRSTSTRONG_RTL;
  public static final TextDirectionHeuristicCompat LOCALE = f.a;
  public static final TextDirectionHeuristicCompat LTR = new e(null, false);
  public static final TextDirectionHeuristicCompat RTL = new e(null, true);
  
  static
  {
    FIRSTSTRONG_LTR = new e(b.a, false);
    FIRSTSTRONG_RTL = new e(b.a, true);
  }
  
  private TextDirectionHeuristicsCompat() {}
  
  static int a(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      return 2;
    case 1: 
    case 2: 
      return 0;
    }
    return 1;
  }
  
  static int b(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      switch (paramInt)
      {
      default: 
        return 2;
      }
    case 1: 
    case 2: 
      return 0;
    }
    return 1;
  }
  
  private static class a
    implements TextDirectionHeuristicsCompat.c
  {
    static final a a = new a(true);
    static final a b = new a(false);
    private final boolean c;
    
    private a(boolean paramBoolean)
    {
      c = paramBoolean;
    }
    
    public int a(CharSequence paramCharSequence, int paramInt1, int paramInt2)
    {
      throw new Runtime("d2j fail translate: java.lang.RuntimeException: can not merge I and Z\n\tat com.googlecode.dex2jar.ir.TypeClass.merge(TypeClass.java:100)\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer$TypeRef.updateTypeClass(TypeTransformer.java:174)\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer$TypeAnalyze.provideAs(TypeTransformer.java:780)\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer$TypeAnalyze.e1expr(TypeTransformer.java:496)\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer$TypeAnalyze.exExpr(TypeTransformer.java:713)\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer$TypeAnalyze.exExpr(TypeTransformer.java:703)\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer$TypeAnalyze.s1stmt(TypeTransformer.java:810)\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer$TypeAnalyze.sxStmt(TypeTransformer.java:840)\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer$TypeAnalyze.analyze(TypeTransformer.java:206)\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer.transform(TypeTransformer.java:44)\n\tat com.googlecode.d2j.dex.Dex2jar$2.optimize(Dex2jar.java:162)\n\tat com.googlecode.d2j.dex.Dex2Asm.convertCode(Dex2Asm.java:414)\n\tat com.googlecode.d2j.dex.ExDex2Asm.convertCode(ExDex2Asm.java:42)\n\tat com.googlecode.d2j.dex.Dex2jar$2.convertCode(Dex2jar.java:128)\n\tat com.googlecode.d2j.dex.Dex2Asm.convertMethod(Dex2Asm.java:509)\n\tat com.googlecode.d2j.dex.Dex2Asm.convertClass(Dex2Asm.java:406)\n\tat com.googlecode.d2j.dex.Dex2Asm.convertDex(Dex2Asm.java:422)\n\tat com.googlecode.d2j.dex.Dex2jar.doTranslate(Dex2jar.java:172)\n\tat com.googlecode.d2j.dex.Dex2jar.to(Dex2jar.java:272)\n\tat com.googlecode.dex2jar.tools.Dex2jarCmd.doCommandLine(Dex2jarCmd.java:108)\n\tat com.googlecode.dex2jar.tools.BaseCmd.doMain(BaseCmd.java:288)\n\tat com.googlecode.dex2jar.tools.Dex2jarCmd.main(Dex2jarCmd.java:32)\n");
    }
  }
  
  private static class b
    implements TextDirectionHeuristicsCompat.c
  {
    static final b a = new b();
    
    private b() {}
    
    public int a(CharSequence paramCharSequence, int paramInt1, int paramInt2)
    {
      int j = 2;
      int i = paramInt1;
      while ((i < paramInt2 + paramInt1) && (j == 2))
      {
        j = TextDirectionHeuristicsCompat.b(Character.getDirectionality(paramCharSequence.charAt(i)));
        i += 1;
      }
      return j;
    }
  }
  
  private static abstract interface c
  {
    public abstract int a(CharSequence paramCharSequence, int paramInt1, int paramInt2);
  }
  
  private static abstract class d
    implements TextDirectionHeuristicCompat
  {
    private final TextDirectionHeuristicsCompat.c a;
    
    d(TextDirectionHeuristicsCompat.c paramC)
    {
      a = paramC;
    }
    
    private boolean a(CharSequence paramCharSequence, int paramInt1, int paramInt2)
    {
      switch (a.a(paramCharSequence, paramInt1, paramInt2))
      {
      default: 
        return a();
      case 1: 
        return false;
      }
      return true;
    }
    
    protected abstract boolean a();
    
    public boolean isRtl(CharSequence paramCharSequence, int paramInt1, int paramInt2)
    {
      if ((paramCharSequence != null) && (paramInt1 >= 0) && (paramInt2 >= 0) && (paramCharSequence.length() - paramInt2 >= paramInt1))
      {
        if (a == null) {
          return a();
        }
        return a(paramCharSequence, paramInt1, paramInt2);
      }
      throw new IllegalArgumentException();
    }
    
    public boolean isRtl(char[] paramArrayOfChar, int paramInt1, int paramInt2)
    {
      return isRtl(CharBuffer.wrap(paramArrayOfChar), paramInt1, paramInt2);
    }
  }
  
  private static class e
    extends TextDirectionHeuristicsCompat.d
  {
    private final boolean a;
    
    e(TextDirectionHeuristicsCompat.c paramC, boolean paramBoolean)
    {
      super();
      a = paramBoolean;
    }
    
    protected boolean a()
    {
      return a;
    }
  }
  
  private static class f
    extends TextDirectionHeuristicsCompat.d
  {
    static final f a = new f();
    
    f()
    {
      super();
    }
    
    protected boolean a()
    {
      return TextUtilsCompat.getLayoutDirectionFromLocale(Locale.getDefault()) == 1;
    }
  }
}
