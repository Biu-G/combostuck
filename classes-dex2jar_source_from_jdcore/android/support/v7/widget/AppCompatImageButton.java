package android.support.v7.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Bitmap;
import android.graphics.PorterDuff.Mode;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.support.annotation.DrawableRes;
import android.support.annotation.Nullable;
import android.support.annotation.RestrictTo;
import android.support.v4.view.TintableBackgroundView;
import android.support.v4.widget.TintableImageSourceView;
import android.support.v7.appcompat.R.attr;
import android.util.AttributeSet;
import android.widget.ImageButton;

public class AppCompatImageButton
  extends ImageButton
  implements TintableBackgroundView, TintableImageSourceView
{
  private final d a = new d(this);
  private final AppCompatImageHelper b;
  
  public AppCompatImageButton(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public AppCompatImageButton(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, R.attr.imageButtonStyle);
  }
  
  public AppCompatImageButton(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(TintContextWrapper.wrap(paramContext), paramAttributeSet, paramInt);
    a.a(paramAttributeSet, paramInt);
    b = new AppCompatImageHelper(this);
    b.loadFromAttributes(paramAttributeSet, paramInt);
  }
  
  protected void drawableStateChanged()
  {
    super.drawableStateChanged();
    if (a != null) {
      a.c();
    }
    if (b != null) {
      b.d();
    }
  }
  
  @Nullable
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
  public ColorStateList getSupportBackgroundTintList()
  {
    if (a != null) {
      return a.a();
    }
    return null;
  }
  
  @Nullable
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
  public PorterDuff.Mode getSupportBackgroundTintMode()
  {
    if (a != null) {
      return a.b();
    }
    return null;
  }
  
  @Nullable
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
  public ColorStateList getSupportImageTintList()
  {
    if (b != null) {
      return b.b();
    }
    return null;
  }
  
  @Nullable
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
  public PorterDuff.Mode getSupportImageTintMode()
  {
    if (b != null) {
      return b.c();
    }
    return null;
  }
  
  public boolean hasOverlappingRendering()
  {
    return (b.a()) && (super.hasOverlappingRendering());
  }
  
  public void setBackgroundDrawable(Drawable paramDrawable)
  {
    super.setBackgroundDrawable(paramDrawable);
    if (a != null) {
      a.a(paramDrawable);
    }
  }
  
  public void setBackgroundResource(@DrawableRes int paramInt)
  {
    super.setBackgroundResource(paramInt);
    if (a != null) {
      a.a(paramInt);
    }
  }
  
  public void setImageBitmap(Bitmap paramBitmap)
  {
    super.setImageBitmap(paramBitmap);
    if (b != null) {
      b.d();
    }
  }
  
  public void setImageDrawable(@Nullable Drawable paramDrawable)
  {
    super.setImageDrawable(paramDrawable);
    if (b != null) {
      b.d();
    }
  }
  
  public void setImageResource(@DrawableRes int paramInt)
  {
    b.setImageResource(paramInt);
  }
  
  public void setImageURI(@Nullable Uri paramUri)
  {
    super.setImageURI(paramUri);
    if (b != null) {
      b.d();
    }
  }
  
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
  public void setSupportBackgroundTintList(@Nullable ColorStateList paramColorStateList)
  {
    if (a != null) {
      a.a(paramColorStateList);
    }
  }
  
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
  public void setSupportBackgroundTintMode(@Nullable PorterDuff.Mode paramMode)
  {
    if (a != null) {
      a.a(paramMode);
    }
  }
  
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
  public void setSupportImageTintList(@Nullable ColorStateList paramColorStateList)
  {
    if (b != null) {
      b.a(paramColorStateList);
    }
  }
  
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
  public void setSupportImageTintMode(@Nullable PorterDuff.Mode paramMode)
  {
    if (b != null) {
      b.a(paramMode);
    }
  }
}
