package android.support.v4.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.os.Build.VERSION;
import android.support.annotation.NonNull;
import android.widget.EdgeEffect;

public final class EdgeEffectCompat
{
  private EdgeEffect a;
  
  @Deprecated
  public EdgeEffectCompat(Context paramContext)
  {
    a = new EdgeEffect(paramContext);
  }
  
  public static void onPull(@NonNull EdgeEffect paramEdgeEffect, float paramFloat1, float paramFloat2)
  {
    if (Build.VERSION.SDK_INT >= 21)
    {
      paramEdgeEffect.onPull(paramFloat1, paramFloat2);
      return;
    }
    paramEdgeEffect.onPull(paramFloat1);
  }
  
  @Deprecated
  public boolean draw(Canvas paramCanvas)
  {
    return a.draw(paramCanvas);
  }
  
  @Deprecated
  public void finish()
  {
    a.finish();
  }
  
  @Deprecated
  public boolean isFinished()
  {
    return a.isFinished();
  }
  
  @Deprecated
  public boolean onAbsorb(int paramInt)
  {
    a.onAbsorb(paramInt);
    return true;
  }
  
  @Deprecated
  public boolean onPull(float paramFloat)
  {
    a.onPull(paramFloat);
    return true;
  }
  
  @Deprecated
  public boolean onPull(float paramFloat1, float paramFloat2)
  {
    onPull(a, paramFloat1, paramFloat2);
    return true;
  }
  
  @Deprecated
  public boolean onRelease()
  {
    a.onRelease();
    return a.isFinished();
  }
  
  @Deprecated
  public void setSize(int paramInt1, int paramInt2)
  {
    a.setSize(paramInt1, paramInt2);
  }
}
