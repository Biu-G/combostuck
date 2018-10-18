package android.support.design.card;

import android.content.Context;
import android.content.res.TypedArray;
import android.support.annotation.ColorInt;
import android.support.annotation.Dimension;
import android.support.design.R.attr;
import android.support.design.R.style;
import android.support.design.R.styleable;
import android.support.design.internal.ThemeEnforcement;
import android.support.v7.widget.CardView;
import android.util.AttributeSet;

public class MaterialCardView
  extends CardView
{
  private final a e;
  
  public MaterialCardView(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public MaterialCardView(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, R.attr.materialCardViewStyle);
  }
  
  public MaterialCardView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    paramContext = ThemeEnforcement.obtainStyledAttributes(paramContext, paramAttributeSet, R.styleable.MaterialCardView, paramInt, R.style.Widget_MaterialComponents_CardView, new int[0]);
    e = new a(this);
    e.a(paramContext);
    paramContext.recycle();
  }
  
  @ColorInt
  public int getStrokeColor()
  {
    return e.a();
  }
  
  @Dimension
  public int getStrokeWidth()
  {
    return e.b();
  }
  
  public void setRadius(float paramFloat)
  {
    super.setRadius(paramFloat);
    e.c();
  }
  
  public void setStrokeColor(@ColorInt int paramInt)
  {
    e.a(paramInt);
  }
  
  public void setStrokeWidth(@Dimension int paramInt)
  {
    e.b(paramInt);
  }
}