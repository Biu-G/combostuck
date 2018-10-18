package com.amap.api.mapcore2d;

import android.annotation.SuppressLint;
import android.content.Context;
import android.net.ConnectivityManager;
import android.net.wifi.ScanResult;
import android.net.wifi.WifiInfo;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.zip.CRC32;

@SuppressLint({"NewApi"})
public final class gb
{
  public static String K;
  public String A = null;
  public String B = null;
  public ArrayList<fv> C = new ArrayList();
  public String D = null;
  public String E = null;
  public ArrayList<ScanResult> F = new ArrayList();
  public ArrayList<ft> G = new ArrayList();
  public String H = null;
  public String I = null;
  public byte[] J = null;
  public String L = null;
  private byte[] M = null;
  private int N = 0;
  public String a = "1";
  public short b = 0;
  public String c = null;
  public String d = null;
  public String e = null;
  public String f = null;
  public String g = null;
  public String h = null;
  public String i = null;
  public String j = null;
  public String k = null;
  public String l = null;
  public String m = null;
  public String n = null;
  public String o = null;
  public String p = null;
  public String q = null;
  public String r = null;
  public String s = null;
  public String t = null;
  public String u = null;
  public String v = null;
  public String w = null;
  public String x = null;
  public String y = null;
  public int z = 0;
  
  public gb() {}
  
  private String a(String paramString, int paramInt)
  {
    String[] arrayOfString = B.split("\\*")[paramInt].split(",");
    if (paramString.equals("lac")) {
      return arrayOfString[0];
    }
    if (paramString.equals("cellid")) {
      return arrayOfString[1];
    }
    if (paramString.equals("signal")) {
      return arrayOfString[2];
    }
    return null;
  }
  
  private byte[] a(String paramString)
  {
    Object localObject2 = paramString.split(":");
    byte[] arrayOfByte = new byte[6];
    if (localObject2 != null) {
      localObject1 = localObject2;
    }
    for (;;)
    {
      try
      {
        if (localObject2.length == 6) {
          continue;
        }
        localObject2 = new String[6];
        i1 = 0;
        localObject1 = localObject2;
        if (i1 >= localObject2.length) {
          continue;
        }
        localObject2[i1] = "0";
        i1 += 1;
        continue;
      }
      catch (Throwable localThrowable)
      {
        continue;
        int i1 = 0;
        continue;
      }
      localObject2 = arrayOfByte;
      if (i1 >= localObject1.length) {
        continue;
      }
      if (localObject1[i1].length() > 2) {
        localObject1[i1] = localObject1[i1].substring(0, 2);
      }
      arrayOfByte[i1] = ((byte)Integer.parseInt(localObject1[i1], 16));
      i1 += 1;
    }
    Object localObject1 = new StringBuilder("getMacBa ");
    ((StringBuilder)localObject1).append(paramString);
    gc.a((Throwable)localObject2, "Req", ((StringBuilder)localObject1).toString());
    localObject2 = a("00:00:00:00:00:00");
    return localObject2;
  }
  
  private String b(String paramString)
  {
    String str = A;
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(paramString);
    localStringBuilder.append(">");
    if (!str.contains(localStringBuilder.toString())) {
      return "0";
    }
    str = A;
    localStringBuilder = new StringBuilder();
    localStringBuilder.append(paramString);
    localStringBuilder.append(">");
    int i1 = str.indexOf(localStringBuilder.toString());
    str = A;
    localStringBuilder = new StringBuilder("</");
    localStringBuilder.append(paramString);
    int i2 = str.indexOf(localStringBuilder.toString());
    return A.substring(i1 + paramString.length() + 1, i2);
  }
  
  private void b()
  {
    if (TextUtils.isEmpty(a)) {
      a = "";
    }
    if (TextUtils.isEmpty(c)) {
      c = "";
    }
    if (TextUtils.isEmpty(d)) {
      d = "";
    }
    if (TextUtils.isEmpty(e)) {
      e = "";
    }
    if (TextUtils.isEmpty(f)) {
      f = "";
    }
    if (TextUtils.isEmpty(g)) {
      g = "";
    }
    if (TextUtils.isEmpty(h)) {
      h = "";
    }
    if (TextUtils.isEmpty(i)) {
      i = "";
    }
    if (TextUtils.isEmpty(j)) {}
    while ((!j.equals("1")) && (!j.equals("2")))
    {
      j = "0";
      break;
    }
    if (TextUtils.isEmpty(k)) {}
    while ((!k.equals("0")) && (!k.equals("1")))
    {
      k = "0";
      break;
    }
    if (TextUtils.isEmpty(l)) {
      l = "";
    }
    if (TextUtils.isEmpty(m)) {
      m = "";
    }
    if (TextUtils.isEmpty(n)) {
      n = "";
    }
    if (TextUtils.isEmpty(o)) {
      o = "";
    }
    if (TextUtils.isEmpty(p)) {
      p = "";
    }
    if (TextUtils.isEmpty(q)) {
      q = "";
    }
    if (TextUtils.isEmpty(r)) {
      r = "";
    }
    if (TextUtils.isEmpty(s)) {
      s = "";
    }
    if (TextUtils.isEmpty(t)) {
      t = "";
    }
    if (TextUtils.isEmpty(u)) {
      u = "";
    }
    if (TextUtils.isEmpty(v)) {
      v = "";
    }
    if (TextUtils.isEmpty(w)) {
      w = "";
    }
    if (TextUtils.isEmpty(x)) {
      x = "";
    }
    if (TextUtils.isEmpty(y)) {}
    while ((!y.equals("1")) && (!y.equals("2")))
    {
      y = "0";
      break;
    }
    if (!fw.a(z)) {
      z = 0;
    }
    if (TextUtils.isEmpty(A)) {
      A = "";
    }
    if (TextUtils.isEmpty(B)) {
      B = "";
    }
    if (TextUtils.isEmpty(E)) {
      E = "";
    }
    if (TextUtils.isEmpty(H)) {
      H = "";
    }
    if (TextUtils.isEmpty(I)) {
      I = "";
    }
    if (TextUtils.isEmpty(K)) {
      K = "";
    }
    if (J == null) {
      J = new byte[0];
    }
  }
  
