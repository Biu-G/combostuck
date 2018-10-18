package com.bumptech.glide.manager;

import android.support.annotation.NonNull;
import com.bumptech.glide.RequestManager;
import java.util.Collections;
import java.util.Set;

final class d
  implements RequestManagerTreeNode
{
  d() {}
  
  @NonNull
  public Set<RequestManager> getDescendants()
  {
    return Collections.emptySet();
  }
}
