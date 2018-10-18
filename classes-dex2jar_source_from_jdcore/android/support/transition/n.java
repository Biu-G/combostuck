package android.support.transition;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.TypeEvaluator;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Picture;
import android.graphics.RectF;
import android.os.Build.VERSION;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup;
import android.view.ViewGroupOverlay;
import android.widget.ImageView;
import android.widget.ImageView.ScaleType;

class n
{
  private static final boolean a;
  private static final boolean b;
  private static final boolean c;
  
  static
  {
    int i = Build.VERSION.SDK_INT;
    boolean bool2 = false;
    if (i >= 19) {
      bool1 = true;
    } else {
      bool1 = false;
    }
    a = bool1;
    if (Build.VERSION.SDK_INT >= 18) {
      bool1 = true;
    } else {
      bool1 = false;
    }
    b = bool1;
    boolean bool1 = bool2;
    if (Build.VERSION.SDK_INT >= 28) {
      bool1 = true;
    }
    c = bool1;
  }
  
  static Animator a(Animator paramAnimator1, Animator paramAnimator2)
  {
    if (paramAnimator1 == null) {
      return paramAnimator2;
    }
    if (paramAnimator2 == null) {
      return paramAnimator1;
    }
    AnimatorSet localAnimatorSet = new AnimatorSet();
    localAnimatorSet.playTogether(new Animator[] { paramAnimator1, paramAnimator2 });
    return localAnimatorSet;
  }
  
  private static Bitmap a(View paramView, Matrix paramMatrix, RectF paramRectF, ViewGroup paramViewGroup)
  {
    boolean bool1;
    if (a)
    {
      bool1 = paramView.isAttachedToWindow() ^ true;
      if (paramViewGroup != null)
      {
        bool2 = paramViewGroup.isAttachedToWindow();
        break label36;
      }
    }
    else
    {
      bool1 = false;
    }
    boolean bool2 = false;
    label36:
    boolean bool3 = b;
    Object localObject2 = null;
    ViewGroup localViewGroup;
    int i;
    if ((bool3) && (bool1))
    {
      if (!bool2) {
        return null;
      }
      localViewGroup = (ViewGroup)paramView.getParent();
      i = localViewGroup.indexOfChild(paramView);
      paramViewGroup.getOverlay().add(paramView);
    }
    else
    {
      localViewGroup = null;
      i = 0;
    }
    int k = Math.round(paramRectF.width());
    int j = Math.round(paramRectF.height());
    Object localObject1 = localObject2;
    if (k > 0)
    {
      localObject1 = localObject2;
      if (j > 0)
      {
        float f = Math.min(1.0F, 1048576.0F / (k * j));
        k = Math.round(k * f);
        j = Math.round(j * f);
        paramMatrix.postTranslate(-left, -top);
        paramMatrix.postScale(f, f);
        if (c)
        {
          paramRectF = new Picture();
          localObject1 = paramRectF.beginRecording(k, j);
          ((Canvas)localObject1).concat(paramMatrix);
          paramView.draw((Canvas)localObject1);
          paramRectF.endRecording();
          localObject1 = Bitmap.createBitmap(paramRectF);
        }
        else
        {
          localObject1 = Bitmap.createBitmap(k, j, Bitmap.Config.ARGB_8888);
          paramRectF = new Canvas((Bitmap)localObject1);
          paramRectF.concat(paramMatrix);
          paramView.draw(paramRectF);
        }
      }
    }
    if ((b) && (bool1))
    {
      paramViewGroup.getOverlay().remove(paramView);
      localViewGroup.addView(paramView, i);
    }
    return localObject1;
  }
  
  static View a(ViewGroup paramViewGroup, View paramView1, View paramView2)
  {
    Matrix localMatrix = new Matrix();
    localMatrix.setTranslate(-paramView2.getScrollX(), -paramView2.getScrollY());
    aa.a(paramView1, localMatrix);
    aa.b(paramViewGroup, localMatrix);
    RectF localRectF = new RectF(0.0F, 0.0F, paramView1.getWidth(), paramView1.getHeight());
    localMatrix.mapRect(localRectF);
    int i = Math.round(left);
    int j = Math.round(top);
    int k = Math.round(right);
    int m = Math.round(bottom);
    paramView2 = new ImageView(paramView1.getContext());
    paramView2.setScaleType(ImageView.ScaleType.CENTER_CROP);
    paramViewGroup = a(paramView1, localMatrix, localRectF, paramViewGroup);
    if (paramViewGroup != null) {
      paramView2.setImageBitmap(paramViewGroup);
    }
    paramView2.measure(View.MeasureSpec.makeMeasureSpec(k - i, 1073741824), View.MeasureSpec.makeMeasureSpec(m - j, 1073741824));
    paramView2.layout(i, j, k, m);
    return paramView2;
  }
  
  static class a
    implements TypeEvaluator<Matrix>
  {
    final float[] a = new float[9];
    final float[] b = new float[9];
    final Matrix c = new Matrix();
    
    a() {}
    
    public Matrix a(float paramFloat, Matrix paramMatrix1, Matrix paramMatrix2)
    {
      paramMatrix1.getValues(a);
      paramMatrix2.getValues(b);
      int i = 0;
      while (i < 9)
      {
        float f1 = b[i];
        float f2 = a[i];
        b[i] = (a[i] + (f1 - f2) * paramFloat);
        i += 1;
      }
      c.setValues(b);
      return c;
    }
  }
}
