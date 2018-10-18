package android.support.v7.util;

import android.support.annotation.NonNull;

public class BatchingListUpdateCallback
  implements ListUpdateCallback
{
  final ListUpdateCallback a;
  int b = 0;
  int c = -1;
  int d = -1;
  Object e = null;
  
  public BatchingListUpdateCallback(@NonNull ListUpdateCallback paramListUpdateCallback)
  {
    a = paramListUpdateCallback;
  }
  
  public void dispatchLastEvent()
  {
    if (b == 0) {
      return;
    }
    switch (b)
    {
    default: 
      break;
    case 3: 
      a.onChanged(c, d, e);
      break;
    case 2: 
      a.onRemoved(c, d);
      break;
    case 1: 
      a.onInserted(c, d);
    }
    e = null;
    b = 0;
  }
  
  public void onChanged(int paramInt1, int paramInt2, Object paramObject)
  {
    if ((b == 3) && (paramInt1 <= c + d))
    {
      int i = paramInt1 + paramInt2;
      if ((i >= c) && (e == paramObject))
      {
        paramInt2 = c;
        int j = d;
        c = Math.min(paramInt1, c);
        d = (Math.max(paramInt2 + j, i) - c);
        return;
      }
    }
    dispatchLastEvent();
    c = paramInt1;
    d = paramInt2;
    e = paramObject;
    b = 3;
  }
  
  public void onInserted(int paramInt1, int paramInt2)
  {
    if ((b == 1) && (paramInt1 >= c) && (paramInt1 <= c + d))
    {
      d += paramInt2;
      c = Math.min(paramInt1, c);
      return;
    }
    dispatchLastEvent();
    c = paramInt1;
    d = paramInt2;
    b = 1;
  }
  
  public void onMoved(int paramInt1, int paramInt2)
  {
    dispatchLastEvent();
    a.onMoved(paramInt1, paramInt2);
  }
  
  public void onRemoved(int paramInt1, int paramInt2)
  {
    if ((b == 2) && (c >= paramInt1) && (c <= paramInt1 + paramInt2))
    {
      d += paramInt2;
      c = paramInt1;
      return;
    }
    dispatchLastEvent();
    c = paramInt1;
    d = paramInt2;
    b = 2;
  }
}
