package android.support.transition;

import android.animation.Animator;
import android.animation.ObjectAnimator;
import android.animation.TypeEvaluator;
import android.content.Context;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.support.annotation.NonNull;
import android.util.AttributeSet;
import android.util.Property;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import java.util.Map;

public class ChangeImageTransform
  extends Transition
{
  private static final String[] a = { "android:changeImageTransform:matrix", "android:changeImageTransform:bounds" };
  private static final TypeEvaluator<Matrix> i = new TypeEvaluator()
  {
    public Matrix a(float paramAnonymousFloat, Matrix paramAnonymousMatrix1, Matrix paramAnonymousMatrix2)
    {
      return null;
    }
  };
  private static final Property<ImageView, Matrix> j = new Property(Matrix.class, "animatedTransform")
  {
    public Matrix a(ImageView paramAnonymousImageView)
    {
      return null;
    }
    
    public void a(ImageView paramAnonymousImageView, Matrix paramAnonymousMatrix)
    {
      g.a(paramAnonymousImageView, paramAnonymousMatrix);
    }
  };
  
  public ChangeImageTransform() {}
  
  public ChangeImageTransform(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  private ObjectAnimator a(ImageView paramImageView)
  {
    return ObjectAnimator.ofObject(paramImageView, j, i, new Matrix[] { null, null });
  }
  
  private ObjectAnimator a(ImageView paramImageView, Matrix paramMatrix1, Matrix paramMatrix2)
  {
    return ObjectAnimator.ofObject(paramImageView, j, new n.a(), new Matrix[] { paramMatrix1, paramMatrix2 });
  }
  
  private static Matrix b(ImageView paramImageView)
  {
    switch (3.a[paramImageView.getScaleType().ordinal()])
    {
    default: 
      return new Matrix(paramImageView.getImageMatrix());
    case 2: 
      return d(paramImageView);
    }
    return c(paramImageView);
  }
  
  private void b(TransitionValues paramTransitionValues)
  {
    View localView = view;
    if ((localView instanceof ImageView))
    {
      if (localView.getVisibility() != 0) {
        return;
      }
      ImageView localImageView = (ImageView)localView;
      if (localImageView.getDrawable() == null) {
        return;
      }
      paramTransitionValues = values;
      paramTransitionValues.put("android:changeImageTransform:bounds", new Rect(localView.getLeft(), localView.getTop(), localView.getRight(), localView.getBottom()));
      paramTransitionValues.put("android:changeImageTransform:matrix", b(localImageView));
      return;
    }
  }
  
  private static Matrix c(ImageView paramImageView)
  {
    Drawable localDrawable = paramImageView.getDrawable();
    Matrix localMatrix = new Matrix();
    localMatrix.postScale(paramImageView.getWidth() / localDrawable.getIntrinsicWidth(), paramImageView.getHeight() / localDrawable.getIntrinsicHeight());
    return localMatrix;
  }
  
  private static Matrix d(ImageView paramImageView)
  {
    Drawable localDrawable = paramImageView.getDrawable();
    int k = localDrawable.getIntrinsicWidth();
    float f1 = paramImageView.getWidth();
    float f2 = k;
    float f5 = f1 / f2;
    k = localDrawable.getIntrinsicHeight();
    float f3 = paramImageView.getHeight();
    float f4 = k;
    f5 = Math.max(f5, f3 / f4);
    k = Math.round((f1 - f2 * f5) / 2.0F);
    int m = Math.round((f3 - f4 * f5) / 2.0F);
    paramImageView = new Matrix();
    paramImageView.postScale(f5, f5);
    paramImageView.postTranslate(k, m);
    return paramImageView;
  }
  
  public void captureEndValues(@NonNull TransitionValues paramTransitionValues)
  {
    b(paramTransitionValues);
  }
  
  public void captureStartValues(@NonNull TransitionValues paramTransitionValues)
  {
    b(paramTransitionValues);
  }
  
  public Animator createAnimator(@NonNull ViewGroup paramViewGroup, TransitionValues paramTransitionValues1, TransitionValues paramTransitionValues2)
  {
    if (paramTransitionValues1 != null)
    {
      if (paramTransitionValues2 == null) {
        return null;
      }
      paramViewGroup = (Rect)values.get("android:changeImageTransform:bounds");
      Rect localRect = (Rect)values.get("android:changeImageTransform:bounds");
      if (paramViewGroup != null)
      {
        if (localRect == null) {
          return null;
        }
        paramTransitionValues1 = (Matrix)values.get("android:changeImageTransform:matrix");
        Matrix localMatrix = (Matrix)values.get("android:changeImageTransform:matrix");
        if (((paramTransitionValues1 == null) && (localMatrix == null)) || ((paramTransitionValues1 != null) && (paramTransitionValues1.equals(localMatrix)))) {
          k = 1;
        } else {
          k = 0;
        }
        if ((paramViewGroup.equals(localRect)) && (k != 0)) {
          return null;
        }
        paramTransitionValues2 = (ImageView)view;
        paramViewGroup = paramTransitionValues2.getDrawable();
        int k = paramViewGroup.getIntrinsicWidth();
        int m = paramViewGroup.getIntrinsicHeight();
        g.a(paramTransitionValues2);
        if ((k != 0) && (m != 0))
        {
          paramViewGroup = paramTransitionValues1;
          if (paramTransitionValues1 == null) {
            paramViewGroup = h.a;
          }
          paramTransitionValues1 = localMatrix;
          if (localMatrix == null) {
            paramTransitionValues1 = h.a;
          }
          j.set(paramTransitionValues2, paramViewGroup);
          paramViewGroup = a(paramTransitionValues2, paramViewGroup, paramTransitionValues1);
        }
        else
        {
          paramViewGroup = a(paramTransitionValues2);
        }
        g.a(paramTransitionValues2, paramViewGroup);
        return paramViewGroup;
      }
      return null;
    }
    return null;
  }
  
  public String[] getTransitionProperties()
  {
    return a;
  }
}
