package android.support.v4.os;

import android.support.annotation.IntRange;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.RestrictTo;
import java.util.Locale;

@RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
abstract interface c
{
  @IntRange(from=-1L)
  public abstract int a(Locale paramLocale);
  
  public abstract Object a();
  
  public abstract Locale a(int paramInt);
  
  @Nullable
  public abstract Locale a(String[] paramArrayOfString);
  
  public abstract void a(@NonNull Locale... paramVarArgs);
  
  public abstract boolean b();
  
  @IntRange(from=0L)
  public abstract int c();
  
  public abstract String d();
  
  public abstract boolean equals(Object paramObject);
  
  public abstract int hashCode();
  
  public abstract String toString();
}
