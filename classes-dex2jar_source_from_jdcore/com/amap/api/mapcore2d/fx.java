package com.amap.api.mapcore2d;

import android.content.ContentResolver;
import android.content.Context;
import android.net.ConnectivityManager;
import android.net.wifi.ScanResult;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.TreeMap;

public final class fx
{
  static long e;
  static long f;
  static long g;
  static long h;
  WifiManager a;
  Object b = new Object();
  ArrayList<ScanResult> c = new ArrayList();
  ArrayList<ScanResult> d = new ArrayList();
  Context i;
  boolean j = false;
  StringBuilder k = null;
  boolean l = true;
  boolean m = true;
  String n = "isScanAlwaysAvailable";
  String o = null;
  TreeMap<Integer, ScanResult> p = null;
  public boolean q = true;
  ConnectivityManager r = null;
  private volatile WifiInfo s = null;
  
  public fx(Context paramContext, WifiManager paramWifiManager)
  {
    a = paramWifiManager;
    i = paramContext;
  }
  
  private static boolean a(int paramInt)
  {
    try
    {
      paramInt = WifiManager.calculateSignalLevel(paramInt, 20);
    }
    catch (ArithmeticException localArithmeticException)
    {
      gc.a(localArithmeticException, "APS", "wifiSigFine");
      paramInt = 20;
    }
    return paramInt > 0;
  }
  
  public static boolean a(WifiInfo paramWifiInfo)
  {
    if (paramWifiInfo == null) {
      return false;
    }
    if (TextUtils.isEmpty(paramWifiInfo.getSSID())) {
      return false;
    }
    return gf.a(paramWifiInfo.getBSSID());
  }
  
  public static String i()
  {
    return String.valueOf(gf.b() - h);
  }
  
  private List<ScanResult> j()
  {
    if (a != null) {
      try
      {
        List localList = a.getScanResults();
        o = null;
        return localList;
      }
      catch (Throwable localThrowable)
      {
        o = null;
        gc.a(localThrowable, "WifiManagerWrapper", "getScanResults");
        return null;
      }
      catch (SecurityException localSecurityException)
      {
        o = localSecurityException.getMessage();
      }
    }
    return null;
  }
  
  private WifiInfo k()
  {
    try
    {
      if (a != null)
      {
        WifiInfo localWifiInfo = a.getConnectionInfo();
        return localWifiInfo;
      }
    }
    catch (Throwable localThrowable)
    {
      gc.a(localThrowable, "WifiManagerWrapper", "getConnectionInfo");
    }
    return null;
  }
  
  private int l()
  {
    if (a != null) {
      return a.getWifiState();
    }
    return 4;
  }
  
  private boolean m()
  {
    if (gf.b() - e < 4900L) {
      return false;
    }
    if ((n()) && (gf.b() - e < 9900L)) {
      return false;
    }
    if (a != null)
    {
      e = gf.b();
      return a.startScan();
    }
    return false;
  }
  
  private boolean n()
  {
    if (r == null) {
      r = ((ConnectivityManager)gf.a(i, "connectivity"));
    }
    return a(r);
  }
  
  private boolean o()
  {
    WifiManager localWifiManager = a;
    if (localWifiManager == null) {
      return false;
    }
    boolean bool1;
    try
    {
      bool1 = localWifiManager.isWifiEnabled();
    }
    catch (Throwable localThrowable2)
    {
      gc.a(localThrowable2, "WifiManagerWrapper", "wifiEnabled1");
      bool1 = false;
    }
    if ((!bool1) && (gf.c() > 17)) {
      try
      {
        boolean bool2 = String.valueOf(gd.a(localWifiManager, n, new Object[0])).equals("true");
        return bool2;
      }
      catch (Throwable localThrowable1)
      {
        gc.a(localThrowable1, "WifiManagerWrapper", "wifiEnabled");
      }
    }
    return bool1;
  }
  
  private void p()
  {
    if (c != null)
    {
      if (c.isEmpty()) {
        return;
      }
      if (gf.b() - h > 3600000L)
      {
        b();
        c.clear();
      }
      if (p == null) {
        p = new TreeMap(Collections.reverseOrder());
      }
      p.clear();
      int i2 = c.size();
      int i1 = 0;
      ScanResult localScanResult;
      while (i1 < i2)
      {
        localScanResult = (ScanResult)c.get(i1);
        if (localScanResult != null) {
          localObject = BSSID;
        } else {
          localObject = "";
        }
        if ((gf.a((String)localObject)) && ((i2 <= 20) || (a(level))))
        {
          if (!TextUtils.isEmpty(SSID))
          {
            if ("<unknown ssid>".equals(SSID)) {
              break label181;
            }
            localObject = String.valueOf(i1);
          }
          else
          {
            localObject = "unkwn";
          }
          SSID = ((String)localObject);
          label181:
          p.put(Integer.valueOf(level * 25 + i1), localScanResult);
        }
        i1 += 1;
      }
      c.clear();
      Object localObject = p.values().iterator();
      while (((Iterator)localObject).hasNext())
      {
        localScanResult = (ScanResult)((Iterator)localObject).next();
        c.add(localScanResult);
      }
      p.clear();
    }
  }
  
