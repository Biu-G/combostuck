package android.support.v7.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.support.annotation.Nullable;

class n
  implements p
{
  final RectF a = new RectF();
  
  n() {}
  
  private y a(Context paramContext, ColorStateList paramColorStateList, float paramFloat1, float paramFloat2, float paramFloat3)
  {
    return new y(paramContext.getResources(), paramColorStateList, paramFloat1, paramFloat2, paramFloat3);
  }
  
  private y j(o paramO)
  {
    return (y)paramO.c();
  }
  
  public float a(o paramO)
  {
    return j(paramO).c();
  }
  
  public void a()
  {
    y.a = new y.a()
    {
      public void a(Canvas paramAnonymousCanvas, RectF paramAnonymousRectF, float paramAnonymousFloat, Paint paramAnonymousPaint)
      {
        float f1 = 2.0F * paramAnonymousFloat;
        float f2 = paramAnonymousRectF.width() - f1 - 1.0F;
        float f3 = paramAnonymousRectF.height();
        if (paramAnonymousFloat >= 1.0F)
        {
          float f4 = paramAnonymousFloat + 0.5F;
          RectF localRectF = a;
          float f5 = -f4;
          localRectF.set(f5, f5, f4, f4);
          int i = paramAnonymousCanvas.save();
          paramAnonymousCanvas.translate(left + f4, top + f4);
          paramAnonymousCanvas.drawArc(a, 180.0F, 90.0F, true, paramAnonymousPaint);
          paramAnonymousCanvas.translate(f2, 0.0F);
          paramAnonymousCanvas.rotate(90.0F);
          paramAnonymousCanvas.drawArc(a, 180.0F, 90.0F, true, paramAnonymousPaint);
          paramAnonymousCanvas.translate(f3 - f1 - 1.0F, 0.0F);
          paramAnonymousCanvas.rotate(90.0F);
          paramAnonymousCanvas.drawArc(a, 180.0F, 90.0F, true, paramAnonymousPaint);
          paramAnonymousCanvas.translate(f2, 0.0F);
          paramAnonymousCanvas.rotate(90.0F);
          paramAnonymousCanvas.drawArc(a, 180.0F, 90.0F, true, paramAnonymousPaint);
          paramAnonymousCanvas.restoreToCount(i);
          paramAnonymousCanvas.drawRect(left + f4 - 1.0F, top, right - f4 + 1.0F, top + f4, paramAnonymousPaint);
          paramAnonymousCanvas.drawRect(left + f4 - 1.0F, bottom - f4, right - f4 + 1.0F, bottom, paramAnonymousPaint);
        }
        paramAnonymousCanvas.drawRect(left, top + paramAnonymousFloat, right, bottom - paramAnonymousFloat, paramAnonymousPaint);
      }
    };
  }
  
  public void a(o paramO, float paramFloat)
  {
    j(paramO).a(paramFloat);
    f(paramO);
  }
  
  public void a(o paramO, Context paramContext, ColorStateList paramColorStateList, float paramFloat1, float paramFloat2, float paramFloat3)
  {
    paramContext = a(paramContext, paramColorStateList, paramFloat1, paramFloat2, paramFloat3);
    paramContext.a(paramO.b());
    paramO.a(paramContext);
    f(paramO);
  }
  
  public void a(o paramO, @Nullable ColorStateList paramColorStateList)
  {
    j(paramO).a(paramColorStateList);
  }
  
  public float b(o paramO)
  {
    return j(paramO).d();
  }
  
  public void b(o paramO, float paramFloat)
  {
    j(paramO).c(paramFloat);
    f(paramO);
  }
  
  public float c(o paramO)
  {
    return j(paramO).e();
  }
  
  public void c(o paramO, float paramFloat)
  {
    j(paramO).b(paramFloat);
  }
  
  public float d(o paramO)
  {
    return j(paramO).a();
  }
  
  public float e(o paramO)
  {
    return j(paramO).b();
  }
  
  public void f(o paramO)
  {
    Rect localRect = new Rect();
    j(paramO).a(localRect);
    paramO.a((int)Math.ceil(b(paramO)), (int)Math.ceil(c(paramO)));
    paramO.a(left, top, right, bottom);
  }
  
  public void g(o paramO) {}
  
  public void h(o paramO)
  {
    j(paramO).a(paramO.b());
    f(paramO);
  }
  
  public ColorStateList i(o paramO)
  {
    return j(paramO).f();
  }
}
