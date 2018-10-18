package com.bumptech.glide.manager;

import android.support.annotation.NonNull;
import com.bumptech.glide.RequestManager;
import java.util.Set;

public abstract interface RequestManagerTreeNode
{
  @NonNull
  public abstract Set<RequestManager> getDescendants();
}
