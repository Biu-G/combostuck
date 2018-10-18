package android.support.v4.view;

import android.graphics.Rect;
import android.os.Build.VERSION;
import android.support.annotation.Nullable;
import android.view.WindowInsets;

public class WindowInsetsCompat
{
  private final Object a;
  
  public WindowInsetsCompat(WindowInsetsCompat paramWindowInsetsCompat)
  {
    int i = Build.VERSION.SDK_INT;
    Object localObject = null;
    if (i >= 20)
    {
      if (paramWindowInsetsCompat == null) {
        paramWindowInsetsCompat = localObject;
      } else {
        paramWindowInsetsCompat = new WindowInsets((WindowInsets)a);
      }
      a = paramWindowInsetsCompat;
      return;
    }
    a = null;
  }
  
  private WindowInsetsCompat(Object paramObject)
  {
    a = paramObject;
  }
  
  static WindowInsetsCompat a(Object paramObject)
  {
    if (paramObject == null) {
      return null;
    }
    return new WindowInsetsCompat(paramObject);
  }
  
  static Object a(WindowInsetsCompat paramWindowInsetsCompat)
  {
    if (paramWindowInsetsCompat == null) {
      return null;
    }
    return a;
  }
  
  public WindowInsetsCompat consumeDisplayCutout()
  {
    if (Build.VERSION.SDK_INT >= 28) {
      return new WindowInsetsCompat(((WindowInsets)a).consumeDisplayCutout());
    }
    return this;
  }
  
  public WindowInsetsCompat consumeStableInsets()
  {
    if (Build.VERSION.SDK_INT >= 21) {
      return new WindowInsetsCompat(((WindowInsets)a).consumeStableInsets());
    }
    return null;
  }
  
  public WindowInsetsCompat consumeSystemWindowInsets()
  {
    if (Build.VERSION.SDK_INT >= 20) {
      return new WindowInsetsCompat(((WindowInsets)a).consumeSystemWindowInsets());
    }
    return null;
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
      paramObject = (WindowInsetsCompat)paramObject;
      if (a == null) {
        return a == null;
      }
      return a.equals(a);
    }
    return false;
  }
  
  @Nullable
  public DisplayCutoutCompat getDisplayCutout()
  {
    if (Build.VERSION.SDK_INT >= 28) {
      return DisplayCutoutCompat.a(((WindowInsets)a).getDisplayCutout());
    }
    return null;
  }
  
  public int getStableInsetBottom()
  {
    if (Build.VERSION.SDK_INT >= 21) {
      return ((WindowInsets)a).getStableInsetBottom();
    }
    return 0;
  }
  
  public int getStableInsetLeft()
  {
    if (Build.VERSION.SDK_INT >= 21) {
      return ((WindowInsets)a).getStableInsetLeft();
    }
    return 0;
  }
  
  public int getStableInsetRight()
  {
    if (Build.VERSION.SDK_INT >= 21) {
      return ((WindowInsets)a).getStableInsetRight();
    }
    return 0;
  }
  
  public int getStableInsetTop()
  {
    if (Build.VERSION.SDK_INT >= 21) {
      return ((WindowInsets)a).getStableInsetTop();
    }
    return 0;
  }
  
  public int getSystemWindowInsetBottom()
  {
    if (Build.VERSION.SDK_INT >= 20) {
      return ((WindowInsets)a).getSystemWindowInsetBottom();
    }
    return 0;
  }
  
  public int getSystemWindowInsetLeft()
  {
    if (Build.VERSION.SDK_INT >= 20) {
      return ((WindowInsets)a).getSystemWindowInsetLeft();
    }
    return 0;
  }
  
  public int getSystemWindowInsetRight()
  {
    if (Build.VERSION.SDK_INT >= 20) {
      return ((WindowInsets)a).getSystemWindowInsetRight();
    }
    return 0;
  }
  
  public int getSystemWindowInsetTop()
  {
    if (Build.VERSION.SDK_INT >= 20) {
      return ((WindowInsets)a).getSystemWindowInsetTop();
    }
    return 0;
  }
  
  public boolean hasInsets()
  {
    if (Build.VERSION.SDK_INT >= 20) {
      return ((WindowInsets)a).hasInsets();
    }
    return false;
  }
  
  public boolean hasStableInsets()
  {
    if (Build.VERSION.SDK_INT >= 21) {
      return ((WindowInsets)a).hasStableInsets();
    }
    return false;
  }
  
  public boolean hasSystemWindowInsets()
  {
    if (Build.VERSION.SDK_INT >= 20) {
      return ((WindowInsets)a).hasSystemWindowInsets();
    }
    return false;
  }
  
  public int hashCode()
  {
    if (a == null) {
      return 0;
    }
    return a.hashCode();
  }
  
  public boolean isConsumed()
  {
    if (Build.VERSION.SDK_INT >= 21) {
      return ((WindowInsets)a).isConsumed();
    }
    return false;
  }
  
  public boolean isRound()
  {
    if (Build.VERSION.SDK_INT >= 20) {
      return ((WindowInsets)a).isRound();
    }
    return false;
  }
  
  public WindowInsetsCompat replaceSystemWindowInsets(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    if (Build.VERSION.SDK_INT >= 20) {
      return new WindowInsetsCompat(((WindowInsets)a).replaceSystemWindowInsets(paramInt1, paramInt2, paramInt3, paramInt4));
    }
    return null;
  }
  
  public WindowInsetsCompat replaceSystemWindowInsets(Rect paramRect)
  {
    if (Build.VERSION.SDK_INT >= 21) {
      return new WindowInsetsCompat(((WindowInsets)a).replaceSystemWindowInsets(paramRect));
    }
    return null;
  }
}
