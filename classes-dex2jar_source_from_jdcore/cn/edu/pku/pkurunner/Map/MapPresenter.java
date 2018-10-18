package cn.edu.pku.pkurunner.Map;

import android.content.Context;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.location.GpsSatellite;
import android.location.GpsStatus;
import android.location.Location;
import android.support.annotation.NonNull;
import android.support.v7.app.AlertDialog;
import android.support.v7.app.AlertDialog.Builder;
import android.view.Menu;
import android.view.MenuItem;
import cn.edu.pku.pkurunner.Data;
import cn.edu.pku.pkurunner.Exception.DataException;
import cn.edu.pku.pkurunner.Model.PartialRecord;
import cn.edu.pku.pkurunner.Model.Point;
import cn.edu.pku.pkurunner.Model.Record;
import cn.edu.pku.pkurunner.Model.User;
import com.amap.api.maps2d.AMap;
import com.amap.api.maps2d.AMapUtils;
import com.amap.api.maps2d.CameraUpdateFactory;
import com.amap.api.maps2d.LocationSource.OnLocationChangedListener;
import com.amap.api.maps2d.model.LatLng;
import com.amap.api.maps2d.model.PolylineOptions;
import io.reactivex.Observable;
import io.reactivex.android.schedulers.AndroidSchedulers;
import io.reactivex.disposables.Disposable;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.TimeUnit;
import org.xutils.common.util.LogUtil;

