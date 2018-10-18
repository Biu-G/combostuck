package android.support.v4.widget;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RadialGradient;
import android.graphics.RectF;
import android.graphics.Shader.TileMode;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.OvalShape;
import android.os.Build.VERSION;
import android.support.v4.view.ViewCompat;
import android.util.DisplayMetrics;
import android.view.animation.Animation.AnimationListener;
import android.widget.ImageView;

class a
  extends ImageView
{
  int a;
  private Animation.AnimationListener b;
  
  a(Context paramContext, int paramInt)
  {
    super(paramContext);
    float f = getContextgetResourcesgetDisplayMetricsdensity;
    int i = (int)(1.75F * f);
    int j = (int)(0.0F * f);
    a = ((int)(3.5F * f));
    if (a())
    {
      paramContext = new ShapeDrawable(new OvalShape());
      ViewCompat.setElevation(this, f * 4.0F);
    }
    else
    {
      paramContext = new ShapeDrawable(new a(a));
      setLayerType(1, paramContext.getPaint());
      paramContext.getPaint().setShadowLayer(a, j, i, 503316480);
      i = a;
      setPadding(i, i, i, i);
    }
    paramContext.getPaint().setColor(paramInt);
    ViewCompat.setBackground(this, paramContext);
  }
  
  private boolean a()
  {
    return Build.VERSION.SDK_INT >= 21;
  }
  
  public void a(Animation.AnimationListener paramAnimationListener)
  {
    b = paramAnimationListener;
  }
  
  public void onAnimationEnd()
  {
    super.onAnimationEnd();
    if (b != null) {
      b.onAnimationEnd(getAnimation());
    }
  }
  
  public void onAnimationStart()
  {
    super.onAnimationStart();
    if (b != null) {
      b.onAnimationStart(getAnimation());
    }
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    super.onMeasure(paramInt1, paramInt2);
    if (!a()) {
      setMeasuredDimension(getMeasuredWidth() + a * 2, getMeasuredHeight() + a * 2);
    }
  }
  
  public void setBackgroundColor(int paramInt)
  {
    if ((getBackground() instanceof ShapeDrawable)) {
      ((ShapeDrawable)getBackground()).getPaint().setColor(paramInt);
    }
  }
  
  private class a
    extends OvalShape
  {
    private RadialGradient b;
    private Paint c = new Paint();
    
    a(int paramInt)
    {
      a = paramInt;
      a((int)rect().width());
    }
    
    private void a(int paramInt)
    {
      float f1 = paramInt / 2;
      float f2 = a;
      Shader.TileMode localTileMode = Shader.TileMode.CLAMP;
      b = new RadialGradient(f1, f1, f2, new int[] { 1023410176, 0 }, null, localTileMode);
      c.setShader(b);
    }
    
    public void draw(Canvas paramCanvas, Paint paramPaint)
    {
      int j = getWidth();
      int i = getHeight();
      j /= 2;
      float f1 = j;
      float f2 = i / 2;
      paramCanvas.drawCircle(f1, f2, f1, c);
      paramCanvas.drawCircle(f1, f2, j - a, paramPaint);
    }
    
    protected void onResize(float paramFloat1, float paramFloat2)
    {
      super.onResize(paramFloat1, paramFloat2);
      a((int)paramFloat1);
    }
  }
}
