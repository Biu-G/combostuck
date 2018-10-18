package com.amap.api.mapcore2d;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.TrafficStats;
import android.net.wifi.ScanResult;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Build.VERSION;
import android.os.Environment;
import android.provider.Settings.System;
import android.telephony.TelephonyManager;
import android.telephony.cdma.CdmaCellLocation;
import android.telephony.gsm.GsmCellLocation;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;
import java.io.File;
import java.lang.reflect.Method;
import java.net.NetworkInterface;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import javax.xml.parsers.SAXParser;
import javax.xml.parsers.SAXParserFactory;
import org.xml.sax.Attributes;
import org.xml.sax.SAXException;
import org.xml.sax.helpers.DefaultHandler;

public class ct
{
  private static String a = "";
  private static boolean b = false;
  private static String c;
  private static String d = "";
  private static String e = "";
  private static String f = "";
  private static String g = "";
  
  public static String a()
  {
    return c;
  }
  
  public static String a(Context paramContext)
  {
    try
    {
      paramContext = u(paramContext);
      return paramContext;
    }
    catch (Throwable paramContext)
    {
      paramContext.printStackTrace();
    }
    return "";
  }
  
  private static List<ScanResult> a(List<ScanResult> paramList)
  {
    int k = paramList.size();
    int i = 0;
    while (i < k - 1)
    {
      int j = 1;
      while (j < k - i)
      {
        int m = j - 1;
        if (getlevel > getlevel)
        {
          ScanResult localScanResult = (ScanResult)paramList.get(m);
          paramList.set(m, paramList.get(j));
          paramList.set(j, localScanResult);
        }
        j += 1;
      }
      i += 1;
    }
    return paramList;
  }
  
  private static boolean a(Context paramContext, String paramString)
  {
    return (paramContext != null) && (paramContext.checkCallingOrSelfPermission(paramString) == 0);
  }
  
  public static String b(Context paramContext)
  {
    try
    {
      paramContext = x(paramContext);
      return paramContext;
    }
    catch (Throwable paramContext)
    {
      paramContext.printStackTrace();
    }
    return "";
  }
  
  public static void b()
  {
    try
    {
      if (Build.VERSION.SDK_INT > 14)
      {
        TrafficStats.class.getDeclaredMethod("setThreadStatsTag", new Class[] { Integer.TYPE }).invoke(null, new Object[] { Integer.valueOf(40964) });
        return;
      }
    }
    catch (Throwable localThrowable)
    {
      dd.a(localThrowable, "DeviceInfo", "setTraficTag");
    }
  }
  
  public static int c(Context paramContext)
  {
    try
    {
      int i = y(paramContext);
      return i;
    }
    catch (Throwable paramContext)
    {
      paramContext.printStackTrace();
    }
    return -1;
  }
  
  public static int d(Context paramContext)
  {
    try
    {
      int i = v(paramContext);
      return i;
    }
    catch (Throwable paramContext)
    {
      paramContext.printStackTrace();
    }
    return -1;
  }
  
  private static String d()
  {
    do
    {
      try
      {
        localObject1 = Collections.list(NetworkInterface.getNetworkInterfaces()).iterator();
        do
        {
          if (!((Iterator)localObject1).hasNext()) {
            break;
          }
          localObject2 = (NetworkInterface)((Iterator)localObject1).next();
        } while (!((NetworkInterface)localObject2).getName().equalsIgnoreCase("wlan0"));
        localObject1 = null;
        if (Build.VERSION.SDK_INT < 9) {
          continue;
        }
        localObject1 = ((NetworkInterface)localObject2).getHardwareAddress();
      }
      catch (Exception localException)
      {
        Object localObject1;
        Object localObject2;
        int j;
        int i;
        dd.a(localException, "DeviceInfo", "getMacAddr");
      }
      localObject2 = new StringBuilder();
      j = localObject1.length;
      i = 0;
      while (i < j)
      {
        String str = Integer.toHexString(localObject1[i] & 0xFF).toUpperCase();
        if (str.length() == 1) {
          ((StringBuilder)localObject2).append("0");
        }
        ((StringBuilder)localObject2).append(str);
        ((StringBuilder)localObject2).append(":");
        i += 1;
      }
      if (((StringBuilder)localObject2).length() > 0) {
        ((StringBuilder)localObject2).deleteCharAt(((StringBuilder)localObject2).length() - 1);
      }
      localObject1 = ((StringBuilder)localObject2).toString();
      return localObject1;
      return "";
    } while (localException != null);
    return "";
  }
  
