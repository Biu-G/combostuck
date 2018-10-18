package com.bumptech.glide.util;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.view.View;
import com.bumptech.glide.ListPreloader.PreloadSizeProvider;
import com.bumptech.glide.request.target.SizeReadyCallback;
import com.bumptech.glide.request.target.ViewTarget;
import com.bumptech.glide.request.transition.Transition;
import java.util.Arrays;

public class ViewPreloadSizeProvider<T>
  implements ListPreloader.PreloadSizeProvider<T>, SizeReadyCallback
{
  private int[] a;
  private a b;
  
  public ViewPreloadSizeProvider() {}
  
  public ViewPreloadSizeProvider(@NonNull View paramView)
  {
    b = new a(paramView, this);
  }
  
  @Nullable
  public int[] getPreloadSize(@NonNull T paramT, int paramInt1, int paramInt2)
  {
    if (a == null) {
      return null;
    }
    return Arrays.copyOf(a, a.length);
  }
  
  public void onSizeReady(int paramInt1, int paramInt2)
  {
    a = new int[] { paramInt1, paramInt2 };
    b = null;
  }
  
  public void setView(@NonNull View paramView)
  {
    if (a == null)
    {
      if (b != null) {
        return;
      }
      b = new a(paramView, this);
      return;
    }
  }
  
  private static final class a
    extends ViewTarget<View, Object>
  {
    a(@NonNull View paramView, @NonNull SizeReadyCallback paramSizeReadyCallback)
    {
      super();
      getSize(paramSizeReadyCallback);
    }
    
    public void onResourceReady(@NonNull Object paramObject, @Nullable Transition<? super Object> paramTransition) {}
  }
}
