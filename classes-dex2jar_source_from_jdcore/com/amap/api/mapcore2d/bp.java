package com.amap.api.mapcore2d;

import android.graphics.Canvas;
import android.graphics.Paint.FontMetrics;
import android.graphics.Point;
import android.graphics.Typeface;
import android.text.TextPaint;
import android.text.TextUtils;
import com.amap.api.maps2d.model.LatLng;
import com.amap.api.maps2d.model.TextOptions;

public class bp
  implements aj
{
  private b a;
  private at b;
  private String c;
  private int d;
  private int e;
  private LatLng f;
  private float g;
  private int h;
  private Typeface i;
  private boolean j;
  private float k;
  private int l;
  private int m;
  private Object n;
  private int o;
  
  public bp(y paramY, TextOptions paramTextOptions, at paramAt)
  {
    b = paramAt;
    c = paramTextOptions.getText();
    d = paramTextOptions.getFontSize();
    e = paramTextOptions.getFontColor();
    f = paramTextOptions.getPosition();
    g = paramTextOptions.getRotate();
    h = paramTextOptions.getBackgroundColor();
    i = paramTextOptions.getTypeface();
    j = paramTextOptions.isVisible();
    k = paramTextOptions.getZIndex();
    l = paramTextOptions.getAlignX();
    m = paramTextOptions.getAlignY();
    n = paramTextOptions.getObject();
    a = ((b)paramY);
  }
  
  public void draw(Canvas paramCanvas)
  {
    if (!TextUtils.isEmpty(c))
    {
      if (f == null) {
        return;
      }
      TextPaint localTextPaint = new TextPaint();
      if (i == null) {
        i = Typeface.DEFAULT;
      }
      localTextPaint.setTypeface(i);
      localTextPaint.setAntiAlias(true);
      localTextPaint.setTextSize(d);
      float f1 = localTextPaint.measureText(c);
      float f5 = d;
      localTextPaint.setColor(h);
      Object localObject = new w((int)(f.latitude * 1000000.0D), (int)(f.longitude * 1000000.0D));
      Point localPoint = new Point();
      a.d().a((w)localObject, localPoint);
      paramCanvas.save();
      paramCanvas.rotate(-(g % 360.0F), x, y);
      localObject = localTextPaint.getFontMetrics();
      if ((l < 1) || (l > 3)) {
        l = 3;
      }
      if ((m < 4) || (m > 6)) {
        m = 6;
      }
      int i1 = l;
      int i2 = 0;
      switch (i1)
      {
      default: 
        i1 = 0;
        break;
      case 3: 
        i1 = (int)(x - f1 / 2.0F);
        break;
      case 2: 
        i1 = (int)(x - f1);
        break;
      case 1: 
        i1 = x;
      }
      switch (m)
      {
      default: 
        break;
      case 6: 
        i2 = (int)(y - f5 / 2.0F);
        break;
      case 5: 
        i2 = (int)(y - f5);
        break;
      case 4: 
        i2 = y;
      }
      float f2 = i1 - 1;
      float f3 = i2 - 1;
      float f4 = i1;
      f5 = i2 + (f5 + 2.0F);
      paramCanvas.drawRect(f2, f3, f4 + (f1 + 2.0F), f5, localTextPaint);
      localTextPaint.setColor(e);
      paramCanvas.drawText(c, f4, f5 - bottom, localTextPaint);
      paramCanvas.restore();
      return;
    }
  }
  
  public int getAddIndex()
  {
    return o;
  }
  
  public int getAlignX()
  {
    return l;
  }
  
  public int getAlignY()
  {
    return m;
  }
  
  public int getBackgroundColor()
  {
    return h;
  }
  
  public int getFonrColor()
  {
    return e;
  }
  
  public int getFontSize()
  {
    return d;
  }
  
  public Object getObject()
  {
    return n;
  }
  
  public LatLng getPosition()
  {
    return f;
  }
  
  public float getRotate()
  {
    return g;
  }
  
  public String getText()
  {
    return c;
  }
  
  public Typeface getTypeface()
  {
    return i;
  }
  
  public float getZIndex()
  {
    return k;
  }
  
  public boolean isVisible()
  {
    return j;
  }
  
  public void remove()
  {
    if (b != null) {
      b.b(this);
    }
  }
  
  public void setAddIndex(int paramInt)
  {
    o = paramInt;
  }
  
  public void setAlign(int paramInt1, int paramInt2)
  {
    l = paramInt1;
    m = paramInt2;
    a.postInvalidate();
  }
  
  public void setBackgroundColor(int paramInt)
  {
    h = paramInt;
    a.postInvalidate();
  }
  
  public void setFontColor(int paramInt)
  {
    e = paramInt;
    a.postInvalidate();
  }
  
  public void setFontSize(int paramInt)
  {
    d = paramInt;
    a.postInvalidate();
  }
  
  public void setObject(Object paramObject)
  {
    n = paramObject;
  }
  
  public void setPosition(LatLng paramLatLng)
  {
    f = paramLatLng;
    a.postInvalidate();
  }
  
  public void setRotate(float paramFloat)
  {
    g = paramFloat;
    a.postInvalidate();
  }
  
  public void setText(String paramString)
  {
    c = paramString;
    a.postInvalidate();
  }
  
  public void setTypeface(Typeface paramTypeface)
  {
    i = paramTypeface;
    a.postInvalidate();
  }
  
  public void setVisible(boolean paramBoolean)
  {
    j = paramBoolean;
    a.postInvalidate();
  }
  
  public void setZIndex(float paramFloat)
  {
    k = paramFloat;
    b.d();
  }
}
