package com.bumptech.glide;

import android.content.Context;
import android.support.annotation.NonNull;
import android.util.Log;
import cn.edu.pku.pkurunner.MyAppGlideModule;
import com.bumptech.glide.integration.okhttp3.OkHttpLibraryGlideModule;
import java.util.Collections;
import java.util.Set;

final class b
  extends a
{
  private final MyAppGlideModule a = new MyAppGlideModule();
  
  b()
  {
    if (Log.isLoggable("Glide", 3))
    {
      Log.d("Glide", "Discovered AppGlideModule from annotation: cn.edu.pku.pkurunner.MyAppGlideModule");
      Log.d("Glide", "Discovered LibraryGlideModule from annotation: com.bumptech.glide.integration.okhttp3.OkHttpLibraryGlideModule");
    }
  }
  
  @NonNull
  public Set<Class<?>> a()
  {
    return Collections.emptySet();
  }
  
  public void applyOptions(@NonNull Context paramContext, @NonNull GlideBuilder paramGlideBuilder)
  {
    a.applyOptions(paramContext, paramGlideBuilder);
  }
  
  @NonNull
  c c()
  {
    return new c();
  }
  
  public boolean isManifestParsingEnabled()
  {
    return a.isManifestParsingEnabled();
  }
  
  public void registerComponents(@NonNull Context paramContext, @NonNull Glide paramGlide, @NonNull Registry paramRegistry)
  {
    new OkHttpLibraryGlideModule().registerComponents(paramContext, paramGlide, paramRegistry);
    a.registerComponents(paramContext, paramGlide, paramRegistry);
  }
}
