package com.amap.api.mapcore2d;

import android.content.Context;
import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import android.os.Bundle;
import com.autonavi.amap.mapcore2d.Inner_3dMap_location;

public final class fk
{
  Context a;
  LocationManager b;
  volatile long c = 0L;
  volatile boolean d = false;
  boolean e = false;
  volatile Inner_3dMap_location f = null;
  Object g = null;
  boolean h = false;
  LocationListener i = new LocationListener()
  {
    public final void onLocationChanged(Location paramAnonymousLocation)
    {
      if (paramAnonymousLocation == null) {
        return;
      }
      try
      {
        Inner_3dMap_location localInner_3dMap_location = new Inner_3dMap_location(paramAnonymousLocation);
        localInner_3dMap_location.setLocationType(1);
        paramAnonymousLocation = paramAnonymousLocation.getExtras();
        int i = 0;
        if (paramAnonymousLocation != null) {
          i = paramAnonymousLocation.getInt("satellites");
        }
        localInner_3dMap_location.setSatellites(i);
        f = localInner_3dMap_location;
        c = gf.b();
        d = true;
        return;
      }
      catch (Throwable paramAnonymousLocation)
      {
        gc.a(paramAnonymousLocation, "MAPGPSLocation", "onLocationChanged");
      }
    }
    
    public final void onProviderDisabled(String paramAnonymousString)
    {
      try
      {
        if ("gps".equals(paramAnonymousString)) {
          d = false;
        }
        return;
      }
      catch (Throwable paramAnonymousString)
      {
        gc.a(paramAnonymousString, "MAPGPSLocation", "onProviderDisabled");
      }
    }
    
    public final void onProviderEnabled(String paramAnonymousString) {}
    
    public final void onStatusChanged(String paramAnonymousString, int paramAnonymousInt, Bundle paramAnonymousBundle) {}
  };
  
  public fk(Context paramContext)
  {
    if (paramContext == null) {
      return;
    }
    a = paramContext;
    e();
    try
    {
      if (g == null) {
        if (h) {
          g = new com.amap.api.maps.CoordinateConverter(paramContext);
        } else {
          g = new com.amap.api.maps2d.CoordinateConverter();
        }
      }
    }
    catch (Throwable paramContext)
    {
      for (;;) {}
    }
    if (b == null) {
      b = ((LocationManager)a.getSystemService("location"));
    }
  }
  
  private void e()
  {
    try
    {
      if (Class.forName("com.amap.api.maps.CoordinateConverter") != null) {
        h = true;
      }
      return;
    }
    catch (Throwable localThrowable) {}
  }
  
  /* Error */
  private void f()
  {
    // Byte code:
    //   0: invokestatic 86	android/os/Looper:myLooper	()Landroid/os/Looper;
    //   3: astore_2
    //   4: aload_2
    //   5: astore_1
    //   6: aload_2
    //   7: ifnonnull +11 -> 18
    //   10: aload_0
    //   11: getfield 48	com/amap/api/mapcore2d/fk:a	Landroid/content/Context;
    //   14: invokevirtual 89	android/content/Context:getMainLooper	()Landroid/os/Looper;
    //   17: astore_1
    //   18: new 91	android/os/Bundle
    //   21: dup
    //   22: invokespecial 92	android/os/Bundle:<init>	()V
    //   25: astore_2
    //   26: aload_0
    //   27: getfield 59	com/amap/api/mapcore2d/fk:b	Landroid/location/LocationManager;
    //   30: ldc 94
    //   32: ldc 96
    //   34: aload_2
    //   35: invokevirtual 100	android/location/LocationManager:sendExtraCommand	(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z
    //   38: pop
    //   39: aload_0
    //   40: getfield 59	com/amap/api/mapcore2d/fk:b	Landroid/location/LocationManager;
    //   43: ldc 94
    //   45: ldc2_w 101
    //   48: fconst_0
    //   49: aload_0
    //   50: getfield 46	com/amap/api/mapcore2d/fk:i	Landroid/location/LocationListener;
    //   53: aload_1
    //   54: invokevirtual 106	android/location/LocationManager:requestLocationUpdates	(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V
    //   57: return
    //   58: astore_1
    //   59: aload_1
    //   60: ldc 108
    //   62: ldc 109
    //   64: invokestatic 114	com/amap/api/mapcore2d/gc:a	(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    //   67: return
    //   68: astore_1
    //   69: return
    //   70: astore_2
    //   71: goto -32 -> 39
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	74	0	this	fk
    //   5	49	1	localObject1	Object
    //   58	2	1	localThrowable1	Throwable
    //   68	1	1	localSecurityException	SecurityException
    //   3	32	2	localObject2	Object
    //   70	1	2	localThrowable2	Throwable
    // Exception table:
    //   from	to	target	type
    //   0	4	58	java/lang/Throwable
    //   10	18	58	java/lang/Throwable
    //   18	26	58	java/lang/Throwable
    //   39	57	58	java/lang/Throwable
    //   0	4	68	java/lang/SecurityException
    //   10	18	68	java/lang/SecurityException
    //   18	26	68	java/lang/SecurityException
    //   26	39	68	java/lang/SecurityException
    //   39	57	68	java/lang/SecurityException
    //   26	39	70	java/lang/Throwable
  }
  
  private void g()
  {
    d = false;
    c = 0L;
    f = null;
  }
  
  public final void a()
  {
    if (!e)
    {
      f();
      e = true;
    }
  }
  
  public final void b()
  {
    e = false;
    g();
    if (b == null) {
      return;
    }
    if (i != null) {
      b.removeUpdates(i);
    }
  }
  
  public final boolean c()
  {
    if (d)
    {
      if (gf.b() - c <= 10000L) {
        return true;
      }
      f = null;
    }
    return false;
  }
  
  public final Inner_3dMap_location d()
  {
    Inner_3dMap_location localInner_3dMap_location = f;
    if ((f != null) && (f.getErrorCode() == 0)) {}
    try
    {
      if ((g != null) && (gc.a(f.getLatitude(), f.getLongitude())))
      {
        Object localObject;
        if (h)
        {
          localObject = ((com.amap.api.maps.CoordinateConverter)g).coord(new com.amap.api.maps.model.LatLng(f.getLatitude(), f.getLongitude())).from(com.amap.api.maps.CoordinateConverter.CoordType.GPS).convert();
          localInner_3dMap_location.setLatitude(latitude);
        }
        for (double d1 = longitude;; d1 = longitude)
        {
          localInner_3dMap_location.setLongitude(d1);
          return localInner_3dMap_location;
          localObject = ((com.amap.api.maps2d.CoordinateConverter)g).coord(new com.amap.api.maps2d.model.LatLng(f.getLatitude(), f.getLongitude())).from(com.amap.api.maps2d.CoordinateConverter.CoordType.GPS).convert();
          localInner_3dMap_location.setLatitude(latitude);
        }
      }
      return localInner_3dMap_location;
    }
    catch (Throwable localThrowable) {}
    return localInner_3dMap_location;
  }
}
