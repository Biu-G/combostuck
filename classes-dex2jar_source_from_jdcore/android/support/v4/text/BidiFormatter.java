package android.support.v4.text;

import android.text.SpannableStringBuilder;
import java.util.Locale;

public final class BidiFormatter
{
  static final TextDirectionHeuristicCompat a = TextDirectionHeuristicsCompat.FIRSTSTRONG_LTR;
  static final BidiFormatter b = new BidiFormatter(false, 2, a);
  static final BidiFormatter c = new BidiFormatter(true, 2, a);
  private static final String d = Character.toString('‎');
  private static final String e = Character.toString('‏');
  private final boolean f;
  private final int g;
  private final TextDirectionHeuristicCompat h;
  
  BidiFormatter(boolean paramBoolean, int paramInt, TextDirectionHeuristicCompat paramTextDirectionHeuristicCompat)
  {
    f = paramBoolean;
    g = paramInt;
    h = paramTextDirectionHeuristicCompat;
  }
  
  private static int a(CharSequence paramCharSequence)
  {
    return new a(paramCharSequence, false).b();
  }
  
  private String a(CharSequence paramCharSequence, TextDirectionHeuristicCompat paramTextDirectionHeuristicCompat)
  {
    boolean bool = paramTextDirectionHeuristicCompat.isRtl(paramCharSequence, 0, paramCharSequence.length());
    if ((!f) && ((bool) || (a(paramCharSequence) == 1))) {
      return d;
    }
    if ((f) && ((!bool) || (a(paramCharSequence) == -1))) {
      return e;
    }
    return "";
  }
  
  static boolean a(Locale paramLocale)
  {
    return TextUtilsCompat.getLayoutDirectionFromLocale(paramLocale) == 1;
  }
  
  private static int b(CharSequence paramCharSequence)
  {
    return new a(paramCharSequence, false).a();
  }
  
  private String b(CharSequence paramCharSequence, TextDirectionHeuristicCompat paramTextDirectionHeuristicCompat)
  {
    boolean bool = paramTextDirectionHeuristicCompat.isRtl(paramCharSequence, 0, paramCharSequence.length());
    if ((!f) && ((bool) || (b(paramCharSequence) == 1))) {
      return d;
    }
    if ((f) && ((!bool) || (b(paramCharSequence) == -1))) {
      return e;
    }
    return "";
  }
  
  public static BidiFormatter getInstance()
  {
    return new Builder().build();
  }
  
  public static BidiFormatter getInstance(Locale paramLocale)
  {
    return new Builder(paramLocale).build();
  }
  
  public static BidiFormatter getInstance(boolean paramBoolean)
  {
    return new Builder(paramBoolean).build();
  }
  
  public boolean getStereoReset()
  {
    return (g & 0x2) != 0;
  }
  
  public boolean isRtl(CharSequence paramCharSequence)
  {
    return h.isRtl(paramCharSequence, 0, paramCharSequence.length());
  }
  
  public boolean isRtl(String paramString)
  {
    return isRtl(paramString);
  }
  
  public boolean isRtlContext()
  {
    return f;
  }
  
  public CharSequence unicodeWrap(CharSequence paramCharSequence)
  {
    return unicodeWrap(paramCharSequence, h, true);
  }
  
  public CharSequence unicodeWrap(CharSequence paramCharSequence, TextDirectionHeuristicCompat paramTextDirectionHeuristicCompat)
  {
    return unicodeWrap(paramCharSequence, paramTextDirectionHeuristicCompat, true);
  }
  
  public CharSequence unicodeWrap(CharSequence paramCharSequence, TextDirectionHeuristicCompat paramTextDirectionHeuristicCompat, boolean paramBoolean)
  {
    if (paramCharSequence == null) {
      return null;
    }
    boolean bool = paramTextDirectionHeuristicCompat.isRtl(paramCharSequence, 0, paramCharSequence.length());
    SpannableStringBuilder localSpannableStringBuilder = new SpannableStringBuilder();
    if ((getStereoReset()) && (paramBoolean))
    {
      if (bool) {
        paramTextDirectionHeuristicCompat = TextDirectionHeuristicsCompat.RTL;
      } else {
        paramTextDirectionHeuristicCompat = TextDirectionHeuristicsCompat.LTR;
      }
      localSpannableStringBuilder.append(b(paramCharSequence, paramTextDirectionHeuristicCompat));
    }
    if (bool != f)
    {
      char c1;
      if (bool) {
        c1 = '‫';
      } else {
        c1 = '‪';
      }
      localSpannableStringBuilder.append(c1);
      localSpannableStringBuilder.append(paramCharSequence);
      localSpannableStringBuilder.append('‬');
    }
    else
    {
      localSpannableStringBuilder.append(paramCharSequence);
    }
    if (paramBoolean)
    {
      if (bool) {
        paramTextDirectionHeuristicCompat = TextDirectionHeuristicsCompat.RTL;
      } else {
        paramTextDirectionHeuristicCompat = TextDirectionHeuristicsCompat.LTR;
      }
      localSpannableStringBuilder.append(a(paramCharSequence, paramTextDirectionHeuristicCompat));
    }
    return localSpannableStringBuilder;
  }
  
