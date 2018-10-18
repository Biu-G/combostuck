package com.bumptech.glide;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import com.bumptech.glide.manager.RequestManagerRetriever.RequestManagerFactory;
import com.bumptech.glide.module.AppGlideModule;
import java.util.Set;

abstract class a
  extends AppGlideModule
{
  a() {}
  
  @NonNull
  abstract Set<Class<?>> a();
  
  @Nullable
  RequestManagerRetriever.RequestManagerFactory b()
  {
    return null;
  }
}
