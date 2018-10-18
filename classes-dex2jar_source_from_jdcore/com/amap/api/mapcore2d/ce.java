package com.amap.api.mapcore2d;

import android.content.Context;
import android.graphics.Bitmap;
import android.os.RemoteException;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnTouchListener;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.amap.api.maps2d.CameraUpdate;

class ce
  extends LinearLayout
{
  private Bitmap a;
  private Bitmap b;
  private Bitmap c;
  private Bitmap d;
  private Bitmap e;
  private Bitmap f;
  private ImageView g;
  private ImageView h;
  private aq i;
  private y j;
  private int k = 0;
  
  public ce(Context paramContext, aq paramAq, y paramY)
  {
    super(paramContext);
    setWillNotDraw(false);
    i = paramAq;
    j = paramY;
    try
    {
      a = cm.a("zoomin_selected2d.png");
      a = cm.a(a, q.a);
      b = cm.a("zoomin_unselected2d.png");
      b = cm.a(b, q.a);
      c = cm.a("zoomout_selected2d.png");
      c = cm.a(c, q.a);
      d = cm.a("zoomout_unselected2d.png");
      d = cm.a(d, q.a);
      e = cm.a("zoomin_pressed2d.png");
      f = cm.a("zoomout_pressed2d.png");
      e = cm.a(e, q.a);
      f = cm.a(f, q.a);
      g = new ImageView(paramContext);
      g.setImageBitmap(a);
      g.setOnClickListener(new View.OnClickListener()
      {
        public void onClick(View paramAnonymousView)
        {
          ce.b(ce.this).setImageBitmap(ce.a(ce.this));
          if (ce.c(ce.this).getZoomLevel() > (int)ce.c(ce.this).getMaxZoomLevel() - 2) {
            ce.e(ce.this).setImageBitmap(ce.d(ce.this));
          } else {
            ce.e(ce.this).setImageBitmap(ce.f(ce.this));
          }
          a(ce.c(ce.this).getZoomLevel() + 1.0F);
          ce.g(ce.this).c();
        }
      });
      h = new ImageView(paramContext);
      h.setImageBitmap(c);
      h.setOnClickListener(new View.OnClickListener()
      {
        public void onClick(View paramAnonymousView)
        {
          ce.e(ce.this).setImageBitmap(ce.f(ce.this));
          a(ce.c(ce.this).getZoomLevel() - 1.0F);
          if (ce.c(ce.this).getZoomLevel() < (int)ce.c(ce.this).getMinZoomLevel() + 2) {
            ce.b(ce.this).setImageBitmap(ce.h(ce.this));
          } else {
            ce.b(ce.this).setImageBitmap(ce.a(ce.this));
          }
          ce.g(ce.this).d();
        }
      });
      g.setOnTouchListener(new View.OnTouchListener()
      {
        public boolean onTouch(View paramAnonymousView, MotionEvent paramAnonymousMotionEvent)
        {
          if (ce.c(ce.this).getZoomLevel() >= ce.c(ce.this).getMaxZoomLevel()) {
            return false;
          }
          if (paramAnonymousMotionEvent.getAction() == 0)
          {
            ce.e(ce.this).setImageBitmap(ce.i(ce.this));
            return false;
          }
          if (paramAnonymousMotionEvent.getAction() == 1)
          {
            ce.e(ce.this).setImageBitmap(ce.f(ce.this));
            try
            {
              ce.c(ce.this).animateCamera(new CameraUpdate(m.b()));
              return false;
            }
            catch (RemoteException paramAnonymousView)
            {
              cm.a(paramAnonymousView, "ZoomControllerView", "ontouch");
            }
          }
          return false;
        }
      });
      h.setOnTouchListener(new View.OnTouchListener()
      {
        public boolean onTouch(View paramAnonymousView, MotionEvent paramAnonymousMotionEvent)
        {
          if (ce.c(ce.this).getZoomLevel() <= ce.c(ce.this).getMinZoomLevel()) {
            return false;
          }
          if (paramAnonymousMotionEvent.getAction() == 0)
          {
            ce.b(ce.this).setImageBitmap(ce.j(ce.this));
            return false;
          }
          if (paramAnonymousMotionEvent.getAction() == 1)
          {
            ce.b(ce.this).setImageBitmap(ce.a(ce.this));
            try
            {
              ce.c(ce.this).animateCamera(new CameraUpdate(m.c()));
              return false;
            }
            catch (RemoteException paramAnonymousView)
            {
              cm.a(paramAnonymousView, "ZoomControllerView", "onTouch");
            }
          }
          return false;
        }
      });
      g.setPadding(0, 0, 20, -2);
      h.setPadding(0, 0, 20, 20);
      setOrientation(1);
      addView(g);
      addView(h);
      return;
    }
    catch (Throwable paramContext)
    {
      cm.a(paramContext, "ZoomControllerView", "ZoomControllerView");
    }
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
      if (d != null) {
        d.recycle();
      }
      if (e != null) {
        e.recycle();
      }
      if (f != null) {
        f.recycle();
      }
      a = null;
      b = null;
      c = null;
      d = null;
      e = null;
      f = null;
      return;
    }
    catch (Exception localException)
    {
      cm.a(localException, "ZoomControllerView", "destory");
    }
  }
  
  public void a(float paramFloat)
  {
    try
    {
      if ((paramFloat < j.getMaxZoomLevel()) && (paramFloat > j.getMinZoomLevel()))
      {
        g.setImageBitmap(a);
        h.setImageBitmap(c);
        return;
      }
      if (paramFloat <= j.getMinZoomLevel())
      {
        h.setImageBitmap(d);
        g.setImageBitmap(a);
        return;
      }
      if (paramFloat >= j.getMaxZoomLevel())
      {
        g.setImageBitmap(b);
        h.setImageBitmap(c);
        return;
      }
    }
    catch (Throwable localThrowable)
    {
      cm.a(localThrowable, "ZoomControllerView", "setZoomBitmap");
    }
  }
  
  public void a(int paramInt)
  {
    k = paramInt;
    removeView(g);
    removeView(h);
    addView(g);
    addView(h);
  }
  
  public int b()
  {
    return k;
  }
}