  public CharSequence unicodeWrap(CharSequence paramCharSequence, boolean paramBoolean)
  {
    return unicodeWrap(paramCharSequence, h, paramBoolean);
  }
  
  public String unicodeWrap(String paramString)
  {
    return unicodeWrap(paramString, h, true);
  }
  
  public String unicodeWrap(String paramString, TextDirectionHeuristicCompat paramTextDirectionHeuristicCompat)
  {
    return unicodeWrap(paramString, paramTextDirectionHeuristicCompat, true);
  }
  
  public String unicodeWrap(String paramString, TextDirectionHeuristicCompat paramTextDirectionHeuristicCompat, boolean paramBoolean)
  {
    if (paramString == null) {
      return null;
    }
    return unicodeWrap(paramString, paramTextDirectionHeuristicCompat, paramBoolean).toString();
  }
  
  public String unicodeWrap(String paramString, boolean paramBoolean)
  {
    return unicodeWrap(paramString, h, paramBoolean);
  }
  
  public static final class Builder
  {
    private boolean a;
    private int b;
    private TextDirectionHeuristicCompat c;
    
    public Builder()
    {
      a(BidiFormatter.a(Locale.getDefault()));
    }
    
    public Builder(Locale paramLocale)
    {
      a(BidiFormatter.a(paramLocale));
    }
    
    public Builder(boolean paramBoolean)
    {
      a(paramBoolean);
    }
    
    private void a(boolean paramBoolean)
    {
      a = paramBoolean;
      c = BidiFormatter.a;
      b = 2;
    }
    
    private static BidiFormatter b(boolean paramBoolean)
    {
      if (paramBoolean) {
        return BidiFormatter.c;
      }
      return BidiFormatter.b;
    }
    
    public BidiFormatter build()
    {
      if ((b == 2) && (c == BidiFormatter.a)) {
        return b(a);
      }
      return new BidiFormatter(a, b, c);
    }
    
    public Builder setTextDirectionHeuristic(TextDirectionHeuristicCompat paramTextDirectionHeuristicCompat)
    {
      c = paramTextDirectionHeuristicCompat;
      return this;
    }
    
    public Builder stereoReset(boolean paramBoolean)
    {
      if (paramBoolean)
      {
        b |= 0x2;
        return this;
      }
      b &= 0xFFFFFFFD;
      return this;
    }
  }
  
  private static class a
  {
    private static final byte[] a = new byte['܀'];
    private final CharSequence b;
    private final boolean c;
    private final int d;
    private int e;
    private char f;
    
    static
    {
      int i = 0;
      while (i < 1792)
      {
        a[i] = Character.getDirectionality(i);
        i += 1;
      }
    }
    
    a(CharSequence paramCharSequence, boolean paramBoolean)
    {
      b = paramCharSequence;
      c = paramBoolean;
      d = paramCharSequence.length();
    }
    
    private static byte a(char paramChar)
    {
      if (paramChar < '܀') {
        return a[paramChar];
      }
      return Character.getDirectionality(paramChar);
    }
    
    private byte e()
    {
      int j = e;
      label133:
      while (e < d)
      {
        CharSequence localCharSequence = b;
        int k = e;
        e = (k + 1);
        f = localCharSequence.charAt(k);
        if (f == '>') {
          return 12;
        }
        if ((f == '"') || (f == '\''))
        {
          k = f;
          for (;;)
          {
            if (e >= d) {
              break label133;
            }
            localCharSequence = b;
            int m = e;
            e = (m + 1);
            int i = localCharSequence.charAt(m);
            f = i;
            if (i == k) {
              break;
            }
          }
        }
      }
      e = j;
      f = '<';
      return 13;
    }
    
