package com.amap.api.interfaces;

import android.graphics.Canvas;
import android.graphics.Typeface;
import com.amap.api.maps2d.model.LatLng;

public abstract interface IText
{
  public abstract void draw(Canvas paramCanvas);
  
  public abstract int getAddIndex();
  
  public abstract int getAlignX();
  
  public abstract int getAlignY();
  
  public abstract int getBackgroundColor();
  
  public abstract int getFonrColor();
  
  public abstract int getFontSize();
  
  public abstract Object getObject();
  
  public abstract LatLng getPosition();
  
  public abstract float getRotate();
  
  public abstract String getText();
  
  public abstract Typeface getTypeface();
  
  public abstract float getZIndex();
  
  public abstract boolean isVisible();
  
  public abstract void remove();
  
  public abstract void setAddIndex(int paramInt);
  
  public abstract void setAlign(int paramInt1, int paramInt2);
  
  public abstract void setBackgroundColor(int paramInt);
  
  public abstract void setFontColor(int paramInt);
  
  public abstract void setFontSize(int paramInt);
  
  public abstract void setObject(Object paramObject);
  
  public abstract void setPosition(LatLng paramLatLng);
  
  public abstract void setRotate(float paramFloat);
  
  public abstract void setText(String paramString);
  
  public abstract void setTypeface(Typeface paramTypeface);
  
  public abstract void setVisible(boolean paramBoolean);
  
  public abstract void setZIndex(float paramFloat);
}