  public final void a(Context paramContext, boolean paramBoolean1, boolean paramBoolean2, fw paramFw, fx paramFx, ConnectivityManager paramConnectivityManager, String paramString1, String paramString2)
  {
    String str3 = "0";
    String str5 = cp.f(paramContext);
    int i3 = gf.f();
    L = paramString2;
    String str1 = "api_serverSDK_130905";
    String str2 = "S128DF1572465B890OE3F7A13167KLEI";
    if (!paramBoolean2)
    {
      str1 = "UC_nlp_20131029";
      str2 = "BKZCHMBBSSUK7U8GLUKHBB56CCFF78U";
    }
    localStringBuilder1 = new StringBuilder();
    localStringBuilder2 = new StringBuilder();
    int i4 = paramFw.c();
    int i1 = paramFw.d();
    paramString2 = paramFw.e();
    ArrayList localArrayList3 = fw.a();
    ArrayList localArrayList2 = fw.b();
    ArrayList localArrayList1 = paramFx.a();
    if (i1 == 2) {
      str3 = "1";
    }
    if (paramString2 != null)
    {
      if (TextUtils.isEmpty(gc.c)) {
        try
        {
          gc.c = ct.q(paramContext);
        }
        catch (Throwable localThrowable1)
        {
          gc.a(localThrowable1, "APS", "getApsReq part4");
        }
      }
      if (TextUtils.isEmpty(gc.c)) {
        gc.c = "888888888888888";
      }
      if (TextUtils.isEmpty(gc.d)) {
        try
        {
          gc.d = paramString2.getSubscriberId();
        }
        catch (Throwable localThrowable2)
        {
          gc.a(localThrowable2, "APS", "getApsReq part2");
        }
      }
      if (TextUtils.isEmpty(gc.d)) {
        gc.d = "888888888888888";
      }
    }
    try
    {
      paramConnectivityManager = paramConnectivityManager.getActiveNetworkInfo();
    }
    catch (Throwable paramConnectivityManager)
    {
      gc.a(paramConnectivityManager, "APS", "getApsReq part");
      paramConnectivityManager = null;
    }
    WifiInfo localWifiInfo = paramFx.f();
    paramBoolean2 = fx.a(localWifiInfo);
    String str4;
    if (gf.a(paramConnectivityManager) != -1)
    {
      str4 = gf.b(paramString2);
      if ((paramBoolean2) && (paramFx.e())) {
        paramString2 = "2";
      } else {
        paramString2 = "1";
      }
    }
    else
    {
      str4 = "";
      paramString2 = "";
    }
    if (!localArrayList3.isEmpty())
    {
      StringBuilder localStringBuilder3 = new StringBuilder();
      switch (i1)
      {
      default: 
        paramConnectivityManager = "";
        break;
      case 2: 
        paramConnectivityManager = (fv)localArrayList3.get(0);
        localStringBuilder3.delete(0, localStringBuilder3.length());
        localStringBuilder3.append("<mcc>");
        localStringBuilder3.append(a);
        localStringBuilder3.append("</mcc>");
        localStringBuilder3.append("<sid>");
        localStringBuilder3.append(g);
        localStringBuilder3.append("</sid>");
        localStringBuilder3.append("<nid>");
        localStringBuilder3.append(h);
        localStringBuilder3.append("</nid>");
        localStringBuilder3.append("<bid>");
        localStringBuilder3.append(i);
        localStringBuilder3.append("</bid>");
        if ((f > 0) && (e > 0))
        {
          localStringBuilder3.append("<lon>");
          localStringBuilder3.append(f);
          localStringBuilder3.append("</lon>");
          localStringBuilder3.append("<lat>");
          localStringBuilder3.append(e);
          localStringBuilder3.append("</lat>");
        }
        localStringBuilder3.append("<signal>");
        localStringBuilder3.append(j);
        localStringBuilder3.append("</signal>");
        paramConnectivityManager = localStringBuilder3.toString();
        break;
      case 1: 
        paramConnectivityManager = (fv)localArrayList3.get(0);
        localStringBuilder3.delete(0, localStringBuilder3.length());
        localStringBuilder3.append("<mcc>");
        localStringBuilder3.append(a);
        localStringBuilder3.append("</mcc>");
        localStringBuilder3.append("<mnc>");
        localStringBuilder3.append(b);
        localStringBuilder3.append("</mnc>");
        localStringBuilder3.append("<lac>");
        localStringBuilder3.append(c);
        localStringBuilder3.append("</lac>");
        localStringBuilder3.append("<cellid>");
        localStringBuilder3.append(d);
        localStringBuilder3.append("</cellid>");
        localStringBuilder3.append("<signal>");
        localStringBuilder3.append(j);
        localStringBuilder3.append("</signal>");
        paramConnectivityManager = localStringBuilder3.toString();
        i1 = 1;
        while (i1 < localArrayList3.size())
        {
          fv localFv = (fv)localArrayList3.get(i1);
          localStringBuilder1.append(c);
          localStringBuilder1.append(",");
          localStringBuilder1.append(d);
          localStringBuilder1.append(",");
          localStringBuilder1.append(j);
          if (i1 < localArrayList3.size() - 1) {
            localStringBuilder1.append("*");
          }
          i1 += 1;
        }
      }
      localStringBuilder3.delete(0, localStringBuilder3.length());
    }
    else
    {
      paramConnectivityManager = "";
    }
    if (((i4 & 0x4) == 4) && (!localArrayList2.isEmpty()))
    {
      C.clear();
      C.addAll(localArrayList2);
    }
    else
    {
      C.clear();
    }
    if (paramFx.e()) {
      if (paramBoolean2)
      {
        localStringBuilder2.append(paramFx.f().getBSSID());
        localStringBuilder2.append(",");
        int i2 = paramFx.f().getRssi();
        if (i2 < -128) {}
        do
        {
          i1 = 0;
          break;
          i1 = i2;
        } while (i2 > 127);
        localStringBuilder2.append(i1);
        localStringBuilder2.append(",");
        paramFx = localWifiInfo.getSSID();
      }
    }
    try
    {
      i1 = localWifiInfo.getSSID().getBytes("UTF-8").length;
    }
    catch (Exception localException)
    {
      try
      {
        short s1;
        if (!TextUtils.isEmpty(K)) {
          break label1385;
        }
        K = ct.f(paramContext);
        localStringBuilder1.delete(0, localStringBuilder1.length());
        localStringBuilder2.delete(0, localStringBuilder2.length());
        return;
        localException = localException;
      }
      catch (Throwable paramContext)
      {
        for (;;) {}
      }
    }
    i1 = 32;
    if (i1 >= 32) {
      paramFx = "unkwn";
    }
    localStringBuilder2.append(paramFx.replace("*", "."));
    if ((localArrayList1 != null) && (F != null))
    {
      F.clear();
      F.addAll(localArrayList1);
      break label1143;
      paramFx.b();
      if (F != null) {
        F.clear();
      }
    }
    label1143:
    if (!paramBoolean1) {}
    for (s1 = 2;; s1 = 0)
    {
      b = s1;
      break;
    }
    c = str1;
    d = str2;
    f = gf.d();
    paramFx = new StringBuilder("android");
    paramFx.append(gf.e());
    g = paramFx.toString();
    h = gf.b(paramContext);
    i = str3;
    j = "0";
    k = "0";
    l = "0";
    m = "0";
    n = "0";
    o = str5;
    p = gc.c;
    q = gc.d;
    s = String.valueOf(i3);
    t = paramString1;
    v = "3.4.0";
    w = null;
    u = "";
    x = str4;
    y = paramString2;
    z = i4;
    A = paramConnectivityManager;
    B = localStringBuilder1.toString();
    D = paramFw.h();
    H = fx.i();
    E = localStringBuilder2.toString();
  }
  
