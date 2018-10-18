package android.support.v7.app;

import android.annotation.SuppressLint;
import android.content.Context;
import android.location.Location;
import android.location.LocationManager;
import android.support.annotation.NonNull;
import android.support.annotation.RequiresPermission;
import android.support.annotation.VisibleForTesting;
import android.support.v4.content.PermissionChecker;
import android.util.Log;
import java.util.Calendar;

class f
{
  private static f a;
  private final Context b;
  private final LocationManager c;
  private final a d = new a();
  
  @VisibleForTesting
  f(@NonNull Context paramContext, @NonNull LocationManager paramLocationManager)
  {
    b = paramContext;
    c = paramLocationManager;
  }
  
  @RequiresPermission(anyOf={"android.permission.ACCESS_COARSE_LOCATION", "android.permission.ACCESS_FINE_LOCATION"})
  private Location a(String paramString)
  {
    try
    {
      if (c.isProviderEnabled(paramString))
      {
        paramString = c.getLastKnownLocation(paramString);
        return paramString;
      }
    }
    catch (Exception paramString)
    {
      Log.d("TwilightManager", "Failed to get last known location", paramString);
    }
    return null;
  }
  
  static f a(@NonNull Context paramContext)
  {
    if (a == null)
    {
      paramContext = paramContext.getApplicationContext();
      a = new f(paramContext, (LocationManager)paramContext.getSystemService("location"));
    }
    return a;
  }
  
  private void a(@NonNull Location paramLocation)
  {
    a localA = d;
    long l1 = System.currentTimeMillis();
    e localE = e.a();
    localE.a(l1 - 86400000L, paramLocation.getLatitude(), paramLocation.getLongitude());
    long l2 = a;
    localE.a(l1, paramLocation.getLatitude(), paramLocation.getLongitude());
    boolean bool;
    if (c == 1) {
      bool = true;
    } else {
      bool = false;
    }
    long l3 = b;
    long l4 = a;
    localE.a(86400000L + l1, paramLocation.getLatitude(), paramLocation.getLongitude());
    long l5 = b;
    if ((l3 != -1L) && (l4 != -1L))
    {
      if (l1 > l4) {
        l1 = 0L + l5;
      } else if (l1 > l3) {
        l1 = 0L + l4;
      } else {
        l1 = 0L + l3;
      }
      l1 += 60000L;
    }
    else
    {
      l1 = 43200000L + l1;
    }
    a = bool;
    b = l2;
    c = l3;
    d = l4;
    e = l5;
    f = l1;
  }
  
  @SuppressLint({"MissingPermission"})
  private Location b()
  {
    int i = PermissionChecker.checkSelfPermission(b, "android.permission.ACCESS_COARSE_LOCATION");
    Location localLocation2 = null;
    Location localLocation1;
    if (i == 0) {
      localLocation1 = a("network");
    } else {
      localLocation1 = null;
    }
    if (PermissionChecker.checkSelfPermission(b, "android.permission.ACCESS_FINE_LOCATION") == 0) {
      localLocation2 = a("gps");
    }
    if ((localLocation2 != null) && (localLocation1 != null))
    {
      Location localLocation3 = localLocation1;
      if (localLocation2.getTime() > localLocation1.getTime()) {
        localLocation3 = localLocation2;
      }
      return localLocation3;
    }
    if (localLocation2 != null) {
      localLocation1 = localLocation2;
    }
    return localLocation1;
  }
  
  private boolean c()
  {
    return d.f > System.currentTimeMillis();
  }
  
  boolean a()
  {
    a localA = d;
    if (c()) {
      return a;
    }
    Location localLocation = b();
    if (localLocation != null)
    {
      a(localLocation);
      return a;
    }
    Log.i("TwilightManager", "Could not get last known location. This is probably because the app does not have any location permissions. Falling back to hardcoded sunrise/sunset values.");
    int i = Calendar.getInstance().get(11);
    return (i < 6) || (i >= 22);
  }
  
  private static class a
  {
    boolean a;
    long b;
    long c;
    long d;
    long e;
    long f;
    
    a() {}
  }
}
