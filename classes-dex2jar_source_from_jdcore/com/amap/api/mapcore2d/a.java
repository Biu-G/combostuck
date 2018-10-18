package com.amap.api.mapcore2d;

import android.os.RemoteException;
import com.amap.api.interfaces.MapCameraMessage;
import com.amap.api.interfaces.MapCameraMessage.Type;
import com.amap.api.maps2d.model.CameraPosition;
import com.amap.api.maps2d.model.LatLng;

class a
{
  private b a;
  private int b;
  
  public a(b paramB)
  {
    a = paramB;
  }
  
  protected void a(MapCameraMessage paramMapCameraMessage)
    throws RemoteException
  {
    try
    {
      if (a != null)
      {
        if (a.i() == null) {
          return;
        }
        float f1 = a.getZoomLevel();
        if (nowType == MapCameraMessage.Type.scrollBy)
        {
          if (a.b != null) {
            a.b.d((int)xPixel, (int)yPixel);
          }
          a.postInvalidate();
        }
        else if (nowType == MapCameraMessage.Type.zoomIn)
        {
          a.i().a(true);
        }
        else if (nowType == MapCameraMessage.Type.zoomOut)
        {
          a.i().a(false);
        }
        else
        {
          float f2;
          if (nowType == MapCameraMessage.Type.zoomTo)
          {
            f2 = zoom;
            a.i().c(f2);
          }
          else if (nowType == MapCameraMessage.Type.zoomBy)
          {
            f2 = amount;
            f2 = a.a(f2 + f1);
            paramMapCameraMessage = focus;
            if (paramMapCameraMessage != null) {
              a.a(f2 - f1, paramMapCameraMessage, false, 0L);
            } else {
              a.i().c(f2);
            }
          }
          else
          {
            int i;
            int j;
            if (nowType == MapCameraMessage.Type.newCameraPosition)
            {
              paramMapCameraMessage = cameraPosition;
              if (paramMapCameraMessage != null)
              {
                i = (int)(target.latitude * 1000000.0D);
                j = (int)(target.longitude * 1000000.0D);
                a.i().a(new w(i, j), zoom);
              }
            }
            else if (nowType == MapCameraMessage.Type.changeCenter)
            {
              paramMapCameraMessage = cameraPosition;
              i = (int)(target.latitude * 1000000.0D);
              j = (int)(target.longitude * 1000000.0D);
              a.i().a(new w(i, j));
            }
            else if ((nowType != MapCameraMessage.Type.newLatLngBounds) && (nowType != MapCameraMessage.Type.newLatLngBoundsWithSize))
            {
              isChangeFinished = true;
            }
            else
            {
              a.a(paramMapCameraMessage, false, -1L);
            }
          }
        }
        if ((f1 != b) && (a.c().isScaleControlsEnabled())) {
          a.s();
        }
        l.a().b();
        return;
      }
      return;
    }
    catch (Exception paramMapCameraMessage)
    {
      cm.a(paramMapCameraMessage, "AMapCallback", "runCameraUpdate");
    }
  }
}
