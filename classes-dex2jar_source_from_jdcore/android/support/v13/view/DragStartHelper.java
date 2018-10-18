package android.support.v13.view;

import android.graphics.Point;
import android.support.v4.view.MotionEventCompat;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnLongClickListener;
import android.view.View.OnTouchListener;

public class DragStartHelper
{
  private final View a;
  private final OnDragStartListener b;
  private int c;
  private int d;
  private boolean e;
  private final View.OnLongClickListener f = new View.OnLongClickListener()
  {
    public boolean onLongClick(View paramAnonymousView)
    {
      return DragStartHelper.this.onLongClick(paramAnonymousView);
    }
  };
  private final View.OnTouchListener g = new View.OnTouchListener()
  {
    public boolean onTouch(View paramAnonymousView, MotionEvent paramAnonymousMotionEvent)
    {
      return DragStartHelper.this.onTouch(paramAnonymousView, paramAnonymousMotionEvent);
    }
  };
  
  public DragStartHelper(View paramView, OnDragStartListener paramOnDragStartListener)
  {
    a = paramView;
    b = paramOnDragStartListener;
  }
  
  public void attach()
  {
    a.setOnLongClickListener(f);
    a.setOnTouchListener(g);
  }
  
  public void detach()
  {
    a.setOnLongClickListener(null);
    a.setOnTouchListener(null);
  }
  
  public void getTouchPosition(Point paramPoint)
  {
    paramPoint.set(c, d);
  }
  
  public boolean onLongClick(View paramView)
  {
    return b.onDragStart(paramView, this);
  }
  
  public boolean onTouch(View paramView, MotionEvent paramMotionEvent)
  {
    int i = (int)paramMotionEvent.getX();
    int j = (int)paramMotionEvent.getY();
    switch (paramMotionEvent.getAction())
    {
    default: 
      return false;
    case 2: 
      if (MotionEventCompat.isFromSource(paramMotionEvent, 8194))
      {
        if ((paramMotionEvent.getButtonState() & 0x1) == 0) {
          return false;
        }
        if (e) {
          return false;
        }
        if ((c == i) && (d == j)) {
          return false;
        }
        c = i;
        d = j;
        e = b.onDragStart(paramView, this);
        return e;
      }
      break;
    case 1: 
    case 3: 
      e = false;
      return false;
    case 0: 
      c = i;
      d = j;
    }
    return false;
  }
  
  public static abstract interface OnDragStartListener
  {
    public abstract boolean onDragStart(View paramView, DragStartHelper paramDragStartHelper);
  }
}
