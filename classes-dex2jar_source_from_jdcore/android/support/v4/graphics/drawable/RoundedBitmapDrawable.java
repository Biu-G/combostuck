package android.support.v4.graphics.drawable;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader.TileMode;
import android.graphics.drawable.Drawable;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.util.DisplayMetrics;

public abstract class RoundedBitmapDrawable
  extends Drawable
{
  final Bitmap a;
  final Rect b = new Rect();
  private int c = 160;
  private int d = 119;
  private final Paint e = new Paint(3);
  private final BitmapShader f;
  private final Matrix g = new Matrix();
  private float h;
  private final RectF i = new RectF();
  private boolean j = true;
  private boolean k;
  private int l;
  private int m;
  
  RoundedBitmapDrawable(Resources paramResources, Bitmap paramBitmap)
  {
    if (paramResources != null) {
      c = getDisplayMetricsdensityDpi;
    }
    a = paramBitmap;
    if (a != null)
    {
      b();
      f = new BitmapShader(a, Shader.TileMode.CLAMP, Shader.TileMode.CLAMP);
      return;
    }
    m = -1;
    l = -1;
    f = null;
  }
  
  private static boolean a(float paramFloat)
  {
    return paramFloat > 0.05F;
  }
  
  private void b()
  {
    l = a.getScaledWidth(c);
    m = a.getScaledHeight(c);
  }
  
  private void c()
  {
    h = (Math.min(m, l) / 2);
  }
  
  void a()
  {
    if (j)
    {
      if (k)
      {
        int n = Math.min(l, m);
        a(d, n, n, getBounds(), b);
        n = Math.min(b.width(), b.height());
        int i1 = Math.max(0, (b.width() - n) / 2);
        int i2 = Math.max(0, (b.height() - n) / 2);
        b.inset(i1, i2);
        h = (n * 0.5F);
      }
      else
      {
        a(d, l, m, getBounds(), b);
      }
      i.set(b);
      if (f != null)
      {
        g.setTranslate(i.left, i.top);
        g.preScale(i.width() / a.getWidth(), i.height() / a.getHeight());
        f.setLocalMatrix(g);
        e.setShader(f);
      }
      j = false;
    }
  }
  
  void a(int paramInt1, int paramInt2, int paramInt3, Rect paramRect1, Rect paramRect2)
  {
    throw new UnsupportedOperationException();
  }
  
  public void draw(@NonNull Canvas paramCanvas)
  {
    Bitmap localBitmap = a;
    if (localBitmap == null) {
      return;
    }
    a();
    if (e.getShader() == null)
    {
      paramCanvas.drawBitmap(localBitmap, null, b, e);
      return;
    }
    paramCanvas.drawRoundRect(i, h, h, e);
  }
  
  public int getAlpha()
  {
    return e.getAlpha();
  }
  
  @Nullable
  public final Bitmap getBitmap()
  {
    return a;
  }
  
  public ColorFilter getColorFilter()
  {
    return e.getColorFilter();
  }
  
  public float getCornerRadius()
  {
    return h;
  }
  
  public int getGravity()
  {
    return d;
  }
  
  public int getIntrinsicHeight()
  {
    return m;
  }
  
  public int getIntrinsicWidth()
  {
    return l;
  }
  
  public int getOpacity()
  {
    int n = d;
    int i1 = -3;
    if (n == 119)
    {
      if (k) {
        return -3;
      }
      Bitmap localBitmap = a;
      n = i1;
      if (localBitmap != null)
      {
        n = i1;
        if (!localBitmap.hasAlpha())
        {
          n = i1;
          if (e.getAlpha() >= 255)
          {
            if (a(h)) {
              return -3;
            }
            n = -1;
          }
        }
      }
      return n;
    }
    return -3;
  }
  
  @NonNull
  public final Paint getPaint()
  {
    return e;
  }
  
  public boolean hasAntiAlias()
  {
    return e.isAntiAlias();
  }
  
  public boolean hasMipMap()
  {
    throw new UnsupportedOperationException();
  }
  
  public boolean isCircular()
  {
    return k;
  }
  
  protected void onBoundsChange(Rect paramRect)
  {
    super.onBoundsChange(paramRect);
    if (k) {
      c();
    }
    j = true;
  }
  
  public void setAlpha(int paramInt)
  {
    if (paramInt != e.getAlpha())
    {
      e.setAlpha(paramInt);
      invalidateSelf();
    }
  }
  
  public void setAntiAlias(boolean paramBoolean)
  {
    e.setAntiAlias(paramBoolean);
    invalidateSelf();
  }
  
  public void setCircular(boolean paramBoolean)
  {
    k = paramBoolean;
    j = true;
    if (paramBoolean)
    {
      c();
      e.setShader(f);
      invalidateSelf();
      return;
    }
    setCornerRadius(0.0F);
  }
  
  public void setColorFilter(ColorFilter paramColorFilter)
  {
    e.setColorFilter(paramColorFilter);
    invalidateSelf();
  }
  
  public void setCornerRadius(float paramFloat)
  {
    if (h == paramFloat) {
      return;
    }
    k = false;
    if (a(paramFloat)) {
      e.setShader(f);
    } else {
      e.setShader(null);
    }
    h = paramFloat;
    invalidateSelf();
  }
  
  public void setDither(boolean paramBoolean)
  {
    e.setDither(paramBoolean);
    invalidateSelf();
  }
  
  public void setFilterBitmap(boolean paramBoolean)
  {
    e.setFilterBitmap(paramBoolean);
    invalidateSelf();
  }
  
  public void setGravity(int paramInt)
  {
    if (d != paramInt)
    {
      d = paramInt;
      j = true;
      invalidateSelf();
    }
  }
  
  public void setMipMap(boolean paramBoolean)
  {
    throw new UnsupportedOperationException();
  }
  
  public void setTargetDensity(int paramInt)
  {
    if (c != paramInt)
    {
      int n = paramInt;
      if (paramInt == 0) {
        n = 160;
      }
      c = n;
      if (a != null) {
        b();
      }
      invalidateSelf();
    }
  }
  
  public void setTargetDensity(@NonNull Canvas paramCanvas)
  {
    setTargetDensity(paramCanvas.getDensity());
  }
  
  public void setTargetDensity(@NonNull DisplayMetrics paramDisplayMetrics)
  {
    setTargetDensity(densityDpi);
  }
}
