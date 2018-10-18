package com.amap.api.mapcore2d;

import java.util.HashMap;
import java.util.Map;

public class df
  extends ev
{
  private byte[] a;
  private String b = "1";
  
  public df(byte[] paramArrayOfByte)
  {
    a = ((byte[])paramArrayOfByte.clone());
  }
  
  public df(byte[] paramArrayOfByte, String paramString)
  {
    a = ((byte[])paramArrayOfByte.clone());
    b = paramString;
  }
  
  private String b()
  {
    byte[] arrayOfByte1 = cz.a(db.a);
    byte[] arrayOfByte2 = new byte[arrayOfByte1.length + 50];
    System.arraycopy(a, 0, arrayOfByte2, 0, 50);
    System.arraycopy(arrayOfByte1, 0, arrayOfByte2, 50, arrayOfByte1.length);
    return cv.a(arrayOfByte2);
  }
  
  public byte[] a_()
  {
    return a;
  }
  
  public Map<String, String> e()
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("Content-Type", "application/zip");
    localHashMap.put("Content-Length", String.valueOf(a.length));
    return localHashMap;
  }
  
  public Map<String, String> f()
  {
    return null;
  }
  
  public String g()
  {
    return String.format(db.b, new Object[] { "1", b, "1", "open", b() });
  }
}
