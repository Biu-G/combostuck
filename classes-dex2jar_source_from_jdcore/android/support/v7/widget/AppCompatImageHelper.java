package android.support.v7.widget;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff.Mode;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build.VERSION;
import android.support.annotation.NonNull;
import android.support.annotation.RestrictTo;
import android.support.v4.widget.ImageViewCompat;
import android.support.v7.appcompat.R.styleable;
import android.support.v7.content.res.AppCompatResources;
import android.util.AttributeSet;
import android.widget.ImageView;

@RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
public class AppCompatImageHelper
{
  private final ImageView a;
  private ad b;
  private ad c;
  private ad d;
  
  public AppCompatImageHelper(ImageView paramImageView)
  {
    a = paramImageView;
  }
  
  private boolean a(@NonNull Drawable paramDrawable)
  {
    if (d == null) {
      d = new ad();
    }
    ad localAd = d;
    localAd.a();
    Object localObject = ImageViewCompat.getImageTintList(a);
    if (localObject != null)
    {
      d = true;
      a = ((ColorStateList)localObject);
    }
    localObject = ImageViewCompat.getImageTintMode(a);
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
  
  private boolean e()
  {
    int i = Build.VERSION.SDK_INT;
    boolean bool = false;
    if (i > 21)
    {
      if (b != null) {
        bool = true;
      }
      return bool;
    }
    return i == 21;
  }
  
  void a(ColorStateList paramColorStateList)
  {
    if (c == null) {
      c = new ad();
    }
    c.a = paramColorStateList;
    c.d = true;
    d();
  }
  
  void a(PorterDuff.Mode paramMode)
  {
    if (c == null) {
      c = new ad();
    }
    c.b = paramMode;
    c.c = true;
    d();
  }
  
  boolean a()
  {
    Drawable localDrawable = a.getBackground();
    return (Build.VERSION.SDK_INT < 21) || (!(localDrawable instanceof RippleDrawable));
  }
  
  ColorStateList b()
  {
    if (c != null) {
      return c.a;
    }
    return null;
  }
  
  PorterDuff.Mode c()
  {
    if (c != null) {
      return c.b;
    }
    return null;
  }
  
  void d()
  {
    Drawable localDrawable = a.getDrawable();
    if (localDrawable != null) {
      DrawableUtils.a(localDrawable);
    }
    if (localDrawable != null)
    {
      if ((e()) && (a(localDrawable))) {
        return;
      }
      if (c != null)
      {
        AppCompatDrawableManager.a(localDrawable, c, a.getDrawableState());
        return;
      }
      if (b != null) {
        AppCompatDrawableManager.a(localDrawable, b, a.getDrawableState());
      }
    }
  }
  
  public void loadFromAttributes(AttributeSet paramAttributeSet, int paramInt)
  {
    TintTypedArray localTintTypedArray = TintTypedArray.obtainStyledAttributes(a.getContext(), paramAttributeSet, R.styleable.AppCompatImageView, paramInt, 0);
    try
    {
      Drawable localDrawable = a.getDrawable();
      paramAttributeSet = localDrawable;
      if (localDrawable == null)
      {
        paramInt = localTintTypedArray.getResourceId(R.styleable.AppCompatImageView_srcCompat, -1);
        paramAttributeSet = localDrawable;
        if (paramInt != -1)
        {
          localDrawable = AppCompatResources.getDrawable(a.getContext(), paramInt);
          paramAttributeSet = localDrawable;
          if (localDrawable != null)
          {
            a.setImageDrawable(localDrawable);
            paramAttributeSet = localDrawable;
          }
        }
      }
      if (paramAttributeSet != null) {
        DrawableUtils.a(paramAttributeSet);
      }
      if (localTintTypedArray.hasValue(R.styleable.AppCompatImageView_tint)) {
        ImageViewCompat.setImageTintList(a, localTintTypedArray.getColorStateList(R.styleable.AppCompatImageView_tint));
      }
      if (localTintTypedArray.hasValue(R.styleable.AppCompatImageView_tintMode)) {
        ImageViewCompat.setImageTintMode(a, DrawableUtils.parseTintMode(localTintTypedArray.getInt(R.styleable.AppCompatImageView_tintMode, -1), null));
      }
      return;
    }
    finally
    {
      localTintTypedArray.recycle();
    }
  }
  
  public void setImageResource(int paramInt)
  {
    if (paramInt != 0)
    {
      Drawable localDrawable = AppCompatResources.getDrawable(a.getContext(), paramInt);
      if (localDrawable != null) {
        DrawableUtils.a(localDrawable);
      }
      a.setImageDrawable(localDrawable);
    }
    else
    {
      a.setImageDrawable(null);
    }
    d();
  }
}
