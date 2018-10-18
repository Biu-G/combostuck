package android.support.v4.os;

import android.os.Build.VERSION;
import android.os.LocaleList;
import android.support.annotation.IntRange;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.RequiresApi;
import android.support.annotation.Size;
import java.util.Locale;

public final class LocaleListCompat
{
  static final c a = new b();
  private static final LocaleListCompat b = new LocaleListCompat();
  
  static
  {
    if (Build.VERSION.SDK_INT >= 24)
    {
      a = new a();
      return;
    }
  }
  
  private LocaleListCompat() {}
  
  @RequiresApi(24)
  private void a(LocaleList paramLocaleList)
  {
    int j = paramLocaleList.size();
    if (j > 0)
    {
      Locale[] arrayOfLocale = new Locale[j];
      int i = 0;
      while (i < j)
      {
        arrayOfLocale[i] = paramLocaleList.get(i);
        i += 1;
      }
      a.a(arrayOfLocale);
    }
  }
  
  private void a(Locale... paramVarArgs)
  {
    a.a(paramVarArgs);
  }
  
  public static LocaleListCompat create(@NonNull Locale... paramVarArgs)
  {
    LocaleListCompat localLocaleListCompat = new LocaleListCompat();
    localLocaleListCompat.a(paramVarArgs);
    return localLocaleListCompat;
  }
  
  @NonNull
  public static LocaleListCompat forLanguageTags(@Nullable String paramString)
  {
    if ((paramString != null) && (!paramString.isEmpty()))
    {
      String[] arrayOfString = paramString.split(",", -1);
      Locale[] arrayOfLocale = new Locale[arrayOfString.length];
      int i = 0;
      while (i < arrayOfLocale.length)
      {
        if (Build.VERSION.SDK_INT >= 21) {
          paramString = Locale.forLanguageTag(arrayOfString[i]);
        } else {
          paramString = a.a(arrayOfString[i]);
        }
        arrayOfLocale[i] = paramString;
        i += 1;
      }
      paramString = new LocaleListCompat();
      paramString.a(arrayOfLocale);
      return paramString;
    }
    return getEmptyLocaleList();
  }
  
  @NonNull
  @Size(min=1L)
  public static LocaleListCompat getAdjustedDefault()
  {
    if (Build.VERSION.SDK_INT >= 24) {
      return wrap(LocaleList.getAdjustedDefault());
    }
    return create(new Locale[] { Locale.getDefault() });
  }
  
  @NonNull
  @Size(min=1L)
  public static LocaleListCompat getDefault()
  {
    if (Build.VERSION.SDK_INT >= 24) {
      return wrap(LocaleList.getDefault());
    }
    return create(new Locale[] { Locale.getDefault() });
  }
  
  @NonNull
  public static LocaleListCompat getEmptyLocaleList()
  {
    return b;
  }
  
  @RequiresApi(24)
  public static LocaleListCompat wrap(Object paramObject)
  {
    LocaleListCompat localLocaleListCompat = new LocaleListCompat();
    if ((paramObject instanceof LocaleList)) {
      localLocaleListCompat.a((LocaleList)paramObject);
    }
    return localLocaleListCompat;
  }
  
  public boolean equals(Object paramObject)
  {
    return a.equals(paramObject);
  }
  
  public Locale get(int paramInt)
  {
    return a.a(paramInt);
  }
  
  public Locale getFirstMatch(String[] paramArrayOfString)
  {
    return a.a(paramArrayOfString);
  }
  
  public int hashCode()
  {
    return a.hashCode();
  }
  
  @IntRange(from=-1L)
  public int indexOf(Locale paramLocale)
  {
    return a.a(paramLocale);
  }
  
  public boolean isEmpty()
  {
    return a.b();
  }
  
  @IntRange(from=0L)
  public int size()
  {
    return a.c();
  }
  
  @NonNull
  public String toLanguageTags()
  {
    return a.d();
  }
  
  public String toString()
  {
    return a.toString();
  }
  
  @Nullable
  public Object unwrap()
  {
    return a.a();
  }
  
  @RequiresApi(24)
  static class a
    implements c
  {
    private LocaleList a = new LocaleList(new Locale[0]);
    
    a() {}
    
    @IntRange(from=-1L)
    public int a(Locale paramLocale)
    {
      return a.indexOf(paramLocale);
    }
    
    public Object a()
    {
      return a;
    }
    
    public Locale a(int paramInt)
    {
      return a.get(paramInt);
    }
    
    @Nullable
    public Locale a(String[] paramArrayOfString)
    {
      if (a != null) {
        return a.getFirstMatch(paramArrayOfString);
      }
      return null;
    }
    
    public void a(@NonNull Locale... paramVarArgs)
    {
      a = new LocaleList(paramVarArgs);
    }
    
    public boolean b()
    {
      return a.isEmpty();
    }
    
    @IntRange(from=0L)
    public int c()
    {
      return a.size();
    }
    
    public String d()
    {
      return a.toLanguageTags();
    }
    
    public boolean equals(Object paramObject)
    {
      return a.equals(((LocaleListCompat)paramObject).unwrap());
    }
    
    public int hashCode()
    {
      return a.hashCode();
    }
    
    public String toString()
    {
      return a.toString();
    }
  }
  
  static class b
    implements c
  {
    private b a = new b(new Locale[0]);
    
    b() {}
    
    @IntRange(from=-1L)
    public int a(Locale paramLocale)
    {
      return a.a(paramLocale);
    }
    
    public Object a()
    {
      return a;
    }
    
    public Locale a(int paramInt)
    {
      return a.a(paramInt);
    }
    
    @Nullable
    public Locale a(String[] paramArrayOfString)
    {
      if (a != null) {
        return a.a(paramArrayOfString);
      }
      return null;
    }
    
    public void a(@NonNull Locale... paramVarArgs)
    {
      a = new b(paramVarArgs);
    }
    
    public boolean b()
    {
      return a.a();
    }
    
    @IntRange(from=0L)
    public int c()
    {
      return a.b();
    }
    
    public String d()
    {
      return a.c();
    }
    
    public boolean equals(Object paramObject)
    {
      return a.equals(((LocaleListCompat)paramObject).unwrap());
    }
    
    public int hashCode()
    {
      return a.hashCode();
    }
    
    public String toString()
    {
      return a.toString();
    }
  }
}
