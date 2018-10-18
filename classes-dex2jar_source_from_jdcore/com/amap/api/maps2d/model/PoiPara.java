package com.amap.api.maps2d.model;

public class PoiPara
{
  private LatLng a;
  private String b;
  
  public PoiPara() {}
  
  public LatLng getCenter()
  {
    return a;
  }
  
  public String getKeywords()
  {
    return b;
  }
  
  public void setCenter(LatLng paramLatLng)
  {
    a = paramLatLng;
  }
  
  public void setKeywords(String paramString)
  {
    b = paramString;
  }
}