public class MapPresenter
  implements MapContract.Presenter
{
  private c a = c.a;
  private double b;
  private double c;
  private int d;
  private SpeedHelper.SPEED_UNIT e = SpeedHelper.SPEED_UNIT.KilometerPerHour;
  private ArrayList<Point> f = new ArrayList();
  private MapContract.View g;
  private b h;
  private int i = 0;
  private boolean j = false;
  private boolean k = false;
  private boolean l = false;
  private Disposable m;
  private Point n;
  private a o = new a(null);
  private boolean p;
  
  public MapPresenter(@NonNull MapContract.View paramView)
  {
    g = paramView;
    h = new b();
  }
  
  private void a()
  {
    List localList = f.subList(i, f.size());
    PartialRecord localPartialRecord = new PartialRecord((int)b, (int)c, new Date(), d);
    try
    {
      Data.provideTrackForPartialRecord(Data.savePartialRecordToDatabase(localPartialRecord), localList).observeOn(AndroidSchedulers.mainThread()).subscribe(new -..Lambda.MapPresenter.gVr3nMKFSZqbV-wEva13GScpWj0(this), new -..Lambda.MapPresenter.wOtD1Kgu_Kot7keNKNwnzli970c(this));
      return;
    }
    catch (DataException localDataException)
    {
      localDataException.printStackTrace();
      g.makeSnackBar(2131689696, -1, new Object[] { localDataException.getMessage() });
      LogUtil.e(localDataException.toString());
    }
  }
  
  private void a(GpsStatus paramGpsStatus)
  {
    paramGpsStatus = paramGpsStatus.getSatellites().iterator();
    double d1 = 0.0D;
    int i2 = 0;
    int i1 = 0;
    while (paramGpsStatus.hasNext())
    {
      GpsSatellite localGpsSatellite = (GpsSatellite)paramGpsStatus.next();
      d1 += Math.pow(2.0D, localGpsSatellite.getSnr() / 10.0D);
      int i3 = i2;
      if (localGpsSatellite.usedInFix()) {
        i3 = i2 + 1;
      }
      i1 += 1;
      i2 = i3;
    }
    g.setAssistantText(2131689704, d1 / 80.0D, new Object[] { Integer.valueOf(i2), Integer.valueOf(i1), Double.valueOf(d1) });
  }
  
  private void a(Location paramLocation)
  {
    LogUtil.d(String.format("Current location (%f, %f).", new Object[] { Double.valueOf(paramLocation.getLongitude()), Double.valueOf(paramLocation.getLatitude()) }));
    Object localObject = new Point(0, 0, paramLocation.getLongitude(), paramLocation.getLatitude(), 0);
    switch (1.a[a.ordinal()])
    {
    default: 
      localObject = new LatLng(paramLocation.getLatitude(), paramLocation.getLongitude());
      if (!l) {
        g.getAMap().animateCamera(CameraUpdateFactory.changeLatLng((LatLng)localObject));
      }
      break;
    case 2: 
      if (!l) {
        g.getAMap().animateCamera(CameraUpdateFactory.changeLatLng(((Point)localObject).toLatLng()));
      }
      g.getLocationListener().onLocationChanged(paramLocation);
      if (n != null)
      {
        g.getAMap().addPolyline(new PolylineOptions().add(new LatLng[] { n.toLatLng(), ((Point)localObject).toLatLng() }).color(-65536));
        o.b((Point)localObject, paramLocation.getAccuracy(), paramLocation.getTime());
        paramLocation = g;
        double d1 = b / 1000.0D;
        double d2 = c;
        double d3 = SpeedHelper.toUnitOf(e, b / c);
        boolean bool;
        if (e == SpeedHelper.SPEED_UNIT.C) {
          bool = true;
        } else {
          bool = false;
        }
        paramLocation.updateTextView(d1, d2, d3, bool);
      }
      n = ((Point)localObject);
      break;
    case 1: 
      if (!l) {
        g.getAMap().animateCamera(CameraUpdateFactory.changeLatLng(((Point)localObject).toLatLng()));
      }
      g.getLocationListener().onLocationChanged(paramLocation);
      p = o.a((Point)localObject, paramLocation.getAccuracy(), paramLocation.getTime());
      if (!p)
      {
        o.b();
        g.makeSnackBar(2131689698, -1, new Object[0]);
      }
      n = ((Point)localObject);
      break;
    }
    g.getLocationListener().onLocationChanged(paramLocation);
    if (f.size() - i >= 30)
    {
      a();
      i = f.size();
    }
  }
  
  private void b()
  {
    g.showNotification();
    g.switchToRunning();
    g.makeToast(2131689716, 0, new Object[0]);
    g.toggleRunningIndication(true);
    g.indicatorShowUpAnimation();
    g.requireWakeLock();
    l = false;
    m = g.registerMapCenterHelper().doOnNext(new -..Lambda.MapPresenter.-Mq7qGM0f7UlJY-jjsXo3pnxHtM(this)).debounce(10L, TimeUnit.SECONDS).subscribe(new -..Lambda.MapPresenter.2fZQSx7x9KflVNf4easxxfVga00(this));
    e();
    a = c.b;
    b = 0.0D;
    c = 0.0D;
    d = 0;
    n = null;
    f.clear();
    o.a();
    if (!b.a(h)) {
      h.a();
    }
    b.b(h);
  }
  
  private void b(GpsStatus paramGpsStatus)
  {
    paramGpsStatus = paramGpsStatus.getSatellites().iterator();
    for (double d1 = 0.0D; paramGpsStatus.hasNext(); d1 += Math.pow(2.0D, ((GpsSatellite)paramGpsStatus.next()).getSnr() / 10.0D)) {}
    if (d1 < 80.0D)
    {
      g.notifyGPSInfo();
      g.setAssistantText(2131689705, d1 / 80.0D, new Object[0]);
    }
  }
  
  private void c()
  {
    g.switchToRunning();
    g.makeToast(2131689715, 0, new Object[0]);
    a = c.b;
    if ((n != null) && (p))
    {
      n.setStatus(1);
      f.add(n);
    }
  }
  
  private void d()
  {
    g.switchToPaused();
    g.makeToast(2131689713, 0, new Object[0]);
    a = c.c;
    if (!f.isEmpty()) {
      ((Point)f.get(f.size() - 1)).setStatus(2);
    }
  }
  
  private void e()
  {
    GPSManager.a(new -..Lambda.MapPresenter.9cnUfgx5J6BFNHk1KjCJNmdCOko(this), "presenter-location");
    GPSManager.a(new -..Lambda.MapPresenter.IsgPUkzGE6ZUlTHI18uZa6_N5Io(this), "presenter-location");
    g.setLocatingPointEnabled(true);
  }
  
  private void f()
  {
    GPSManager.a("presenter-location");
    GPSManager.b("presenter-location");
    g.setLocatingPointEnabled(false);
  }
  
  public boolean isRunning()
  {
    return a == c.b;
  }
  
  public boolean isRunningPaused()
  {
    return a == c.c;
  }
  
  public boolean onFabPauseClick(boolean paramBoolean)
  {
    switch (1.a[a.ordinal()])
    {
    default: 
      LogUtil.d("Unexpected branch when pause button pressed.");
      return true;
    case 2: 
      if (!paramBoolean)
      {
        g.makeToast(2131689709, 0, new Object[0]);
        return true;
      }
      d();
      return true;
    }
    c();
    return true;
  }
  
  public boolean onFabRunClick(boolean paramBoolean)
  {
    if (a == c.a)
    {
      g.makeWaitingDialog(2131689717, new Object[0]);
      GPSManager.b().subscribeOn(AndroidSchedulers.mainThread()).observeOn(AndroidSchedulers.mainThread()).subscribe(new -..Lambda.MapPresenter.G_dX9SreQDKb_7T3vlcx_us0WKk(this), new -..Lambda.MapPresenter.2JY7UOhu_yxTuXkti9snIQt5vcM(this));
    }
    else if (!paramBoolean)
    {
      g.makeToast(2131689708, 0, new Object[0]);
    }
    else
    {
      new AlertDialog.Builder(g.getFragmentContext()).setTitle(2131689695).setMessage(2131689692).setPositiveButton(2131689694, new -..Lambda.MapPresenter.exS7hqVGY1QmKtBss_pa2e0dNAc(this)).setNegativeButton(2131689693, -..Lambda.MapPresenter.iLWNwYB0m12Nmkwu4PlMi3Y7zyM.INSTANCE).create().show();
    }
    return true;
  }
  
  public void onStep()
  {
    if (a == c.b) {
      d += 1;
    }
  }
  
  public void pauseAutoLocating()
  {
    j = false;
    if (a != c.b)
    {
      if (a == c.c) {
        return;
      }
      f();
      return;
    }
  }
  
  public void pauseGPSAssistant()
  {
    k = false;
    GPSManager.b("presenter-status");
    g.toggleGPSAssistantIndication(false);
  }
  
  public void start() {}
  
  public void startAutoLocating()
  {
    j = true;
    if (a != c.b)
    {
      if (a == c.c) {
        return;
      }
      e();
      return;
    }
  }
  
  public void startGPSAssistant()
  {
    k = true;
    GPSManager.a(new -..Lambda.MapPresenter.JMtasezV3-re50CKHky8KtNyLiI(this), "presenter-status");
    g.toggleGPSAssistantIndication(true);
  }
  
  public void stopAndSwitchToIdle()
  {
    g.dismissNotification();
    g.toggleRunningIndication(false);
    g.switchToReset();
    g.releaseWakeLock();
    m.dispose();
    g.unregisterMapCenterHelper();
    if (!j) {
      f();
    }
    if (!k) {
      pauseGPSAssistant();
    }
    a = c.a;
    i = 0;
    b.c(h);
  }
  
  public void syncData()
  {
    try
    {
      Record localRecord = new Record(Data.getUser().getId(), (int)b, (int)c, new Date(), d);
      if (Data.getUser().isOffline().booleanValue())
      {
        localRecord.setUploaded(true);
        localRecord.setVerified(true);
      }
      Data.provideTrackForRecord(Data.saveRecordToDatabase(localRecord), f).observeOn(AndroidSchedulers.mainThread()).doOnNext(-..Lambda.MapPresenter.T1Htb4xPQxOQpyOmOoJcr-goN_g.INSTANCE).subscribe(-..Lambda.MapPresenter.EIntyysjfiNuKBbc_XAvRHVu5XQ.INSTANCE, new -..Lambda.MapPresenter.8KvpTCl0sbcxdVRarYo_hXKZDmM(this));
      return;
    }
    catch (DataException localDataException)
    {
      localDataException.printStackTrace();
      g.makeSnackBar(2131689702, -1, new Object[] { localDataException.getMessage() });
      LogUtil.e(localDataException.toString());
    }
  }
  
  public void syncOptionsMenu(Menu paramMenu)
  {
    MenuItem localMenuItem = paramMenu.findItem(2131296350);
    paramMenu = paramMenu.findItem(2131296349);
    localMenuItem.setChecked(j);
    paramMenu.setChecked(k);
  }
  
  public void updateUnitPreference()
  {
    e = Data.getSpeedUnitPreference();
    Data.setSpeedUnitPreference(e);
    g.updateTextSci(e);
  }
  
  private class a
  {
    ArrayList<Point> a = new ArrayList();
    int b = 0;
    Point c;
    long d;
    
    private a() {}
    
    void a()
    {
      a.clear();
      b = 0;
      c = null;
    }
    
    boolean a(Point paramPoint, float paramFloat, long paramLong)
    {
      if (paramFloat > 45.0F)
      {
        a.add(paramPoint);
        b += 1;
        return false;
      }
      if (c == null)
      {
        c = paramPoint;
        d = paramLong;
        return true;
      }
      if (AMapUtils.calculateLineDistance(paramPoint.toLatLng(), c.toLatLng()) > (b + 1) * 26)
      {
        a.add(paramPoint);
        b += 1;
        return false;
      }
      c = paramPoint;
      d = paramLong;
      return true;
    }
    
    void b()
    {
      a.clear();
    }
    
    void b(Point paramPoint, float paramFloat, long paramLong)
    {
      int i = 1;
      if (paramFloat > 45.0F)
      {
        a.add(paramPoint);
        b += 1;
        MapPresenter.a(MapPresenter.this, false);
        MapPresenter.a(MapPresenter.this).makeSnackBar(2131689698, -1, new Object[0]);
        return;
      }
      if (c == null)
      {
        c = paramPoint;
        d = paramLong;
        MapPresenter.b(MapPresenter.this).add(paramPoint);
        MapPresenter.a(MapPresenter.this, true);
        return;
      }
      paramFloat = AMapUtils.calculateLineDistance(paramPoint.toLatLng(), c.toLatLng());
      if (paramFloat > (b + 1) * 26)
      {
        a.add(paramPoint);
        b += 1;
        MapPresenter.a(MapPresenter.this, false);
        MapPresenter.a(MapPresenter.this).makeSnackBar(2131689698, -1, new Object[0]);
        return;
      }
      MapPresenter.a(MapPresenter.this, true);
      if (b == 0)
      {
        MapPresenter.b(MapPresenter.this).add(paramPoint);
        MapPresenter.a(MapPresenter.this, MapPresenter.c(MapPresenter.this) + paramFloat);
        MapPresenter.b(MapPresenter.this, MapPresenter.d(MapPresenter.this) + (paramLong - d) / 1000.0D);
      }
      else
      {
        if (a.size() != b)
        {
          ((Point)MapPresenter.b(MapPresenter.this).get(MapPresenter.b(MapPresenter.this).size() - 1)).setStatus(2);
          paramPoint.setStatus(1);
          MapPresenter.b(MapPresenter.this).add(paramPoint);
        }
        for (;;)
        {
          break;
          double d1 = paramPoint.getLatitude();
          double d4 = c.getLatitude();
          double d2 = paramPoint.getLongitude();
          double d3 = c.getLongitude();
          d1 = (d1 - d4) / (b + 1);
          d2 = (d2 - d3) / (b + 1);
          while (i <= b)
          {
            ArrayList localArrayList = MapPresenter.b(MapPresenter.this);
            d3 = c.getLatitude();
            d4 = i;
            localArrayList.add(new Point(new LatLng(d3 + d1 * d4, c.getLongitude() + d4 * d2)));
            i += 1;
          }
          MapPresenter.b(MapPresenter.this).add(paramPoint);
          MapPresenter.a(MapPresenter.this, MapPresenter.c(MapPresenter.this) + paramFloat);
          MapPresenter.b(MapPresenter.this, MapPresenter.d(MapPresenter.this) + (paramLong - d) / 1000.0D);
        }
        b = 0;
        a.clear();
      }
      c = paramPoint;
      d = paramLong;
    }
  }
  
  private class b
    implements SensorEventListener
  {
    private SensorManager b;
    private Sensor c;
    private boolean d = false;
    private float e = 10.0F;
    private float[] f = new float[6];
    private float[] g = new float[2];
    private float h;
    private float[] i = new float[6];
    private float[][] j = { new float[6], new float[6] };
    private float[] k = new float[6];
    private int l = -1;
    
    b()
    {
      float f1 = 'Ǡ' * 0.5F;
      h = f1;
      g[0] = (-(0.05098581F * f1));
      g[1] = (-(f1 * 0.016666668F));
    }
    
    private void b()
    {
      if (!d) {
        return;
      }
      b.registerListener(this, c, 3);
    }
    
    private void c()
    {
      if (!d) {
        return;
      }
      b.unregisterListener(this);
    }
    
    protected void a()
    {
      b = ((SensorManager)MapPresenter.a(MapPresenter.this).getFragmentContext().getSystemService("sensor"));
      SensorManager localSensorManager = b;
      boolean bool = true;
      c = localSensorManager.getDefaultSensor(1);
      if (c == null) {
        bool = false;
      }
      d = bool;
      if (!d) {
        MapPresenter.a(MapPresenter.this).makeToast(2131689712, 0, new Object[0]);
      }
    }
    
    public void onAccuracyChanged(Sensor paramSensor, int paramInt) {}
    
    public void onSensorChanged(SensorEvent paramSensorEvent)
    {
      if (!d) {
        return;
      }
      Sensor localSensor = sensor;
      for (;;)
      {
        try
        {
          m = localSensor.getType();
          i2 = 1;
          if (m == 1)
          {
            m = 0;
            float f1 = 0.0F;
            if (m < 3)
            {
              f1 += h + values[m] * g[1];
              m += 1;
              continue;
            }
            f1 /= 3.0F;
            float f2 = Float.compare(f1, f[0]);
            if (f2 == -i[0])
            {
              if (f2 > 0.0F)
              {
                m = 0;
                j[m][0] = f[0];
                float f3 = j[m][0];
                paramSensorEvent = j;
                int i3 = 1 - m;
                f3 = Math.abs(f3 - paramSensorEvent[i3][0]);
                if (f3 > e)
                {
                  if (f3 <= k[0] * 2.0F / 3.0F) {
                    break label304;
                  }
                  n = 1;
                  if (k[0] <= f3 / 3.0F) {
                    break label310;
                  }
                  i1 = 1;
                  if (l == i3) {
                    break label316;
                  }
                  if ((n != 0) && (i1 != 0) && (i2 != 0))
                  {
                    onStep();
                    l = m;
                  }
                  else
                  {
                    l = -1;
                  }
                }
                k[0] = f3;
              }
            }
            else
            {
              i[0] = f2;
              f[0] = f1;
            }
          }
          else
          {
            return;
          }
        }
        finally {}
        int m = 1;
        continue;
        label304:
        int n = 0;
        continue;
        label310:
        int i1 = 0;
        continue;
        label316:
        int i2 = 0;
      }
    }
  }
  
  private static enum c
  {
    private c() {}
  }
}