  public static String e(Context paramContext)
  {
    try
    {
      paramContext = t(paramContext);
      return paramContext;
    }
    catch (Throwable paramContext)
    {
      paramContext.printStackTrace();
    }
    return "";
  }
  
  public static String f(Context paramContext)
  {
    try
    {
      if ((a != null) && (!"".equals(a))) {
        return a;
      }
      if (a(paramContext, "android.permission.WRITE_SETTINGS")) {
        a = Settings.System.getString(paramContext.getContentResolver(), "mqBRboGZkQPcAkyk");
      }
      if ((a != null) && (!"".equals(a)))
      {
        paramContext = a;
        return paramContext;
      }
    }
    catch (Throwable paramContext)
    {
      try
      {
        for (;;)
        {
          if ("mounted".equals(Environment.getExternalStorageState()))
          {
            paramContext = Environment.getExternalStorageDirectory().getAbsolutePath();
            StringBuilder localStringBuilder = new StringBuilder();
            localStringBuilder.append(paramContext);
            localStringBuilder.append("/.UTSystemConfig/Global/Alvin2.xml");
            paramContext = new File(localStringBuilder.toString());
            if (paramContext.exists()) {
              SAXParserFactory.newInstance().newSAXParser().parse(paramContext, new a());
            }
          }
          if (a == null) {
            return "";
          }
          return a;
          paramContext = paramContext;
        }
      }
      catch (Throwable paramContext)
      {
        for (;;) {}
      }
    }
  }
  
  static String g(Context paramContext)
  {
    if (paramContext != null)
    {
      try
      {
        if (!a(paramContext, "android.permission.ACCESS_WIFI_STATE")) {
          return "";
        }
        paramContext = (WifiManager)paramContext.getSystemService("wifi");
        if (paramContext == null) {
          return "";
        }
        if (paramContext.isWifiEnabled())
        {
          paramContext = paramContext.getConnectionInfo().getBSSID();
          return paramContext;
        }
      }
      catch (Throwable paramContext)
      {
        dd.a(paramContext, "DeviceInfo", "getWifiMacs");
      }
      return "";
    }
    return "";
  }
  
