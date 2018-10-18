package android.support.v7.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Color;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.support.annotation.ColorInt;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.Px;
import android.support.v7.cardview.R.attr;
import android.support.v7.cardview.R.color;
import android.support.v7.cardview.R.style;
import android.support.v7.cardview.R.styleable;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.MeasureSpec;
import android.widget.FrameLayout;

public class CardView
  extends FrameLayout
{
  private static final int[] e = { 16842801 };
  private static final p f;
  int a;
  int b;
  final Rect c = new Rect();
  final Rect d = new Rect();
  private boolean g;
  private boolean h;
  private final o i = new o()
  {
    private Drawable b;
    
    public void a(int paramAnonymousInt1, int paramAnonymousInt2)
    {
      if (paramAnonymousInt1 > a) {
        CardView.a(CardView.this, paramAnonymousInt1);
      }
      if (paramAnonymousInt2 > b) {
        CardView.b(CardView.this, paramAnonymousInt2);
      }
    }
    
    public void a(int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3, int paramAnonymousInt4)
    {
      d.set(paramAnonymousInt1, paramAnonymousInt2, paramAnonymousInt3, paramAnonymousInt4);
      CardView.a(CardView.this, paramAnonymousInt1 + c.left, paramAnonymousInt2 + c.top, paramAnonymousInt3 + c.right, paramAnonymousInt4 + c.bottom);
    }
    
    public void a(Drawable paramAnonymousDrawable)
    {
      b = paramAnonymousDrawable;
      setBackgroundDrawable(paramAnonymousDrawable);
    }
    
    public boolean a()
    {
      return getUseCompatPadding();
    }
    
    public boolean b()
    {
      return getPreventCornerOverlap();
    }
    
    public Drawable c()
    {
      return b;
    }
    
    public View d()
    {
      return CardView.this;
    }
  };
  
  static
  {
    if (Build.VERSION.SDK_INT >= 21) {
      f = new m();
    } else if (Build.VERSION.SDK_INT >= 17) {
      f = new l();
    } else {
      f = new n();
    }
    f.a();
  }
  
  public CardView(@NonNull Context paramContext)
  {
    this(paramContext, null);
  }
  
  public CardView(@NonNull Context paramContext, @Nullable AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, R.attr.cardViewStyle);
  }
  
  public CardView(@NonNull Context paramContext, @Nullable AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    TypedArray localTypedArray = paramContext.obtainStyledAttributes(paramAttributeSet, R.styleable.CardView, paramInt, R.style.CardView);
    if (localTypedArray.hasValue(R.styleable.CardView_cardBackgroundColor)) {}
    for (paramAttributeSet = localTypedArray.getColorStateList(R.styleable.CardView_cardBackgroundColor);; paramAttributeSet = ColorStateList.valueOf(paramInt))
    {
      break;
      paramAttributeSet = getContext().obtainStyledAttributes(e);
      paramInt = paramAttributeSet.getColor(0, 0);
      paramAttributeSet.recycle();
      paramAttributeSet = new float[3];
      Color.colorToHSV(paramInt, paramAttributeSet);
      if (paramAttributeSet[2] > 0.5F) {
        paramInt = getResources().getColor(R.color.cardview_light_background);
      } else {
        paramInt = getResources().getColor(R.color.cardview_dark_background);
      }
    }
    float f3 = localTypedArray.getDimension(R.styleable.CardView_cardCornerRadius, 0.0F);
    float f2 = localTypedArray.getDimension(R.styleable.CardView_cardElevation, 0.0F);
    float f1 = localTypedArray.getDimension(R.styleable.CardView_cardMaxElevation, 0.0F);
    g = localTypedArray.getBoolean(R.styleable.CardView_cardUseCompatPadding, false);
    h = localTypedArray.getBoolean(R.styleable.CardView_cardPreventCornerOverlap, true);
    paramInt = localTypedArray.getDimensionPixelSize(R.styleable.CardView_contentPadding, 0);
    c.left = localTypedArray.getDimensionPixelSize(R.styleable.CardView_contentPaddingLeft, paramInt);
    c.top = localTypedArray.getDimensionPixelSize(R.styleable.CardView_contentPaddingTop, paramInt);
    c.right = localTypedArray.getDimensionPixelSize(R.styleable.CardView_contentPaddingRight, paramInt);
    c.bottom = localTypedArray.getDimensionPixelSize(R.styleable.CardView_contentPaddingBottom, paramInt);
    if (f2 > f1) {
      f1 = f2;
    }
    a = localTypedArray.getDimensionPixelSize(R.styleable.CardView_android_minWidth, 0);
    b = localTypedArray.getDimensionPixelSize(R.styleable.CardView_android_minHeight, 0);
    localTypedArray.recycle();
    f.a(i, paramContext, paramAttributeSet, f3, f2, f1);
  }
  
  @NonNull
  public ColorStateList getCardBackgroundColor()
  {
    return f.i(i);
  }
  
  public float getCardElevation()
  {
    return f.e(i);
  }
  
  @Px
  public int getContentPaddingBottom()
  {
    return c.bottom;
  }
  
  @Px
  public int getContentPaddingLeft()
  {
    return c.left;
  }
  
  @Px
  public int getContentPaddingRight()
  {
    return c.right;
  }
  
  @Px
  public int getContentPaddingTop()
  {
    return c.top;
  }
  
  public float getMaxCardElevation()
  {
    return f.a(i);
  }
  
  public boolean getPreventCornerOverlap()
  {
    return h;
  }
  
  public float getRadius()
  {
    return f.d(i);
  }
  
  public boolean getUseCompatPadding()
  {
    return g;
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    if (!(f instanceof m))
    {
      int j = View.MeasureSpec.getMode(paramInt1);
      if ((j == Integer.MIN_VALUE) || (j == 1073741824)) {
        paramInt1 = View.MeasureSpec.makeMeasureSpec(Math.max((int)Math.ceil(f.b(i)), View.MeasureSpec.getSize(paramInt1)), j);
      }
      j = View.MeasureSpec.getMode(paramInt2);
      if ((j == Integer.MIN_VALUE) || (j == 1073741824)) {
        paramInt2 = View.MeasureSpec.makeMeasureSpec(Math.max((int)Math.ceil(f.c(i)), View.MeasureSpec.getSize(paramInt2)), j);
      }
      super.onMeasure(paramInt1, paramInt2);
      return;
    }
    super.onMeasure(paramInt1, paramInt2);
  }
  
  public void setCardBackgroundColor(@ColorInt int paramInt)
  {
    f.a(i, ColorStateList.valueOf(paramInt));
  }
  
  public void setCardBackgroundColor(@Nullable ColorStateList paramColorStateList)
  {
    f.a(i, paramColorStateList);
  }
  
  public void setCardElevation(float paramFloat)
  {
    f.c(i, paramFloat);
  }
  
  public void setContentPadding(@Px int paramInt1, @Px int paramInt2, @Px int paramInt3, @Px int paramInt4)
  {
    c.set(paramInt1, paramInt2, paramInt3, paramInt4);
    f.f(i);
  }
  
  public void setMaxCardElevation(float paramFloat)
  {
    f.b(i, paramFloat);
  }
  
  public void setMinimumHeight(int paramInt)
  {
    b = paramInt;
    super.setMinimumHeight(paramInt);
  }
  
  public void setMinimumWidth(int paramInt)
  {
    a = paramInt;
    super.setMinimumWidth(paramInt);
  }
  
  public void setPadding(int paramInt1, int paramInt2, int paramInt3, int paramInt4) {}
  
  public void setPaddingRelative(int paramInt1, int paramInt2, int paramInt3, int paramInt4) {}
  
  public void setPreventCornerOverlap(boolean paramBoolean)
  {
    if (paramBoolean != h)
    {
      h = paramBoolean;
      f.h(i);
    }
  }
  
  public void setRadius(float paramFloat)
  {
    f.a(i, paramFloat);
  }
  
  public void setUseCompatPadding(boolean paramBoolean)
  {
    if (g != paramBoolean)
    {
      g = paramBoolean;
      f.g(i);
    }
  }
}
