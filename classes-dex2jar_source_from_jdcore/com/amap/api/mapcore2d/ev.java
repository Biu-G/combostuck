package com.amap.api.mapcore2d;

import android.text.TextUtils;
import java.net.Proxy;
import java.util.Map;

public abstract class ev
{
  int c = 20000;
  int d = 20000;
  Proxy e = null;
  
  public ev() {}
  
  public final void a(int paramInt)
  {
    c = paramInt;
  }
  
  public final void a(Proxy paramProxy)
  {
    e = paramProxy;
  }
  
  public byte[] a_()
  {
    return null;
  }
  
  public final void b(int paramInt)
  {
    d = paramInt;
  }
  
  public abstract Map<String, String> e();
  
  public abstract Map<String, String> f();
  
  public abstract String g();
  
  String l()
  {
    Object localObject = a_();
    if ((localObject != null) && (localObject.length != 0))
    {
      localObject = f();
      if (localObject == null) {
        return g();
      }
      localObject = es.a((Map)localObject);
      StringBuffer localStringBuffer = new StringBuffer();
      localStringBuffer.append(g());
      localStringBuffer.append("?");
      localStringBuffer.append((String)localObject);
      return localStringBuffer.toString();
    }
    return g();
  }
  
  byte[] m()
  {
    byte[] arrayOfByte2 = a_();
    byte[] arrayOfByte1;
    if (arrayOfByte2 != null)
    {
      arrayOfByte1 = arrayOfByte2;
      if (arrayOfByte2.length != 0) {}
    }
    else
    {
      String str = es.a(f());
      arrayOfByte1 = arrayOfByte2;
      if (!TextUtils.isEmpty(str)) {
        arrayOfByte1 = cz.a(str);
      }
    }
    return arrayOfByte1;
  }
}
