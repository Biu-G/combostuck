package com.amap.api.mapcore2d;

import android.content.Context;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.view.Display;
import android.view.WindowManager;
import com.amap.api.maps2d.CameraUpdateFactory;
import com.amap.api.maps2d.model.CameraPosition;
import com.amap.api.maps2d.model.Marker;

public class bl
  implements SensorEventListener
{
  private SensorManager a;
  private Sensor b;
  private long c = 0L;
  private final int d = 100;
  private float e;
  private Context f;
  private y g;
  private Marker h;
  private boolean i = true;
  
  public bl(Context paramContext, y paramY)
  {
    f = paramContext.getApplicationContext();
    g = paramY;
    try
    {
      a = ((SensorManager)paramContext.getSystemService("sensor"));
      b = a.getDefaultSensor(3);
      return;
    }
    catch (Throwable paramContext)
    {
      paramContext.printStackTrace();
    }
  }
  
  public static int a(Context paramContext)
  {
    switch (((WindowManager)paramContext.getSystemService("window")).getDefaultDisplay().getRotation())
    {
    default: 
      return 0;
    case 3: 
      return -90;
    case 2: 
      return 180;
    case 1: 
      return 90;
    }
    return 0;
  }
  
  public void a()
  {
    if ((a != null) && (b != null)) {
      a.registerListener(this, b, 3);
    }
  }
  
  public void a(Marker paramMarker)
  {
    h = paramMarker;
  }
  
  public void a(boolean paramBoolean)
  {
    i = paramBoolean;
  }
  
  public void b()
  {
    if ((a != null) && (b != null)) {
      a.unregisterListener(this, b);
    }
  }
  
  public void onAccuracyChanged(Sensor paramSensor, int paramInt) {}
  
  public void onSensorChanged(SensorEvent paramSensorEvent)
  {
    for (;;)
    {
      float f2;
      try
      {
        if (System.currentTimeMillis() - c < 100L) {
          return;
        }
        if (sensor.getType() != 3) {
          return;
        }
        f2 = (values[0] + a(f)) % 360.0F;
        if (f2 > 180.0F)
        {
          f1 = f2 - 360.0F;
          if (Math.abs(e - f1) < 3.0F) {
            return;
          }
          f2 = f1;
          if (Float.isNaN(f1)) {
            f2 = 0.0F;
          }
          e = f2;
          paramSensorEvent = h;
          if (paramSensorEvent != null) {
            try
            {
              if (i)
              {
                paramSensorEvent = g.getCameraPosition();
                paramSensorEvent = new CameraPosition(target, zoom, tilt, e);
                g.moveCamera(CameraUpdateFactory.newCameraPosition(paramSensorEvent));
                h.setRotateAngle(-e);
              }
              else
              {
                h.setRotateAngle(360.0F - e);
              }
            }
            catch (Throwable paramSensorEvent)
            {
              paramSensorEvent.printStackTrace();
            }
          }
          c = System.currentTimeMillis();
          return;
        }
      }
      catch (Throwable paramSensorEvent)
      {
        paramSensorEvent.printStackTrace();
        return;
      }
      float f1 = f2;
      if (f2 < -180.0F) {
        f1 = f2 + 360.0F;
      }
    }
  }
}
