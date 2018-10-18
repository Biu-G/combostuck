package cn.edu.pku.pkurunner.Map;

import android.content.Context;
import android.location.GpsStatus;
import android.location.GpsStatus.Listener;
import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import android.os.Bundle;
import android.os.CountDownTimer;
import io.reactivex.Observable;
import io.reactivex.ObservableEmitter;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import org.xutils.common.util.LogUtil;

class GPSManager
{
  private static HashMap<String, GPSLocationListener> a = new HashMap();
  private static HashMap<String, GPSStatusListener> b = new HashMap();
  private static LocationManager c;
  private static LocationListener d;
  private static GpsStatus.Listener e;
  private static Location f;
  
  static void a()
  {
    if ((c != null) && (d != null))
    {
      c.removeUpdates(d);
      c.removeGpsStatusListener(e);
    }
    a.clear();
    b.clear();
    d = null;
    c = null;
  }
  
  static void a(Context paramContext)
  {
    c = (LocationManager)paramContext.getSystemService("location");
    d = new LocationListener()
    {
      public void onLocationChanged(Location paramAnonymousLocation)
      {
        LogUtil.d("Incoming new location.");
        GPSManager.a(paramAnonymousLocation);
      }
      
      public void onProviderDisabled(String paramAnonymousString)
      {
        StringBuilder localStringBuilder = new StringBuilder();
        localStringBuilder.append(paramAnonymousString);
        localStringBuilder.append(" is disabled.");
        LogUtil.d(localStringBuilder.toString());
      }
      
      public void onProviderEnabled(String paramAnonymousString)
      {
        StringBuilder localStringBuilder = new StringBuilder();
        localStringBuilder.append(paramAnonymousString);
        localStringBuilder.append(" is enabled.");
        LogUtil.d(localStringBuilder.toString());
      }
      
      public void onStatusChanged(String paramAnonymousString, int paramAnonymousInt, Bundle paramAnonymousBundle)
      {
        paramAnonymousBundle = new StringBuilder();
        paramAnonymousBundle.append(paramAnonymousString);
        paramAnonymousBundle.append(" status changed.");
        LogUtil.d(paramAnonymousBundle.toString());
      }
    };
    e = -..Lambda.GPSManager.1u_WGsa5CfvQVRl3RytKVALkk68.INSTANCE;
  }
  
  private static void a(GpsStatus paramGpsStatus)
  {
    Object localObject = new StringBuilder();
    ((StringBuilder)localObject).append("GPSStatus updated! ");
    ((StringBuilder)localObject).append(paramGpsStatus);
    LogUtil.d(((StringBuilder)localObject).toString());
    localObject = b.values().iterator();
    while (((Iterator)localObject).hasNext()) {
      ((GPSStatusListener)((Iterator)localObject).next()).onStatusUpdate(paramGpsStatus);
    }
  }
  
  static void a(GPSLocationListener paramGPSLocationListener, String paramString)
  {
    if (a.isEmpty()) {
      f();
    }
    a.put(paramString, paramGPSLocationListener);
  }
  
  static void a(GPSStatusListener paramGPSStatusListener, String paramString)
  {
    if (b.isEmpty()) {
      g();
    }
    b.put(paramString, paramGPSStatusListener);
  }
  
  static void a(String paramString)
  {
    a.remove(paramString);
    if (a.isEmpty()) {
      h();
    }
  }
  
  static Observable<GPSManager.a.a> b()
  {
    return Observable.create(-..Lambda.GPSManager.PGZePYmtmnAltvXvqvU1FVpYZqw.INSTANCE);
  }
  
