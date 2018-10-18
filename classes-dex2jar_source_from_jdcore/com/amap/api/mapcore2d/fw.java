package com.amap.api.mapcore2d;

import android.annotation.SuppressLint;
import android.content.Context;
import android.telephony.CellIdentityCdma;
import android.telephony.CellIdentityGsm;
import android.telephony.CellIdentityLte;
import android.telephony.CellIdentityWcdma;
import android.telephony.CellInfo;
import android.telephony.CellInfoCdma;
import android.telephony.CellInfoGsm;
import android.telephony.CellInfoLte;
import android.telephony.CellInfoWcdma;
import android.telephony.CellLocation;
import android.telephony.CellSignalStrengthCdma;
import android.telephony.CellSignalStrengthGsm;
import android.telephony.CellSignalStrengthLte;
import android.telephony.CellSignalStrengthWcdma;
import android.telephony.NeighboringCellInfo;
import android.telephony.TelephonyManager;
import android.telephony.cdma.CdmaCellLocation;
import android.telephony.gsm.GsmCellLocation;
import android.text.TextUtils;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

@SuppressLint({"NewApi"})
public final class fw
{
  static ArrayList<fv> b = new ArrayList();
  static long d = 0L;
  static CellLocation e;
  private static ArrayList<fv> k = new ArrayList();
  int a = 0;
  TelephonyManager c = null;
  String f = null;
  boolean g = false;
  StringBuilder h = null;
  private Context i;
  private String j = null;
  private int l = -113;
  private fu m = null;
  private Object n;
  private int o = 0;
  
  public fw(Context paramContext)
  {
    i = paramContext;
    if (c == null) {
      c = ((TelephonyManager)gf.a(i, "phone"));
    }
    i();
    m = new fu();
  }
  
  private CellLocation a(Object paramObject, String paramString, Object... paramVarArgs)
  {
    if (paramObject == null) {
      return null;
    }
    for (;;)
    {
      try
      {
        paramObject = gd.a(paramObject, paramString, paramVarArgs);
        if (paramObject != null)
        {
          paramObject = (CellLocation)paramObject;
          boolean bool = a(paramObject);
          if (bool) {
            return paramObject;
          }
          return null;
        }
      }
      catch (Throwable paramObject)
      {
        return null;
      }
      paramObject = null;
    }
  }
  
