package android.support.design.card;

import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.support.annotation.ColorInt;
import android.support.annotation.Dimension;
import android.support.annotation.RestrictTo;
import android.support.design.R.styleable;

@RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
class a
{
  private final MaterialCardView a;
  private int b;
  private int c;
  
  public a(MaterialCardView paramMaterialCardView)
  {
    a = paramMaterialCardView;
  }
  
  private Drawable d()
  {
    GradientDrawable localGradientDrawable = new GradientDrawable();
    localGradientDrawable.setCornerRadius(a.getRadius());
    if (b != -1) {
      localGradientDrawable.setStroke(c, b);
    }
    return localGradientDrawable;
  }
  
  private void e()
  {
    int i = a.getContentPaddingLeft();
    int j = c;
    int k = a.getContentPaddingTop();
    int m = c;
    int n = a.getContentPaddingRight();
    int i1 = c;
    int i2 = a.getContentPaddingBottom();
    int i3 = c;
    a.setContentPadding(i + j, k + m, n + i1, i2 + i3);
  }
  
  @ColorInt
  int a()
  {
    return b;
  }
  
  void a(@ColorInt int paramInt)
  {
    b = paramInt;
    c();
  }
  
  public void a(TypedArray paramTypedArray)
  {
    b = paramTypedArray.getColor(R.styleable.MaterialCardView_strokeColor, -1);
    c = paramTypedArray.getDimensionPixelSize(R.styleable.MaterialCardView_strokeWidth, 0);
    c();
    e();
  }
  
  @Dimension
  int b()
  {
    return c;
  }
  
  void b(@Dimension int paramInt)
  {
    c = paramInt;
    c();
    e();
  }
  
  void c()
  {
    a.setForeground(d());
  }
}