  private static void b(Location paramLocation)
  {
    LogUtil.d(String.format("Location at %s now.", new Object[] { paramLocation.toString() }));
    f = paramLocation;
    if (paramLocation.isFromMockProvider()) {
      return;
    }
    Object localObject = WGS84_GCJ02.convert(paramLocation.getLongitude(), paramLocation.getLatitude());
    paramLocation.setLongitude(localObject[0]);
    paramLocation.setLatitude(localObject[1]);
    localObject = new StringBuilder();
    ((StringBuilder)localObject).append(a.size());
    ((StringBuilder)localObject).append(" listeners");
    LogUtil.d(((StringBuilder)localObject).toString());
    localObject = a.values().iterator();
    while (((Iterator)localObject).hasNext()) {
      ((GPSLocationListener)((Iterator)localObject).next()).onLocationUpdate(paramLocation);
    }
  }
  
  static void b(String paramString)
  {
    b.remove(paramString);
    if (b.isEmpty()) {
      i();
    }
  }
  
  private static void f()
  {
    try
    {
      c.requestLocationUpdates("gps", 1000L, 0.0F, d);
      return;
    }
    catch (SecurityException localSecurityException)
    {
      localSecurityException.printStackTrace();
    }
  }
  
  private static void g()
  {
    try
    {
      c.addGpsStatusListener(e);
      return;
    }
    catch (SecurityException localSecurityException)
    {
      localSecurityException.printStackTrace();
    }
  }
  
  private static void h()
  {
    if ((c != null) && (d != null) && (a.isEmpty())) {
      c.removeUpdates(d);
    }
  }
  
  private static void i()
  {
    if ((c != null) && (d != null) && (b.isEmpty())) {
      c.removeGpsStatusListener(e);
    }
  }
  
  static class GPSException
    extends Exception
  {
    CAUSE a;
    
    GPSException(CAUSE paramCAUSE)
    {
      a = paramCAUSE;
    }
    
    public static enum CAUSE
    {
      private CAUSE() {}
    }
  }
  
  public static abstract interface GPSLocationListener
  {
    public abstract void onLocationUpdate(Location paramLocation);
  }
  
  public static abstract interface GPSStatusListener
  {
    public abstract void onStatusUpdate(GpsStatus paramGpsStatus);
  }
  
  static class a
    extends CountDownTimer
  {
    private int a = 15;
    private long b;
    private ObservableEmitter<a> c;
    
    a(long paramLong1, long paramLong2, ObservableEmitter<a> paramObservableEmitter)
    {
      super(paramLong2);
      b = paramLong1;
      c = paramObservableEmitter;
      GPSManager.c();
    }
    
    private void a(boolean paramBoolean)
    {
      if (paramBoolean)
      {
        GPSManager.e();
        cancel();
        c.onNext(new a(true, false, "Accurate"));
        return;
      }
      c.onNext(new a(false, false, "Not accurate"));
    }
    
    public void onFinish()
    {
      a(false);
    }
    
    public void onTick(long paramLong)
    {
      double d;
      if (GPSManager.d() == null) {
        d = Double.POSITIVE_INFINITY;
      } else {
        d = GPSManager.d().getAccuracy();
      }
      Object localObject = new StringBuilder();
      ((StringBuilder)localObject).append("Accuracy: ");
      ((StringBuilder)localObject).append(String.valueOf(d));
      LogUtil.d(((StringBuilder)localObject).toString());
      if ((GPSManager.d() != null) && (GPSManager.d().isFromMockProvider()))
      {
        c.onError(new GPSManager.GPSException(GPSManager.GPSException.CAUSE.MOCK_LOCATION));
        GPSManager.e();
        cancel();
        return;
      }
      if (d <= a) {
        a(true);
      }
      if (paramLong < b / 2L) {
        a += 10;
      }
      localObject = c;
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append(d);
      localStringBuilder.append("/");
      localStringBuilder.append(a);
      ((ObservableEmitter)localObject).onNext(new a(false, true, localStringBuilder.toString()));
    }
    
    static class a
    {
      public boolean a;
      public boolean b;
      public String c;
      
      public a(boolean paramBoolean1, boolean paramBoolean2, String paramString)
      {
        a = paramBoolean1;
        b = paramBoolean2;
        c = paramString;
      }
    }
  }
}
