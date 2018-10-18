package android.support.v7.recyclerview.extensions;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v7.util.AdapterListUpdateCallback;
import android.support.v7.util.DiffUtil.ItemCallback;
import android.support.v7.widget.RecyclerView.Adapter;
import android.support.v7.widget.RecyclerView.ViewHolder;
import java.util.List;

public abstract class ListAdapter<T, VH extends RecyclerView.ViewHolder>
  extends RecyclerView.Adapter<VH>
{
  private final AsyncListDiffer<T> a;
  
  protected ListAdapter(@NonNull AsyncDifferConfig<T> paramAsyncDifferConfig)
  {
    a = new AsyncListDiffer(new AdapterListUpdateCallback(this), paramAsyncDifferConfig);
  }
  
  protected ListAdapter(@NonNull DiffUtil.ItemCallback<T> paramItemCallback)
  {
    a = new AsyncListDiffer(new AdapterListUpdateCallback(this), new AsyncDifferConfig.Builder(paramItemCallback).build());
  }
  
  protected T getItem(int paramInt)
  {
    return a.getCurrentList().get(paramInt);
  }
  
  public int getItemCount()
  {
    return a.getCurrentList().size();
  }
  
  public void submitList(@Nullable List<T> paramList)
  {
    a.submitList(paramList);
  }
}
