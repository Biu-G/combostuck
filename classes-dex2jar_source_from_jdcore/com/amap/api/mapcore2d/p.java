package com.amap.api.mapcore2d;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnTouchListener;
import android.widget.ImageView;
import android.widget.ImageView.ScaleType;
import android.widget.LinearLayout;
import com.amap.api.maps2d.CameraUpdate;
import com.amap.api.maps2d.model.CameraPosition;

class p
  extends LinearLayout
{
  private Bitmap a;
  private Bitmap b;
  private ImageView c;
  private as d;
  private y e;
  
  public p(Context paramContext, as paramAs, y paramY)
  {
    super(paramContext);
    d = paramAs;
    e = paramY;
    try
    {
      paramAs = cm.a("maps_dav_compass_needle_large2d.png");
      b = cm.a(paramAs, q.a * 0.8F);
      if (b != null)
      {
        paramAs = cm.a(paramAs, q.a * 0.7F);
        a = Bitmap.createBitmap(b.getWidth(), b.getHeight(), Bitmap.Config.ARGB_8888);
        paramY = new Canvas(a);
        Paint localPaint = new Paint();
        localPaint.setAntiAlias(true);
        localPaint.setFilterBitmap(true);
        paramY.drawBitmap(paramAs, (b.getWidth() - paramAs.getWidth()) / 2, (b.getHeight() - paramAs.getHeight()) / 2, localPaint);
      }
    }
    catch (Throwable paramAs)
    {
      cm.a(paramAs, "CompassView", "CompassView");
    }
    c = new ImageView(paramContext);
    c.setScaleType(ImageView.ScaleType.MATRIX);
    c.setImageBitmap(a);
    c.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView) {}
    });
    c.setOnTouchListener(new View.OnTouchListener()
    {
      public boolean onTouch(View paramAnonymousView, MotionEvent paramAnonymousMotionEvent)
      {
        if (paramAnonymousMotionEvent.getAction() == 0) {
          p.b(p.this).setImageBitmap(p.a(p.this));
        } else if (paramAnonymousMotionEvent.getAction() == 1) {
          try
          {
            p.b(p.this).setImageBitmap(p.c(p.this));
            paramAnonymousView = p.d(p.this).getCameraPosition();
            p.d(p.this).animateCamera(new CameraUpdate(m.a(new CameraPosition(target, zoom, 0.0F, 0.0F))));
          }
          catch (Exception paramAnonymousView)
          {
            cm.a(paramAnonymousView, "CompassView", "onTouch");
          }
        }
        return false;
      }
    });
    addView(c);
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
      return;
    }
    catch (Exception localException)
    {
      cm.a(localException, "CompassView", "destory");
    }
  }
}
