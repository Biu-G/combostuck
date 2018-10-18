package android.support.constraint;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.os.Build.VERSION;
import android.util.AttributeSet;

public class Barrier
  extends ConstraintHelper
{
  public static final int BOTTOM = 3;
  public static final int END = 6;
  public static final int LEFT = 0;
  public static final int RIGHT = 1;
  public static final int START = 5;
  public static final int TOP = 2;
  private int a;
  private int b;
  private android.support.constraint.solver.widgets.Barrier c;
  
  public Barrier(Context paramContext)
  {
    super(paramContext);
    super.setVisibility(8);
  }
  
  public Barrier(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    super.setVisibility(8);
  }
  
  public Barrier(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    super.setVisibility(8);
  }
  
  public boolean allowsGoneWidget()
  {
    return c.allowsGoneWidget();
  }
  
  public int getType()
  {
    return a;
  }
  
  protected void init(AttributeSet paramAttributeSet)
  {
    super.init(paramAttributeSet);
    c = new android.support.constraint.solver.widgets.Barrier();
    if (paramAttributeSet != null)
    {
      paramAttributeSet = getContext().obtainStyledAttributes(paramAttributeSet, R.styleable.ConstraintLayout_Layout);
      int j = paramAttributeSet.getIndexCount();
      int i = 0;
      while (i < j)
      {
        int k = paramAttributeSet.getIndex(i);
        if (k == R.styleable.ConstraintLayout_Layout_barrierDirection) {
          setType(paramAttributeSet.getInt(k, 0));
        } else if (k == R.styleable.ConstraintLayout_Layout_barrierAllowsGoneWidgets) {
          c.setAllowsGoneWidget(paramAttributeSet.getBoolean(k, true));
        }
        i += 1;
      }
    }
    mHelperWidget = c;
    validateParams();
  }
  
  public void setAllowsGoneWidget(boolean paramBoolean)
  {
    c.setAllowsGoneWidget(paramBoolean);
  }
  
  public void setType(int paramInt)
  {
    a = paramInt;
    b = paramInt;
    if (Build.VERSION.SDK_INT < 17)
    {
      if (a == 5) {
        b = 0;
      } else if (a == 6) {
        b = 1;
      }
    }
    else
    {
      if (1 == getResources().getConfiguration().getLayoutDirection()) {
        paramInt = 1;
      } else {
        paramInt = 0;
      }
      if (paramInt != 0)
      {
        if (a == 5) {
          b = 1;
        } else if (a == 6) {
          b = 0;
        }
      }
      else if (a == 5) {
        b = 0;
      } else if (a == 6) {
        b = 1;
      }
    }
    c.setBarrierType(b);
  }
}