  @SuppressLint({"NewApi"})
  private CellLocation a(List<CellInfo> paramList)
  {
    Object localObject2 = null;
    Object localObject4 = null;
    if (paramList != null)
    {
      if (paramList.isEmpty()) {
        return null;
      }
      ArrayList localArrayList = k;
      fu localFu = m;
      int i2 = paramList.size();
      if (i2 != 0)
      {
        if (localArrayList != null) {
          localArrayList.clear();
        }
        int i1 = 0;
        for (localObject1 = null;; localObject1 = localObject2)
        {
          localObject2 = localObject1;
          if (i1 >= i2) {
            break;
          }
          CellInfo localCellInfo = (CellInfo)paramList.get(i1);
          localObject2 = localObject1;
          if (localCellInfo != null) {
            for (;;)
            {
              try
              {
                bool = localCellInfo.isRegistered();
                if ((localCellInfo instanceof CellInfoCdma))
                {
                  localObject2 = (CellInfoCdma)localCellInfo;
                  if (!a(((CellInfoCdma)localObject2).getCellIdentity()))
                  {
                    localObject2 = localObject1;
                    continue;
                  }
                  localObject2 = a((CellInfoCdma)localObject2, bool);
                  localObject1 = localObject2;
                }
              }
              catch (Throwable localThrowable1)
              {
                boolean bool;
                Object localObject3 = localObject1;
                continue;
              }
              try
              {
                l = ((short)(int)Math.min(65535L, localFu.a((fv)localObject2)));
                localObject1 = localObject2;
                localArrayList.add(localObject2);
                localObject1 = localObject2;
              }
              catch (Throwable localThrowable2)
              {
                continue;
              }
              localObject2 = localObject1;
              continue;
              if ((localCellInfo instanceof CellInfoGsm))
              {
                localObject2 = (CellInfoGsm)localCellInfo;
                if (!a(((CellInfoGsm)localObject2).getCellIdentity()))
                {
                  localObject2 = localObject1;
                  continue;
                }
                localObject2 = a((CellInfoGsm)localObject2, bool);
                localObject1 = localObject2;
                l = ((short)(int)Math.min(65535L, localFu.a((fv)localObject2)));
              }
              else if ((localCellInfo instanceof CellInfoWcdma))
              {
                localObject2 = (CellInfoWcdma)localCellInfo;
                if (!a(((CellInfoWcdma)localObject2).getCellIdentity()))
                {
                  localObject2 = localObject1;
                  continue;
                }
                localObject2 = a((CellInfoWcdma)localObject2, bool);
                localObject1 = localObject2;
                l = ((short)(int)Math.min(65535L, localFu.a((fv)localObject2)));
              }
              else
              {
                localObject2 = localObject1;
                if (!(localCellInfo instanceof CellInfoLte)) {
                  continue;
                }
                localObject2 = (CellInfoLte)localCellInfo;
                if (!a(((CellInfoLte)localObject2).getCellIdentity()))
                {
                  localObject2 = localObject1;
                  continue;
                }
                localObject2 = a((CellInfoLte)localObject2, bool);
                localObject1 = localObject2;
                l = ((short)(int)Math.min(65535L, localFu.a((fv)localObject2)));
              }
            }
          }
          i1 += 1;
        }
      }
      localObject2 = null;
      if ((localArrayList != null) && (localArrayList.size() > 0))
      {
        a |= 0x4;
        localFu.a(localArrayList);
        localObject1 = (fv)localArrayList.get(localArrayList.size() - 1);
        if ((localObject1 != null) && (k == 2))
        {
          paramList = new CdmaCellLocation();
          paramList.setCellLocationData(i, e, f, g, h);
          localObject1 = null;
        }
        else
        {
          localObject1 = new GsmCellLocation();
          ((GsmCellLocation)localObject1).setLacAndCid(c, d);
          paramList = localObject4;
        }
      }
      else
      {
        localObject1 = null;
        paramList = localObject4;
      }
      localObject2 = paramList;
      if (paramList == null) {
        return localObject1;
      }
    }
    return localObject2;
  }
  
  private static fv a(int paramInt1, boolean paramBoolean, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6)
  {
    fv localFv = new fv(paramInt1, paramBoolean);
    a = paramInt2;
    b = paramInt3;
    c = paramInt4;
    d = paramInt5;
    j = paramInt6;
    return localFv;
  }
  
  @SuppressLint({"NewApi"})
  private fv a(CellInfoCdma paramCellInfoCdma, boolean paramBoolean)
  {
    CellIdentityCdma localCellIdentityCdma = paramCellInfoCdma.getCellIdentity();
    String[] arrayOfString = gf.a(c);
    for (;;)
    {
      int i2;
      int i1;
      try
      {
        i2 = Integer.parseInt(arrayOfString[0]);
      }
      catch (Throwable localThrowable1)
      {
        int i3;
        continue;
      }
      try
      {
        i1 = Integer.parseInt(arrayOfString[1]);
        i3 = i1;
      }
      catch (Throwable localThrowable2)
      {
        i1 = i2;
      }
    }
    i1 = 0;
    i3 = 0;
    i2 = i1;
    paramCellInfoCdma = a(2, paramBoolean, i2, i3, 0, 0, paramCellInfoCdma.getCellSignalStrength().getCdmaDbm());
    g = localCellIdentityCdma.getSystemId();
    h = localCellIdentityCdma.getNetworkId();
    i = localCellIdentityCdma.getBasestationId();
    e = localCellIdentityCdma.getLatitude();
    f = localCellIdentityCdma.getLongitude();
    return paramCellInfoCdma;
  }
  