    private byte f()
    {
      int j = e;
      label137:
      while (e > 0)
      {
        CharSequence localCharSequence = b;
        int k = e - 1;
        e = k;
        f = localCharSequence.charAt(k);
        if (f == '<') {
          return 12;
        }
        if (f == '>') {
          break;
        }
        if ((f == '"') || (f == '\''))
        {
          k = f;
          for (;;)
          {
            if (e <= 0) {
              break label137;
            }
            localCharSequence = b;
            int m = e - 1;
            e = m;
            int i = localCharSequence.charAt(m);
            f = i;
            if (i == k) {
              break;
            }
          }
        }
      }
      e = j;
      f = '>';
      return 13;
    }
    
    private byte g()
    {
      char c1;
      do
      {
        if (e >= d) {
          break;
        }
        CharSequence localCharSequence = b;
        int i = e;
        e = (i + 1);
        c1 = localCharSequence.charAt(i);
        f = c1;
      } while (c1 != ';');
      return 12;
    }
    
    private byte h()
    {
      int i = e;
      do
      {
        if (e <= 0) {
          break;
        }
        CharSequence localCharSequence = b;
        int j = e - 1;
        e = j;
        f = localCharSequence.charAt(j);
        if (f == '&') {
          return 12;
        }
      } while (f != ';');
      e = i;
      f = ';';
      return 13;
    }
    
    int a()
    {
      e = 0;
      int k = 0;
      int j = 0;
      int i = 0;
      while ((e < d) && (k == 0))
      {
        int m = c();
        if (m != 9) {
          switch (m)
          {
          default: 
            switch (m)
            {
            default: 
              break;
            case 18: 
              i -= 1;
              j = 0;
              break;
            case 16: 
            case 17: 
              i += 1;
              j = 1;
              break;
            case 14: 
            case 15: 
              i += 1;
              j = -1;
            }
            break;
          case 1: 
          case 2: 
            if (i == 0) {
              return 1;
            }
          case 0: 
            if (i == 0) {
              return -1;
            }
            k = i;
          }
        }
      }
      if (k == 0) {
        return 0;
      }
      if (j != 0) {
        return j;
      }
      while (e > 0) {
        switch (d())
        {
        default: 
          break;
        case 18: 
          i += 1;
          break;
        case 16: 
        case 17: 
          if (k == i) {
            return 1;
          }
          i -= 1;
          break;
        case 14: 
        case 15: 
          if (k == i) {
            return -1;
          }
          i -= 1;
        }
      }
      return 0;
    }
    
    int b()
    {
      e = d;
      int j = 0;
      int i = 0;
      while (e > 0)
      {
        int k = d();
        if (k != 9) {
          switch (k)
          {
          default: 
            switch (k)
            {
            default: 
              if (j != 0) {}
              break;
            case 18: 
              i += 1;
              break;
            case 16: 
            case 17: 
              if (j == i) {
                return 1;
              }
              i -= 1;
              break;
            case 14: 
            case 15: 
              if (j == i) {
                return -1;
              }
              i -= 1;
            }
            break;
          case 1: 
          case 2: 
            if (i == 0) {
              return 1;
            }
            if (j != 0) {}
            break;
          case 0: 
            if (i == 0) {
              return -1;
            }
            if (j == 0) {
              j = i;
            }
            break;
          }
        }
      }
      return 0;
    }
    
    byte c()
    {
      f = b.charAt(e);
      if (Character.isHighSurrogate(f))
      {
        int i = Character.codePointAt(b, e);
        e += Character.charCount(i);
        return Character.getDirectionality(i);
      }
      e += 1;
      byte b2 = a(f);
      byte b1 = b2;
      if (c)
      {
        if (f == '<') {
          return e();
        }
        b1 = b2;
        if (f == '&') {
          b1 = g();
        }
      }
      return b1;
    }
    
    byte d()
    {
      f = b.charAt(e - 1);
      if (Character.isLowSurrogate(f))
      {
        int i = Character.codePointBefore(b, e);
        e -= Character.charCount(i);
        return Character.getDirectionality(i);
      }
      e -= 1;
      byte b2 = a(f);
      byte b1 = b2;
      if (c)
      {
        if (f == '>') {
          return f();
        }
        b1 = b2;
        if (f == ';') {
          b1 = h();
        }
      }
      return b1;
    }
  }
}
