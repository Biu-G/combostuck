package android.support.v4.widget;

import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.RectF;
import android.support.annotation.RestrictTo;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;

@RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY})
public class ViewGroupUtils
{
  private static final ThreadLocal<Matrix> a = new ThreadLocal();
  private static final ThreadLocal<RectF> b = new ThreadLocal();
  
  private ViewGroupUtils() {}
  
  static void a(ViewGroup paramViewGroup, View paramView, Rect paramRect)
  {
    Matrix localMatrix = (Matrix)a.get();
    if (localMatrix == null)
    {
      localMatrix = new Matrix();
      a.set(localMatrix);
    }
    else
    {
      localMatrix.reset();
    }
    a(paramViewGroup, paramView, localMatrix);
    paramView = (RectF)b.get();
    paramViewGroup = paramView;
    if (paramView == null)
    {
      paramViewGroup = new RectF();
      b.set(paramViewGroup);
    }
    paramViewGroup.set(paramRect);
    localMatrix.mapRect(paramViewGroup);
    paramRect.set((int)(left + 0.5F), (int)(top + 0.5F), (int)(right + 0.5F), (int)(bottom + 0.5F));
  }
  
  private static void a(ViewParent paramViewParent, View paramView, Matrix paramMatrix)
  {
    Object localObject = paramView.getParent();
    if (((localObject instanceof View)) && (localObject != paramViewParent))
    {
      localObject = (View)localObject;
      a(paramViewParent, (View)localObject, paramMatrix);
      paramMatrix.preTranslate(-((View)localObject).getScrollX(), -((View)localObject).getScrollY());
    }
    paramMatrix.preTranslate(paramView.getLeft(), paramView.getTop());
    if (!paramView.getMatrix().isIdentity()) {
      paramMatrix.preConcat(paramView.getMatrix());
    }
  }
  
  public static void getDescendantRect(ViewGroup paramViewGroup, View paramView, Rect paramRect)
  {
    paramRect.set(0, 0, paramView.getWidth(), paramView.getHeight());
    a(paramViewGroup, paramView, paramRect);
  }
}
