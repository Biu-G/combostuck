package android.support.design.circularreveal;

import android.animation.TypeEvaluator;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.support.annotation.ColorInt;
import android.support.annotation.Nullable;
import android.support.design.widget.MathUtils;
import android.util.Property;

public abstract interface CircularRevealWidget
  extends CircularRevealHelper.a
{
  public abstract void buildCircularRevealCache();
  
  public abstract void destroyCircularRevealCache();
  
  public abstract void draw(Canvas paramCanvas);
  
  @Nullable
  public abstract Drawable getCircularRevealOverlayDrawable();
  
  @ColorInt
  public abstract int getCircularRevealScrimColor();
  
  @Nullable
  public abstract RevealInfo getRevealInfo();
  
  public abstract boolean isOpaque();
  
  public abstract void setCircularRevealOverlayDrawable(@Nullable Drawable paramDrawable);
  
  public abstract void setCircularRevealScrimColor(@ColorInt int paramInt);
  
  public abstract void setRevealInfo(@Nullable RevealInfo paramRevealInfo);
  
  public static class CircularRevealEvaluator
    implements TypeEvaluator<CircularRevealWidget.RevealInfo>
  {
    public static final TypeEvaluator<CircularRevealWidget.RevealInfo> CIRCULAR_REVEAL = new CircularRevealEvaluator();
    private final CircularRevealWidget.RevealInfo a = new CircularRevealWidget.RevealInfo(null);
    
    public CircularRevealEvaluator() {}
    
    public CircularRevealWidget.RevealInfo evaluate(float paramFloat, CircularRevealWidget.RevealInfo paramRevealInfo1, CircularRevealWidget.RevealInfo paramRevealInfo2)
    {
      a.set(MathUtils.lerp(centerX, centerX, paramFloat), MathUtils.lerp(centerY, centerY, paramFloat), MathUtils.lerp(radius, radius, paramFloat));
      return a;
    }
  }
  
  public static class CircularRevealProperty
    extends Property<CircularRevealWidget, CircularRevealWidget.RevealInfo>
  {
    public static final Property<CircularRevealWidget, CircularRevealWidget.RevealInfo> CIRCULAR_REVEAL = new CircularRevealProperty("circularReveal");
    
    private CircularRevealProperty(String paramString)
    {
      super(paramString);
    }
    
    public CircularRevealWidget.RevealInfo get(CircularRevealWidget paramCircularRevealWidget)
    {
      return paramCircularRevealWidget.getRevealInfo();
    }
    
    public void set(CircularRevealWidget paramCircularRevealWidget, CircularRevealWidget.RevealInfo paramRevealInfo)
    {
      paramCircularRevealWidget.setRevealInfo(paramRevealInfo);
    }
  }
  
  public static class CircularRevealScrimColorProperty
    extends Property<CircularRevealWidget, Integer>
  {
    public static final Property<CircularRevealWidget, Integer> CIRCULAR_REVEAL_SCRIM_COLOR = new CircularRevealScrimColorProperty("circularRevealScrimColor");
    
    private CircularRevealScrimColorProperty(String paramString)
    {
      super(paramString);
    }
    
    public Integer get(CircularRevealWidget paramCircularRevealWidget)
    {
      return Integer.valueOf(paramCircularRevealWidget.getCircularRevealScrimColor());
    }
    
    public void set(CircularRevealWidget paramCircularRevealWidget, Integer paramInteger)
    {
      paramCircularRevealWidget.setCircularRevealScrimColor(paramInteger.intValue());
    }
  }
  
  public static class RevealInfo
  {
    public static final float INVALID_RADIUS = Float.MAX_VALUE;
    public float centerX;
    public float centerY;
    public float radius;
    
    private RevealInfo() {}
    
    public RevealInfo(float paramFloat1, float paramFloat2, float paramFloat3)
    {
      centerX = paramFloat1;
      centerY = paramFloat2;
      radius = paramFloat3;
    }
    
    public RevealInfo(RevealInfo paramRevealInfo)
    {
      this(centerX, centerY, radius);
    }
    
    public boolean isInvalid()
    {
      return radius == Float.MAX_VALUE;
    }
    
    public void set(float paramFloat1, float paramFloat2, float paramFloat3)
    {
      centerX = paramFloat1;
      centerY = paramFloat2;
      radius = paramFloat3;
    }
    
    public void set(RevealInfo paramRevealInfo)
    {
      set(centerX, centerY, radius);
    }
  }
}
