package com.bumptech.glide.util;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import java.util.Collection;

public final class Preconditions
{
  private Preconditions() {}
  
  public static void checkArgument(boolean paramBoolean, @NonNull String paramString)
  {
    if (paramBoolean) {
      return;
    }
    throw new IllegalArgumentException(paramString);
  }
  
  @NonNull
  public static String checkNotEmpty(@Nullable String paramString)
  {
    if (!TextUtils.isEmpty(paramString)) {
      return paramString;
    }
    throw new IllegalArgumentException("Must not be null or empty");
  }
  
  @NonNull
  public static <T extends Collection<Y>, Y> T checkNotEmpty(@NonNull T paramT)
  {
    if (!paramT.isEmpty()) {
      return paramT;
    }
    throw new IllegalArgumentException("Must not be empty.");
  }
  
  @NonNull
  public static <T> T checkNotNull(@Nullable T paramT)
  {
    return checkNotNull(paramT, "Argument must not be null");
  }
  
  @NonNull
  public static <T> T checkNotNull(@Nullable T paramT, @NonNull String paramString)
  {
    if (paramT != null) {
      return paramT;
    }
    throw new NullPointerException(paramString);
  }
}