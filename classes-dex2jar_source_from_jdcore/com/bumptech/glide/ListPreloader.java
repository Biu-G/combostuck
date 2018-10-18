package com.bumptech.glide;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.widget.AbsListView;
import android.widget.AbsListView.OnScrollListener;
import com.bumptech.glide.request.target.BaseTarget;
import com.bumptech.glide.request.target.SizeReadyCallback;
import com.bumptech.glide.request.transition.Transition;
import com.bumptech.glide.util.Util;
import java.util.List;
import java.util.Queue;

public class ListPreloader<T>
  implements AbsListView.OnScrollListener
{
  private final int a;
  private final b b;
  private final RequestManager c;
  private final PreloadModelProvider<T> d;
  private final PreloadSizeProvider<T> e;
  private int f;
  private int g;
  private int h;
  private int i;
  private boolean j = true;
  
  public ListPreloader(@NonNull RequestManager paramRequestManager, @NonNull PreloadModelProvider<T> paramPreloadModelProvider, @NonNull PreloadSizeProvider<T> paramPreloadSizeProvider, int paramInt)
  {
    c = paramRequestManager;
    d = paramPreloadModelProvider;
    e = paramPreloadSizeProvider;
    a = paramInt;
    b = new b(paramInt + 1);
  }
  
  private void a()
  {
    int k = 0;
    while (k < a)
    {
      c.clear(b.a(0, 0));
      k += 1;
    }
  }
  
  private void a(int paramInt1, int paramInt2)
  {
    if (paramInt1 < paramInt2)
    {
      k = Math.max(f, paramInt1);
      m = paramInt2;
    }
    else
    {
      m = Math.min(g, paramInt1);
      k = paramInt2;
    }
    int m = Math.min(i, m);
    int k = Math.min(i, Math.max(0, k));
    if (paramInt1 < paramInt2)
    {
      paramInt1 = k;
      while (paramInt1 < m)
      {
        a(d.getPreloadItems(paramInt1), paramInt1, true);
        paramInt1 += 1;
      }
    }
    paramInt1 = m - 1;
    while (paramInt1 >= k)
    {
      a(d.getPreloadItems(paramInt1), paramInt1, false);
      paramInt1 -= 1;
    }
    g = k;
    f = m;
  }
  
  private void a(int paramInt, boolean paramBoolean)
  {
    if (j != paramBoolean)
    {
      j = paramBoolean;
      a();
    }
    int k;
    if (paramBoolean) {
      k = a;
    } else {
      k = -a;
    }
    a(paramInt, k + paramInt);
  }
  
  private void a(@Nullable T paramT, int paramInt1, int paramInt2)
  {
    if (paramT == null) {
      return;
    }
    int[] arrayOfInt = e.getPreloadSize(paramT, paramInt1, paramInt2);
    if (arrayOfInt == null) {
      return;
    }
    paramT = d.getPreloadRequestBuilder(paramT);
    if (paramT == null) {
      return;
    }
    paramT.into(b.a(arrayOfInt[0], arrayOfInt[1]));
  }
  
  private void a(List<T> paramList, int paramInt, boolean paramBoolean)
  {
    int m = paramList.size();
    if (paramBoolean)
    {
      k = 0;
      while (k < m)
      {
        a(paramList.get(k), paramInt, k);
        k += 1;
      }
    }
    int k = m - 1;
    while (k >= 0)
    {
      a(paramList.get(k), paramInt, k);
      k -= 1;
    }
  }
  
  public void onScroll(AbsListView paramAbsListView, int paramInt1, int paramInt2, int paramInt3)
  {
    i = paramInt3;
    if (paramInt1 > h) {
      a(paramInt2 + paramInt1, true);
    } else if (paramInt1 < h) {
      a(paramInt1, false);
    }
    h = paramInt1;
  }
  
  public void onScrollStateChanged(AbsListView paramAbsListView, int paramInt) {}
  
  public static abstract interface PreloadModelProvider<U>
  {
    @NonNull
    public abstract List<U> getPreloadItems(int paramInt);
    
    @Nullable
    public abstract RequestBuilder<?> getPreloadRequestBuilder(@NonNull U paramU);
  }
  
  public static abstract interface PreloadSizeProvider<T>
  {
    @Nullable
    public abstract int[] getPreloadSize(@NonNull T paramT, int paramInt1, int paramInt2);
  }
  
  private static final class a
    extends BaseTarget<Object>
  {
    int a;
    int b;
    
    a() {}
    
    public void getSize(@NonNull SizeReadyCallback paramSizeReadyCallback)
    {
      paramSizeReadyCallback.onSizeReady(b, a);
    }
    
    public void onResourceReady(@NonNull Object paramObject, @Nullable Transition<? super Object> paramTransition) {}
    
    public void removeCallback(@NonNull SizeReadyCallback paramSizeReadyCallback) {}
  }
  
  private static final class b
  {
    private final Queue<ListPreloader.a> a;
    
    b(int paramInt)
    {
      a = Util.createQueue(paramInt);
      int i = 0;
      while (i < paramInt)
      {
        a.offer(new ListPreloader.a());
        i += 1;
      }
    }
    
    public ListPreloader.a a(int paramInt1, int paramInt2)
    {
      ListPreloader.a localA = (ListPreloader.a)a.poll();
      a.offer(localA);
      b = paramInt1;
      a = paramInt2;
      return localA;
    }
  }
}
