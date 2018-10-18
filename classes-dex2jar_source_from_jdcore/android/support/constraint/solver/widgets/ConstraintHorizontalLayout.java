package android.support.constraint.solver.widgets;

import android.support.constraint.solver.LinearSystem;
import java.util.ArrayList;

public class ConstraintHorizontalLayout
  extends ConstraintWidgetContainer
{
  private ContentAlignment ab = ContentAlignment.MIDDLE;
  
  public ConstraintHorizontalLayout() {}
  
  public ConstraintHorizontalLayout(int paramInt1, int paramInt2)
  {
    super(paramInt1, paramInt2);
  }
  
  public ConstraintHorizontalLayout(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super(paramInt1, paramInt2, paramInt3, paramInt4);
  }
  
  public void addToSolver(LinearSystem paramLinearSystem)
  {
    if (mChildren.size() != 0)
    {
      int i = 0;
      int j = mChildren.size();
      ConstraintWidget localConstraintWidget;
      ConstraintAnchor.Strength localStrength;
      for (Object localObject = this; i < j; localObject = localConstraintWidget)
      {
        localConstraintWidget = (ConstraintWidget)mChildren.get(i);
        if (localObject != this)
        {
          localConstraintWidget.connect(ConstraintAnchor.Type.LEFT, (ConstraintWidget)localObject, ConstraintAnchor.Type.RIGHT);
          ((ConstraintWidget)localObject).connect(ConstraintAnchor.Type.RIGHT, localConstraintWidget, ConstraintAnchor.Type.LEFT);
        }
        else
        {
          localStrength = ConstraintAnchor.Strength.STRONG;
          if (ab == ContentAlignment.END) {
            localStrength = ConstraintAnchor.Strength.WEAK;
          }
          localConstraintWidget.connect(ConstraintAnchor.Type.LEFT, (ConstraintWidget)localObject, ConstraintAnchor.Type.LEFT, 0, localStrength);
        }
        localConstraintWidget.connect(ConstraintAnchor.Type.TOP, this, ConstraintAnchor.Type.TOP);
        localConstraintWidget.connect(ConstraintAnchor.Type.BOTTOM, this, ConstraintAnchor.Type.BOTTOM);
        i += 1;
      }
      if (localObject != this)
      {
        localStrength = ConstraintAnchor.Strength.STRONG;
        if (ab == ContentAlignment.BEGIN) {
          localStrength = ConstraintAnchor.Strength.WEAK;
        }
        ((ConstraintWidget)localObject).connect(ConstraintAnchor.Type.RIGHT, this, ConstraintAnchor.Type.RIGHT, 0, localStrength);
      }
    }
    super.addToSolver(paramLinearSystem);
  }
  
  public static enum ContentAlignment
  {
    static
    {
      END = new ContentAlignment("END", 2);
      TOP = new ContentAlignment("TOP", 3);
      VERTICAL_MIDDLE = new ContentAlignment("VERTICAL_MIDDLE", 4);
    }
    
    private ContentAlignment() {}
  }
}
