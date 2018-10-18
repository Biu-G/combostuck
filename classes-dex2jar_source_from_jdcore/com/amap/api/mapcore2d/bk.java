package com.amap.api.mapcore2d;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.graphics.Point;
import android.graphics.Rect;
import android.os.RemoteException;
import android.view.View;

class bk
  extends View
{
  private String a = "";
  private int b = 0;
  private b c;
  private Paint d;
  private Paint e;
  private Rect f;
  
  public bk(Context paramContext, b paramB)
  {
    super(paramContext);
    c = paramB;
    d = new Paint();
    f = new Rect();
    d.setAntiAlias(true);
    d.setColor(-16777216);
    d.setStrokeWidth(q.a * 2.0F);
    d.setStyle(Paint.Style.STROKE);
    e = new Paint();
    e.setAntiAlias(true);
    e.setColor(-16777216);
    e.setTextSize(q.a * 20.0F);
  }
  
  public void a()
  {
    d = null;
    e = null;
    f = null;
    a = null;
  }
  
  public void a(int paramInt)
  {
    b = paramInt;
  }
  
  public void a(String paramString)
  {
    a = paramString;
  }
  
  protected void onDraw(Canvas paramCanvas)
  {
    try
    {
      boolean bool = c.c().isScaleControlsEnabled();
      if (!bool) {
        return;
      }
    }
    catch (RemoteException localRemoteException)
    {
      localRemoteException.printStackTrace();
      if (!a.equals(""))
      {
        if (b == 0) {
          return;
        }
        int j = b;
        int i = j;
        try
        {
          if (j > c.getWidth() / 5) {
            i = c.getWidth() / 5;
          }
        }
        catch (Exception localException)
        {
          cm.a(localException, "ScaleView", "onDraw");
          i = j;
        }
        Point localPoint = c.f();
        e.getTextBounds(a, 0, a.length(), f);
        if (x + i > c.getWidth() - 10) {
          j = c.getWidth() - 10 - (f.width() + i) / 2;
        } else {
          j = x + (i - f.width()) / 2;
        }
        int k = y - f.height() + 5;
        paramCanvas.drawText(a, j, k, e);
        j -= (i - f.width()) / 2;
        k += f.height() - 5;
        float f1 = j;
        float f2 = k - 2;
        float f3 = k + 2;
        paramCanvas.drawLine(f1, f2, f1, f3, d);
        float f4 = k;
        float f5 = j + i;
        paramCanvas.drawLine(f1, f4, f5, f4, d);
        paramCanvas.drawLine(f5, f2, f5, f3, d);
        return;
      }
    }
  }
}
