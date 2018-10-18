package cn.edu.pku.pkurunner.RecordList;

import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.support.v7.widget.CardView;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.RecyclerView.ViewHolder;
import android.support.v7.widget.helper.ItemTouchHelper.Callback;
import android.support.v7.widget.helper.ItemTouchUIUtil;
import android.view.View;

public class ItemTouchHelperCallback
  extends ItemTouchHelper.Callback
{
  private b a;
  private a b;
  private Drawable c;
  private int d;
  private int e;
  private Drawable f;
  
  public ItemTouchHelperCallback(b paramB, a paramA, RecordCardAdapter.c paramC)
  {
    a = paramB;
    b = paramA;
    c = paramC.getResource().getDrawable(2131230867);
    c.setTint(paramC.getResource().getColor(2131100042));
    d = c.getIntrinsicWidth();
    e = c.getIntrinsicHeight();
    f = new ColorDrawable(paramC.getResource().getColor(2131099976));
  }
  
  public void clearView(RecyclerView paramRecyclerView, RecyclerView.ViewHolder paramViewHolder)
  {
    paramRecyclerView = w;
    getDefaultUIUtil().clearView(paramRecyclerView);
  }
  
  public int getMovementFlags(RecyclerView paramRecyclerView, RecyclerView.ViewHolder paramViewHolder)
  {
    return makeMovementFlags(0, 4);
  }
  
  public float getSwipeThreshold(RecyclerView.ViewHolder paramViewHolder)
  {
    if ((paramViewHolder instanceof RecordCardAdapter.d)) {
      return 0.5F;
    }
    return 10.0F;
  }
  
  public void onChildDraw(Canvas paramCanvas, RecyclerView paramRecyclerView, RecyclerView.ViewHolder paramViewHolder, float paramFloat1, float paramFloat2, int paramInt, boolean paramBoolean)
  {
    CardView localCardView = w;
    if (!(paramViewHolder instanceof RecordCardAdapter.d))
    {
      paramFloat1 /= paramCanvas.getWidth();
      paramFloat1 = paramCanvas.getWidth() * (0.1F * paramFloat1 * (2.0F - paramFloat1));
    }
    else
    {
      paramViewHolder = itemView;
      int j = paramViewHolder.getBottom() - paramViewHolder.getTop();
      f.setBounds(paramViewHolder.getRight() + (int)paramFloat1, paramViewHolder.getTop(), paramViewHolder.getRight(), paramViewHolder.getBottom());
      f.draw(paramCanvas);
      int i = paramViewHolder.getTop() + (j - e) / 2;
      j = (j - e) / 2;
      int k = paramViewHolder.getRight();
      int m = d;
      int n = paramViewHolder.getRight();
      int i1 = e;
      c.setBounds(k - j - m, i, n - j, i1 + i);
      c.draw(paramCanvas);
    }
    getDefaultUIUtil().onDraw(paramCanvas, paramRecyclerView, localCardView, paramFloat1, paramFloat2, paramInt, paramBoolean);
  }
  
  public boolean onMove(RecyclerView paramRecyclerView, RecyclerView.ViewHolder paramViewHolder1, RecyclerView.ViewHolder paramViewHolder2)
  {
    return false;
  }
  
  public void onSelectedChanged(RecyclerView.ViewHolder paramViewHolder, int paramInt)
  {
    if (paramViewHolder != null)
    {
      paramViewHolder = w;
      getDefaultUIUtil().onSelected(paramViewHolder);
    }
    if (paramInt == 0)
    {
      b.toggle(true);
      return;
    }
    b.toggle(false);
  }
  
  public void onSwiped(RecyclerView.ViewHolder paramViewHolder, int paramInt)
  {
    if (a.canBeSwiped(paramViewHolder.getAdapterPosition()))
    {
      a.onItemSwiped(paramViewHolder.getAdapterPosition());
      return;
    }
    a.notifyItemChanged(paramViewHolder.getAdapterPosition());
  }
  
  static abstract interface a
  {
    public abstract void toggle(boolean paramBoolean);
  }
  
  static abstract interface b
  {
    public abstract boolean canBeSwiped(int paramInt);
    
    public abstract void notifyItemChanged(int paramInt);
    
    public abstract void onItemSwiped(int paramInt);
  }
}