  static String h(Context paramContext)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    if (paramContext != null) {}
    try
    {
      if (a(paramContext, "android.permission.ACCESS_WIFI_STATE"))
      {
        paramContext = (WifiManager)paramContext.getSystemService("wifi");
        if (paramContext == null) {
          return "";
        }
        if (!paramContext.isWifiEnabled()) {
          break label163;
        }
        paramContext = paramContext.getScanResults();
        if ((paramContext != null) && (paramContext.size() != 0))
        {
          paramContext = a(paramContext);
          int i = 0;
          int j = 1;
          while ((i < paramContext.size()) && (i < 7))
          {
            ScanResult localScanResult = (ScanResult)paramContext.get(i);
            if (j != 0) {
              j = 0;
            } else {
              localStringBuilder.append(";");
            }
            localStringBuilder.append(BSSID);
            i += 1;
          }
        }
        return localStringBuilder.toString();
      }
      paramContext = localStringBuilder.toString();
      return paramContext;
    }
    catch (Throwable paramContext)
    {
      label163:
      for (;;) {}
    }
    dd.a(paramContext, "DeviceInfo", "getWifiMacs");
    return localStringBuilder.toString();
  }
  
  public static String i(Context paramContext)
  {
    try
    {
      if ((d != null) && (!"".equals(d))) {
        return d;
      }
      if (!a(paramContext, "android.permission.ACCESS_WIFI_STATE")) {
        return d;
      }
      paramContext = (WifiManager)paramContext.getSystemService("wifi");
      if (paramContext == null) {
        return "";
      }
      d = paramContext.getConnectionInfo().getMacAddress();
      if (("02:00:00:00:00:00".equals(d)) || ("00:00:00:00:00:00".equals(d))) {
        d = d();
      }
    }
    catch (Throwable paramContext)
    {
      dd.a(paramContext, "DeviceInfo", "getDeviceMac");
    }
    return d;
  }
  
  static String[] j(Context paramContext)
  {
    try
    {
      if ((a(paramContext, "android.permission.READ_PHONE_STATE")) && (a(paramContext, "android.permission.ACCESS_COARSE_LOCATION")))
      {
        paramContext = (TelephonyManager)paramContext.getSystemService("phone");
        if (paramContext == null) {
          return new String[] { "", "" };
        }
        paramContext = paramContext.getCellLocation();
        int i;
        int j;
        if ((paramContext instanceof GsmCellLocation))
        {
          paramContext = (GsmCellLocation)paramContext;
          i = paramContext.getCid();
          j = paramContext.getLac();
          paramContext = new StringBuilder();
          paramContext.append(j);
          paramContext.append("||");
          paramContext.append(i);
          return new String[] { paramContext.toString(), "gsm" };
        }
        if ((paramContext instanceof CdmaCellLocation))
        {
          paramContext = (CdmaCellLocation)paramContext;
          i = paramContext.getSystemId();
          j = paramContext.getNetworkId();
          int k = paramContext.getBaseStationId();
          paramContext = new StringBuilder();
          paramContext.append(i);
          paramContext.append("||");
          paramContext.append(j);
          paramContext.append("||");
          paramContext.append(k);
          return new String[] { paramContext.toString(), "cdma" };
        }
      }
      else
      {
        return new String[] { "", "" };
      }
    }
    catch (Throwable paramContext)
    {
      dd.a(paramContext, "DeviceInfo", "cellInfo");
    }
    return tmp247_242;
  }
  
  static String k(Context paramContext)
  {
    try
    {
      if (!a(paramContext, "android.permission.READ_PHONE_STATE")) {
        return "";
      }
      paramContext = z(paramContext);
      if (paramContext == null) {
        return "";
      }
      paramContext = paramContext.getNetworkOperator();
      if (!TextUtils.isEmpty(paramContext))
      {
        if (paramContext.length() < 3) {
          return "";
        }
        paramContext = paramContext.substring(3);
        return paramContext;
      }
      return "";
    }
    catch (Throwable paramContext)
    {
      dd.a(paramContext, "DeviceInfo", "getMNC");
    }
    return "";
  }
  
  public static int l(Context paramContext)
  {
    try
    {
      int i = y(paramContext);
      return i;
    }
    catch (Throwable paramContext)
    {
      dd.a(paramContext, "DeviceInfo", "getNetWorkType");
    }
    return -1;
  }
  
  public static int m(Context paramContext)
  {
    try
    {
      int i = v(paramContext);
      return i;
    }
    catch (Throwable paramContext)
    {
      dd.a(paramContext, "DeviceInfo", "getActiveNetWorkType");
    }
    return -1;
  }
  
  public static NetworkInfo n(Context paramContext)
  {
    if (!a(paramContext, "android.permission.ACCESS_NETWORK_STATE")) {
      return null;
    }
    paramContext = w(paramContext);
    if (paramContext == null) {
      return null;
    }
    return paramContext.getActiveNetworkInfo();
  }
  
  static String o(Context paramContext)
  {
    try
    {
      paramContext = n(paramContext);
      if (paramContext == null) {
        return null;
      }
      paramContext = paramContext.getExtraInfo();
      return paramContext;
    }
    catch (Throwable paramContext)
    {
      dd.a(paramContext, "DeviceInfo", "getNetworkExtraInfo");
    }
    return null;
  }
  
  static String p(Context paramContext)
  {
    try
    {
      if ((e != null) && (!"".equals(e))) {
        return e;
      }
      DisplayMetrics localDisplayMetrics = new DisplayMetrics();
      paramContext = (WindowManager)paramContext.getSystemService("window");
      if (paramContext == null) {
        return "";
      }
      paramContext.getDefaultDisplay().getMetrics(localDisplayMetrics);
      int i = widthPixels;
      int j = heightPixels;
      if (j > i)
      {
        paramContext = new StringBuilder();
        paramContext.append(i);
        paramContext.append("*");
        paramContext.append(j);
      }
      for (;;)
      {
        paramContext = paramContext.toString();
        break;
        paramContext = new StringBuilder();
        paramContext.append(j);
        paramContext.append("*");
        paramContext.append(i);
      }
      e = paramContext;
    }
    catch (Throwable paramContext)
    {
      dd.a(paramContext, "DeviceInfo", "getReslution");
    }
    return e;
  }
  
  public static String q(Context paramContext)
  {
    try
    {
      if ((f != null) && (!"".equals(f))) {
        return f;
      }
      if (!a(paramContext, "android.permission.READ_PHONE_STATE")) {
        return f;
      }
      paramContext = z(paramContext);
      if (paramContext == null) {
        return "";
      }
      f = paramContext.getDeviceId();
      if (f == null) {
        f = "";
      }
    }
    catch (Throwable paramContext)
    {
      dd.a(paramContext, "DeviceInfo", "getDeviceID");
    }
    return f;
  }
  
  public static String r(Context paramContext)
  {
    try
    {
      paramContext = t(paramContext);
      return paramContext;
    }
    catch (Throwable paramContext)
    {
      dd.a(paramContext, "DeviceInfo", "getSubscriberId");
    }
    return "";
  }
  
  static String s(Context paramContext)
  {
    try
    {
      paramContext = u(paramContext);
      return paramContext;
    }
    catch (Throwable paramContext)
    {
      dd.a(paramContext, "DeviceInfo", "getNetworkOperatorName");
    }
    return "";
  }
  
  private static String t(Context paramContext)
  {
    if ((g != null) && (!"".equals(g))) {
      return g;
    }
    if (!a(paramContext, "android.permission.READ_PHONE_STATE")) {
      return g;
    }
    paramContext = z(paramContext);
    if (paramContext == null) {
      return "";
    }
    g = paramContext.getSubscriberId();
    if (g == null) {
      g = "";
    }
    return g;
  }
  
  private static String u(Context paramContext)
  {
    if (!a(paramContext, "android.permission.READ_PHONE_STATE")) {
      return null;
    }
    TelephonyManager localTelephonyManager = z(paramContext);
    if (localTelephonyManager == null) {
      return "";
    }
    String str = localTelephonyManager.getSimOperatorName();
    paramContext = str;
    if (TextUtils.isEmpty(str)) {
      paramContext = localTelephonyManager.getNetworkOperatorName();
    }
    return paramContext;
  }
  
  private static int v(Context paramContext)
  {
    if (paramContext != null)
    {
      if (!a(paramContext, "android.permission.ACCESS_NETWORK_STATE")) {
        return -1;
      }
      paramContext = w(paramContext);
      if (paramContext == null) {
        return -1;
      }
      paramContext = paramContext.getActiveNetworkInfo();
      if (paramContext == null) {
        return -1;
      }
      return paramContext.getType();
    }
    return -1;
  }
  
  private static ConnectivityManager w(Context paramContext)
  {
    return (ConnectivityManager)paramContext.getSystemService("connectivity");
  }
  
  private static String x(Context paramContext)
  {
    paramContext = r(paramContext);
    if (paramContext != null)
    {
      if (paramContext.length() < 5) {
        return "";
      }
      return paramContext.substring(3, 5);
    }
    return "";
  }
  
  private static int y(Context paramContext)
  {
    if (!a(paramContext, "android.permission.READ_PHONE_STATE")) {
      return -1;
    }
    paramContext = z(paramContext);
    if (paramContext == null) {
      return -1;
    }
    return paramContext.getNetworkType();
  }
  
  private static TelephonyManager z(Context paramContext)
  {
    return (TelephonyManager)paramContext.getSystemService("phone");
  }
  
  static class a
    extends DefaultHandler
  {
    a() {}
    
    public void characters(char[] paramArrayOfChar, int paramInt1, int paramInt2)
      throws SAXException
    {
      if (ct.c()) {
        ct.a(new String(paramArrayOfChar, paramInt1, paramInt2));
      }
    }
    
    public void endElement(String paramString1, String paramString2, String paramString3)
      throws SAXException
    {
      ct.a(false);
    }
    
    public void startElement(String paramString1, String paramString2, String paramString3, Attributes paramAttributes)
      throws SAXException
    {
      if ((paramString2.equals("string")) && ("UTDID".equals(paramAttributes.getValue("name")))) {
        ct.a(true);
      }
    }
  }
}
