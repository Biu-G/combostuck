package com.amap.api.maps2d.model;

import com.amap.api.interfaces.ITileOverlay;

public final class TileOverlay
{
  private ITileOverlay a;
  
  public TileOverlay(ITileOverlay paramITileOverlay)
  {
    a = paramITileOverlay;
  }
  
  public void clearTileCache()
  {
    a.clearTileCache();
  }
  
  public boolean equals(Object paramObject)
  {
    return a.equalsRemote(a);
  }
  
  public String getId()
  {
    return a.getId();
  }
  
  public float getZIndex()
  {
    return a.getZIndex();
  }
  
  public int hashCode()
  {
    return a.hashCodeRemote();
  }
  
  public boolean isVisible()
  {
    return a.isVisible();
  }
  
  public void remove()
  {
    a.remove();
  }
  
  public void setVisible(boolean paramBoolean)
  {
    a.setVisible(paramBoolean);
  }
  
  public void setZIndex(float paramFloat)
  {
    a.setZIndex(paramFloat);
  }
}
