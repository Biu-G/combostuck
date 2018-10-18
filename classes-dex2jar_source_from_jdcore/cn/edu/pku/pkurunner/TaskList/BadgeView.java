package cn.edu.pku.pkurunner.TaskList;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import cn.edu.pku.pkurunner.R.styleable;

public class BadgeView
  extends FrameLayout
{
  private static float f = 0.5F;
  private static float g = 0.77F;
  private View a;
  private ImageView b;
  private TextView c;
  private String d;
  private boolean e = false;
  
  public BadgeView(@NonNull Context paramContext)
  {
    super(paramContext);
    a(paramContext, null);
  }
  
  public BadgeView(Context paramContext, @Nullable AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    a(paramContext, paramAttributeSet);
  }
  
  private void a()
  {
    if (!e)
    {
      b.setImageResource(2131230830);
      c.setVisibility(8);
    }
    try
    {
      int i = BadgeResourceResolver.resolve(d);
      b.setImageResource(i);
      c.setVisibility(0);
    }
    catch (BadgeResourceResolver.a localA)
    {
      for (;;) {}
    }
    b.setImageResource(2131230830);
    c.setVisibility(8);
    invalidate();
  }
  
  private void a(Context paramContext, @Nullable AttributeSet paramAttributeSet)
  {
    a = inflate(paramContext, 2131492968, this);
    b = ((ImageView)a.findViewById(2131296572));
    c = ((TextView)a.findViewById(2131296573));
    if (paramAttributeSet != null)
    {
      paramContext = paramContext.obtainStyledAttributes(paramAttributeSet, R.styleable.BadgeView);
      int j = paramContext.getIndexCount();
      int i = 0;
      while (i < j)
      {
        switch (paramContext.getIndex(i))
        {
        default: 
          break;
        case 1: 
          g = paramContext.getFloat(i, g);
          break;
        case 0: 
          setDistance(paramContext.getInteger(i, 0));
        }
        i += 1;
      }
      paramContext.recycle();
    }
  }
  
  protected void onDraw(Canvas paramCanvas)
  {
    super.onDraw(paramCanvas);
    b.draw(paramCanvas);
    c.draw(paramCanvas);
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onLayout(paramBoolean, paramInt1, paramInt2, paramInt3, paramInt4);
    float f1 = b.getX();
    float f2 = b.getWidth();
    float f3 = f;
    float f4 = c.getWidth() / 2;
    float f5 = b.getY();
    float f6 = b.getHeight();
    float f7 = g;
    float f8 = c.getHeight() / 2;
    c.setX(f1 + f2 * f3 - f4);
    c.setY(f5 + f6 * f7 - f8);
  }
  
  public void setBadgeSeries(String paramString)
  {
    d = paramString;
    a();
  }
  
  public void setDistance(int paramInt)
  {
    c.setText(String.valueOf(paramInt));
    invalidate();
  }
  
  public void setStatus(boolean paramBoolean)
  {
    e = paramBoolean;
    a();
  }
}
