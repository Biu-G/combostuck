package com.amap.api.mapcore2d;

import android.graphics.Canvas;
import android.os.RemoteException;
import com.amap.api.interfaces.IOverlay;

abstract interface ad
  extends IOverlay
{
  public abstract void a(Canvas paramCanvas)
    throws RemoteException;
  
  public abstract boolean a();
}
