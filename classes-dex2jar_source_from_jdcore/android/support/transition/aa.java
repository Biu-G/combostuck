package android.support.transition;

import android.graphics.Matrix;
import android.graphics.Rect;
import android.os.Build.VERSION;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v4.view.ViewCompat;
import android.util.Log;
import android.util.Property;
import android.view.View;
import java.lang.reflect.Field;

class aa
{
  static final Property<View, Float> a = new Property(Float.class, "translationAlpha")
  {
    public Float a(View paramAnonymousView)
    {
      return Float.valueOf(aa.c(paramAnonymousView));
    }
    
    public void a(View paramAnonymousView, Float paramAnonymousFloat)
    {
      aa.a(paramAnonymousView, paramAnonymousFloat.floatValue());
    }
  };
  static final Property<View, Rect> b = new Property(Rect.class, "clipBounds")
  {
    public Rect a(View paramAnonymousView)
    {
      return ViewCompat.getClipBounds(paramAnonymousView);
    }
    
    public void a(View paramAnonymousView, Rect paramAnonymousRect)
    {
      ViewCompat.setClipBounds(paramAnonymousView, paramAnonymousRect);
    }
  };
  private static final ae c;
  private static Field d;
  private static boolean e;
  
  static
  {
    if (Build.VERSION.SDK_INT >= 22) {
      c = new ad();
    } else if (Build.VERSION.SDK_INT >= 21) {
      c = new ac();
    } else if (Build.VERSION.SDK_INT >= 19) {
      c = new ab();
    } else {
      c = new ae();
    }
  }
  
  static z a(@NonNull View paramView)
  {
    if (Build.VERSION.SDK_INT >= 18) {
      return new y(paramView);
    }
    return x.d(paramView);
  }
  
  private static void a()
  {
    if (!e) {}
    try
    {
      d = View.class.getDeclaredField("mViewFlags");
      d.setAccessible(true);
    }
    catch (NoSuchFieldException localNoSuchFieldException)
    {
      for (;;) {}
    }
    Log.i("ViewUtils", "fetchViewFlagsField: ");
    e = true;
  }
  
  static void a(@NonNull View paramView, float paramFloat)
  {
    c.a(paramView, paramFloat);
  }
  
  static void a(@NonNull View paramView, int paramInt)
  {
    
    if (d != null) {}
    try
    {
      int i = d.getInt(paramView);
      d.setInt(paramView, paramInt | i & 0xFFFFFFF3);
      return;
    }
    catch (IllegalAccessException paramView) {}
  }
  
  static void a(@NonNull View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    c.a(paramView, paramInt1, paramInt2, paramInt3, paramInt4);
  }
  
  static void a(@NonNull View paramView, @NonNull Matrix paramMatrix)
  {
    c.a(paramView, paramMatrix);
  }
  
  static ah b(@NonNull View paramView)
  {
    if (Build.VERSION.SDK_INT >= 18) {
      return new ag(paramView);
    }
    return new af(paramView.getWindowToken());
  }
  
  static void b(@NonNull View paramView, @NonNull Matrix paramMatrix)
  {
    c.b(paramView, paramMatrix);
  }
  
  static float c(@NonNull View paramView)
  {
    return c.a(paramView);
  }
  
  static void c(@NonNull View paramView, @Nullable Matrix paramMatrix)
  {
    c.c(paramView, paramMatrix);
  }
  
  static void d(@NonNull View paramView)
  {
    c.b(paramView);
  }
  
  static void e(@NonNull View paramView)
  {
    c.c(paramView);
  }
}
