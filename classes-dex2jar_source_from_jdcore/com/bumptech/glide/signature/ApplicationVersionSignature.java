package com.bumptech.glide.signature;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.util.Log;
import com.bumptech.glide.load.Key;
import java.util.UUID;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;

public final class ApplicationVersionSignature
{
  private static final ConcurrentMap<String, Key> a = new ConcurrentHashMap();
  
  private ApplicationVersionSignature() {}
  
  @NonNull
  private static Key a(@NonNull Context paramContext)
  {
    return new ObjectKey(a(b(paramContext)));
  }
  
  @NonNull
  private static String a(@Nullable PackageInfo paramPackageInfo)
  {
    if (paramPackageInfo != null) {
      return String.valueOf(versionCode);
    }
    return UUID.randomUUID().toString();
  }
  
  @Nullable
  private static PackageInfo b(@NonNull Context paramContext)
  {
    try
    {
      PackageInfo localPackageInfo = paramContext.getPackageManager().getPackageInfo(paramContext.getPackageName(), 0);
      return localPackageInfo;
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("Cannot resolve info for");
      localStringBuilder.append(paramContext.getPackageName());
      Log.e("AppVersionSignature", localStringBuilder.toString(), localNameNotFoundException);
    }
    return null;
  }
  
  @NonNull
  public static Key obtain(@NonNull Context paramContext)
  {
    String str = paramContext.getPackageName();
    Key localKey2 = (Key)a.get(str);
    Key localKey1 = localKey2;
    if (localKey2 == null)
    {
      paramContext = a(paramContext);
      localKey1 = (Key)a.putIfAbsent(str, paramContext);
      if (localKey1 == null) {
        return paramContext;
      }
    }
    return localKey1;
  }
}
