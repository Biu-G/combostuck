package com.amap.api.maps2d.model;

import android.graphics.Typeface;
import com.amap.api.interfaces.IText;
import com.amap.api.mapcore2d.aj;

public final class Text
{
  public static final int ALIGN_BOTTOM = 5;
  public static final int ALIGN_CENTER_HORIZONTAL = 3;
  public static final int ALIGN_CENTER_VERTICAL = 6;
  public static final int ALIGN_LEFT = 1;
  public static final int ALIGN_RIGHT = 2;
  public static final int ALIGN_TOP = 4;
  private IText a;
  
  public Text(aj paramAj)
  {
    a = paramAj;
  }
  
  public int getAlignX()
  {
    return a.getAlignX();
  }
  
  public int getAlignY()
  {
    return a.getAlignY();
  }
  
  public int getBackgroundColor()
  {
    return a.getBackgroundColor();
  }
  
  public int getFontColor()
  {
    return a.getFonrColor();
  }
  
  public int getFontSize()
  {
    return a.getFontSize();
  }
  
  public Object getObject()
  {
    return a.getObject();
  }
  
  public LatLng getPosition()
  {
    return a.getPosition();
  }
  
  public float getRotate()
  {
    return a.getRotate();
  }
  
  public String getText()
  {
    return a.getText();
  }
  
  public Typeface getTypeface()
  {
    return a.getTypeface();
  }
  
  public float getZIndex()
  {
    return a.getZIndex();
  }
  
  public boolean isVisible()
  {
    return a.isVisible();
  }
  
  public void remove()
  {
    a.remove();
  }
  
  public void setAlign(int paramInt1, int paramInt2)
  {
    a.setAlign(paramInt1, paramInt2);
  }
  
  public void setBackgroundColor(int paramInt)
  {
    a.setBackgroundColor(paramInt);
  }
  
  public void setFontColor(int paramInt)
  {
    a.setFontColor(paramInt);
  }
  
  public void setFontSize(int paramInt)
  {
    a.setFontSize(paramInt);
  }
  
  public void setObject(Object paramObject)
  {
    a.setObject(paramObject);
  }
  
  public void setPosition(LatLng paramLatLng)
  {
    a.setPosition(paramLatLng);
  }
  
  public void setRotate(float paramFloat)
  {
    a.setRotate(paramFloat);
  }
  
  public void setText(String paramString)
  {
    a.setText(paramString);
  }
  
  public void setTypeface(Typeface paramTypeface)
  {
    a.setTypeface(paramTypeface);
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