  @SuppressLint({"NewApi"})
  private static fv a(CellInfoGsm paramCellInfoGsm, boolean paramBoolean)
  {
    CellIdentityGsm localCellIdentityGsm = paramCellInfoGsm.getCellIdentity();
    return a(1, paramBoolean, localCellIdentityGsm.getMcc(), localCellIdentityGsm.getMnc(), localCellIdentityGsm.getLac(), localCellIdentityGsm.getCid(), paramCellInfoGsm.getCellSignalStrength().getDbm());
  }
  
  @SuppressLint({"NewApi"})
  private static fv a(CellInfoLte paramCellInfoLte, boolean paramBoolean)
  {
    CellIdentityLte localCellIdentityLte = paramCellInfoLte.getCellIdentity();
    return a(3, paramBoolean, localCellIdentityLte.getMcc(), localCellIdentityLte.getMnc(), localCellIdentityLte.getTac(), localCellIdentityLte.getCi(), paramCellInfoLte.getCellSignalStrength().getDbm());
  }
  
  @SuppressLint({"NewApi"})
  private static fv a(CellInfoWcdma paramCellInfoWcdma, boolean paramBoolean)
  {
    CellIdentityWcdma localCellIdentityWcdma = paramCellInfoWcdma.getCellIdentity();
    return a(4, paramBoolean, localCellIdentityWcdma.getMcc(), localCellIdentityWcdma.getMnc(), localCellIdentityWcdma.getLac(), localCellIdentityWcdma.getCid(), paramCellInfoWcdma.getCellSignalStrength().getDbm());
  }
  
  private static fv a(NeighboringCellInfo paramNeighboringCellInfo, String[] paramArrayOfString)
  {
    try
    {
      fv localFv = new fv(1, false);
      a = Integer.parseInt(paramArrayOfString[0]);
      b = Integer.parseInt(paramArrayOfString[1]);
      c = gd.b(paramNeighboringCellInfo, "getLac", new Object[0]);
      d = paramNeighboringCellInfo.getCid();
      j = gf.a(paramNeighboringCellInfo.getRssi());
      return localFv;
    }
    catch (Throwable paramNeighboringCellInfo)
    {
      gc.a(paramNeighboringCellInfo, "CgiManager", "getGsm");
    }
    return null;
  }
  
  public static ArrayList<fv> a()
  {
    return b;
  }
  
  private void a(CellLocation paramCellLocation, String[] paramArrayOfString)
  {
    if (paramCellLocation != null)
    {
      if (c == null) {
        return;
      }
      b.clear();
      if (!a(paramCellLocation)) {
        return;
      }
      a = 1;
      b.add(c(paramCellLocation, paramArrayOfString));
      paramCellLocation = c.getNeighboringCellInfo();
      if (paramCellLocation != null)
      {
        if (paramCellLocation.isEmpty()) {
          return;
        }
        paramCellLocation = paramCellLocation.iterator();
        while (paramCellLocation.hasNext())
        {
          Object localObject = (NeighboringCellInfo)paramCellLocation.next();
          if ((localObject != null) && (a(((NeighboringCellInfo)localObject).getLac(), ((NeighboringCellInfo)localObject).getCid())))
          {
            localObject = a((NeighboringCellInfo)localObject, paramArrayOfString);
            if ((localObject != null) && (!b.contains(localObject))) {
              b.add(localObject);
            }
          }
        }
      }
    }
  }
  
  public static boolean a(int paramInt)
  {
    return (paramInt > 0) && (paramInt <= 15);
  }
  
  private static boolean a(int paramInt1, int paramInt2)
  {
    return (paramInt1 != -1) && (paramInt1 != 0) && (paramInt1 <= 65535) && (paramInt2 != -1) && (paramInt2 != 0) && (paramInt2 != 65535) && (paramInt2 < 268435455);
  }
  
  @SuppressLint({"NewApi"})
  private static boolean a(CellIdentityCdma paramCellIdentityCdma)
  {
    if (paramCellIdentityCdma == null) {
      return false;
    }
    return (paramCellIdentityCdma.getSystemId() > 0) && (paramCellIdentityCdma.getNetworkId() >= 0) && (paramCellIdentityCdma.getBasestationId() >= 0);
  }
  
