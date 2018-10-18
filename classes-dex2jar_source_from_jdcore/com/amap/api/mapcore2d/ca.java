package com.amap.api.mapcore2d;

import android.os.Handler;
import android.os.Message;
import android.os.RemoteException;

class ca
  implements al
{
  private y a;
  private boolean b = true;
  private boolean c = false;
  private boolean d = true;
  private boolean e = true;
  private boolean f = true;
  private boolean g = false;
  private int h = 0;
  private int i = 0;
  private final Handler j = new Handler()
  {
    public void handleMessage(Message paramAnonymousMessage)
    {
      if (paramAnonymousMessage != null)
      {
        if (ca.a(ca.this) == null) {
          return;
        }
        try
        {
          switch (what)
          {
          case 3: 
            ca.a(ca.this).showMyLocationButtonEnabled(ca.e(ca.this));
            return;
          }
        }
        catch (Throwable paramAnonymousMessage)
        {
          cm.a(paramAnonymousMessage, "UiSettingsDelegateImp", "handle_handleMessage");
          return;
        }
        ca.a(ca.this).showCompassEnabled(ca.d(ca.this));
        return;
        ca.a(ca.this).showScaleEnabled(ca.c(ca.this));
        return;
        ca.a(ca.this).showZoomControlsEnabled(ca.b(ca.this));
        return;
      }
      return;
    }
  };
  private boolean k;
  
  ca(y paramY)
  {
    a = paramY;
  }
  
  public int getLogoPosition()
    throws RemoteException
  {
    return h;
  }
  
  public int getZoomPosition()
    throws RemoteException
  {
    return i;
  }
  
  public boolean isCompassEnabled()
    throws RemoteException
  {
    return f;
  }
  
  public boolean isMyLocationButtonEnabled()
    throws RemoteException
  {
    return c;
  }
  
  public boolean isScaleControlsEnabled()
    throws RemoteException
  {
    return g;
  }
  
  public boolean isScrollGesturesEnabled()
    throws RemoteException
  {
    return b;
  }
  
  public boolean isZoomControlsEnabled()
    throws RemoteException
  {
    return e;
  }
  
  public boolean isZoomGesturesEnabled()
    throws RemoteException
  {
    return d;
  }
  
  public boolean isZoomInByScreenCenter()
  {
    return k;
  }
  
  public void setAllGesturesEnabled(boolean paramBoolean)
    throws RemoteException
  {
    setZoomGesturesEnabled(paramBoolean);
    setScrollGesturesEnabled(paramBoolean);
  }
  
  public void setCompassEnabled(boolean paramBoolean)
    throws RemoteException
  {
    f = paramBoolean;
    j.obtainMessage(2).sendToTarget();
  }
  
  public void setLogoPosition(int paramInt)
    throws RemoteException
  {
    h = paramInt;
    a.setLogoPosition(paramInt);
  }
  
  public void setMyLocationButtonEnabled(boolean paramBoolean)
    throws RemoteException
  {
    c = paramBoolean;
    j.obtainMessage(3).sendToTarget();
  }
  
  public void setScaleControlsEnabled(boolean paramBoolean)
    throws RemoteException
  {
    g = paramBoolean;
    j.obtainMessage(1).sendToTarget();
  }
  
  public void setScrollGesturesEnabled(boolean paramBoolean)
    throws RemoteException
  {
    b = paramBoolean;
  }
  
  public void setZoomControlsEnabled(boolean paramBoolean)
    throws RemoteException
  {
    e = paramBoolean;
    j.obtainMessage(0).sendToTarget();
  }
  
  public void setZoomGesturesEnabled(boolean paramBoolean)
    throws RemoteException
  {
    d = paramBoolean;
  }
  
  public void setZoomInByScreenCenter(boolean paramBoolean)
  {
    k = paramBoolean;
  }
  
  public void setZoomPosition(int paramInt)
    throws RemoteException
  {
    i = paramInt;
    a.setZoomPosition(paramInt);
  }
}
