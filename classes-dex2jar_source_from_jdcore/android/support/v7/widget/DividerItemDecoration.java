package android.support.v7.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.support.annotation.NonNull;
import android.util.Log;
import android.view.View;

public class DividerItemDecoration
  extends RecyclerView.ItemDecoration
{
  public static final int HORIZONTAL = 0;
  public static final int VERTICAL = 1;
  private static final int[] a = { 16843284 };
  private Drawable b;
  private int c;
  private final Rect d = new Rect();
  
  public DividerItemDecoration(Context paramContext, int paramInt)
  {
    paramContext = paramContext.obtainStyledAttributes(a);
    b = paramContext.getDrawable(0);
    if (b == null) {
      Log.w("DividerItem", "@android:attr/listDivider was not set in the theme used for this DividerItemDecoration. Please set that attribute all call setDrawable()");
    }
    paramContext.recycle();
    setOrientation(paramInt);
  }
  
  private void a(Canvas paramCanvas, RecyclerView paramRecyclerView)
  {
    paramCanvas.save();
    boolean bool = paramRecyclerView.getClipToPadding();
    int k = 0;
    int i;
    int j;
    if (bool)
    {
      i = paramRecyclerView.getPaddingLeft();
      j = paramRecyclerView.getWidth() - paramRecyclerView.getPaddingRight();
      paramCanvas.clipRect(i, paramRecyclerView.getPaddingTop(), j, paramRecyclerView.getHeight() - paramRecyclerView.getPaddingBottom());
    }
    else
    {
      j = paramRecyclerView.getWidth();
      i = 0;
    }
    int m = paramRecyclerView.getChildCount();
    while (k < m)
    {
      View localView = paramRecyclerView.getChildAt(k);
      paramRecyclerView.getDecoratedBoundsWithMargins(localView, d);
      int n = d.bottom + Math.round(localView.getTranslationY());
      int i1 = b.getIntrinsicHeight();
      b.setBounds(i, n - i1, j, n);
      b.draw(paramCanvas);
      k += 1;
    }
    paramCanvas.restore();
  }
  
  private void b(Canvas paramCanvas, RecyclerView paramRecyclerView)
  {
    paramCanvas.save();
    boolean bool = paramRecyclerView.getClipToPadding();
    int k = 0;
    int i;
    int j;
    if (bool)
    {
      i = paramRecyclerView.getPaddingTop();
      j = paramRecyclerView.getHeight() - paramRecyclerView.getPaddingBottom();
      paramCanvas.clipRect(paramRecyclerView.getPaddingLeft(), i, paramRecyclerView.getWidth() - paramRecyclerView.getPaddingRight(), j);
    }
    else
    {
      j = paramRecyclerView.getHeight();
      i = 0;
    }
    int m = paramRecyclerView.getChildCount();
    while (k < m)
    {
      View localView = paramRecyclerView.getChildAt(k);
      paramRecyclerView.getLayoutManager().getDecoratedBoundsWithMargins(localView, d);
      int n = d.right + Math.round(localView.getTranslationX());
      int i1 = b.getIntrinsicWidth();
      b.setBounds(n - i1, i, n, j);
      b.draw(paramCanvas);
      k += 1;
    }
    paramCanvas.restore();
  }
  
  public void getItemOffsets(Rect paramRect, View paramView, RecyclerView paramRecyclerView, RecyclerView.State paramState)
  {
    if (b == null)
    {
      paramRect.set(0, 0, 0, 0);
      return;
    }
    if (c == 1)
    {
      paramRect.set(0, 0, 0, b.getIntrinsicHeight());
      return;
    }
    paramRect.set(0, 0, b.getIntrinsicWidth(), 0);
  }
  
  public void onDraw(Canvas paramCanvas, RecyclerView paramRecyclerView, RecyclerView.State paramState)
  {
    if (paramRecyclerView.getLayoutManager() != null)
    {
      if (b == null) {
        return;
      }
      if (c == 1)
      {
        a(paramCanvas, paramRecyclerView);
        return;
      }
      b(paramCanvas, paramRecyclerView);
      return;
    }
  }
  
  public void setDrawable(@NonNull Drawable paramDrawable)
  {
    if (paramDrawable != null)
    {
      b = paramDrawable;
      return;
    }
    throw new IllegalArgumentException("Drawable cannot be null.");
  }
  
  public void setOrientation(int paramInt)
  {
    if ((paramInt != 0) && (paramInt != 1)) {
      throw new IllegalArgumentException("Invalid orientation. It should be either HORIZONTAL or VERTICAL");
    }
    c = paramInt;
  }
}