  @SuppressLint({"NewApi"})
  private static boolean a(CellIdentityGsm paramCellIdentityGsm)
  {
    if (paramCellIdentityGsm == null) {
      return false;
    }
    return (b(paramCellIdentityGsm.getLac())) && (c(paramCellIdentityGsm.getCid()));
  }
  
  @SuppressLint({"NewApi"})
  private static boolean a(CellIdentityLte paramCellIdentityLte)
  {
    if (paramCellIdentityLte == null) {
      return false;
    }
    return (b(paramCellIdentityLte.getTac())) && (c(paramCellIdentityLte.getCi()));
  }
  
  @SuppressLint({"NewApi"})
  private static boolean a(CellIdentityWcdma paramCellIdentityWcdma)
  {
    if (paramCellIdentityWcdma == null) {
      return false;
    }
    return (b(paramCellIdentityWcdma.getLac())) && (c(paramCellIdentityWcdma.getCid()));
  }
  
  private boolean a(CellLocation paramCellLocation)
  {
    if (paramCellLocation == null) {
      return false;
    }
    boolean bool1 = true;
    Context localContext = i;
    switch (b(paramCellLocation))
    {
    default: 
      break;
    case 2: 
      try
      {
        if ((gd.b(paramCellLocation, "getSystemId", new Object[0]) > 0) && (gd.b(paramCellLocation, "getNetworkId", new Object[0]) >= 0))
        {
          int i1 = gd.b(paramCellLocation, "getBaseStationId", new Object[0]);
          if (i1 >= 0) {}
        }
        else
        {
          bool1 = false;
        }
      }
      catch (Throwable localThrowable1)
      {
        paramCellLocation = "cgiUseful Cgi.iCdmaT";
      }
    case 1: 
      try
      {
        paramCellLocation = (GsmCellLocation)paramCellLocation;
        boolean bool2 = a(paramCellLocation.getLac(), paramCellLocation.getCid());
        bool1 = bool2;
      }
      catch (Throwable localThrowable2)
      {
        paramCellLocation = "cgiUseful Cgi.iGsmT";
      }
    }
    gc.a(localThrowable2, "CgiManager", paramCellLocation);
    if (!bool1) {
      a = 0;
    }
    return bool1;
  }
  
  private int b(CellLocation paramCellLocation)
  {
    if (g) {
      return 0;
    }
    if (paramCellLocation == null) {
      return 0;
    }
    if ((paramCellLocation instanceof GsmCellLocation)) {
      return 1;
    }
    try
    {
      Class.forName("android.telephony.cdma.CdmaCellLocation");
      return 2;
    }
    catch (Throwable paramCellLocation)
    {
      gc.a(paramCellLocation, "Utils", "getCellLocT");
    }
    return 0;
  }
  
  public static ArrayList<fv> b()
  {
    return k;
  }
  
  private void b(CellLocation paramCellLocation, String[] paramArrayOfString)
  {
    if (paramCellLocation == null) {
      return;
    }
    b.clear();
    if (gf.c() < 5) {
      return;
    }
    for (;;)
    {
      try
      {
        localObject = n;
        if (localObject == null) {}
      }
      catch (Throwable paramCellLocation)
      {
        Object localObject;
        int i1;
        gc.a(paramCellLocation, "CgiManager", "hdlCdmaLocChange");
        return;
      }
      try
      {
        localObject = paramCellLocation.getClass().getDeclaredField("mGsmCellLoc");
        if (!((Field)localObject).isAccessible()) {
          ((Field)localObject).setAccessible(true);
        }
        localObject = (GsmCellLocation)((Field)localObject).get(paramCellLocation);
        if ((localObject != null) && (a((CellLocation)localObject)))
        {
          a((CellLocation)localObject, paramArrayOfString);
          i1 = 1;
        }
      }
      catch (Throwable localThrowable) {}
    }
    i1 = 0;
    if (i1 != 0) {
      return;
    }
    if (!a(paramCellLocation)) {
      return;
    }
    a = 2;
    localObject = new fv(2, true);
    a = Integer.parseInt(paramArrayOfString[0]);
    b = Integer.parseInt(paramArrayOfString[1]);
    g = gd.b(paramCellLocation, "getSystemId", new Object[0]);
    h = gd.b(paramCellLocation, "getNetworkId", new Object[0]);
    i = gd.b(paramCellLocation, "getBaseStationId", new Object[0]);
    j = l;
    e = gd.b(paramCellLocation, "getBaseStationLatitude", new Object[0]);
    f = gd.b(paramCellLocation, "getBaseStationLongitude", new Object[0]);
    if ((e < 0) || (f < 0) || (e == Integer.MAX_VALUE) || (f == Integer.MAX_VALUE) || ((e == f) && (e > 0)))
    {
      e = 0;
      f = 0;
    }
    if (!b.contains(localObject)) {
      b.add(localObject);
    }
  }
  
