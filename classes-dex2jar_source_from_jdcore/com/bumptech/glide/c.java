package com.bumptech.glide;

import android.content.Context;
import android.support.annotation.NonNull;
import cn.edu.pku.pkurunner.GlideRequests;
import com.bumptech.glide.manager.Lifecycle;
import com.bumptech.glide.manager.RequestManagerRetriever.RequestManagerFactory;
import com.bumptech.glide.manager.RequestManagerTreeNode;

final class c
  implements RequestManagerRetriever.RequestManagerFactory
{
  c() {}
  
  @NonNull
  public RequestManager build(@NonNull Glide paramGlide, @NonNull Lifecycle paramLifecycle, @NonNull RequestManagerTreeNode paramRequestManagerTreeNode, @NonNull Context paramContext)
  {
    return new GlideRequests(paramGlide, paramLifecycle, paramRequestManagerTreeNode, paramContext);
  }
}
