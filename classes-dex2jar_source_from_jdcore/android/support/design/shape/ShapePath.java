package android.support.design.shape;

import android.graphics.Matrix;
import android.graphics.Path;
import android.graphics.RectF;
import android.support.design.internal.Experimental;
import java.util.ArrayList;
import java.util.List;

@Experimental("The shapes API is currently experimental and subject to change")
public class ShapePath
{
  private final List<PathOperation> a = new ArrayList();
  public float endX;
  public float endY;
  public float startX;
  public float startY;
  
  public ShapePath()
  {
    reset(0.0F, 0.0F);
  }
  
  public ShapePath(float paramFloat1, float paramFloat2)
  {
    reset(paramFloat1, paramFloat2);
  }
  
  public void addArc(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4, float paramFloat5, float paramFloat6)
  {
    PathArcOperation localPathArcOperation = new PathArcOperation(paramFloat1, paramFloat2, paramFloat3, paramFloat4);
    startAngle = paramFloat5;
    sweepAngle = paramFloat6;
    a.add(localPathArcOperation);
    float f = (paramFloat3 - paramFloat1) / 2.0F;
    double d = paramFloat5 + paramFloat6;
    endX = ((paramFloat1 + paramFloat3) * 0.5F + f * (float)Math.cos(Math.toRadians(d)));
    endY = ((paramFloat2 + paramFloat4) * 0.5F + (paramFloat4 - paramFloat2) / 2.0F * (float)Math.sin(Math.toRadians(d)));
  }
  
  public void applyToPath(Matrix paramMatrix, Path paramPath)
  {
    int j = a.size();
    int i = 0;
    while (i < j)
    {
      ((PathOperation)a.get(i)).applyToPath(paramMatrix, paramPath);
      i += 1;
    }
  }
  
  public void lineTo(float paramFloat1, float paramFloat2)
  {
    PathLineOperation localPathLineOperation = new PathLineOperation();
    PathLineOperation.a(localPathLineOperation, paramFloat1);
    PathLineOperation.b(localPathLineOperation, paramFloat2);
    a.add(localPathLineOperation);
    endX = paramFloat1;
    endY = paramFloat2;
  }
  
  public void quadToPoint(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4)
  {
    PathQuadOperation localPathQuadOperation = new PathQuadOperation();
    controlX = paramFloat1;
    controlY = paramFloat2;
    endX = paramFloat3;
    endY = paramFloat4;
    a.add(localPathQuadOperation);
    endX = paramFloat3;
    endY = paramFloat4;
  }
  
  public void reset(float paramFloat1, float paramFloat2)
  {
    startX = paramFloat1;
    startY = paramFloat2;
    endX = paramFloat1;
    endY = paramFloat2;
    a.clear();
  }
  
  public static class PathArcOperation
    extends ShapePath.PathOperation
  {
    private static final RectF a = new RectF();
    public float bottom;
    public float left;
    public float right;
    public float startAngle;
    public float sweepAngle;
    public float top;
    
    public PathArcOperation(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4)
    {
      left = paramFloat1;
      top = paramFloat2;
      right = paramFloat3;
      bottom = paramFloat4;
    }
    
    public void applyToPath(Matrix paramMatrix, Path paramPath)
    {
      Matrix localMatrix = matrix;
      paramMatrix.invert(localMatrix);
      paramPath.transform(localMatrix);
      a.set(left, top, right, bottom);
      paramPath.arcTo(a, startAngle, sweepAngle, false);
      paramPath.transform(paramMatrix);
    }
  }
  
  public static class PathLineOperation
    extends ShapePath.PathOperation
  {
    private float a;
    private float b;
    
    public PathLineOperation() {}
    
    public void applyToPath(Matrix paramMatrix, Path paramPath)
    {
      Matrix localMatrix = matrix;
      paramMatrix.invert(localMatrix);
      paramPath.transform(localMatrix);
      paramPath.lineTo(a, b);
      paramPath.transform(paramMatrix);
    }
  }
  
  public static abstract class PathOperation
  {
    protected final Matrix matrix = new Matrix();
    
    public PathOperation() {}
    
    public abstract void applyToPath(Matrix paramMatrix, Path paramPath);
  }
  
  public static class PathQuadOperation
    extends ShapePath.PathOperation
  {
    public float controlX;
    public float controlY;
    public float endX;
    public float endY;
    
    public PathQuadOperation() {}
    
    public void applyToPath(Matrix paramMatrix, Path paramPath)
    {
      Matrix localMatrix = matrix;
      paramMatrix.invert(localMatrix);
      paramPath.transform(localMatrix);
      paramPath.quadTo(controlX, controlY, endX, endY);
      paramPath.transform(paramMatrix);
    }
  }
}