  private static boolean b(int paramInt)
  {
    return (paramInt != -1) && (paramInt != 0) && (paramInt <= 65535);
  }
  
  private fv c(CellLocation paramCellLocation, String[] paramArrayOfString)
  {
    paramCellLocation = (GsmCellLocation)paramCellLocation;
    fv localFv = new fv(1, true);
    a = Integer.parseInt(paramArrayOfString[0]);
    b = Integer.parseInt(paramArrayOfString[1]);
    c = paramCellLocation.getLac();
    d = paramCellLocation.getCid();
    j = l;
    return localFv;
  }
  
  private static boolean c(int paramInt)
  {
    return (paramInt != -1) && (paramInt != 0) && (paramInt != 65535) && (paramInt < 268435455);
  }
  
  private void i()
  {
    if (c == null) {
      return;
    }
    try
    {
      CellLocation localCellLocation = c.getCellLocation();
      Context localContext2 = i;
      a = b(localCellLocation);
    }
    catch (Throwable localThrowable1)
    {
      f = null;
      gc.a(localThrowable1, "CgiManager", "CgiManager");
      a = 0;
    }
    catch (SecurityException localSecurityException)
    {
      f = localSecurityException.getMessage();
    }
    for (;;)
    {
      try
      {
        o = s();
        Context localContext1;
        switch (o)
        {
        case 2: 
          localContext1 = i;
          continue;
          n = gf.a(i, "phone2");
          return;
        case 1: 
          n = gf.a(i, "phone_msim");
          return;
          n = gf.a(localContext1, "phone2");
          return;
        }
      }
      catch (Throwable localThrowable2)
      {
        return;
      }
    }
  }
  
  private CellLocation j()
  {
    if (c != null) {
      try
      {
        CellLocation localCellLocation = c.getCellLocation();
        f = null;
        if (a(localCellLocation))
        {
          e = localCellLocation;
          return localCellLocation;
        }
      }
      catch (Throwable localThrowable)
      {
        f = null;
        gc.a(localThrowable, "CgiManager", "getCellLocation");
        return null;
      }
      catch (SecurityException localSecurityException)
      {
        f = localSecurityException.getMessage();
      }
    }
    return null;
  }
  
  private boolean k()
  {
    if (g) {
      return false;
    }
    return gf.b() - d >= 10000L;
  }
  
  private void l()
  {
    r();
  }
  
  private void m()
  {
    switch (a)
    {
    default: 
      
    case 2: 
      if (b.isEmpty())
      {
        a = 0;
        return;
      }
      break;
    case 1: 
      if (b.isEmpty()) {
        a = 0;
      }
      break;
    }
  }
  
