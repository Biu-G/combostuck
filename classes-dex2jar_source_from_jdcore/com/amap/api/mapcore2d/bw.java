package com.amap.api.mapcore2d;

import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import com.amap.api.maps2d.AMapException;
import com.amap.api.maps2d.model.Tile;
import com.amap.api.maps2d.model.TileProvider;
import java.io.ByteArrayOutputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;

class bw
  extends bj<ArrayList<bs>, ArrayList<bs>>
{
  private an b = null;
  private TileProvider f;
  
  public bw(ArrayList<bs> paramArrayList, TileProvider paramTileProvider)
  {
    super(paramArrayList);
    f = paramTileProvider;
    a(cw.a(ar.a));
    a(5000);
    b(50000);
  }
  
  private void a(bs paramBs, int paramInt)
  {
    bn localBn;
    if (paramBs != null)
    {
      if (paramInt < 0) {
        return;
      }
      if (b != null)
      {
        if (b.p == null) {
          return;
        }
        localBn = b.p;
      }
    }
    for (;;)
    {
      int i;
      synchronized (b)
      {
        int j = localBn.size();
        i = 0;
        if (i < j)
        {
          if (i >= localBn.size()) {
            break label118;
          }
          bs localBs = (bs)localBn.get(i);
          if ((localBs == null) || (!localBs.equals(paramBs))) {
            break label118;
          }
          h = paramInt;
        }
        return;
      }
      return;
      return;
      label118:
      i += 1;
    }
  }
  
  private byte[] a(Bitmap paramBitmap)
  {
    try
    {
      ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
      paramBitmap.compress(Bitmap.CompressFormat.PNG, 100, localByteArrayOutputStream);
      paramBitmap = localByteArrayOutputStream.toByteArray();
      return paramBitmap;
    }
    catch (Throwable paramBitmap)
    {
      cm.a(paramBitmap, "TileServerHandler", "Bitmap2Bytes");
    }
    return null;
  }
  
  public int a(byte[] paramArrayOfByte, bs paramBs)
  {
    if (paramBs != null)
    {
      if (paramArrayOfByte == null) {
        return -1;
      }
      if (b != null)
      {
        if (b.n == null) {
          return -1;
        }
        int i;
        try
        {
          i = b.n.a(null, paramArrayOfByte, false, null, paramBs.c());
          if (i < 0) {
            return -1;
          }
          try
          {
            a(paramBs, i);
            if (b == null) {
              return i;
            }
            j = i;
            if (b.f != true) {
              break label155;
            }
            paramArrayOfByte = a(b.n.a(i));
            j = i;
            if (b == null) {
              break label155;
            }
            j = i;
            if (b.o == null) {
              break label155;
            }
            b.o.a(paramArrayOfByte, paramBs);
            return i;
          }
          catch (Throwable paramArrayOfByte) {}
          cm.a(paramArrayOfByte, "TileServerHandler", "saveImgToMemory");
        }
        catch (Throwable paramArrayOfByte)
        {
          i = -1;
        }
        int j = i;
        label155:
        return j;
      }
      return -1;
    }
    return -1;
  }
  
  public void a(an paramAn)
  {
    b = paramAn;
  }
  
  protected ArrayList<bs> b(byte[] paramArrayOfByte)
    throws AMapException
  {
    Object localObject2 = a;
    Object localObject3 = null;
    Object localObject1 = null;
    if (localObject2 != null) {
      if (paramArrayOfByte == null) {
        return null;
      }
    }
    try
    {
      int j = ((ArrayList)a).size();
      int i = 0;
      while (i < j)
      {
        localObject3 = localObject1;
        bs localBs = (bs)((ArrayList)a).get(i);
        localObject2 = localObject1;
        localObject3 = localObject1;
        if (a(paramArrayOfByte, localBs) < 0)
        {
          localObject2 = localObject1;
          if (localObject1 == null)
          {
            localObject3 = localObject1;
            localObject2 = new ArrayList();
          }
          localObject3 = localObject2;
          localObject1 = new bs(localBs);
          localObject3 = localObject2;
          if (b.h)
          {
            localObject3 = localObject2;
            if (d > 9)
            {
              localObject3 = localObject2;
              if (!cl.a(b, c, d))
              {
                localObject3 = localObject2;
                i = true;
              }
            }
          }
          localObject3 = localObject2;
          ((ArrayList)localObject2).add(localObject1);
        }
        i += 1;
        localObject1 = localObject2;
      }
      return localObject1;
    }
    catch (Throwable paramArrayOfByte) {}
    return null;
    return localObject3;
  }
  
  protected byte[] b()
    throws AMapException
  {
    if (f != null) {
      return f.getTile(a).get(0)).b, a).get(0)).c, a).get(0)).d).data;
    }
    return super.b();
  }
  
  protected ArrayList<bs> d()
  {
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = ((ArrayList)a).iterator();
    while (localIterator.hasNext()) {
      localArrayList.add(new bs((bs)localIterator.next()));
    }
    return localArrayList;
  }
  
  public Map<String, String> e()
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("User-Agent", "AMAP_SDK_Android_2DMap_5.2.0");
    localHashMap.put("Accept-Encoding", "gzip");
    localHashMap.put("platinfo", String.format(Locale.US, "platform=Android&sdkversion=%s&product=%s", new Object[] { "5.2.0", "2dmap" }));
    localHashMap.put("X-INFO", cs.a(ar.a));
    localHashMap.put("key", cp.f(ar.a));
    localHashMap.put("logversion", "2.1");
    return localHashMap;
  }
  
  public Map<String, String> f()
  {
    return null;
  }
  
  public String g()
  {
    int i = a).get(0)).b;
    int k = a).get(0)).c;
    int m = a).get(0)).d;
    if ((q.i == 0) && (m > 9) && (!cl.a(i, k, m))) {
      return String.format(Locale.US, ax.a().d(), new Object[] { Integer.valueOf(m), Integer.valueOf(i), Integer.valueOf(k) });
    }
    int n = (int)Math.pow(2.0D, a).get(0)).d);
    int j = a).get(0)).b;
    if (j >= n)
    {
      i = j - n;
    }
    else
    {
      i = j;
      if (j < 0) {
        i = j + n;
      }
    }
    String str = b.j.a(i, k, m);
    ((bs)((ArrayList)a).get(0)).b();
    return str;
  }
}
