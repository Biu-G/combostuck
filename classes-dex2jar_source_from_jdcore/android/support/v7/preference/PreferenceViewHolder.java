package android.support.v7.preference;

import android.support.annotation.IdRes;
import android.support.annotation.RestrictTo;
import android.support.v7.widget.RecyclerView.ViewHolder;
import android.util.SparseArray;
import android.view.View;

public class PreferenceViewHolder
  extends RecyclerView.ViewHolder
{
  private final SparseArray<View> p = new SparseArray(4);
  private boolean q;
  private boolean r;
  
  PreferenceViewHolder(View paramView)
  {
    super(paramView);
    p.put(16908310, paramView.findViewById(16908310));
    p.put(16908304, paramView.findViewById(16908304));
    p.put(16908294, paramView.findViewById(16908294));
    p.put(R.id.icon_frame, paramView.findViewById(R.id.icon_frame));
    p.put(16908350, paramView.findViewById(16908350));
  }
  
  @RestrictTo({android.support.annotation.RestrictTo.Scope.TESTS})
  public static PreferenceViewHolder createInstanceForTests(View paramView)
  {
    return new PreferenceViewHolder(paramView);
  }
  
  public View findViewById(@IdRes int paramInt)
  {
    View localView = (View)p.get(paramInt);
    if (localView != null) {
      return localView;
    }
    localView = itemView.findViewById(paramInt);
    if (localView != null) {
      p.put(paramInt, localView);
    }
    return localView;
  }
  
  public boolean isDividerAllowedAbove()
  {
    return q;
  }
  
  public boolean isDividerAllowedBelow()
  {
    return r;
  }
  
  public void setDividerAllowedAbove(boolean paramBoolean)
  {
    q = paramBoolean;
  }
  
  public void setDividerAllowedBelow(boolean paramBoolean)
  {
    r = paramBoolean;
  }
}
