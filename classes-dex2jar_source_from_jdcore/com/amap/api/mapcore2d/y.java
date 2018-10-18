package com.amap.api.mapcore2d;

import android.os.RemoteException;
import com.amap.api.interfaces.IAMap;

public abstract interface y
  extends IAMap
{
  public abstract az a();
  
  public abstract void a(double paramDouble1, double paramDouble2, ae paramAe);
  
  public abstract void a(double paramDouble1, double paramDouble2, s paramS);
  
  public abstract void a(int paramInt1, int paramInt2, s paramS);
  
  public abstract void b(double paramDouble1, double paramDouble2, ae paramAe);
  
  public abstract void b(int paramInt1, int paramInt2, s paramS);
  
  public abstract bh d()
    throws RemoteException;
  
  public abstract void invalidate();
  
  public abstract void postInvalidate();
}
