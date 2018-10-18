package com.amap.api.mapcore2d;

import android.content.Context;
import android.content.res.AssetManager;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.graphics.Point;
import android.view.View;
import java.io.InputStream;

class cd
  extends View
{
  private Bitmap a;
  private Bitmap b;
  private Paint c = new Paint();
  private boolean d = false;
  private int e = 0;
  private b f;
  private int g = 0;
  private int h = 10;
  
  public cd(Context paramContext, b paramB)
  {
    super(paramContext);
    f = paramB;
    paramB = paramContext.getResources().getAssets();
    try
    {
      if (q.e == q.a.b) {
        paramContext = paramB.open("apl2d.data");
      } else {
        paramContext = paramB.open("ap2d.data");
      }
      a = BitmapFactory.decodeStream(paramContext);
      a = cm.a(a, q.a);
      paramContext.close();
      if (q.e == q.a.b) {
        paramContext = paramB.open("apl12d.data");
      } else {
        paramContext = paramB.open("ap12d.data");
      }
      b = BitmapFactory.decodeStream(paramContext);
      b = cm.a(b, q.a);
      paramContext.close();
      e = b.getHeight();
    }
    catch (Throwable paramContext)
    {
      cm.a(paramContext, "WaterMarkerView", "WaterMarkerView");
    }
    c.setAntiAlias(true);
    c.setColor(-16777216);
    c.setStyle(Paint.Style.STROKE);
  }
  
  public void a()
  {
    try
    {
      if (a != null) {
        a.recycle();
      }
      if (b != null) {
        b.recycle();
      }
      a = null;
      b = null;
      c = null;
      return;
    }
    catch (Exception localException)
    {
      cm.a(localException, "WaterMarkerView", "destory");
    }
  }
  
  public void a(int paramInt)
  {
    g = paramInt;
  }
  
  public void a(boolean paramBoolean)
  {
    d = paramBoolean;
    invalidate();
  }
  
  public Bitmap b()
  {
    if (d) {
      return b;
    }
    return a;
  }
  
  public Point c()
  {
    return new Point(h, getHeight() - e - 10);
  }
  
  public int d()
  {
    return g;
  }
  
  public void onDraw(Canvas paramCanvas)
  {
    if (b != null)
    {
      if (a == null) {
        return;
      }
      int i = b.getWidth() + 3;
      if (g == 1) {
        h = ((f.getWidth() - i) / 2);
      } else if (g == 2) {
        h = (f.getWidth() - i - 10);
      } else {
        h = 10;
      }
      if (b() == null) {
        return;
      }
      if (q.e == q.a.b)
      {
        paramCanvas.drawBitmap(b(), h + 15, getHeight() - e - 8, c);
        return;
      }
      paramCanvas.drawBitmap(b(), h, getHeight() - e - 8, c);
      return;
    }
  }
}
