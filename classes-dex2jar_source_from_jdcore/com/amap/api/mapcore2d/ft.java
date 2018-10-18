package com.amap.api.mapcore2d;

public final class ft
  implements Comparable<ft>
{
  public String a;
  public String b;
  public byte[] c;
  public String d;
  public String e;
  public int f;
  public int g;
  public long h;
  public int i;
  
  private int a(ft paramFt)
  {
    if (g < g) {
      return 1;
    }
    if (g == g) {
      return 0;
    }
    if (g > g) {
      return -1;
    }
    return 0;
  }
  
  public final String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder("name = ");
    localStringBuilder.append(b);
    localStringBuilder.append(",uuid = ");
    localStringBuilder.append(a);
    localStringBuilder.append(",major = ");
    localStringBuilder.append(d);
    localStringBuilder.append(",minor = ");
    localStringBuilder.append(e);
    localStringBuilder.append(",TxPower = ");
    localStringBuilder.append(f);
    localStringBuilder.append(",rssi = ");
    localStringBuilder.append(g);
    localStringBuilder.append(",time = ");
    localStringBuilder.append(h);
    return localStringBuilder.toString();
  }
}
