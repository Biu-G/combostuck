package com.bumptech.glide.module;

import android.content.Context;
import android.support.annotation.NonNull;
import com.bumptech.glide.GlideBuilder;

public abstract class AppGlideModule
  extends LibraryGlideModule
  implements a
{
  public AppGlideModule() {}
  
  public void applyOptions(@NonNull Context paramContext, @NonNull GlideBuilder paramGlideBuilder) {}
  
  public boolean isManifestParsingEnabled()
  {
    return true;
  }
}