  private void q()
  {
    long l1;
    int i1;
    if (t())
    {
      l1 = gf.b();
      i1 = 20;
      if (l1 - f >= 10000L) {
        synchronized (b)
        {
          d.clear();
        }
      }
      s();
    }
    for (;;)
    {
      if ((l1 - f >= 10000L) && (i1 > 0) && (d.isEmpty())) {}
      try
      {
        Thread.sleep(150L);
        i1 -= 1;
        continue;
        ??? = b;
        return;
      }
      catch (Throwable localThrowable)
      {
        for (;;) {}
      }
    }
  }
  
  private void r()
  {
    ArrayList localArrayList1 = c;
    ArrayList localArrayList2 = d;
    localArrayList1.clear();
    Object localObject1 = b;
    if (localArrayList2 != null) {}
    try
    {
      if (localArrayList2.size() > 0) {
        localArrayList1.addAll(localArrayList2);
      }
      return;
    }
    finally
    {
      for (;;) {}
    }
    throw localArrayList1;
  }
  
  private void s()
  {
    if (t()) {
      try
      {
        if (m()) {
          g = gf.b();
        }
        return;
      }
      catch (Throwable localThrowable)
      {
        gc.a(localThrowable, "APS", "updateWifi");
      }
    }
  }
  
  private boolean t()
  {
    q = o();
    if (!q) {
      return false;
    }
    if (!l) {
      return false;
    }
    if (g == 0L) {}
    for (;;)
    {
      return true;
      if (gf.b() - g < 4900L) {
        return false;
      }
      if (gf.b() - h < 1500L) {
        return false;
      }
      gf.b();
      long l1 = h;
    }
  }
  
  public final ArrayList<ScanResult> a()
  {
    return c;
  }
  
  public final void a(boolean paramBoolean)
  {
    Object localObject = i;
    if ((a != null) && (localObject != null))
    {
      if (!paramBoolean) {
        return;
      }
      if (gf.c() <= 17) {
        return;
      }
      localObject = ((Context)localObject).getContentResolver();
      try
      {
        if (((Integer)gd.a("android.provider.Settings$Global", "getInt", new Object[] { localObject, "wifi_scan_always_enabled" }, new Class[] { ContentResolver.class, String.class })).intValue() == 0)
        {
          Class localClass = Integer.TYPE;
          gd.a("android.provider.Settings$Global", "putInt", new Object[] { localObject, "wifi_scan_always_enabled", Integer.valueOf(1) }, new Class[] { ContentResolver.class, String.class, localClass });
        }
        return;
      }
      catch (Throwable localThrowable)
      {
        gc.a(localThrowable, "WifiManagerWrapper", "enableWifiAlwaysScan");
      }
    }
  }
  
  public final boolean a(ConnectivityManager paramConnectivityManager)
  {
    WifiManager localWifiManager = a;
    if (localWifiManager == null) {
      return false;
    }
    try
    {
      if (gf.a(paramConnectivityManager.getActiveNetworkInfo()) == 1)
      {
        boolean bool = a(localWifiManager.getConnectionInfo());
        if (bool) {
          return true;
        }
      }
    }
    catch (Throwable paramConnectivityManager)
    {
      gc.a(paramConnectivityManager, "WifiManagerWrapper", "wifiAccess");
    }
    return false;
  }
  
  public final void b()
  {
    s = null;
    synchronized (b)
    {
      d.clear();
      return;
    }
  }
  
  public final void b(boolean paramBoolean)
  {
    if (paramBoolean) {
      q();
    } else {
      s();
    }
    if (gf.b() - h > 20000L) {
      synchronized (b)
      {
        d.clear();
      }
    }
    f = gf.b();
    if (d.isEmpty())
    {
      h = gf.b();
      List localList = j();
      if (localList != null) {
        synchronized (b)
        {
          d.addAll(localList);
        }
      }
      r();
      p();
    }
  }
  
  public final void c()
  {
    if (a == null) {
      return;
    }
    if (gf.b() - h > 4900L)
    {
      Object localObject1 = null;
      try
      {
        List localList = j();
        localObject1 = localList;
      }
      catch (Throwable localThrowable)
      {
        gc.a(localThrowable, "APS", "onReceive part1");
      }
      if (localObject1 != null) {
        synchronized (b)
        {
          d.clear();
          d.addAll(localObject1);
          h = gf.b();
        }
      }
      synchronized (b)
      {
        d.clear();
        r();
        p();
        return;
      }
    }
  }
  
  public final void c(boolean paramBoolean)
  {
    l = paramBoolean;
    m = true;
  }
  
  public final void d()
  {
    if (a == null) {
      return;
    }
    int i1;
    try
    {
      i1 = l();
    }
    catch (Throwable localThrowable)
    {
      gc.a(localThrowable, "APS", "onReceive part");
      i1 = 4;
    }
    if (d == null) {
      d = new ArrayList();
    }
    if (i1 != 4)
    {
      switch (i1)
      {
      default: 
        return;
      case 1: 
        b();
        return;
      }
      b();
      return;
    }
    b();
  }
  
  public final boolean e()
  {
    return q;
  }
  
  public final WifiInfo f()
  {
    s = k();
    return s;
  }
  
  public final boolean g()
  {
    return j;
  }
  
  public final void h()
  {
    b();
    c.clear();
  }
}
