package com.amap.api.mapcore2d;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.autonavi.amap.mapcore2d.Inner_3dMap_locationListener;
import com.autonavi.amap.mapcore2d.Inner_3dMap_locationOption;

public final class fn
  extends Handler
{
  fm a = null;
  
  public fn() {}
  
  public fn(Looper paramLooper, fm paramFm)
  {
    super(paramLooper);
    a = paramFm;
  }
  
  public final void handleMessage(Message paramMessage)
  {
    switch (what)
    {
    default: 
      return;
    case 1007: 
      try
      {
        a.d();
        return;
      }
      catch (Throwable paramMessage)
      {
        gc.a(paramMessage, "ClientActionHandler", "ACTION_DESTROY");
        return;
      }
    case 1006: 
      try
      {
        a.c();
        return;
      }
      catch (Throwable localThrowable1)
      {
        paramMessage = "ACTION_STOP_LOCATION";
      }
    }
    for (;;)
    {
      gc.a(localThrowable1, "ClientActionHandler", paramMessage);
      return;
      try
      {
        a.b();
        return;
      }
      catch (Throwable localThrowable2)
      {
        paramMessage = "ACTION_GET_LOCATION";
      }
      continue;
      try
      {
        a.a();
        return;
      }
      catch (Throwable localThrowable3)
      {
        paramMessage = "ACTION_START_LOCATION";
      }
      continue;
      try
      {
        paramMessage = (Inner_3dMap_locationListener)obj;
        a.b(paramMessage);
        return;
      }
      catch (Throwable localThrowable4)
      {
        paramMessage = "ACTION_REMOVE_LISTENER";
      }
      continue;
      try
      {
        paramMessage = (Inner_3dMap_locationListener)obj;
        a.a(paramMessage);
        return;
      }
      catch (Throwable localThrowable5)
      {
        paramMessage = "ACTION_SET_LISTENER";
      }
      continue;
      try
      {
        paramMessage = (Inner_3dMap_locationOption)obj;
        a.a(paramMessage);
        return;
      }
      catch (Throwable localThrowable6)
      {
        paramMessage = "ACTION_SET_OPTION";
      }
    }
  }
}