  private void n()
  {
    CellLocation localCellLocation;
    Object localObject;
    if ((!g) && (c != null))
    {
      localCellLocation = o();
      localObject = localCellLocation;
      if (!a(localCellLocation)) {
        localObject = p();
      }
      if (a((CellLocation)localObject)) {}
      for (;;)
      {
        e = (CellLocation)localObject;
        break;
        localObject = null;
      }
    }
    if (!a(e))
    {
      b.clear();
      k.clear();
    }
    else
    {
      localObject = gf.a(c);
      localCellLocation = e;
      Context localContext = i;
      switch (b(localCellLocation))
      {
      default: 
        break;
      case 2: 
        b(e, (String[])localObject);
        break;
      case 1: 
        a(e, (String[])localObject);
      }
    }
    if (c != null)
    {
      j = c.getNetworkOperator();
      if (!TextUtils.isEmpty(j)) {
        a |= 0x8;
      }
    }
  }
  
  @SuppressLint({"NewApi"})
  private CellLocation o()
  {
    TelephonyManager localTelephonyManager = c;
    Object localObject3 = null;
    if (localTelephonyManager == null) {
      return null;
    }
    Object localObject1 = j();
    if (a((CellLocation)localObject1)) {
      return localObject1;
    }
    localObject1 = localObject3;
    if (gf.c() >= 18) {
      try
      {
        localObject1 = a(localTelephonyManager.getAllCellInfo());
      }
      catch (SecurityException localSecurityException)
      {
        f = localSecurityException.getMessage();
        localObject2 = localObject3;
      }
    }
    if (localObject2 != null) {
      return localObject2;
    }
    Object localObject2 = a(localTelephonyManager, "getCellLocationExt", new Object[] { Integer.valueOf(1) });
    if (localObject2 != null) {
      return localObject2;
    }
    localObject2 = a(localTelephonyManager, "getCellLocationGemini", new Object[] { Integer.valueOf(1) });
    if (localObject2 != null) {}
    return localObject2;
  }
  
