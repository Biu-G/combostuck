package android.support.design.circularreveal;

import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Path.Direction;
import android.graphics.Rect;
import android.graphics.Shader.TileMode;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.support.annotation.ColorInt;
import android.support.annotation.Nullable;
import android.support.design.widget.MathUtils;
import android.view.View;
import java.lang.annotation.Annotation;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

public class CircularRevealHelper
{
  public static final int BITMAP_SHADER = 0;
  public static final int CLIP_PATH = 1;
  public static final int REVEAL_ANIMATOR = 2;
  public static final int STRATEGY = 0;
  private final a a;
  private final View b;
  private final Path c;
  private final Paint d;
  private final Paint e;
  @Nullable
  private CircularRevealWidget.RevealInfo f;
  @Nullable
  private Drawable g;
  private boolean h;
  private boolean i;
  
  static
  {
    if (Build.VERSION.SDK_INT >= 21)
    {
      STRATEGY = 2;
      return;
    }
    if (Build.VERSION.SDK_INT >= 18)
    {
      STRATEGY = 1;
      return;
    }
  }
  
  public CircularRevealHelper(a paramA)
  {
    a = paramA;
    b = ((View)paramA);
    b.setWillNotDraw(false);
    c = new Path();
    d = new Paint(7);
    e = new Paint(1);
    e.setColor(0);
  }
  
  private float a(CircularRevealWidget.RevealInfo paramRevealInfo)
  {
    return MathUtils.distanceToFurthestCorner(centerX, centerY, 0.0F, 0.0F, b.getWidth(), b.getHeight());
  }
  
  private void a()
  {
    if (STRATEGY == 1)
    {
      c.rewind();
      if (f != null) {
        c.addCircle(f.centerX, f.centerY, f.radius, Path.Direction.CW);
      }
    }
    b.invalidate();
  }
  
  private void a(Canvas paramCanvas)
  {
    if (d())
    {
      Rect localRect = g.getBounds();
      float f1 = f.centerX - localRect.width() / 2.0F;
      float f2 = f.centerY - localRect.height() / 2.0F;
      paramCanvas.translate(f1, f2);
      g.draw(paramCanvas);
      paramCanvas.translate(-f1, -f2);
    }
  }
  
  private boolean b()
  {
    CircularRevealWidget.RevealInfo localRevealInfo = f;
    boolean bool2 = false;
    int j;
    if ((localRevealInfo != null) && (!f.isInvalid())) {
      j = 0;
    } else {
      j = 1;
    }
    if (STRATEGY == 0)
    {
      boolean bool1 = bool2;
      if (j == 0)
      {
        bool1 = bool2;
        if (i) {
          bool1 = true;
        }
      }
      return bool1;
    }
    return j ^ 0x1;
  }
  
  private boolean c()
  {
    return (!h) && (Color.alpha(e.getColor()) != 0);
  }
  
  private boolean d()
  {
    return (!h) && (g != null) && (f != null);
  }
  
  public void buildCircularRevealCache()
  {
    if (STRATEGY == 0)
    {
      h = true;
      i = false;
      b.buildDrawingCache();
      Object localObject2 = b.getDrawingCache();
      Object localObject1 = localObject2;
      if (localObject2 == null)
      {
        localObject1 = localObject2;
        if (b.getWidth() != 0)
        {
          localObject1 = localObject2;
          if (b.getHeight() != 0)
          {
            localObject1 = Bitmap.createBitmap(b.getWidth(), b.getHeight(), Bitmap.Config.ARGB_8888);
            localObject2 = new Canvas((Bitmap)localObject1);
            b.draw((Canvas)localObject2);
          }
        }
      }
      if (localObject1 != null) {
        d.setShader(new BitmapShader((Bitmap)localObject1, Shader.TileMode.CLAMP, Shader.TileMode.CLAMP));
      }
      h = false;
      i = true;
    }
  }
  
  public void destroyCircularRevealCache()
  {
    if (STRATEGY == 0)
    {
      i = false;
      b.destroyDrawingCache();
      d.setShader(null);
      b.invalidate();
    }
  }
  
  public void draw(Canvas paramCanvas)
  {
    if (b())
    {
      switch (STRATEGY)
      {
      default: 
        paramCanvas = new StringBuilder();
        paramCanvas.append("Unsupported strategy ");
        paramCanvas.append(STRATEGY);
        throw new IllegalStateException(paramCanvas.toString());
      case 2: 
        a.actualDraw(paramCanvas);
        if (!c()) {
          break;
        }
        paramCanvas.drawRect(0.0F, 0.0F, b.getWidth(), b.getHeight(), e);
        break;
      case 1: 
        int j = paramCanvas.save();
        paramCanvas.clipPath(c);
        a.actualDraw(paramCanvas);
        if (c()) {
          paramCanvas.drawRect(0.0F, 0.0F, b.getWidth(), b.getHeight(), e);
        }
        paramCanvas.restoreToCount(j);
        break;
      case 0: 
        paramCanvas.drawCircle(f.centerX, f.centerY, f.radius, d);
        if (!c()) {
          break;
        }
        paramCanvas.drawCircle(f.centerX, f.centerY, f.radius, e);
        break;
      }
    }
    else
    {
      a.actualDraw(paramCanvas);
      if (c()) {
        paramCanvas.drawRect(0.0F, 0.0F, b.getWidth(), b.getHeight(), e);
      }
    }
    a(paramCanvas);
  }
  
  @Nullable
  public Drawable getCircularRevealOverlayDrawable()
  {
    return g;
  }
  
  @ColorInt
  public int getCircularRevealScrimColor()
  {
    return e.getColor();
  }
  
  @Nullable
  public CircularRevealWidget.RevealInfo getRevealInfo()
  {
    if (f == null) {
      return null;
    }
    CircularRevealWidget.RevealInfo localRevealInfo = new CircularRevealWidget.RevealInfo(f);
    if (localRevealInfo.isInvalid()) {
      radius = a(localRevealInfo);
    }
    return localRevealInfo;
  }
  
  public boolean isOpaque()
  {
    return (a.actualIsOpaque()) && (!b());
  }
  
  public void setCircularRevealOverlayDrawable(@Nullable Drawable paramDrawable)
  {
    g = paramDrawable;
    b.invalidate();
  }
  
  public void setCircularRevealScrimColor(@ColorInt int paramInt)
  {
    e.setColor(paramInt);
    b.invalidate();
  }
  
  public void setRevealInfo(@Nullable CircularRevealWidget.RevealInfo paramRevealInfo)
  {
    if (paramRevealInfo == null)
    {
      f = null;
    }
    else
    {
      if (f == null) {
        f = new CircularRevealWidget.RevealInfo(paramRevealInfo);
      } else {
        f.set(paramRevealInfo);
      }
      if (MathUtils.geq(radius, a(paramRevealInfo), 1.0E-4F)) {
        f.radius = Float.MAX_VALUE;
      }
    }
    a();
  }
  
  @Retention(RetentionPolicy.SOURCE)
  public static @interface Strategy {}
  
  static abstract interface a
  {
    public abstract void actualDraw(Canvas paramCanvas);
    
    public abstract boolean actualIsOpaque();
  }
}
