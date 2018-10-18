package android.support.transition;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.graphics.Matrix;
import android.os.Build.VERSION;
import android.util.Log;
import android.widget.ImageView;
import android.widget.ImageView.ScaleType;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

class g
{
  private static Method a;
  private static boolean b;
  
  private static void a()
  {
    if (!b)
    {
      try
      {
        a = ImageView.class.getDeclaredMethod("animateTransform", new Class[] { Matrix.class });
        a.setAccessible(true);
      }
      catch (NoSuchMethodException localNoSuchMethodException)
      {
        Log.i("ImageViewUtils", "Failed to retrieve animateTransform method", localNoSuchMethodException);
      }
      b = true;
    }
  }
  
  static void a(ImageView paramImageView)
  {
    if (Build.VERSION.SDK_INT < 21)
    {
      ImageView.ScaleType localScaleType = paramImageView.getScaleType();
      paramImageView.setTag(R.id.save_scale_type, localScaleType);
      if (localScaleType == ImageView.ScaleType.MATRIX) {
        paramImageView.setTag(R.id.save_image_matrix, paramImageView.getImageMatrix());
      } else {
        paramImageView.setScaleType(ImageView.ScaleType.MATRIX);
      }
      paramImageView.setImageMatrix(h.a);
    }
  }
  
  static void a(ImageView paramImageView, Animator paramAnimator)
  {
    if (Build.VERSION.SDK_INT < 21) {
      paramAnimator.addListener(new AnimatorListenerAdapter()
      {
        public void onAnimationEnd(Animator paramAnonymousAnimator)
        {
          ImageView.ScaleType localScaleType = (ImageView.ScaleType)a.getTag(R.id.save_scale_type);
          a.setScaleType(localScaleType);
          a.setTag(R.id.save_scale_type, null);
          if (localScaleType == ImageView.ScaleType.MATRIX)
          {
            a.setImageMatrix((Matrix)a.getTag(R.id.save_image_matrix));
            a.setTag(R.id.save_image_matrix, null);
          }
          paramAnonymousAnimator.removeListener(this);
        }
      });
    }
  }
  
  static void a(ImageView paramImageView, Matrix paramMatrix)
  {
    if (Build.VERSION.SDK_INT < 21)
    {
      paramImageView.setImageMatrix(paramMatrix);
      return;
    }
    a();
    if (a != null) {}
    try
    {
      a.invoke(paramImageView, new Object[] { paramMatrix });
      return;
    }
    catch (InvocationTargetException paramImageView)
    {
      throw new RuntimeException(paramImageView.getCause());
      return;
    }
    catch (IllegalAccessException paramImageView) {}
  }
}
