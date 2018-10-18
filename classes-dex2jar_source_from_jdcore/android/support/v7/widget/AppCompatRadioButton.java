package android.support.v7.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff.Mode;
import android.graphics.drawable.Drawable;
import android.support.annotation.DrawableRes;
import android.support.annotation.Nullable;
import android.support.annotation.RestrictTo;
import android.support.v4.widget.TintableCompoundButton;
import android.support.v7.appcompat.R.attr;
import android.support.v7.content.res.AppCompatResources;
import android.util.AttributeSet;
import android.widget.RadioButton;

public class AppCompatRadioButton
  extends RadioButton
  implements TintableCompoundButton
{
  private final e a = new e(this);
  private final j b;
  
  public AppCompatRadioButton(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public AppCompatRadioButton(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, R.attr.radioButtonStyle);
  }
  
  public AppCompatRadioButton(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(TintContextWrapper.wrap(paramContext), paramAttributeSet, paramInt);
    a.a(paramAttributeSet, paramInt);
    b = new j(this);
    b.a(paramAttributeSet, paramInt);
  }
  
  public int getCompoundPaddingLeft()
  {
    int j = super.getCompoundPaddingLeft();
    int i = j;
    if (a != null) {
      i = a.a(j);
    }
    return i;
  }
  
  @Nullable
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
  public ColorStateList getSupportButtonTintList()
  {
    if (a != null) {
      return a.a();
    }
    return null;
  }
  
  @Nullable
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
  public PorterDuff.Mode getSupportButtonTintMode()
  {
    if (a != null) {
      return a.b();
    }
    return null;
  }
  
  public void setButtonDrawable(@DrawableRes int paramInt)
  {
    setButtonDrawable(AppCompatResources.getDrawable(getContext(), paramInt));
  }
  
  public void setButtonDrawable(Drawable paramDrawable)
  {
    super.setButtonDrawable(paramDrawable);
    if (a != null) {
      a.c();
    }
  }
  
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
  public void setSupportButtonTintList(@Nullable ColorStateList paramColorStateList)
  {
    if (a != null) {
      a.a(paramColorStateList);
    }
  }
  
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
  public void setSupportButtonTintMode(@Nullable PorterDuff.Mode paramMode)
  {
    if (a != null) {
      a.a(paramMode);
    }
  }
}
