package com.amap.api.mapcore2d;

import android.content.Context;
import android.graphics.Point;
import android.os.RemoteException;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.widget.ListView;
import com.amap.api.maps2d.model.LatLng;

class au
  extends ViewGroup
{
  private y a;
  
  public au(Context paramContext, y paramY)
  {
    super(paramContext);
    a = paramY;
    setWillNotDraw(false);
  }
  
  private void a(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5)
  {
    int j = paramInt5 & 0x7;
    int i = paramInt5 & 0x70;
    if (j == 5)
    {
      paramInt5 = paramInt3 - paramInt1;
    }
    else
    {
      paramInt5 = paramInt3;
      if (j == 1) {
        paramInt5 = paramInt3 - paramInt1 / 2;
      }
    }
    if (i == 80)
    {
      paramInt3 = paramInt4 - paramInt2;
    }
    else
    {
      paramInt3 = paramInt4;
      if (i == 16) {
        paramInt3 = paramInt4 - paramInt2 / 2;
      }
    }
    paramView.layout(paramInt5, paramInt3, paramInt1 + paramInt5, paramInt2 + paramInt3);
  }
  
  private void a(View paramView, int paramInt1, int paramInt2, int[] paramArrayOfInt)
  {
    if ((paramView instanceof ListView))
    {
      View localView = (View)paramView.getParent();
      if (localView != null)
      {
        paramArrayOfInt[0] = localView.getWidth();
        paramArrayOfInt[1] = localView.getHeight();
      }
    }
    if ((paramInt1 <= 0) || (paramInt2 <= 0)) {
      paramView.measure(0, 0);
    }
    if (paramInt1 == -2) {
      paramArrayOfInt[0] = paramView.getMeasuredWidth();
    } else if (paramInt1 == -1) {
      paramArrayOfInt[0] = getMeasuredWidth();
    } else {
      paramArrayOfInt[0] = paramInt1;
    }
    if (paramInt2 == -2)
    {
      paramArrayOfInt[1] = paramView.getMeasuredHeight();
      return;
    }
    if (paramInt2 == -1)
    {
      paramArrayOfInt[1] = getMeasuredHeight();
      return;
    }
    paramArrayOfInt[1] = paramInt2;
  }
  
  private void a(View paramView, a paramA)
  {
    int[] arrayOfInt = new int[2];
    a(paramView, width, height, arrayOfInt);
    a(paramView, arrayOfInt[0], arrayOfInt[1], c, d, e);
  }
  
  private void a(ce paramCe, int[] paramArrayOfInt, int paramInt)
  {
    int i = paramCe.b();
    if (i == 1)
    {
      a(paramCe, paramArrayOfInt[0], paramArrayOfInt[1], getWidth() - paramArrayOfInt[0], (getHeight() + paramArrayOfInt[1]) / 2, paramInt);
      return;
    }
    if (i == 0) {
      a(paramCe, paramArrayOfInt[0], paramArrayOfInt[1], getWidth() - paramArrayOfInt[0], getHeight(), paramInt);
    }
  }
  
  private void b(View paramView, a paramA)
  {
    int[] arrayOfInt = new int[2];
    a(paramView, width, height, arrayOfInt);
    if ((paramView instanceof ce))
    {
      a((ce)paramView, arrayOfInt, e);
      return;
    }
    if ((paramView instanceof ap))
    {
      a(paramView, arrayOfInt[0], arrayOfInt[1], getWidth() - arrayOfInt[0], arrayOfInt[1], e);
      return;
    }
    if ((paramView instanceof p))
    {
      a(paramView, arrayOfInt[0], arrayOfInt[1], 0, 0, e);
      return;
    }
    if (b != null)
    {
      Object localObject2 = new w((int)(b.latitude * 1000000.0D), (int)(b.longitude * 1000000.0D));
      Object localObject1 = null;
      try
      {
        localObject2 = a.d().a((w)localObject2, null);
        localObject1 = localObject2;
      }
      catch (RemoteException localRemoteException)
      {
        cm.a(localRemoteException, "MapOverlayViewGroup", "layoutMap");
      }
      if (localObject1 == null) {
        return;
      }
      x += c;
      y += d;
      a(paramView, arrayOfInt[0], arrayOfInt[1], x, y, e);
    }
  }
  
  public void a()
  {
    onLayout(false, 0, 0, 0, 0);
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    paramInt2 = getChildCount();
    paramInt1 = 0;
    while (paramInt1 < paramInt2)
    {
      View localView = getChildAt(paramInt1);
      if (localView != null) {
        if ((localView.getLayoutParams() instanceof a))
        {
          a localA = (a)localView.getLayoutParams();
          if (a == 0) {
            b(localView, localA);
          } else {
            a(localView, localA);
          }
        }
        else
        {
          a(localView, new a(localView.getLayoutParams()));
        }
      }
      paramInt1 += 1;
    }
  }
  
  public static class a
    extends ViewGroup.LayoutParams
  {
    public int a = 1;
    public LatLng b = null;
    public int c = 0;
    public int d = 0;
    public int e = 51;
    
    public a(int paramInt1, int paramInt2, LatLng paramLatLng, int paramInt3, int paramInt4, int paramInt5)
    {
      super(paramInt2);
      a = 0;
      b = paramLatLng;
      c = paramInt3;
      d = paramInt4;
      e = paramInt5;
    }
    
    public a(ViewGroup.LayoutParams paramLayoutParams)
    {
      super();
    }
  }
}