  /* Error */
  private CellLocation p()
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 410	com/amap/api/mapcore2d/fw:n	Ljava/lang/Object;
    //   4: astore_3
    //   5: aconst_null
    //   6: astore_1
    //   7: aconst_null
    //   8: astore_2
    //   9: aload_3
    //   10: ifnonnull +5 -> 15
    //   13: aconst_null
    //   14: areturn
    //   15: aload_0
    //   16: invokespecial 505	com/amap/api/mapcore2d/fw:q	()Ljava/lang/Class;
    //   19: astore 4
    //   21: aload 4
    //   23: aload_3
    //   24: invokevirtual 508	java/lang/Class:isInstance	(Ljava/lang/Object;)Z
    //   27: ifeq +136 -> 163
    //   30: aload 4
    //   32: aload_3
    //   33: invokevirtual 511	java/lang/Class:cast	(Ljava/lang/Object;)Ljava/lang/Object;
    //   36: astore_3
    //   37: aload_0
    //   38: aload_3
    //   39: ldc_w 461
    //   42: iconst_0
    //   43: anewarray 4	java/lang/Object
    //   46: invokespecial 500	com/amap/api/mapcore2d/fw:a	(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Landroid/telephony/CellLocation;
    //   49: astore_1
    //   50: aload_1
    //   51: ifnull +5 -> 56
    //   54: aload_1
    //   55: areturn
    //   56: aload_0
    //   57: aload_3
    //   58: ldc_w 461
    //   61: iconst_1
    //   62: anewarray 4	java/lang/Object
    //   65: dup
    //   66: iconst_0
    //   67: iconst_1
    //   68: invokestatic 498	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   71: aastore
    //   72: invokespecial 500	com/amap/api/mapcore2d/fw:a	(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Landroid/telephony/CellLocation;
    //   75: astore_2
    //   76: aload_2
    //   77: ifnull +5 -> 82
    //   80: aload_2
    //   81: areturn
    //   82: aload_0
    //   83: aload_3
    //   84: ldc_w 502
    //   87: iconst_1
    //   88: anewarray 4	java/lang/Object
    //   91: dup
    //   92: iconst_0
    //   93: iconst_1
    //   94: invokestatic 498	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   97: aastore
    //   98: invokespecial 500	com/amap/api/mapcore2d/fw:a	(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Landroid/telephony/CellLocation;
    //   101: astore_1
    //   102: aload_1
    //   103: ifnull +5 -> 108
    //   106: aload_1
    //   107: areturn
    //   108: aload_0
    //   109: aload_3
    //   110: ldc_w 512
    //   113: iconst_1
    //   114: anewarray 4	java/lang/Object
    //   117: dup
    //   118: iconst_0
    //   119: iconst_1
    //   120: invokestatic 498	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   123: aastore
    //   124: invokespecial 500	com/amap/api/mapcore2d/fw:a	(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Landroid/telephony/CellLocation;
    //   127: astore_2
    //   128: aload_2
    //   129: astore_1
    //   130: aload_2
    //   131: ifnull +32 -> 163
    //   134: aload_2
    //   135: areturn
    //   136: astore_3
    //   137: aload_2
    //   138: astore_1
    //   139: aload_3
    //   140: astore_2
    //   141: goto +12 -> 153
    //   144: astore_2
    //   145: goto +8 -> 153
    //   148: astore_3
    //   149: aload_2
    //   150: astore_1
    //   151: aload_3
    //   152: astore_2
    //   153: aload_2
    //   154: ldc_w 335
    //   157: ldc_w 514
    //   160: invokestatic 342	com/amap/api/mapcore2d/gc:a	(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    //   163: aload_1
    //   164: areturn
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	165	0	this	fw
    //   6	158	1	localObject1	Object
    //   8	133	2	localObject2	Object
    //   144	6	2	localThrowable1	Throwable
    //   152	2	2	localThrowable2	Throwable
    //   4	106	3	localObject3	Object
    //   136	4	3	localThrowable3	Throwable
    //   148	4	3	localThrowable4	Throwable
    //   19	12	4	localClass	Class
    // Exception table:
    //   from	to	target	type
    //   82	102	136	java/lang/Throwable
    //   56	76	144	java/lang/Throwable
    //   108	128	144	java/lang/Throwable
    //   15	21	148	java/lang/Throwable
    //   21	50	148	java/lang/Throwable
  }
  
  private Class<?> q()
  {
    ClassLoader localClassLoader = ClassLoader.getSystemClassLoader();
    Object localObject;
    switch (o)
    {
    default: 
      localObject = null;
      break;
    case 2: 
      localObject = "android.telephony.TelephonyManager2";
      break;
    case 1: 
      localObject = "android.telephony.MSimTelephonyManager";
      break;
    case 0: 
      localObject = "android.telephony.TelephonyManager";
    }
    try
    {
      localObject = localClassLoader.loadClass((String)localObject);
      return localObject;
    }
    catch (Throwable localThrowable)
    {
      gc.a(localThrowable, "CgiManager", "getSim2TmClass");
    }
    return null;
  }
  
  private void r()
  {
    f = null;
    e = null;
    a = 0;
    b.clear();
  }
  
  private int s()
  {
    try
    {
      Class.forName("android.telephony.MSimTelephonyManager");
      o = 1;
      if (o != 0) {}
    }
    catch (Throwable localThrowable1)
    {
      try
      {
        Class.forName("android.telephony.TelephonyManager2");
        o = 2;
        return o;
        localThrowable1 = localThrowable1;
      }
      catch (Throwable localThrowable2)
      {
        for (;;) {}
      }
    }
  }
  
  public final int c()
  {
    return a;
  }
  
  public final int d()
  {
    return a & 0x3;
  }
  
  public final TelephonyManager e()
  {
    return c;
  }
  
  public final void f()
  {
    try
    {
      g = gf.a(i);
      if (k())
      {
        n();
        d = gf.b();
      }
      if (g)
      {
        l();
        return;
      }
      m();
      return;
    }
    catch (Throwable localThrowable)
    {
      gc.a(localThrowable, "CgiManager", "refresh");
      return;
    }
    catch (SecurityException localSecurityException)
    {
      f = localSecurityException.getMessage();
    }
  }
  
  public final void g()
  {
    m.a();
    l = -113;
    c = null;
    n = null;
  }
  
  public final String h()
  {
    return j;
  }
}
