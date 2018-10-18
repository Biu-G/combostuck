package com.amap.api.mapcore2d;

import android.content.Context;
import android.graphics.Bitmap;
import android.location.Location;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnTouchListener;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.amap.api.maps2d.CameraUpdate;
import com.amap.api.maps2d.model.LatLng;

class ap
  extends LinearLayout
{
  private Bitmap a;
  private Bitmap b;
  private Bitmap c;
  private ImageView d;
  private y e;
  private boolean f = false;
  
  public ap(Context paramContext, as paramAs, y paramY)
  {
    super(paramContext);
    e = paramY;
    try
    {
      a = cm.a("location_selected2d.png");
      b = cm.a("location_pressed2d.png");
      a = cm.a(a, q.a);
      b = cm.a(b, q.a);
      c = cm.a("location_unselected2d.png");
      c = cm.a(c, q.a);
    }
    catch (Throwable paramAs)
    {
      cm.a(paramAs, "LocationView", "LocationView");
    }
    d = new ImageView(paramContext);
    d.setImageBitmap(a);
    d.setPadding(0, 20, 20, 0);
    d.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView) {}
    });
    d.setOnTouchListener(new View.OnTouchListener()
    {
      public boolean onTouch(View paramAnonymousView, MotionEvent paramAnonymousMotionEvent)
      {
        if (!ap.a(ap.this)) {
          return false;
        }
        if (paramAnonymousMotionEvent.getAction() == 0)
        {
          ap.c(ap.this).setImageBitmap(ap.b(ap.this));
          return false;
        }
        if (paramAnonymousMotionEvent.getAction() == 1) {
          try
          {
            ap.c(ap.this).setImageBitmap(ap.d(ap.this));
            ap.e(ap.this).setMyLocationEnabled(true);
            paramAnonymousView = ap.e(ap.this).getMyLocation();
            if (paramAnonymousView == null) {
              return false;
            }
            paramAnonymousMotionEvent = new LatLng(paramAnonymousView.getLatitude(), paramAnonymousView.getLongitude());
            ap.e(ap.this).showMyLocationOverlay(paramAnonymousView);
            ap.e(ap.this).moveCamera(new CameraUpdate(m.a(paramAnonymousMotionEvent, ap.e(ap.this).getZoomLevel())));
            return false;
          }
          catch (Exception paramAnonymousView)
          {
            cm.a(paramAnonymousView, "LocationView", "onTouch");
          }
        }
        return false;
      }
    });
    addView(d);
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
      if (c != null) {
        c.recycle();
      }
      a = null;
      b = null;
      c = null;
      return;
    }
    catch (Exception localException)
    {
      cm.a(localException, "LocationView", "destory");
    }
  }
  
  public void a(boolean paramBoolean)
  {
    f = paramBoolean;
    if (paramBoolean) {
      d.setImageBitmap(a);
    } else {
      d.setImageBitmap(c);
    }
    d.invalidate();
  }
}
