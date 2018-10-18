package android.support.v7.util;

import android.support.annotation.NonNull;
import android.support.v7.widget.RecyclerView.Adapter;

public final class AdapterListUpdateCallback
  implements ListUpdateCallback
{
  @NonNull
  private final RecyclerView.Adapter a;
  
  public AdapterListUpdateCallback(@NonNull RecyclerView.Adapter paramAdapter)
  {
    a = paramAdapter;
  }
  
  public void onChanged(int paramInt1, int paramInt2, Object paramObject)
  {
    a.notifyItemRangeChanged(paramInt1, paramInt2, paramObject);
  }
  
  public void onInserted(int paramInt1, int paramInt2)
  {
    a.notifyItemRangeInserted(paramInt1, paramInt2);
  }
  
  public void onMoved(int paramInt1, int paramInt2)
  {
    a.notifyItemMoved(paramInt1, paramInt2);
  }
  
  public void onRemoved(int paramInt1, int paramInt2)
  {
    a.notifyItemRangeRemoved(paramInt1, paramInt2);
  }
}