  public final byte[] a()
  {
    b();
    arrayOfByte16 = new byte[2];
    Object localObject2 = new byte[4];
    localObject1 = J;
    i3 = 4096;
    if (localObject1 != null) {
      i3 = 4096 + (J.length + 1);
    }
    if ((M != null) && (i3 <= N))
    {
      localObject1 = M;
    }
    else
    {
      localObject1 = new byte[i3];
      M = ((byte[])localObject1);
      N = i3;
    }
    localObject1[0] = Byte.parseByte(a);
    byte[] arrayOfByte1 = gf.a(b, null);
    System.arraycopy(arrayOfByte1, 0, localObject1, 1, arrayOfByte1.length);
    i4 = arrayOfByte1.length + 1;
    i3 = i4;
    try
    {
      arrayOfByte1 = c.getBytes("GBK");
      i3 = i4;
      localObject1[i4] = ((byte)arrayOfByte1.length);
      i4 += 1;
      i3 = i4;
      System.arraycopy(arrayOfByte1, 0, localObject1, i4, arrayOfByte1.length);
      i3 = i4;
      i5 = arrayOfByte1.length;
      i3 = i4 + i5;
    }
    catch (Throwable localThrowable6)
    {
      gc.a(localThrowable6, "Req", "buildV4Dot2");
      localObject1[i3] = 0;
      i3 += 1;
    }
    i4 = i3;
    try
    {
      byte[] arrayOfByte2 = d.getBytes("GBK");
      i4 = i3;
      localObject1[i3] = ((byte)arrayOfByte2.length);
      i3 += 1;
      i4 = i3;
      System.arraycopy(arrayOfByte2, 0, localObject1, i3, arrayOfByte2.length);
      i4 = i3;
      i5 = arrayOfByte2.length;
      i3 += i5;
    }
    catch (Throwable localThrowable7)
    {
      gc.a(localThrowable7, "Req", "buildV4Dot21");
      localObject1[i4] = 0;
      i3 = i4 + 1;
    }
    i4 = i3;
    try
    {
      byte[] arrayOfByte3 = o.getBytes("GBK");
      i4 = i3;
      localObject1[i3] = ((byte)arrayOfByte3.length);
      i3 += 1;
      i4 = i3;
      System.arraycopy(arrayOfByte3, 0, localObject1, i3, arrayOfByte3.length);
      i4 = i3;
      i5 = arrayOfByte3.length;
      i3 += i5;
    }
    catch (Throwable localThrowable8)
    {
      gc.a(localThrowable8, "Req", "buildV4Dot22");
      localObject1[i4] = 0;
      i3 = i4 + 1;
    }
    i4 = i3;
    try
    {
      byte[] arrayOfByte4 = e.getBytes("GBK");
      i4 = i3;
      localObject1[i3] = ((byte)arrayOfByte4.length);
      i3 += 1;
      i4 = i3;
      System.arraycopy(arrayOfByte4, 0, localObject1, i3, arrayOfByte4.length);
      i4 = i3;
      i5 = arrayOfByte4.length;
      i3 += i5;
    }
    catch (Throwable localThrowable9)
    {
      gc.a(localThrowable9, "Req", "buildV4Dot23");
      localObject1[i4] = 0;
      i3 = i4 + 1;
    }
    i4 = i3;
    try
    {
      byte[] arrayOfByte5 = f.getBytes("GBK");
      i4 = i3;
      localObject1[i3] = ((byte)arrayOfByte5.length);
      i3 += 1;
      i4 = i3;
      System.arraycopy(arrayOfByte5, 0, localObject1, i3, arrayOfByte5.length);
      i4 = i3;
      i5 = arrayOfByte5.length;
      i3 += i5;
    }
    catch (Throwable localThrowable10)
    {
      gc.a(localThrowable10, "Req", "buildV4Dot24");
      localObject1[i4] = 0;
      i3 = i4 + 1;
    }
    i4 = i3;
    try
    {
      byte[] arrayOfByte6 = g.getBytes("GBK");
      i4 = i3;
      localObject1[i3] = ((byte)arrayOfByte6.length);
      i3 += 1;
      i4 = i3;
      System.arraycopy(arrayOfByte6, 0, localObject1, i3, arrayOfByte6.length);
      i4 = i3;
      i5 = arrayOfByte6.length;
      i3 += i5;
    }
    catch (Throwable localThrowable11)
    {
      gc.a(localThrowable11, "Req", "buildV4Dot25");
      localObject1[i4] = 0;
      i3 = i4 + 1;
    }
    i4 = i3;
    try
    {
      byte[] arrayOfByte7 = u.getBytes("GBK");
      i4 = i3;
      localObject1[i3] = ((byte)arrayOfByte7.length);
      i3 += 1;
      i4 = i3;
      System.arraycopy(arrayOfByte7, 0, localObject1, i3, arrayOfByte7.length);
      i4 = i3;
      i5 = arrayOfByte7.length;
      i3 += i5;
    }
    catch (Throwable localThrowable12)
    {
      gc.a(localThrowable12, "Req", "buildV4Dot26");
      localObject1[i4] = 0;
      i3 = i4 + 1;
    }
    i4 = i3;
    try
    {
      byte[] arrayOfByte8 = h.getBytes("GBK");
      i4 = i3;
      localObject1[i3] = ((byte)arrayOfByte8.length);
      i3 += 1;
      i4 = i3;
      System.arraycopy(arrayOfByte8, 0, localObject1, i3, arrayOfByte8.length);
      i4 = i3;
      i5 = arrayOfByte8.length;
      i3 += i5;
    }
    catch (Throwable localThrowable13)
    {
      gc.a(localThrowable13, "Req", "buildV4Dot27");
      localObject1[i4] = 0;
      i3 = i4 + 1;
    }
    i4 = i3;
    try
    {
      byte[] arrayOfByte9 = p.getBytes("GBK");
      i4 = i3;
      localObject1[i3] = ((byte)arrayOfByte9.length);
      i3 += 1;
      i4 = i3;
      System.arraycopy(arrayOfByte9, 0, localObject1, i3, arrayOfByte9.length);
      i4 = i3;
      i5 = arrayOfByte9.length;
      i3 += i5;
    }
    catch (Throwable localThrowable14)
    {
      gc.a(localThrowable14, "Req", "buildV4Dot28");
      localObject1[i4] = 0;
      i3 = i4 + 1;
    }
    i4 = i3;
    try
    {
      byte[] arrayOfByte10 = q.getBytes("GBK");
      i4 = i3;
      localObject1[i3] = ((byte)arrayOfByte10.length);
      i3 += 1;
      i4 = i3;
      System.arraycopy(arrayOfByte10, 0, localObject1, i3, arrayOfByte10.length);
      i4 = i3;
      i5 = arrayOfByte10.length;
      i3 += i5;
    }
    catch (Throwable localThrowable15)
    {
      gc.a(localThrowable15, "Req", "buildV4Dot29");
      localObject1[i4] = 0;
      i3 = i4 + 1;
    }
    i4 = i3;
    try
    {
      if (TextUtils.isEmpty(t))
      {
        localObject1[i3] = 0;
      }
      else
      {
        i4 = i3;
        byte[] arrayOfByte11 = a(t);
        i4 = i3;
        localObject1[i3] = ((byte)arrayOfByte11.length);
        i3 += 1;
        i4 = i3;
        System.arraycopy(arrayOfByte11, 0, localObject1, i3, arrayOfByte11.length);
        i4 = i3;
        i5 = arrayOfByte11.length;
        i3 += i5;
      }
    }
    catch (Throwable localThrowable16)
    {
      gc.a(localThrowable16, "Req", "buildV4Dot219");
      localObject1[i4] = 0;
      i3 = i4;
      i3 += 1;
    }
    i4 = i3;
    try
    {
      byte[] arrayOfByte12 = v.getBytes("GBK");
      i4 = i3;
      localObject1[i3] = ((byte)arrayOfByte12.length);
      i3 += 1;
      i4 = i3;
      System.arraycopy(arrayOfByte12, 0, localObject1, i3, arrayOfByte12.length);
      i4 = i3;
      i5 = arrayOfByte12.length;
      i3 += i5;
    }
    catch (Throwable localThrowable17)
    {
      gc.a(localThrowable17, "Req", "buildV4Dot211");
      localObject1[i4] = 0;
      i3 = i4 + 1;
    }
    i4 = i3;
    try
    {
      byte[] arrayOfByte13 = w.getBytes("GBK");
      i4 = i3;
      localObject1[i3] = ((byte)arrayOfByte13.length);
      i3 += 1;
      i4 = i3;
      System.arraycopy(arrayOfByte13, 0, localObject1, i3, arrayOfByte13.length);
      i4 = i3;
      i5 = arrayOfByte13.length;
      i3 += i5;
    }
    catch (Throwable localThrowable18)
    {
      gc.a(localThrowable18, "Req", "buildV4Dot212");
      localObject1[i4] = 0;
      i3 = i4 + 1;
    }
    i4 = i3;
    try
    {
      if (TextUtils.isEmpty(K))
      {
        localObject1[i3] = 0;
      }
      else
      {
        i4 = i3;
        byte[] arrayOfByte14 = K.getBytes("GBK");
        i4 = i3;
        localObject1[i3] = ((byte)arrayOfByte14.length);
        i3 += 1;
        i4 = i3;
        System.arraycopy(arrayOfByte14, 0, localObject1, i3, arrayOfByte14.length);
        i4 = i3;
        i5 = arrayOfByte14.length;
        i3 += i5;
      }
    }
    catch (Throwable localThrowable19)
    {
      gc.a(localThrowable19, "Req", "buildV4Dot212");
      localObject1[i4] = 0;
      i3 = i4;
      i3 += 1;
    }
    i4 = i3;
    try
    {
      byte[] arrayOfByte15 = x.getBytes("GBK");
      i4 = i3;
      localObject1[i3] = ((byte)arrayOfByte15.length);
      i3 += 1;
      i4 = i3;
      System.arraycopy(arrayOfByte15, 0, localObject1, i3, arrayOfByte15.length);
      i4 = i3;
      i5 = arrayOfByte15.length;
      i3 += i5;
    }
    catch (Throwable localThrowable20)
    {
      gc.a(localThrowable20, "Req", "buildV4Dot213");
      localObject1[i4] = 0;
      i3 = i4 + 1;
    }
    localObject1[i3] = Byte.parseByte(y);
    i3 += 1;
    localObject1[i3] = Byte.parseByte(j);
    i3 += 1;
    i5 = z & 0x3;
    localObject1[i3] = ((byte)z);
    i4 = i3 + 1;
    if (i5 == 1)
    {
      localObject4 = gf.b(b("mcc"));
      System.arraycopy(localObject4, 0, localObject1, i4, localObject4.length);
      i3 = i4 + localObject4.length;
      localObject4 = gf.b(b("mnc"));
      System.arraycopy(localObject4, 0, localObject1, i3, localObject4.length);
      i3 += localObject4.length;
      localObject4 = gf.b(b("lac"));
      System.arraycopy(localObject4, 0, localObject1, i3, localObject4.length);
      i3 += localObject4.length;
      localObject4 = gf.c(b("cellid"));
      System.arraycopy(localObject4, 0, localObject1, i3, localObject4.length);
      i5 = i3 + localObject4.length;
      i4 = Integer.parseInt(b("signal"));
      if (i4 > 127) {}
      do
      {
        i3 = 0;
        break;
        i3 = i4;
      } while (i4 < -128);
      localObject1[i5] = ((byte)i3);
      i3 = i5 + 1;
      localObject4 = gf.a(0, arrayOfByte16);
      System.arraycopy(localObject4, 0, localObject1, i3, localObject4.length);
      i3 += 2;
      if (B.length() == 0) {
        localObject1[i3] = 0;
      }
    }
    for (;;)
    {
      i3 += 1;
      break;
      i6 = B.split("\\*").length;
      localObject1[i3] = ((byte)i6);
      i3 += 1;
      i4 = 0;
      while (i4 < i6)
      {
        localObject4 = gf.b(a("lac", i4));
        System.arraycopy(localObject4, 0, localObject1, i3, localObject4.length);
        i3 += localObject4.length;
        localObject4 = gf.c(a("cellid", i4));
        System.arraycopy(localObject4, 0, localObject1, i3, localObject4.length);
        i7 = i3 + localObject4.length;
        i5 = Integer.parseInt(a("signal", i4));
        if (i5 > 127) {}
        do
        {
          i3 = 0;
          break;
          i3 = i5;
        } while (i5 < -128);
        localObject1[i7] = ((byte)i3);
        i3 = i7 + 1;
        i4 += 1;
      }
      break;
      i3 = i4;
      if (i5 != 2) {
        break;
      }
      localObject4 = gf.b(b("mcc"));
      System.arraycopy(localObject4, 0, localObject1, i4, localObject4.length);
      i3 = i4 + localObject4.length;
      localObject4 = gf.b(b("sid"));
      System.arraycopy(localObject4, 0, localObject1, i3, localObject4.length);
      i3 += localObject4.length;
      localObject4 = gf.b(b("nid"));
      System.arraycopy(localObject4, 0, localObject1, i3, localObject4.length);
      i3 += localObject4.length;
      localObject4 = gf.b(b("bid"));
      System.arraycopy(localObject4, 0, localObject1, i3, localObject4.length);
      i3 += localObject4.length;
      localObject4 = gf.c(b("lon"));
      System.arraycopy(localObject4, 0, localObject1, i3, localObject4.length);
      i3 += localObject4.length;
      localObject4 = gf.c(b("lat"));
      System.arraycopy(localObject4, 0, localObject1, i3, localObject4.length);
      i5 = i3 + localObject4.length;
      i4 = Integer.parseInt(b("signal"));
      if (i4 > 127) {}
      do
      {
        i3 = 0;
        break;
        i3 = i4;
      } while (i4 < -128);
      localObject1[i5] = ((byte)i3);
      i3 = i5 + 1;
      localObject4 = gf.a(0, arrayOfByte16);
      System.arraycopy(localObject4, 0, localObject1, i3, localObject4.length);
      i3 += 2;
      localObject1[i3] = 0;
    }
    Object localObject4 = D;
    i4 = i3;
    if (localObject4 != null)
    {
      i4 = i3;
      if ((z & 0x8) == 8) {
        i4 = i3;
      }
    }
    try
    {
      localObject4 = ((String)localObject4).getBytes("GBK");
      i4 = i3;
      i5 = Math.min(localObject4.length, 60);
      localObject1[i3] = ((byte)i5);
      i3 += 1;
      i4 = i3;
      System.arraycopy(localObject4, 0, localObject1, i3, i5);
      i3 += i5;
    }
    catch (Exception localThrowable30)
    {
      for (;;)
      {
        try
        {
          int i8;
          long l1;
          Object localObject6 = SSID.getBytes("GBK");
          i5 = i6;
          localObject1[i6] = ((byte)localObject6.length);
          i6 += 1;
          i5 = i6;
          System.arraycopy(localObject6, 0, localObject1, i6, localObject6.length);
          i5 = i6;
          i7 = localObject6.length;
          i5 = i6 + i7;
          continue;
          localObject1[i5] = 0;
          i5 += 1;
          i7 = level;
          if (i7 > 127)
          {
            i6 = 0;
          }
          else
          {
            i6 = i7;
            if (i7 < -128) {
              continue;
            }
          }
          localObject1[i5] = Byte.parseByte(String.valueOf(i6));
          i7 = i5 + 1;
          if (i3 != 0)
          {
            i6 = (int)((l1 - timestamp) / 1000000L + 1L);
            i5 = i6;
            if (i6 >= 0) {}
          }
          else
          {
            i5 = 0;
          }
          localObject6 = gf.a(i5, arrayOfByte16);
          System.arraycopy(localObject6, 0, localObject1, i7, localObject6.length);
          i5 = i7 + localObject6.length;
          localObject5 = gf.a(frequency, arrayOfByte16);
          System.arraycopy(localObject5, 0, localObject1, i5, localObject5.length);
          i5 += localObject5.length;
          i4 += 1;
          continue;
          localObject3 = gf.a(Integer.parseInt(H), arrayOfByte16);
          System.arraycopy(localObject3, 0, localObject1, i5, localObject3.length);
          i3 = i5 + localObject3.length;
          localObject1[i3] = 0;
          i4 = i3 + 1;
          i3 = i4;
        }
        catch (Exception localThrowable30)
        {
          try
          {
            localObject5 = I.getBytes("GBK");
            i3 = i4;
            localObject3 = localObject5;
            if (localObject5.length <= 127) {
              break label4461;
            }
            localObject3 = null;
            break label4461;
            i3 = i4;
            localObject1[i4] = ((byte)localObject3.length);
            i4 += 1;
            i3 = i4;
            System.arraycopy(localObject3, 0, localObject1, i4, localObject3.length);
            i3 = i4;
            i5 = localObject3.length;
            i3 = i4 + i5;
            continue;
            localObject1[i3] = 0;
            i3 += 1;
            localObject3 = new byte[2];
            Object tmp3725_3723 = localObject3;
            tmp3725_3723[0] = 0;
            Object tmp3731_3725 = tmp3725_3723;
            tmp3731_3725[1] = 0;
            tmp3731_3725;
          }
          catch (Throwable localThrowable30)
          {
            try
            {
              boolean bool = TextUtils.isEmpty(L);
              if (!bool) {
                localObject3 = gf.a(L.length(), arrayOfByte16);
              }
              System.arraycopy(localObject3, 0, localObject1, i3, 2);
              i4 = i3 + 2;
              i3 = i4;
              if (bool) {}
            }
            catch (Throwable localThrowable30)
            {
              try
              {
                localObject3 = L.getBytes("GBK");
                System.arraycopy(localObject3, 0, localObject1, i4, localObject3.length);
                i3 = localObject3.length;
                i3 = i4 + i3;
                continue;
                i3 += 2;
                localObject3 = G;
                i6 = Math.min(((ArrayList)localObject3).size(), 65536);
                if (i6 != 0) {}
              }
              catch (Throwable localThrowable30)
              {
                try
                {
                  System.arraycopy(gf.a(0, arrayOfByte16), 0, localObject1, i3, 2);
                  i5 = i3 + 2;
                }
                catch (Throwable localThrowable30)
                {
                  try
                  {
                    System.arraycopy(gf.a(i6, arrayOfByte16), 0, localObject1, i3, 2);
                    i3 += 2;
                    i4 = 0;
                    i5 = i3;
                    if (i4 < i6) {
                      localObject5 = (ft)((ArrayList)localObject3).get(i4);
                    }
                  }
                  catch (Throwable localThrowable30)
                  {
                    try
                    {
                      arrayOfByte16 = c;
                      System.arraycopy(arrayOfByte16, 0, localObject1, i3, arrayOfByte16.length);
                      i5 = arrayOfByte16.length;
                      i3 += i5;
                      continue;
                      i3 += 6;
                    }
                    catch (Throwable localThrowable30)
                    {
                      try
                      {
                        arrayOfByte16 = a.getBytes("GBK");
                        i7 = arrayOfByte16.length;
                        i5 = 32;
                        if (i7 > 32) {
                          break label4478;
                        }
                        i5 = arrayOfByte16.length;
                        break label4478;
                        System.arraycopy(arrayOfByte16, 0, localObject1, i3, i5);
                        i3 += 32;
                      }
                      catch (Throwable localThrowable30)
                      {
                        try
                        {
                          arrayOfByte16 = d.getBytes("GBK");
                          System.arraycopy(arrayOfByte16, 0, localObject1, i3, arrayOfByte16.length);
                          i3 += 4;
                        }
                        catch (Throwable localThrowable30)
                        {
                          try
                          {
                            arrayOfByte16 = e.getBytes("GBK");
                            System.arraycopy(arrayOfByte16, 0, localObject1, i3, arrayOfByte16.length);
                            i3 += 4;
                          }
                          catch (Throwable localThrowable30)
                          {
                            try
                            {
                              if (g > 127)
                              {
                                g = 0;
                              }
                              else
                              {
                                i5 = g;
                                if (i5 >= -128) {}
                              }
                            }
                            catch (Throwable localThrowable30)
                            {
                              try
                              {
                                g = 0;
                                localObject1[i3] = ((byte)g);
                                i3 += 1;
                              }
                              catch (Throwable localThrowable30)
                              {
                                try
                                {
                                  arrayOfByte16 = new byte[4];
                                  arrayOfByte16 = gf.b(f, arrayOfByte16);
                                  System.arraycopy(arrayOfByte16, 0, localObject1, i3, arrayOfByte16.length);
                                  i3 += 4;
                                }
                                catch (Throwable localThrowable30)
                                {
                                  try
                                  {
                                    arrayOfByte16 = new byte[4];
                                    Object localObject5 = gf.b(i, arrayOfByte16);
                                    System.arraycopy(localObject5, 0, localObject1, i3, localObject5.length);
                                    i3 += 4;
                                    i4 += 1;
                                    continue;
                                    if (J != null) {
                                      i3 = J.length;
                                    } else {
                                      i3 = 0;
                                    }
                                    Object localObject3 = gf.a(i3, null);
                                    System.arraycopy(localObject3, 0, localObject1, i5, localObject3.length);
                                    i5 += localObject3.length;
                                    i4 = i5;
                                    if (i3 > 0)
                                    {
                                      System.arraycopy(J, 0, localObject1, i5, J.length);
                                      i4 = i5 + J.length;
                                    }
                                    localObject3 = new byte[i4];
                                    System.arraycopy(localObject1, 0, localObject3, 0, i4);
                                    localObject1 = new CRC32();
                                    ((CRC32)localObject1).update((byte[])localObject3);
                                    localObject1 = gf.a(((CRC32)localObject1).getValue());
                                    localObject5 = new byte[localObject1.length + i4];
                                    System.arraycopy(localObject3, 0, localObject5, 0, i4);
                                    System.arraycopy(localObject1, 0, localObject5, i4, localObject1.length);
                                    return localObject5;
                                    localException1 = localException1;
                                    continue;
                                    localException2 = localException2;
                                    continue;
                                    localThrowable2 = localThrowable2;
                                    continue;
                                    localThrowable3 = localThrowable3;
                                    continue;
                                    localThrowable4 = localThrowable4;
                                    i3 = i4;
                                    continue;
                                    localThrowable5 = localThrowable5;
                                    continue;
                                    localThrowable22 = localThrowable22;
                                    continue;
                                    localThrowable24 = localThrowable24;
                                    continue;
                                    localThrowable25 = localThrowable25;
                                    continue;
                                    localThrowable26 = localThrowable26;
                                    continue;
                                    localThrowable27 = localThrowable27;
                                    continue;
                                    localThrowable28 = localThrowable28;
                                    continue;
                                    localThrowable29 = localThrowable29;
                                    continue;
                                    localThrowable30 = localThrowable30;
                                  }
                                  catch (Throwable localThrowable23)
                                  {
                                    continue;
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
        for (;;)
        {
          i5 = 0;
          break;
          i5 = i6;
          if (i6 >= -128) {
            break;
          }
        }
        if (localThrowable5 == null)
        {
          localObject1[i4] = 0;
          i3 = i4;
        }
      }
    }
    localObject1[i4] = 0;
    i3 = i4 + 1;
    localObject4 = C;
    i4 = ((ArrayList)localObject4).size();
    if (((z & 0x4) == 4) && (i4 > 0))
    {
      i5 = i4;
      if (!get0o) {
        i5 = i4 - 1;
      }
      localObject1[i3] = ((byte)i5);
      i3 += 1;
      i6 = 0;
      for (;;)
      {
        i4 = i3;
        if (i6 >= i5) {
          break;
        }
        localObject6 = (fv)((ArrayList)localObject4).get(i6);
        i4 = i3;
        if (o)
        {
          int i2;
          int i1;
          byte[] arrayOfByte17;
          if ((k != 1) && (k != 3) && (k != 4))
          {
            i4 = i3;
            if (k != 2) {
              break label2898;
            }
            i2 = (byte)k;
            i1 = i2;
            if (n) {
              i1 = (byte)(i2 | 0x8);
            }
            localObject1[i3] = i1;
            i3 += 1;
            arrayOfByte17 = gf.a(a, arrayOfByte16);
            System.arraycopy(arrayOfByte17, 0, localObject1, i3, arrayOfByte17.length);
            i3 += arrayOfByte17.length;
            arrayOfByte17 = gf.a(g, arrayOfByte16);
            System.arraycopy(arrayOfByte17, 0, localObject1, i3, arrayOfByte17.length);
            i3 += arrayOfByte17.length;
            arrayOfByte17 = gf.a(h, arrayOfByte16);
            System.arraycopy(arrayOfByte17, 0, localObject1, i3, arrayOfByte17.length);
            i3 += arrayOfByte17.length;
            arrayOfByte17 = gf.a(i, arrayOfByte16);
            System.arraycopy(arrayOfByte17, 0, localObject1, i3, arrayOfByte17.length);
            i3 += arrayOfByte17.length;
            arrayOfByte17 = gf.b(f, (byte[])localObject2);
            System.arraycopy(arrayOfByte17, 0, localObject1, i3, arrayOfByte17.length);
            i3 += arrayOfByte17.length;
            arrayOfByte17 = gf.b(e, (byte[])localObject2);
            System.arraycopy(arrayOfByte17, 0, localObject1, i3, arrayOfByte17.length);
            i7 = i3 + arrayOfByte17.length;
            i4 = j;
            if (i4 > 127) {}
            do
            {
              i3 = 99;
              break;
              i3 = i4;
            } while (i4 < -128);
            localObject1[i7] = ((byte)i3);
            i4 = i7 + 1;
            localObject6 = gf.a(l, arrayOfByte16);
            System.arraycopy(localObject6, 0, localObject1, i4, localObject6.length);
            i3 = localObject6.length;
          }
          else
          {
            i2 = (byte)k;
            i1 = i2;
            if (n) {
              i1 = (byte)(i2 | 0x8);
            }
            localObject1[i3] = i1;
            i3 += 1;
            arrayOfByte17 = gf.a(a, arrayOfByte16);
            System.arraycopy(arrayOfByte17, 0, localObject1, i3, arrayOfByte17.length);
            i3 += arrayOfByte17.length;
            arrayOfByte17 = gf.a(b, arrayOfByte16);
            System.arraycopy(arrayOfByte17, 0, localObject1, i3, arrayOfByte17.length);
            i3 += arrayOfByte17.length;
            arrayOfByte17 = gf.a(c, arrayOfByte16);
            System.arraycopy(arrayOfByte17, 0, localObject1, i3, arrayOfByte17.length);
            i3 += arrayOfByte17.length;
            arrayOfByte17 = gf.a(d, (byte[])localObject2);
            System.arraycopy(arrayOfByte17, 0, localObject1, i3, arrayOfByte17.length);
            i7 = i3 + arrayOfByte17.length;
            i4 = j;
            if (i4 > 127) {}
            do
            {
              i3 = 99;
              break;
              i3 = i4;
            } while (i4 < -128);
            localObject1[i7] = ((byte)i3);
            i4 = i7 + 1;
            localObject6 = gf.a(l, arrayOfByte16);
            System.arraycopy(localObject6, 0, localObject1, i4, localObject6.length);
            i3 = localObject6.length;
          }
          i4 += i3;
        }
        label2898:
        i6 += 1;
        i3 = i4;
      }
    }
    localObject1[i3] = 0;
    i4 = i3 + 1;
    if (E.length() == 0)
    {
      localObject1[i4] = 0;
      i3 = i4;
    }
    for (;;)
    {
      i3 += 1;
      break;
      localObject1[i4] = 1;
      i3 = i4 + 1;
      i4 = i3;
      try
      {
        localObject2 = E.split(",");
        i4 = i3;
        localObject4 = a(localObject2[0]);
        i4 = i3;
        System.arraycopy(localObject4, 0, localObject1, i3, localObject4.length);
        i4 = i3;
        i5 = localObject4.length;
        i4 = i3 + i5;
        i3 = i4;
        try
        {
          localObject4 = localObject2[2].getBytes("GBK");
          i3 = i4;
          localObject1[i4] = ((byte)localObject4.length);
          i4 += 1;
          i3 = i4;
          System.arraycopy(localObject4, 0, localObject1, i4, localObject4.length);
          i3 = i4;
          i5 = localObject4.length;
          i3 = i4 + i5;
        }
        catch (Throwable localThrowable21)
        {
          i4 = i3;
          gc.a(localThrowable21, "Req", "buildV4Dot214");
          localObject1[i3] = 0;
          i3 += 1;
        }
        i4 = i3;
        i6 = Integer.parseInt(localObject2[1]);
        if (i6 <= 127) {
          break label4447;
        }
      }
      catch (Throwable localThrowable1)
      {
        gc.a(localThrowable1, "Req", "buildV4Dot216");
        localObject3 = a("00:00:00:00:00:00");
        System.arraycopy(localObject3, 0, localObject1, i4, localObject3.length);
        i3 = i4 + localObject3.length;
        localObject1[i3] = 0;
        i3 += 1;
        localObject1[i3] = Byte.parseByte("0");
      }
      i4 = i3;
      localObject1[i3] = Byte.parseByte(String.valueOf(i5));
    }
    localObject3 = F;
    i8 = Math.min(((ArrayList)localObject3).size(), 25);
    if (i8 == 0)
    {
      localObject1[i3] = 0;
      i3 += 1;
    }
    else
    {
      localObject1[i3] = ((byte)i8);
      i5 = i3 + 1;
      if (gf.c() >= 17) {
        i3 = 1;
      } else {
        i3 = 0;
      }
      l1 = 0L;
      if (i3 != 0) {
        l1 = gf.b() / 1000L;
      }
      i4 = 0;
      if (i4 < i8)
      {
        localObject5 = (ScanResult)((ArrayList)localObject3).get(i4);
        localObject6 = a(BSSID);
        System.arraycopy(localObject6, 0, localObject1, i5, localObject6.length);
        i6 = i5 + localObject6.length;
        i5 = i6;
      }
    }
  }
}
