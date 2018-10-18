package com.bumptech.glide.integration.okhttp3;

import android.content.Context;
import android.support.annotation.NonNull;
import com.bumptech.glide.Glide;
import com.bumptech.glide.GlideBuilder;
import com.bumptech.glide.Registry;
import com.bumptech.glide.load.model.GlideUrl;
import com.bumptech.glide.module.GlideModule;
import java.io.InputStream;

@Deprecated
public class OkHttpGlideModule
  implements GlideModule
{
  public OkHttpGlideModule() {}
  
  public void applyOptions(@NonNull Context paramContext, @NonNull GlideBuilder paramGlideBuilder) {}
  
  public void registerComponents(Context paramContext, Glide paramGlide, Registry paramRegistry)
  {
    paramRegistry.replace(GlideUrl.class, InputStream.class, new OkHttpUrlLoader.Factory());
  }
}