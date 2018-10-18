package android.support.v4.graphics;

import android.graphics.PointF;
import android.support.annotation.NonNull;
import android.support.v4.util.Preconditions;

public final class PathSegment
{
  private final PointF a;
  private final float b;
  private final PointF c;
  private final float d;
  
  public PathSegment(@NonNull PointF paramPointF1, float paramFloat1, @NonNull PointF paramPointF2, float paramFloat2)
  {
    a = ((PointF)Preconditions.checkNotNull(paramPointF1, "start == null"));
    b = paramFloat1;
    c = ((PointF)Preconditions.checkNotNull(paramPointF2, "end == null"));
    d = paramFloat2;
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {
      return true;
    }
    if (!(paramObject instanceof PathSegment)) {
      return false;
    }
    paramObject = (PathSegment)paramObject;
    return (Float.compare(b, b) == 0) && (Float.compare(d, d) == 0) && (a.equals(a)) && (c.equals(c));
  }
  
  @NonNull
  public PointF getEnd()
  {
    return c;
  }
  
  public float getEndFraction()
  {
    return d;
  }
  
  @NonNull
  public PointF getStart()
  {
    return a;
  }
  
  public float getStartFraction()
  {
    return b;
  }
  
  public int hashCode()
  {
    int k = a.hashCode();
    float f = b;
    int j = 0;
    int i;
    if (f != 0.0F) {
      i = Float.floatToIntBits(b);
    } else {
      i = 0;
    }
    int m = c.hashCode();
    if (d != 0.0F) {
      j = Float.floatToIntBits(d);
    }
    return ((k * 31 + i) * 31 + m) * 31 + j;
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("PathSegment{start=");
    localStringBuilder.append(a);
    localStringBuilder.append(", startFraction=");
    localStringBuilder.append(b);
    localStringBuilder.append(", end=");
    localStringBuilder.append(c);
    localStringBuilder.append(", endFraction=");
    localStringBuilder.append(d);
    localStringBuilder.append('}');
    return localStringBuilder.toString();
  }
}
