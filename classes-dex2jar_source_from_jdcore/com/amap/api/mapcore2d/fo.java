package com.amap.api.mapcore2d;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.autonavi.amap.mapcore2d.Inner_3dMap_location;

public final class fo
  extends Handler
{
  fm a = null;
  
  public fo(Looper paramLooper, fm paramFm)
  {
    super(paramLooper);
    a = paramFm;
  }
  
  public fo(fm paramFm)
  {
    a = paramFm;
  }
  
  public final void handleMessage(Message paramMessage)
  {
    if (what != 1) {
      return;
    }
    try
    {
      if (a != null) {
        a.a((Inner_3dMap_location)obj);
      }
      return;
    }
    catch (Throwable paramMessage)
    {
      gc.a(paramMessage, "ClientResultHandler", "RESULT_LOCATION_FINISH");
    }
  }
}
