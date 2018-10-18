package com.bumptech.glide.integration.okhttp3;

import android.content.Context;
import android.support.annotation.NonNull;
import com.bumptech.glide.Glide;
import com.bumptech.glide.Registry;
import com.bumptech.glide.load.model.GlideUrl;
import com.bumptech.glide.module.LibraryGlideModule;
import java.io.InputStream;

public final class OkHttpLibraryGlideModule
  extends LibraryGlideModule
{
  public OkHttpLibraryGlideModule() {}
  
  public void registerComponents(@NonNull Context paramContext, @NonNull Glide paramGlide, @NonNull Registry paramRegistry)
  {
    paramRegistry.replace(GlideUrl.class, InputStream.class, new OkHttpUrlLoader.Factory());
  }
}
