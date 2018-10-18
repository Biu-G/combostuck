package android.support.v7.widget;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff.Mode;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.support.annotation.NonNull;
import android.support.v4.view.ViewCompat;
import android.support.v7.appcompat.R.styleable;
import android.util.AttributeSet;
import android.view.View;

class d
{
  private final View a;
  private final AppCompatDrawableManager b;
  private int c = -1;
  private ad d;
  private ad e;
  private ad f;
  
  d(View paramView)
  {
    a = paramView;
    b = AppCompatDrawableManager.get();
  }
  
  private boolean b(@NonNull Drawable paramDrawable)
  {
    if (f == null) {
      f = new ad();
    }
    ad localAd = f;
    localAd.a();
    Object localObject = ViewCompat.getBackgroundTintList(a);
    if (localObject != null)
    {
      d = true;
      a = ((ColorStateList)localObject);
    }
    localObject = ViewCompat.getBackgroundTintMode(a);
    if (localObject != null)
    {
      c = true;
      b = ((PorterDuff.Mode)localObject);
    }
    if ((!d) && (!c)) {
      return false;
    }
    AppCompatDrawableManager.a(paramDrawable, localAd, a.getDrawableState());
    return true;
  }
  
  private boolean d()
  {
    int i = Build.VERSION.SDK_INT;
    boolean bool = false;
    if (i > 21)
    {
      if (d != null) {
        bool = true;
      }
      return bool;
    }
    return i == 21;
  }
  
  ColorStateList a()
  {
    if (e != null) {
      return e.a;
    }
    return null;
  }
  
  void a(int paramInt)
  {
    c = paramInt;
    ColorStateList localColorStateList;
    if (b != null) {
      localColorStateList = b.a(a.getContext(), paramInt);
    } else {
      localColorStateList = null;
    }
    b(localColorStateList);
    c();
  }
  
  void a(ColorStateList paramColorStateList)
  {
    if (e == null) {
      e = new ad();
    }
    e.a = paramColorStateList;
    e.d = true;
    c();
  }
  
  void a(PorterDuff.Mode paramMode)
  {
    if (e == null) {
      e = new ad();
    }
    e.b = paramMode;
    e.c = true;
    c();
  }
  
  void a(Drawable paramDrawable)
  {
    c = -1;
    b(null);
    c();
  }
  
  void a(AttributeSet paramAttributeSet, int paramInt)
  {
    paramAttributeSet = TintTypedArray.obtainStyledAttributes(a.getContext(), paramAttributeSet, R.styleable.ViewBackgroundHelper, paramInt, 0);
    try
    {
      if (paramAttributeSet.hasValue(R.styleable.ViewBackgroundHelper_android_background))
      {
        c = paramAttributeSet.getResourceId(R.styleable.ViewBackgroundHelper_android_background, -1);
        ColorStateList localColorStateList = b.a(a.getContext(), c);
        if (localColorStateList != null) {
          b(localColorStateList);
        }
      }
      if (paramAttributeSet.hasValue(R.styleable.ViewBackgroundHelper_backgroundTint)) {
        ViewCompat.setBackgroundTintList(a, paramAttributeSet.getColorStateList(R.styleable.ViewBackgroundHelper_backgroundTint));
      }
      if (paramAttributeSet.hasValue(R.styleable.ViewBackgroundHelper_backgroundTintMode)) {
        ViewCompat.setBackgroundTintMode(a, DrawableUtils.parseTintMode(paramAttributeSet.getInt(R.styleable.ViewBackgroundHelper_backgroundTintMode, -1), null));
      }
      return;
    }
    finally
    {
      paramAttributeSet.recycle();
    }
  }
  
  PorterDuff.Mode b()
  {
    if (e != null) {
      return e.b;
    }
    return null;
  }
  
  void b(ColorStateList paramColorStateList)
  {
    if (paramColorStateList != null)
    {
      if (d == null) {
        d = new ad();
      }
      d.a = paramColorStateList;
      d.d = true;
    }
    else
    {
      d = null;
    }
    c();
  }
  
  void c()
  {
    Drawable localDrawable = a.getBackground();
    if (localDrawable != null)
    {
      if ((d()) && (b(localDrawable))) {
        return;
      }
      if (e != null)
      {
        AppCompatDrawableManager.a(localDrawable, e, a.getDrawableState());
        return;
      }
      if (d != null) {
        AppCompatDrawableManager.a(localDrawable, d, a.getDrawableState());
      }
    }
  }
}
