package android.support.v7.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.support.annotation.Nullable;
import android.support.annotation.RequiresApi;
import android.view.View;

@RequiresApi(21)
class m
  implements p
{
  m() {}
  
  private x j(o paramO)
  {
    return (x)paramO.c();
  }
  
  public float a(o paramO)
  {
    return j(paramO).a();
  }
  
  public void a() {}
  
  public void a(o paramO, float paramFloat)
  {
    j(paramO).a(paramFloat);
  }
  
  public void a(o paramO, Context paramContext, ColorStateList paramColorStateList, float paramFloat1, float paramFloat2, float paramFloat3)
  {
    paramO.a(new x(paramColorStateList, paramFloat1));
    paramContext = paramO.d();
    paramContext.setClipToOutline(true);
    paramContext.setElevation(paramFloat2);
    b(paramO, paramFloat3);
  }
  
  public void a(o paramO, @Nullable ColorStateList paramColorStateList)
  {
    j(paramO).a(paramColorStateList);
  }
  
  public float b(o paramO)
  {
    return d(paramO) * 2.0F;
  }
  
  public void b(o paramO, float paramFloat)
  {
    j(paramO).a(paramFloat, paramO.a(), paramO.b());
    f(paramO);
  }
  
  public float c(o paramO)
  {
    return d(paramO) * 2.0F;
  }
  
  public void c(o paramO, float paramFloat)
  {
    paramO.d().setElevation(paramFloat);
  }
  
  public float d(o paramO)
  {
    return j(paramO).b();
  }
  
  public float e(o paramO)
  {
    return paramO.d().getElevation();
  }
  
  public void f(o paramO)
  {
    if (!paramO.a())
    {
      paramO.a(0, 0, 0, 0);
      return;
    }
    float f1 = a(paramO);
    float f2 = d(paramO);
    int i = (int)Math.ceil(y.b(f1, f2, paramO.b()));
    int j = (int)Math.ceil(y.a(f1, f2, paramO.b()));
    paramO.a(i, j, i, j);
  }
  
  public void g(o paramO)
  {
    b(paramO, a(paramO));
  }
  
  public void h(o paramO)
  {
    b(paramO, a(paramO));
  }
  
  public ColorStateList i(o paramO)
  {
    return j(paramO).c();
  }
}
