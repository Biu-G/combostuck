package com.amap.api.interfaces;

public abstract interface ITileOverlay
{
  public abstract void clearTileCache();
  
  public abstract boolean equalsRemote(ITileOverlay paramITileOverlay);
  
  public abstract String getId();
  
  public abstract float getZIndex();
  
  public abstract int hashCodeRemote();
  
  public abstract boolean isVisible();
  
  public abstract void remove();
  
  public abstract void setVisible(boolean paramBoolean);
  
  public abstract void setZIndex(float paramFloat);
}
