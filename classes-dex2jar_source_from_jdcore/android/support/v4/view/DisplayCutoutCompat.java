package android.support.v4.view;

import android.graphics.Rect;
import android.os.Build.VERSION;
import android.view.DisplayCutout;
import java.util.List;

public final class DisplayCutoutCompat
{
  private final Object a;
  
  public DisplayCutoutCompat(Rect paramRect, List<Rect> paramList)
  {
    this(paramRect);
  }
  
  private DisplayCutoutCompat(Object paramObject)
  {
    a = paramObject;
  }
  
  static DisplayCutoutCompat a(Object paramObject)
  {
    if (paramObject == null) {
      return null;
    }
    return new DisplayCutoutCompat(paramObject);
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {
      return true;
    }
    if (paramObject != null)
    {
      if (getClass() != paramObject.getClass()) {
        return false;
      }
      paramObject = (DisplayCutoutCompat)paramObject;
      if (a == null) {
        return a == null;
      }
      return a.equals(a);
    }
    return false;
  }
  
  public List<Rect> getBoundingRects()
  {
    if (Build.VERSION.SDK_INT >= 28) {
      return ((DisplayCutout)a).getBoundingRects();
    }
    return null;
  }
  
  public int getSafeInsetBottom()
  {
    if (Build.VERSION.SDK_INT >= 28) {
      return ((DisplayCutout)a).getSafeInsetBottom();
    }
    return 0;
  }
  
  public int getSafeInsetLeft()
  {
    if (Build.VERSION.SDK_INT >= 28) {
      return ((DisplayCutout)a).getSafeInsetLeft();
    }
    return 0;
  }
  
  public int getSafeInsetRight()
  {
    if (Build.VERSION.SDK_INT >= 28) {
      return ((DisplayCutout)a).getSafeInsetRight();
    }
    return 0;
  }
  
  public int getSafeInsetTop()
  {
    if (Build.VERSION.SDK_INT >= 28) {
      return ((DisplayCutout)a).getSafeInsetTop();
    }
    return 0;
  }
  
  public int hashCode()
  {
    if (a == null) {
      return 0;
    }
    return a.hashCode();
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("DisplayCutoutCompat{");
    localStringBuilder.append(a);
    localStringBuilder.append("}");
    return localStringBuilder.toString();
  }
}
