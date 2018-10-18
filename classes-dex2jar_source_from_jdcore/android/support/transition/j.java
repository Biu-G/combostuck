package android.support.transition;

import android.graphics.Path;
import android.graphics.PathMeasure;
import android.graphics.PointF;
import android.util.Property;

class j<T>
  extends Property<T, Float>
{
  private final Property<T, PointF> a;
  private final PathMeasure b;
  private final float c;
  private final float[] d = new float[2];
  private final PointF e = new PointF();
  private float f;
  
  j(Property<T, PointF> paramProperty, Path paramPath)
  {
    super(Float.class, paramProperty.getName());
    a = paramProperty;
    b = new PathMeasure(paramPath, false);
    c = b.getLength();
  }
  
  public Float a(T paramT)
  {
    return Float.valueOf(f);
  }
  
  public void a(T paramT, Float paramFloat)
  {
    f = paramFloat.floatValue();
    b.getPosTan(c * paramFloat.floatValue(), d, null);
    e.x = d[0];
    e.y = d[1];
    a.set(paramT, e);
  }
}
