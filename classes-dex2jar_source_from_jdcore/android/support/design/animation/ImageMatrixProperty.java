package android.support.design.animation;

import android.graphics.Matrix;
import android.util.Property;
import android.widget.ImageView;

public class ImageMatrixProperty
  extends Property<ImageView, Matrix>
{
  private final Matrix a = new Matrix();
  
  public ImageMatrixProperty()
  {
    super(Matrix.class, "imageMatrixProperty");
  }
  
  public Matrix get(ImageView paramImageView)
  {
    a.set(paramImageView.getImageMatrix());
    return a;
  }
  
  public void set(ImageView paramImageView, Matrix paramMatrix)
  {
    paramImageView.setImageMatrix(paramMatrix);
  }
}
