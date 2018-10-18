package android.support.v7.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.PorterDuff.Mode;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.support.annotation.Nullable;
import android.support.v4.graphics.drawable.DrawableCompat;
import android.support.v4.widget.CompoundButtonCompat;
import android.support.v7.appcompat.R.styleable;
import android.support.v7.content.res.AppCompatResources;
import android.util.AttributeSet;
import android.widget.CompoundButton;

class e
{
  private final CompoundButton a;
  private ColorStateList b = null;
  private PorterDuff.Mode c = null;
  private boolean d = false;
  private boolean e = false;
  private boolean f;
  
  e(CompoundButton paramCompoundButton)
  {
    a = paramCompoundButton;
  }
  
  int a(int paramInt)
  {
    int i = paramInt;
    if (Build.VERSION.SDK_INT < 17)
    {
      Drawable localDrawable = CompoundButtonCompat.getButtonDrawable(a);
      i = paramInt;
      if (localDrawable != null) {
        i = paramInt + localDrawable.getIntrinsicWidth();
      }
    }
    return i;
  }
  
  ColorStateList a()
  {
    return b;
  }
  
  void a(ColorStateList paramColorStateList)
  {
    b = paramColorStateList;
    d = true;
    d();
  }
  
  void a(@Nullable PorterDuff.Mode paramMode)
  {
    c = paramMode;
    e = true;
    d();
  }
  
  void a(AttributeSet paramAttributeSet, int paramInt)
  {
    paramAttributeSet = a.getContext().obtainStyledAttributes(paramAttributeSet, R.styleable.CompoundButton, paramInt, 0);
    try
    {
      if (paramAttributeSet.hasValue(R.styleable.CompoundButton_android_button))
      {
        paramInt = paramAttributeSet.getResourceId(R.styleable.CompoundButton_android_button, 0);
        if (paramInt != 0) {
          a.setButtonDrawable(AppCompatResources.getDrawable(a.getContext(), paramInt));
        }
      }
      if (paramAttributeSet.hasValue(R.styleable.CompoundButton_buttonTint)) {
        CompoundButtonCompat.setButtonTintList(a, paramAttributeSet.getColorStateList(R.styleable.CompoundButton_buttonTint));
      }
      if (paramAttributeSet.hasValue(R.styleable.CompoundButton_buttonTintMode)) {
        CompoundButtonCompat.setButtonTintMode(a, DrawableUtils.parseTintMode(paramAttributeSet.getInt(R.styleable.CompoundButton_buttonTintMode, -1), null));
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
    return c;
  }
  
  void c()
  {
    if (f)
    {
      f = false;
      return;
    }
    f = true;
    d();
  }
  
  void d()
  {
    Drawable localDrawable = CompoundButtonCompat.getButtonDrawable(a);
    if ((localDrawable != null) && ((d) || (e)))
    {
      localDrawable = DrawableCompat.wrap(localDrawable).mutate();
      if (d) {
        DrawableCompat.setTintList(localDrawable, b);
      }
      if (e) {
        DrawableCompat.setTintMode(localDrawable, c);
      }
      if (localDrawable.isStateful()) {
        localDrawable.setState(a.getDrawableState());
      }
      a.setButtonDrawable(localDrawable);
    }
  }
}
