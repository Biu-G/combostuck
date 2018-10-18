package android.support.design.shape;

import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.graphics.Path;
import android.graphics.PointF;
import android.graphics.PorterDuff.Mode;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.Region;
import android.graphics.Region.Op;
import android.graphics.drawable.Drawable;
import android.support.annotation.ColorInt;
import android.support.annotation.IntRange;
import android.support.annotation.Nullable;
import android.support.design.internal.Experimental;
import android.support.v4.graphics.drawable.TintAwareDrawable;

@Experimental("The shapes API is currently experimental and subject to change")
public class MaterialShapeDrawable
  extends Drawable
  implements TintAwareDrawable
{
  private final Paint a = new Paint();
  private final Matrix[] b = new Matrix[4];
  private final Matrix[] c = new Matrix[4];
  private final ShapePath[] d = new ShapePath[4];
  private final Matrix e = new Matrix();
  private final Path f = new Path();
  private final PointF g = new PointF();
  private final ShapePath h = new ShapePath();
  private final Region i = new Region();
  private final Region j = new Region();
  private final float[] k = new float[2];
  private final float[] l = new float[2];
  @Nullable
  private ShapePathModel m = null;
  private boolean n;
  private boolean o;
  private float p;
  private int q;
  private int r;
  private int s;
  private int t;
  private float u;
  private float v;
  private Paint.Style w;
  @Nullable
  private PorterDuffColorFilter x;
  private PorterDuff.Mode y;
  private ColorStateList z;
  
  public MaterialShapeDrawable()
  {
    this(null);
  }
  
  public MaterialShapeDrawable(@Nullable ShapePathModel paramShapePathModel)
  {
    int i1 = 0;
    n = false;
    o = false;
    p = 1.0F;
    q = -16777216;
    r = 5;
    s = 10;
    t = 255;
    u = 1.0F;
    v = 0.0F;
    w = Paint.Style.FILL_AND_STROKE;
    y = PorterDuff.Mode.SRC_IN;
    z = null;
    m = paramShapePathModel;
    while (i1 < 4)
    {
      b[i1] = new Matrix();
      c[i1] = new Matrix();
      d[i1] = new ShapePath();
      i1 += 1;
    }
  }
  
  private static int a(int paramInt1, int paramInt2)
  {
    return paramInt1 * (paramInt2 + (paramInt2 >>> 7)) >>> 8;
  }
  
  private CornerTreatment a(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      return m.getTopLeftCorner();
    case 3: 
      return m.getBottomLeftCorner();
    case 2: 
      return m.getBottomRightCorner();
    }
    return m.getTopRightCorner();
  }
  
  private void a()
  {
    if ((z != null) && (y != null))
    {
      int i1 = z.getColorForState(getState(), 0);
      x = new PorterDuffColorFilter(i1, y);
      if (o) {
        q = i1;
      }
      return;
    }
    x = null;
  }
  
  private void a(int paramInt1, int paramInt2, int paramInt3)
  {
    a(paramInt1, paramInt2, paramInt3, g);
    float f1 = c(paramInt1, paramInt2, paramInt3);
    a(paramInt1).getCornerPath(f1, p, d[paramInt1]);
    f1 = d((paramInt1 - 1 + 4) % 4, paramInt2, paramInt3);
    b[paramInt1].reset();
    b[paramInt1].setTranslate(g.x, g.y);
    b[paramInt1].preRotate((float)Math.toDegrees(f1 + 1.5707964F));
  }
  
  private void a(int paramInt1, int paramInt2, int paramInt3, PointF paramPointF)
  {
    switch (paramInt1)
    {
    default: 
      paramPointF.set(0.0F, 0.0F);
      return;
    case 3: 
      paramPointF.set(0.0F, paramInt3);
      return;
    case 2: 
      paramPointF.set(paramInt2, paramInt3);
      return;
    }
    paramPointF.set(paramInt2, 0.0F);
  }
  
  private void a(int paramInt1, int paramInt2, Path paramPath)
  {
    getPathForSize(paramInt1, paramInt2, paramPath);
    if (u == 1.0F) {
      return;
    }
    e.reset();
    e.setScale(u, u, paramInt1 / 2, paramInt2 / 2);
    paramPath.transform(e);
  }
  
  private void a(int paramInt, Path paramPath)
  {
    k[0] = d[paramInt].startX;
    k[1] = d[paramInt].startY;
    b[paramInt].mapPoints(k);
    if (paramInt == 0) {
      paramPath.moveTo(k[0], k[1]);
    } else {
      paramPath.lineTo(k[0], k[1]);
    }
    d[paramInt].applyToPath(b[paramInt], paramPath);
  }
  
  private EdgeTreatment b(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      return m.getTopEdge();
    case 3: 
      return m.getLeftEdge();
    case 2: 
      return m.getBottomEdge();
    }
    return m.getRightEdge();
  }
  
  private void b(int paramInt1, int paramInt2, int paramInt3)
  {
    k[0] = d[paramInt1].endX;
    k[1] = d[paramInt1].endY;
    b[paramInt1].mapPoints(k);
    float f1 = d(paramInt1, paramInt2, paramInt3);
    c[paramInt1].reset();
    c[paramInt1].setTranslate(k[0], k[1]);
    c[paramInt1].preRotate((float)Math.toDegrees(f1));
  }
  
  private void b(int paramInt, Path paramPath)
  {
    int i1 = (paramInt + 1) % 4;
    k[0] = d[paramInt].endX;
    k[1] = d[paramInt].endY;
    b[paramInt].mapPoints(k);
    l[0] = d[i1].startX;
    l[1] = d[i1].startY;
    b[i1].mapPoints(l);
    float f1 = (float)Math.hypot(k[0] - l[0], k[1] - l[1]);
    h.reset(0.0F, 0.0F);
    b(paramInt).getEdgePath(f1, p, h);
    h.applyToPath(c[paramInt], paramPath);
  }
  
  private float c(int paramInt1, int paramInt2, int paramInt3)
  {
    a((paramInt1 - 1 + 4) % 4, paramInt2, paramInt3, g);
    float f1 = g.x;
    float f2 = g.y;
    a((paramInt1 + 1) % 4, paramInt2, paramInt3, g);
    float f3 = g.x;
    float f4 = g.y;
    a(paramInt1, paramInt2, paramInt3, g);
    float f5 = g.x;
    float f6 = g.y;
    f2 = (float)Math.atan2(f2 - f6, f1 - f5) - (float)Math.atan2(f4 - f6, f3 - f5);
    f1 = f2;
    if (f2 < 0.0F) {
      f1 = (float)(f2 + 6.283185307179586D);
    }
    return f1;
  }
  
  private float d(int paramInt1, int paramInt2, int paramInt3)
  {
    a(paramInt1, paramInt2, paramInt3, g);
    float f1 = g.x;
    float f2 = g.y;
    a((paramInt1 + 1) % 4, paramInt2, paramInt3, g);
    float f3 = g.x;
    return (float)Math.atan2(g.y - f2, f3 - f1);
  }
  
  public void draw(Canvas paramCanvas)
  {
    a.setColorFilter(x);
    int i1 = a.getAlpha();
    a.setAlpha(a(i1, t));
    a.setStrokeWidth(v);
    a.setStyle(w);
    if ((r > 0) && (n)) {
      a.setShadowLayer(s, 0.0F, r, q);
    }
    if (m != null)
    {
      a(paramCanvas.getWidth(), paramCanvas.getHeight(), f);
      paramCanvas.drawPath(f, a);
    }
    else
    {
      paramCanvas.drawRect(0.0F, 0.0F, paramCanvas.getWidth(), paramCanvas.getHeight(), a);
    }
    a.setAlpha(i1);
  }
  
  public float getInterpolation()
  {
    return p;
  }
  
  public int getOpacity()
  {
    return -3;
  }
  
  public Paint.Style getPaintStyle()
  {
    return w;
  }
  
  public void getPathForSize(int paramInt1, int paramInt2, Path paramPath)
  {
    paramPath.rewind();
    if (m == null) {
      return;
    }
    int i3 = 0;
    int i1 = 0;
    int i2;
    for (;;)
    {
      i2 = i3;
      if (i1 >= 4) {
        break;
      }
      a(i1, paramInt1, paramInt2);
      b(i1, paramInt1, paramInt2);
      i1 += 1;
    }
    while (i2 < 4)
    {
      a(i2, paramPath);
      b(i2, paramPath);
      i2 += 1;
    }
    paramPath.close();
  }
  
  public float getScale()
  {
    return u;
  }
  
  public int getShadowElevation()
  {
    return r;
  }
  
  public int getShadowRadius()
  {
    return s;
  }
  
  @Nullable
  public ShapePathModel getShapedViewModel()
  {
    return m;
  }
  
  public float getStrokeWidth()
  {
    return v;
  }
  
  public ColorStateList getTintList()
  {
    return z;
  }
  
  public Region getTransparentRegion()
  {
    Rect localRect = getBounds();
    i.set(localRect);
    a(localRect.width(), localRect.height(), f);
    j.setPath(f, i);
    i.op(j, Region.Op.DIFFERENCE);
    return i;
  }
  
  public boolean isPointInTransparentRegion(int paramInt1, int paramInt2)
  {
    return getTransparentRegion().contains(paramInt1, paramInt2);
  }
  
  public boolean isShadowEnabled()
  {
    return n;
  }
  
  public void setAlpha(@IntRange(from=0L, to=255L) int paramInt)
  {
    t = paramInt;
    invalidateSelf();
  }
  
  public void setColorFilter(@Nullable ColorFilter paramColorFilter)
  {
    a.setColorFilter(paramColorFilter);
    invalidateSelf();
  }
  
  public void setInterpolation(float paramFloat)
  {
    p = paramFloat;
    invalidateSelf();
  }
  
  public void setPaintStyle(Paint.Style paramStyle)
  {
    w = paramStyle;
    invalidateSelf();
  }
  
  public void setScale(float paramFloat)
  {
    u = paramFloat;
    invalidateSelf();
  }
  
  public void setShadowColor(int paramInt)
  {
    q = paramInt;
    o = false;
    invalidateSelf();
  }
  
  public void setShadowElevation(int paramInt)
  {
    r = paramInt;
    invalidateSelf();
  }
  
  public void setShadowEnabled(boolean paramBoolean)
  {
    n = paramBoolean;
    invalidateSelf();
  }
  
  public void setShadowRadius(int paramInt)
  {
    s = paramInt;
    invalidateSelf();
  }
  
  public void setShapedViewModel(ShapePathModel paramShapePathModel)
  {
    m = paramShapePathModel;
    invalidateSelf();
  }
  
  public void setStrokeWidth(float paramFloat)
  {
    v = paramFloat;
    invalidateSelf();
  }
  
  public void setTint(@ColorInt int paramInt)
  {
    setTintList(ColorStateList.valueOf(paramInt));
  }
  
  public void setTintList(ColorStateList paramColorStateList)
  {
    z = paramColorStateList;
    a();
    invalidateSelf();
  }
  
  public void setTintMode(PorterDuff.Mode paramMode)
  {
    y = paramMode;
    a();
    invalidateSelf();
  }
  
  public void setUseTintColorForShadow(boolean paramBoolean)
  {
    o = paramBoolean;
    invalidateSelf();
  }
}
