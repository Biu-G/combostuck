package android.support.v4.text;

import android.graphics.Typeface;
import android.os.Build.VERSION;
import android.os.LocaleList;
import android.support.annotation.GuardedBy;
import android.support.annotation.IntRange;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.RequiresApi;
import android.support.annotation.RestrictTo;
import android.support.annotation.UiThread;
import android.support.v4.os.TraceCompat;
import android.support.v4.util.ObjectsCompat;
import android.support.v4.util.Preconditions;
import android.text.Layout.Alignment;
import android.text.PrecomputedText;
import android.text.PrecomputedText.Params;
import android.text.PrecomputedText.Params.Builder;
import android.text.Spannable;
import android.text.SpannableString;
import android.text.StaticLayout;
import android.text.StaticLayout.Builder;
import android.text.TextDirectionHeuristic;
import android.text.TextDirectionHeuristics;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.style.MetricAffectingSpan;
import java.util.ArrayList;
import java.util.Locale;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.FutureTask;

public class PrecomputedTextCompat
  implements Spannable
{
  private static final Object a = new Object();
  @GuardedBy("sLock")
  @NonNull
  private static Executor b = null;
  @NonNull
  private final Spannable c;
  @NonNull
  private final Params d;
  @NonNull
  private final int[] e;
  @Nullable
  private final PrecomputedText f;
  
  @RequiresApi(28)
  private PrecomputedTextCompat(@NonNull PrecomputedText paramPrecomputedText, @NonNull Params paramParams)
  {
    c = paramPrecomputedText;
    d = paramParams;
    e = null;
    f = paramPrecomputedText;
  }
  
  private PrecomputedTextCompat(@NonNull CharSequence paramCharSequence, @NonNull Params paramParams, @NonNull int[] paramArrayOfInt)
  {
    c = new SpannableString(paramCharSequence);
    d = paramParams;
    e = paramArrayOfInt;
    f = null;
  }
  
  public static PrecomputedTextCompat create(@NonNull CharSequence paramCharSequence, @NonNull Params paramParams)
  {
    Preconditions.checkNotNull(paramCharSequence);
    Preconditions.checkNotNull(paramParams);
    for (;;)
    {
      int i;
      try
      {
        TraceCompat.beginSection("PrecomputedText");
        if ((Build.VERSION.SDK_INT >= 28) && (a != null))
        {
          paramCharSequence = new PrecomputedTextCompat(PrecomputedText.create(paramCharSequence, a), paramParams);
          return paramCharSequence;
        }
        ArrayList localArrayList = new ArrayList();
        int j = paramCharSequence.length();
        i = 0;
        if (i < j)
        {
          i = TextUtils.indexOf(paramCharSequence, '\n', i, j);
          if (i < 0)
          {
            i = j;
            localArrayList.add(Integer.valueOf(i));
          }
        }
        else
        {
          int[] arrayOfInt = new int[localArrayList.size()];
          i = 0;
          if (i < localArrayList.size())
          {
            arrayOfInt[i] = ((Integer)localArrayList.get(i)).intValue();
            i += 1;
            continue;
          }
          if (Build.VERSION.SDK_INT >= 23) {
            StaticLayout.Builder.obtain(paramCharSequence, 0, paramCharSequence.length(), paramParams.getTextPaint(), Integer.MAX_VALUE).setBreakStrategy(paramParams.getBreakStrategy()).setHyphenationFrequency(paramParams.getHyphenationFrequency()).setTextDirection(paramParams.getTextDirection()).build();
          } else if (Build.VERSION.SDK_INT >= 21) {
            new StaticLayout(paramCharSequence, paramParams.getTextPaint(), Integer.MAX_VALUE, Layout.Alignment.ALIGN_NORMAL, 1.0F, 0.0F, false);
          }
          paramCharSequence = new PrecomputedTextCompat(paramCharSequence, paramParams, arrayOfInt);
          return paramCharSequence;
        }
      }
      finally
      {
        TraceCompat.endSection();
      }
      i += 1;
    }
  }
  
  @UiThread
  public static Future<PrecomputedTextCompat> getTextFuture(@NonNull CharSequence paramCharSequence, @NonNull Params paramParams, @Nullable Executor arg2)
  {
    paramParams = new a(paramParams, paramCharSequence);
    paramCharSequence = ???;
    if (??? == null) {
      synchronized (a)
      {
        if (b == null) {
          b = Executors.newFixedThreadPool(1);
        }
        paramCharSequence = b;
      }
    }
    paramCharSequence.execute(paramParams);
    return paramParams;
  }
  
  public char charAt(int paramInt)
  {
    return c.charAt(paramInt);
  }
  
  @IntRange(from=0L)
  public int getParagraphCount()
  {
    if (Build.VERSION.SDK_INT >= 28) {
      return f.getParagraphCount();
    }
    return e.length;
  }
  
  @IntRange(from=0L)
  public int getParagraphEnd(@IntRange(from=0L) int paramInt)
  {
    Preconditions.checkArgumentInRange(paramInt, 0, getParagraphCount(), "paraIndex");
    if (Build.VERSION.SDK_INT >= 28) {
      return f.getParagraphEnd(paramInt);
    }
    return e[paramInt];
  }
  
  @IntRange(from=0L)
  public int getParagraphStart(@IntRange(from=0L) int paramInt)
  {
    Preconditions.checkArgumentInRange(paramInt, 0, getParagraphCount(), "paraIndex");
    if (Build.VERSION.SDK_INT >= 28) {
      return f.getParagraphStart(paramInt);
    }
    if (paramInt == 0) {
      return 0;
    }
    return e[(paramInt - 1)];
  }
  
  @NonNull
  public Params getParams()
  {
    return d;
  }
  
  @Nullable
  @RequiresApi(28)
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
  public PrecomputedText getPrecomputedText()
  {
    if ((c instanceof PrecomputedText)) {
      return (PrecomputedText)c;
    }
    return null;
  }
  
  public int getSpanEnd(Object paramObject)
  {
    return c.getSpanEnd(paramObject);
  }
  
  public int getSpanFlags(Object paramObject)
  {
    return c.getSpanFlags(paramObject);
  }
  
  public int getSpanStart(Object paramObject)
  {
    return c.getSpanStart(paramObject);
  }
  
  public <T> T[] getSpans(int paramInt1, int paramInt2, Class<T> paramClass)
  {
    if (Build.VERSION.SDK_INT >= 28) {
      return f.getSpans(paramInt1, paramInt2, paramClass);
    }
    return c.getSpans(paramInt1, paramInt2, paramClass);
  }
  
  public int length()
  {
    return c.length();
  }
  
  public int nextSpanTransition(int paramInt1, int paramInt2, Class paramClass)
  {
    return c.nextSpanTransition(paramInt1, paramInt2, paramClass);
  }
  
  public void removeSpan(Object paramObject)
  {
    if (!(paramObject instanceof MetricAffectingSpan))
    {
      if (Build.VERSION.SDK_INT >= 28)
      {
        f.removeSpan(paramObject);
        return;
      }
      c.removeSpan(paramObject);
      return;
    }
    throw new IllegalArgumentException("MetricAffectingSpan can not be removed from PrecomputedText.");
  }
  
  public void setSpan(Object paramObject, int paramInt1, int paramInt2, int paramInt3)
  {
    if (!(paramObject instanceof MetricAffectingSpan))
    {
      if (Build.VERSION.SDK_INT >= 28)
      {
        f.setSpan(paramObject, paramInt1, paramInt2, paramInt3);
        return;
      }
      c.setSpan(paramObject, paramInt1, paramInt2, paramInt3);
      return;
    }
    throw new IllegalArgumentException("MetricAffectingSpan can not be set to PrecomputedText.");
  }
  
  public CharSequence subSequence(int paramInt1, int paramInt2)
  {
    return c.subSequence(paramInt1, paramInt2);
  }
  
  public String toString()
  {
    return c.toString();
  }
  
  public static final class Params
  {
    final PrecomputedText.Params a;
    @NonNull
    private final TextPaint b;
    @Nullable
    private final TextDirectionHeuristic c;
    private final int d;
    private final int e;
    
    @RequiresApi(28)
    public Params(@NonNull PrecomputedText.Params paramParams)
    {
      b = paramParams.getTextPaint();
      c = paramParams.getTextDirection();
      d = paramParams.getBreakStrategy();
      e = paramParams.getHyphenationFrequency();
      a = paramParams;
    }
    
    Params(@NonNull TextPaint paramTextPaint, @NonNull TextDirectionHeuristic paramTextDirectionHeuristic, int paramInt1, int paramInt2)
    {
      if (Build.VERSION.SDK_INT >= 28) {
        a = new PrecomputedText.Params.Builder(paramTextPaint).setBreakStrategy(paramInt1).setHyphenationFrequency(paramInt2).setTextDirection(paramTextDirectionHeuristic).build();
      } else {
        a = null;
      }
      b = paramTextPaint;
      c = paramTextDirectionHeuristic;
      d = paramInt1;
      e = paramInt2;
    }
    
    public boolean equals(@Nullable Object paramObject)
    {
      if (paramObject == this) {
        return true;
      }
      if (paramObject != null)
      {
        if (!(paramObject instanceof Params)) {
          return false;
        }
        paramObject = (Params)paramObject;
        if (a != null) {
          return a.equals(a);
        }
        if (Build.VERSION.SDK_INT >= 23)
        {
          if (d != paramObject.getBreakStrategy()) {
            return false;
          }
          if (e != paramObject.getHyphenationFrequency()) {
            return false;
          }
        }
        if ((Build.VERSION.SDK_INT >= 18) && (c != paramObject.getTextDirection())) {
          return false;
        }
        if (b.getTextSize() != paramObject.getTextPaint().getTextSize()) {
          return false;
        }
        if (b.getTextScaleX() != paramObject.getTextPaint().getTextScaleX()) {
          return false;
        }
        if (b.getTextSkewX() != paramObject.getTextPaint().getTextSkewX()) {
          return false;
        }
        if (Build.VERSION.SDK_INT >= 21)
        {
          if (b.getLetterSpacing() != paramObject.getTextPaint().getLetterSpacing()) {
            return false;
          }
          if (!TextUtils.equals(b.getFontFeatureSettings(), paramObject.getTextPaint().getFontFeatureSettings())) {
            return false;
          }
        }
        if (b.getFlags() != paramObject.getTextPaint().getFlags()) {
          return false;
        }
        if (Build.VERSION.SDK_INT >= 24)
        {
          if (!b.getTextLocales().equals(paramObject.getTextPaint().getTextLocales())) {
            return false;
          }
        }
        else if ((Build.VERSION.SDK_INT >= 17) && (!b.getTextLocale().equals(paramObject.getTextPaint().getTextLocale()))) {
          return false;
        }
        if (b.getTypeface() == null)
        {
          if (paramObject.getTextPaint().getTypeface() != null) {
            return false;
          }
        }
        else if (!b.getTypeface().equals(paramObject.getTextPaint().getTypeface())) {
          return false;
        }
        return true;
      }
      return false;
    }
    
    @RequiresApi(23)
    public int getBreakStrategy()
    {
      return d;
    }
    
    @RequiresApi(23)
    public int getHyphenationFrequency()
    {
      return e;
    }
    
    @Nullable
    @RequiresApi(18)
    public TextDirectionHeuristic getTextDirection()
    {
      return c;
    }
    
    @NonNull
    public TextPaint getTextPaint()
    {
      return b;
    }
    
    public int hashCode()
    {
      if (Build.VERSION.SDK_INT >= 24) {
        return ObjectsCompat.hash(new Object[] { Float.valueOf(b.getTextSize()), Float.valueOf(b.getTextScaleX()), Float.valueOf(b.getTextSkewX()), Float.valueOf(b.getLetterSpacing()), Integer.valueOf(b.getFlags()), b.getTextLocales(), b.getTypeface(), Boolean.valueOf(b.isElegantTextHeight()), c, Integer.valueOf(d), Integer.valueOf(e) });
      }
      if (Build.VERSION.SDK_INT >= 21) {
        return ObjectsCompat.hash(new Object[] { Float.valueOf(b.getTextSize()), Float.valueOf(b.getTextScaleX()), Float.valueOf(b.getTextSkewX()), Float.valueOf(b.getLetterSpacing()), Integer.valueOf(b.getFlags()), b.getTextLocale(), b.getTypeface(), Boolean.valueOf(b.isElegantTextHeight()), c, Integer.valueOf(d), Integer.valueOf(e) });
      }
      if (Build.VERSION.SDK_INT >= 18) {
        return ObjectsCompat.hash(new Object[] { Float.valueOf(b.getTextSize()), Float.valueOf(b.getTextScaleX()), Float.valueOf(b.getTextSkewX()), Integer.valueOf(b.getFlags()), b.getTextLocale(), b.getTypeface(), c, Integer.valueOf(d), Integer.valueOf(e) });
      }
      if (Build.VERSION.SDK_INT >= 17) {
        return ObjectsCompat.hash(new Object[] { Float.valueOf(b.getTextSize()), Float.valueOf(b.getTextScaleX()), Float.valueOf(b.getTextSkewX()), Integer.valueOf(b.getFlags()), b.getTextLocale(), b.getTypeface(), c, Integer.valueOf(d), Integer.valueOf(e) });
      }
      return ObjectsCompat.hash(new Object[] { Float.valueOf(b.getTextSize()), Float.valueOf(b.getTextScaleX()), Float.valueOf(b.getTextSkewX()), Integer.valueOf(b.getFlags()), b.getTypeface(), c, Integer.valueOf(d), Integer.valueOf(e) });
    }
    
    public String toString()
    {
      StringBuilder localStringBuilder1 = new StringBuilder("{");
      StringBuilder localStringBuilder2 = new StringBuilder();
      localStringBuilder2.append("textSize=");
      localStringBuilder2.append(b.getTextSize());
      localStringBuilder1.append(localStringBuilder2.toString());
      localStringBuilder2 = new StringBuilder();
      localStringBuilder2.append(", textScaleX=");
      localStringBuilder2.append(b.getTextScaleX());
      localStringBuilder1.append(localStringBuilder2.toString());
      localStringBuilder2 = new StringBuilder();
      localStringBuilder2.append(", textSkewX=");
      localStringBuilder2.append(b.getTextSkewX());
      localStringBuilder1.append(localStringBuilder2.toString());
      if (Build.VERSION.SDK_INT >= 21)
      {
        localStringBuilder2 = new StringBuilder();
        localStringBuilder2.append(", letterSpacing=");
        localStringBuilder2.append(b.getLetterSpacing());
        localStringBuilder1.append(localStringBuilder2.toString());
        localStringBuilder2 = new StringBuilder();
        localStringBuilder2.append(", elegantTextHeight=");
        localStringBuilder2.append(b.isElegantTextHeight());
        localStringBuilder1.append(localStringBuilder2.toString());
      }
      if (Build.VERSION.SDK_INT >= 24)
      {
        localStringBuilder2 = new StringBuilder();
        localStringBuilder2.append(", textLocale=");
        localStringBuilder2.append(b.getTextLocales());
        localStringBuilder1.append(localStringBuilder2.toString());
      }
      else if (Build.VERSION.SDK_INT >= 17)
      {
        localStringBuilder2 = new StringBuilder();
        localStringBuilder2.append(", textLocale=");
        localStringBuilder2.append(b.getTextLocale());
        localStringBuilder1.append(localStringBuilder2.toString());
      }
      localStringBuilder2 = new StringBuilder();
      localStringBuilder2.append(", typeface=");
      localStringBuilder2.append(b.getTypeface());
      localStringBuilder1.append(localStringBuilder2.toString());
      if (Build.VERSION.SDK_INT >= 26)
      {
        localStringBuilder2 = new StringBuilder();
        localStringBuilder2.append(", variationSettings=");
        localStringBuilder2.append(b.getFontVariationSettings());
        localStringBuilder1.append(localStringBuilder2.toString());
      }
      localStringBuilder2 = new StringBuilder();
      localStringBuilder2.append(", textDir=");
      localStringBuilder2.append(c);
      localStringBuilder1.append(localStringBuilder2.toString());
      localStringBuilder2 = new StringBuilder();
      localStringBuilder2.append(", breakStrategy=");
      localStringBuilder2.append(d);
      localStringBuilder1.append(localStringBuilder2.toString());
      localStringBuilder2 = new StringBuilder();
      localStringBuilder2.append(", hyphenationFrequency=");
      localStringBuilder2.append(e);
      localStringBuilder1.append(localStringBuilder2.toString());
      localStringBuilder1.append("}");
      return localStringBuilder1.toString();
    }
    
    public static class Builder
    {
      @NonNull
      private final TextPaint a;
      private TextDirectionHeuristic b;
      private int c;
      private int d;
      
      public Builder(@NonNull TextPaint paramTextPaint)
      {
        a = paramTextPaint;
        if (Build.VERSION.SDK_INT >= 23)
        {
          c = 1;
          d = 1;
        }
        else
        {
          d = 0;
          c = 0;
        }
        if (Build.VERSION.SDK_INT >= 18)
        {
          b = TextDirectionHeuristics.FIRSTSTRONG_LTR;
          return;
        }
        b = null;
      }
      
      @NonNull
      public PrecomputedTextCompat.Params build()
      {
        return new PrecomputedTextCompat.Params(a, b, c, d);
      }
      
      @RequiresApi(23)
      public Builder setBreakStrategy(int paramInt)
      {
        c = paramInt;
        return this;
      }
      
      @RequiresApi(23)
      public Builder setHyphenationFrequency(int paramInt)
      {
        d = paramInt;
        return this;
      }
      
      @RequiresApi(18)
      public Builder setTextDirection(@NonNull TextDirectionHeuristic paramTextDirectionHeuristic)
      {
        b = paramTextDirectionHeuristic;
        return this;
      }
    }
  }
  
  private static class a
    extends FutureTask<PrecomputedTextCompat>
  {
    a(@NonNull PrecomputedTextCompat.Params paramParams, @NonNull CharSequence paramCharSequence)
    {
      super();
    }
    
    private static class a
      implements Callable<PrecomputedTextCompat>
    {
      private PrecomputedTextCompat.Params a;
      private CharSequence b;
      
      a(@NonNull PrecomputedTextCompat.Params paramParams, @NonNull CharSequence paramCharSequence)
      {
        a = paramParams;
        b = paramCharSequence;
      }
      
      public PrecomputedTextCompat a()
        throws Exception
      {
        return PrecomputedTextCompat.create(b, a);
      }
    }
  }
}
