package android.support.v7.recyclerview.extensions;

import android.os.Handler;
import android.os.Looper;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v7.util.AdapterListUpdateCallback;
import android.support.v7.util.DiffUtil;
import android.support.v7.util.DiffUtil.Callback;
import android.support.v7.util.DiffUtil.DiffResult;
import android.support.v7.util.DiffUtil.ItemCallback;
import android.support.v7.util.ListUpdateCallback;
import android.support.v7.widget.RecyclerView.Adapter;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.Executor;

public class AsyncListDiffer<T>
{
  private static final Executor e = new a();
  final AsyncDifferConfig<T> a;
  final Executor b;
  int c;
  private final ListUpdateCallback d;
  @Nullable
  private List<T> f;
  @NonNull
  private List<T> g = Collections.emptyList();
  
  public AsyncListDiffer(@NonNull ListUpdateCallback paramListUpdateCallback, @NonNull AsyncDifferConfig<T> paramAsyncDifferConfig)
  {
    d = paramListUpdateCallback;
    a = paramAsyncDifferConfig;
    if (paramAsyncDifferConfig.getMainThreadExecutor() != null)
    {
      b = paramAsyncDifferConfig.getMainThreadExecutor();
      return;
    }
    b = e;
  }
  
  public AsyncListDiffer(@NonNull RecyclerView.Adapter paramAdapter, @NonNull DiffUtil.ItemCallback<T> paramItemCallback)
  {
    this(new AdapterListUpdateCallback(paramAdapter), new AsyncDifferConfig.Builder(paramItemCallback).build());
  }
  
  void a(@NonNull List<T> paramList, @NonNull DiffUtil.DiffResult paramDiffResult)
  {
    f = paramList;
    g = Collections.unmodifiableList(paramList);
    paramDiffResult.dispatchUpdatesTo(d);
  }
  
  @NonNull
  public List<T> getCurrentList()
  {
    return g;
  }
  
  public void submitList(@Nullable final List<T> paramList)
  {
    final int i = c + 1;
    c = i;
    if (paramList == f) {
      return;
    }
    if (paramList == null)
    {
      i = f.size();
      f = null;
      g = Collections.emptyList();
      d.onRemoved(0, i);
      return;
    }
    if (f == null)
    {
      f = paramList;
      g = Collections.unmodifiableList(paramList);
      d.onInserted(0, paramList.size());
      return;
    }
    final List localList = f;
    a.getBackgroundThreadExecutor().execute(new Runnable()
    {
      public void run()
      {
        final DiffUtil.DiffResult localDiffResult = DiffUtil.calculateDiff(new DiffUtil.Callback()
        {
          public boolean areContentsTheSame(int paramAnonymous2Int1, int paramAnonymous2Int2)
          {
            Object localObject1 = a.get(paramAnonymous2Int1);
            Object localObject2 = b.get(paramAnonymous2Int2);
            if ((localObject1 != null) && (localObject2 != null)) {
              return a.getDiffCallback().areContentsTheSame(localObject1, localObject2);
            }
            if ((localObject1 == null) && (localObject2 == null)) {
              return true;
            }
            throw new AssertionError();
          }
          
          public boolean areItemsTheSame(int paramAnonymous2Int1, int paramAnonymous2Int2)
          {
            Object localObject1 = a.get(paramAnonymous2Int1);
            Object localObject2 = b.get(paramAnonymous2Int2);
            if ((localObject1 != null) && (localObject2 != null)) {
              return a.getDiffCallback().areItemsTheSame(localObject1, localObject2);
            }
            return (localObject1 == null) && (localObject2 == null);
          }
          
          @Nullable
          public Object getChangePayload(int paramAnonymous2Int1, int paramAnonymous2Int2)
          {
            Object localObject1 = a.get(paramAnonymous2Int1);
            Object localObject2 = b.get(paramAnonymous2Int2);
            if ((localObject1 != null) && (localObject2 != null)) {
              return a.getDiffCallback().getChangePayload(localObject1, localObject2);
            }
            throw new AssertionError();
          }
          
          public int getNewListSize()
          {
            return b.size();
          }
          
          public int getOldListSize()
          {
            return a.size();
          }
        });
        b.execute(new Runnable()
        {
          public void run()
          {
            if (c == c) {
              a(b, localDiffResult);
            }
          }
        });
      }
    });
  }
  
  private static class a
    implements Executor
  {
    final Handler a = new Handler(Looper.getMainLooper());
    
    a() {}
    
    public void execute(@NonNull Runnable paramRunnable)
    {
      a.post(paramRunnable);
    }
  }
}
