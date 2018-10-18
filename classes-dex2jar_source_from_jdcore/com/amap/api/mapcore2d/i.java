package com.amap.api.mapcore2d;

import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.Canvas;

class i
{
  private Bitmap a = null;
  private Canvas b = null;
  private Bitmap.Config c;
  
  public i(Bitmap.Config paramConfig)
  {
    c = paramConfig;
  }
  
  public void a(Bitmap paramBitmap)
  {
    a = paramBitmap;
    b = new Canvas(a);
  }
  
  public void a(j paramJ)
  {
    b.save(1);
    paramJ.a(b);
    b.restore();
  }
}
