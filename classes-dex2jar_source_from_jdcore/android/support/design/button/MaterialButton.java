package android.support.design.button;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff.Mode;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.support.annotation.ColorInt;
import android.support.annotation.ColorRes;
import android.support.annotation.DimenRes;
import android.support.annotation.DrawableRes;
import android.support.annotation.Nullable;
import android.support.annotation.Px;
import android.support.annotation.RestrictTo;
import android.support.design.R.attr;
import android.support.design.R.style;
import android.support.design.R.styleable;
import android.support.design.internal.ThemeEnforcement;
import android.support.design.internal.ViewUtils;
import android.support.design.resources.MaterialResources;
import android.support.v4.graphics.drawable.DrawableCompat;
import android.support.v4.view.ViewCompat;
import android.support.v4.widget.TextViewCompat;
import android.support.v7.content.res.AppCompatResources;
import android.support.v7.widget.AppCompatButton;
import android.util.AttributeSet;
import android.util.Log;
import java.lang.annotation.Annotation;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

public class MaterialButton
  extends AppCompatButton
{
  public static final int ICON_GRAVITY_START = 1;
  public static final int ICON_GRAVITY_TEXT_START = 2;
  @Nullable
  private final b a;
  @Px
  private int b;
  private PorterDuff.Mode c;
  private ColorStateList d;
  private Drawable e;
  @Px
  private int f;
  @Px
  private int g;
  private int h;
  
  public MaterialButton(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public MaterialButton(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, R.attr.materialButtonStyle);
  }
  
  public MaterialButton(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    paramContext = ThemeEnforcement.obtainStyledAttributes(paramContext, paramAttributeSet, R.styleable.MaterialButton, paramInt, R.style.Widget_MaterialComponents_Button, new int[0]);
    b = paramContext.getDimensionPixelSize(R.styleable.MaterialButton_iconPadding, 0);
    c = ViewUtils.parseTintMode(paramContext.getInt(R.styleable.MaterialButton_iconTintMode, -1), PorterDuff.Mode.SRC_IN);
    d = MaterialResources.getColorStateList(getContext(), paramContext, R.styleable.MaterialButton_iconTint);
    e = MaterialResources.getDrawable(getContext(), paramContext, R.styleable.MaterialButton_icon);
    h = paramContext.getInteger(R.styleable.MaterialButton_iconGravity, 1);
    f = paramContext.getDimensionPixelSize(R.styleable.MaterialButton_iconSize, 0);
    a = new b(this);
    a.a(paramContext);
    paramContext.recycle();
    setCompoundDrawablePadding(b);
    b();
  }
  
  private boolean a()
  {
    return ViewCompat.getLayoutDirection(this) == 1;
  }
  
  private void b()
  {
    if (e != null)
    {
      e = e.mutate();
      DrawableCompat.setTintList(e, d);
      if (c != null) {
        DrawableCompat.setTintMode(e, c);
      }
      int i;
      if (f != 0) {
        i = f;
      } else {
        i = e.getIntrinsicWidth();
      }
      int j;
      if (f != 0) {
        j = f;
      } else {
        j = e.getIntrinsicHeight();
      }
      e.setBounds(g, 0, g + i, j);
    }
    TextViewCompat.setCompoundDrawablesRelative(this, e, null, null, null);
  }
  
  private boolean c()
  {
    return (a != null) && (!a.b());
  }
  
  @Nullable
  public ColorStateList getBackgroundTintList()
  {
    return getSupportBackgroundTintList();
  }
  
  @Nullable
  public PorterDuff.Mode getBackgroundTintMode()
  {
    return getSupportBackgroundTintMode();
  }
  
  @Px
  public int getCornerRadius()
  {
    if (c()) {
      return a.h();
    }
    return 0;
  }
  
  public Drawable getIcon()
  {
    return e;
  }
  
  public int getIconGravity()
  {
    return h;
  }
  
  @Px
  public int getIconPadding()
  {
    return b;
  }
  
  @Px
  public int getIconSize()
  {
    return f;
  }
  
  public ColorStateList getIconTint()
  {
    return d;
  }
  
  public PorterDuff.Mode getIconTintMode()
  {
    return c;
  }
  
  public ColorStateList getRippleColor()
  {
    if (c()) {
      return a.e();
    }
    return null;
  }
  
  public ColorStateList getStrokeColor()
  {
    if (c()) {
      return a.f();
    }
    return null;
  }
  
  @Px
  public int getStrokeWidth()
  {
    if (c()) {
      return a.g();
    }
    return 0;
  }
  
  @Nullable
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
  public ColorStateList getSupportBackgroundTintList()
  {
    if (c()) {
      return a.c();
    }
    return super.getSupportBackgroundTintList();
  }
  
  @Nullable
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
  public PorterDuff.Mode getSupportBackgroundTintMode()
  {
    if (c()) {
      return a.d();
    }
    return super.getSupportBackgroundTintMode();
  }
  
  protected void onDraw(Canvas paramCanvas)
  {
    super.onDraw(paramCanvas);
    if ((Build.VERSION.SDK_INT < 21) && (c())) {
      a.a(paramCanvas);
    }
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onLayout(paramBoolean, paramInt1, paramInt2, paramInt3, paramInt4);
    if ((Build.VERSION.SDK_INT == 21) && (a != null)) {
      a.a(paramInt4 - paramInt2, paramInt3 - paramInt1);
    }
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    super.onMeasure(paramInt1, paramInt2);
    if (e != null)
    {
      if (h != 2) {
        return;
      }
      paramInt2 = (int)getPaint().measureText(getText().toString());
      if (f == 0) {
        paramInt1 = e.getIntrinsicWidth();
      } else {
        paramInt1 = f;
      }
      paramInt2 = (getMeasuredWidth() - paramInt2 - ViewCompat.getPaddingEnd(this) - paramInt1 - b - ViewCompat.getPaddingStart(this)) / 2;
      paramInt1 = paramInt2;
      if (a()) {
        paramInt1 = -paramInt2;
      }
      if (g != paramInt1)
      {
        g = paramInt1;
        b();
      }
      return;
    }
  }
  
  public void setBackground(Drawable paramDrawable)
  {
    setBackgroundDrawable(paramDrawable);
  }
  
  public void setBackgroundColor(@ColorInt int paramInt)
  {
    if (c())
    {
      a.a(paramInt);
      return;
    }
    super.setBackgroundColor(paramInt);
  }
  
  public void setBackgroundDrawable(Drawable paramDrawable)
  {
    if (c())
    {
      if (paramDrawable != getBackground())
      {
        Log.i("MaterialButton", "Setting a custom background is not supported.");
        a.a();
        super.setBackgroundDrawable(paramDrawable);
        return;
      }
      getBackground().setState(paramDrawable.getState());
      return;
    }
    super.setBackgroundDrawable(paramDrawable);
  }
  
  public void setBackgroundResource(@DrawableRes int paramInt)
  {
    Drawable localDrawable;
    if (paramInt != 0) {
      localDrawable = AppCompatResources.getDrawable(getContext(), paramInt);
    } else {
      localDrawable = null;
    }
    setBackgroundDrawable(localDrawable);
  }
  
  public void setBackgroundTintList(@Nullable ColorStateList paramColorStateList)
  {
    setSupportBackgroundTintList(paramColorStateList);
  }
  
  public void setBackgroundTintMode(@Nullable PorterDuff.Mode paramMode)
  {
    setSupportBackgroundTintMode(paramMode);
  }
  
  public void setCornerRadius(@Px int paramInt)
  {
    if (c()) {
      a.c(paramInt);
    }
  }
  
  public void setCornerRadiusResource(@DimenRes int paramInt)
  {
    if (c()) {
      setCornerRadius(getResources().getDimensionPixelSize(paramInt));
    }
  }
  
  public void setIcon(Drawable paramDrawable)
  {
    if (e != paramDrawable)
    {
      e = paramDrawable;
      b();
    }
  }
  
  public void setIconGravity(int paramInt)
  {
    h = paramInt;
  }
  
  public void setIconPadding(@Px int paramInt)
  {
    if (b != paramInt)
    {
      b = paramInt;
      setCompoundDrawablePadding(paramInt);
    }
  }
  
  public void setIconResource(@DrawableRes int paramInt)
  {
    Drawable localDrawable;
    if (paramInt != 0) {
      localDrawable = AppCompatResources.getDrawable(getContext(), paramInt);
    } else {
      localDrawable = null;
    }
    setIcon(localDrawable);
  }
  
  public void setIconSize(@Px int paramInt)
  {
    if (paramInt >= 0)
    {
      if (f != paramInt)
      {
        f = paramInt;
        b();
      }
      return;
    }
    throw new IllegalArgumentException("iconSize cannot be less than 0");
  }
  
  public void setIconTint(@Nullable ColorStateList paramColorStateList)
  {
    if (d != paramColorStateList)
    {
      d = paramColorStateList;
      b();
    }
  }
  
  public void setIconTintMode(PorterDuff.Mode paramMode)
  {
    if (c != paramMode)
    {
      c = paramMode;
      b();
    }
  }
  
  public void setIconTintResource(@ColorRes int paramInt)
  {
    setIconTint(AppCompatResources.getColorStateList(getContext(), paramInt));
  }
  
  void setInternalBackground(Drawable paramDrawable)
  {
    super.setBackgroundDrawable(paramDrawable);
  }
  
  public void setRippleColor(@Nullable ColorStateList paramColorStateList)
  {
    if (c()) {
      a.b(paramColorStateList);
    }
  }
  
  public void setRippleColorResource(@ColorRes int paramInt)
  {
    if (c()) {
      setRippleColor(AppCompatResources.getColorStateList(getContext(), paramInt));
    }
  }
  
  public void setStrokeColor(@Nullable ColorStateList paramColorStateList)
  {
    if (c()) {
      a.c(paramColorStateList);
    }
  }
  
  public void setStrokeColorResource(@ColorRes int paramInt)
  {
    if (c()) {
      setStrokeColor(AppCompatResources.getColorStateList(getContext(), paramInt));
    }
  }
  
  public void setStrokeWidth(@Px int paramInt)
  {
    if (c()) {
      a.b(paramInt);
    }
  }
  
  public void setStrokeWidthResource(@DimenRes int paramInt)
  {
    if (c()) {
      setStrokeWidth(getResources().getDimensionPixelSize(paramInt));
    }
  }
  
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
  public void setSupportBackgroundTintList(@Nullable ColorStateList paramColorStateList)
  {
    if (c())
    {
      a.a(paramColorStateList);
      return;
    }
    if (a != null) {
      super.setSupportBackgroundTintList(paramColorStateList);
    }
  }
  
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
  public void setSupportBackgroundTintMode(@Nullable PorterDuff.Mode paramMode)
  {
    if (c())
    {
      a.a(paramMode);
      return;
    }
    if (a != null) {
      super.setSupportBackgroundTintMode(paramMode);
    }
  }
  
  @Retention(RetentionPolicy.SOURCE)
  public static @interface IconGravity {}
}
