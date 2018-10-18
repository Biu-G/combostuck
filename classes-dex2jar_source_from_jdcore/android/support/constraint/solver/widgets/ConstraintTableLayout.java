package android.support.constraint.solver.widgets;

import android.support.constraint.solver.LinearSystem;
import java.util.ArrayList;

public class ConstraintTableLayout
  extends ConstraintWidgetContainer
{
  public static final int ALIGN_CENTER = 0;
  public static final int ALIGN_LEFT = 1;
  public static final int ALIGN_RIGHT = 2;
  private boolean ab = true;
  private int ac = 0;
  private int ad = 0;
  private int ae = 8;
  private ArrayList<b> af = new ArrayList();
  private ArrayList<a> ag = new ArrayList();
  private ArrayList<Guideline> ah = new ArrayList();
  private ArrayList<Guideline> ai = new ArrayList();
  private LinearSystem aj = null;
  
  public ConstraintTableLayout() {}
  
  public ConstraintTableLayout(int paramInt1, int paramInt2)
  {
    super(paramInt1, paramInt2);
  }
  
  public ConstraintTableLayout(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super(paramInt1, paramInt2, paramInt3, paramInt4);
  }
  
  private void a()
  {
    if (aj == null) {
      return;
    }
    int k = ah.size();
    int j = 0;
    int i = 0;
    Guideline localGuideline;
    LinearSystem localLinearSystem;
    StringBuilder localStringBuilder;
    while (i < k)
    {
      localGuideline = (Guideline)ah.get(i);
      localLinearSystem = aj;
      localStringBuilder = new StringBuilder();
      localStringBuilder.append(getDebugName());
      localStringBuilder.append(".VG");
      localStringBuilder.append(i);
      localGuideline.setDebugSolverName(localLinearSystem, localStringBuilder.toString());
      i += 1;
    }
    k = ai.size();
    i = j;
    while (i < k)
    {
      localGuideline = (Guideline)ai.get(i);
      localLinearSystem = aj;
      localStringBuilder = new StringBuilder();
      localStringBuilder.append(getDebugName());
      localStringBuilder.append(".HG");
      localStringBuilder.append(i);
      localGuideline.setDebugSolverName(localLinearSystem, localStringBuilder.toString());
      i += 1;
    }
  }
  
  private void b()
  {
    af.clear();
    float f2 = 100.0F / ac;
    int i = 0;
    Object localObject = this;
    float f1 = f2;
    while (i < ac)
    {
      b localB = new b();
      a = ((ConstraintWidget)localObject);
      if (i < ac - 1)
      {
        localObject = new Guideline();
        ((Guideline)localObject).setOrientation(1);
        ((Guideline)localObject).setParent(this);
        ((Guideline)localObject).setGuidePercent((int)f1);
        f1 += f2;
        b = ((ConstraintWidget)localObject);
        ah.add(localObject);
      }
      else
      {
        b = this;
      }
      localObject = b;
      af.add(localB);
      i += 1;
    }
    a();
  }
  
  private void c()
  {
    ag.clear();
    float f2 = 100.0F / ad;
    Object localObject = this;
    float f1 = f2;
    int i = 0;
    while (i < ad)
    {
      a localA = new a();
      a = ((ConstraintWidget)localObject);
      if (i < ad - 1)
      {
        localObject = new Guideline();
        ((Guideline)localObject).setOrientation(0);
        ((Guideline)localObject).setParent(this);
        ((Guideline)localObject).setGuidePercent((int)f1);
        f1 += f2;
        b = ((ConstraintWidget)localObject);
        ai.add(localObject);
      }
      else
      {
        b = this;
      }
      localObject = b;
      ag.add(localA);
      i += 1;
    }
    a();
  }
  
  private void d()
  {
    int k = mChildren.size();
    int i = 0;
    int j = 0;
    while (i < k)
    {
      ConstraintWidget localConstraintWidget1 = (ConstraintWidget)mChildren.get(i);
      j += localConstraintWidget1.getContainerItemSkip();
      int m = ac;
      int n = j / ac;
      Object localObject = (a)ag.get(n);
      b localB = (b)af.get(j % m);
      ConstraintWidget localConstraintWidget2 = a;
      ConstraintWidget localConstraintWidget3 = b;
      ConstraintWidget localConstraintWidget4 = a;
      localObject = b;
      localConstraintWidget1.getAnchor(ConstraintAnchor.Type.LEFT).connect(localConstraintWidget2.getAnchor(ConstraintAnchor.Type.LEFT), ae);
      if ((localConstraintWidget3 instanceof Guideline)) {
        localConstraintWidget1.getAnchor(ConstraintAnchor.Type.RIGHT).connect(localConstraintWidget3.getAnchor(ConstraintAnchor.Type.LEFT), ae);
      } else {
        localConstraintWidget1.getAnchor(ConstraintAnchor.Type.RIGHT).connect(localConstraintWidget3.getAnchor(ConstraintAnchor.Type.RIGHT), ae);
      }
      switch (c)
      {
      default: 
        break;
      case 3: 
        localConstraintWidget1.setHorizontalDimensionBehaviour(ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT);
        break;
      case 2: 
        localConstraintWidget1.getAnchor(ConstraintAnchor.Type.LEFT).setStrength(ConstraintAnchor.Strength.WEAK);
        localConstraintWidget1.getAnchor(ConstraintAnchor.Type.RIGHT).setStrength(ConstraintAnchor.Strength.STRONG);
        break;
      case 1: 
        localConstraintWidget1.getAnchor(ConstraintAnchor.Type.LEFT).setStrength(ConstraintAnchor.Strength.STRONG);
        localConstraintWidget1.getAnchor(ConstraintAnchor.Type.RIGHT).setStrength(ConstraintAnchor.Strength.WEAK);
      }
      localConstraintWidget1.getAnchor(ConstraintAnchor.Type.TOP).connect(localConstraintWidget4.getAnchor(ConstraintAnchor.Type.TOP), ae);
      if ((localObject instanceof Guideline)) {
        localConstraintWidget1.getAnchor(ConstraintAnchor.Type.BOTTOM).connect(((ConstraintWidget)localObject).getAnchor(ConstraintAnchor.Type.TOP), ae);
      } else {
        localConstraintWidget1.getAnchor(ConstraintAnchor.Type.BOTTOM).connect(((ConstraintWidget)localObject).getAnchor(ConstraintAnchor.Type.BOTTOM), ae);
      }
      j += 1;
      i += 1;
    }
  }
  
  public void addToSolver(LinearSystem paramLinearSystem)
  {
    super.addToSolver(paramLinearSystem);
    int m = mChildren.size();
    if (m == 0) {
      return;
    }
    setTableDimensions();
    if (paramLinearSystem == mSystem)
    {
      int j = ah.size();
      int k = 0;
      int i = 0;
      boolean bool;
      Guideline localGuideline;
      for (;;)
      {
        bool = true;
        if (i >= j) {
          break;
        }
        localGuideline = (Guideline)ah.get(i);
        if (getHorizontalDimensionBehaviour() != ConstraintWidget.DimensionBehaviour.WRAP_CONTENT) {
          bool = false;
        }
        localGuideline.setPositionRelaxed(bool);
        localGuideline.addToSolver(paramLinearSystem);
        i += 1;
      }
      int n = ai.size();
      i = 0;
      for (;;)
      {
        j = k;
        if (i >= n) {
          break;
        }
        localGuideline = (Guideline)ai.get(i);
        if (getVerticalDimensionBehaviour() == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT) {
          bool = true;
        } else {
          bool = false;
        }
        localGuideline.setPositionRelaxed(bool);
        localGuideline.addToSolver(paramLinearSystem);
        i += 1;
      }
      while (j < m)
      {
        ((ConstraintWidget)mChildren.get(j)).addToSolver(paramLinearSystem);
        j += 1;
      }
    }
  }
  
  public void computeGuidelinesPercentPositions()
  {
    int k = ah.size();
    int j = 0;
    int i = 0;
    while (i < k)
    {
      ((Guideline)ah.get(i)).a();
      i += 1;
    }
    k = ai.size();
    i = j;
    while (i < k)
    {
      ((Guideline)ai.get(i)).a();
      i += 1;
    }
  }
  
  public void cycleColumnAlignment(int paramInt)
  {
    b localB = (b)af.get(paramInt);
    switch (c)
    {
    default: 
      break;
    case 2: 
      c = 1;
      break;
    case 1: 
      c = 0;
      break;
    case 0: 
      c = 2;
    }
    d();
  }
  
  public String getColumnAlignmentRepresentation(int paramInt)
  {
    b localB = (b)af.get(paramInt);
    if (c == 1) {
      return "L";
    }
    if (c == 0) {
      return "C";
    }
    if (c == 3) {
      return "F";
    }
    if (c == 2) {
      return "R";
    }
    return "!";
  }
  
  public String getColumnsAlignmentRepresentation()
  {
    int j = af.size();
    Object localObject2 = "";
    int i = 0;
    while (i < j)
    {
      b localB = (b)af.get(i);
      Object localObject1;
      if (c == 1)
      {
        localObject1 = new StringBuilder();
        ((StringBuilder)localObject1).append((String)localObject2);
        ((StringBuilder)localObject1).append("L");
        localObject1 = ((StringBuilder)localObject1).toString();
      }
      else if (c == 0)
      {
        localObject1 = new StringBuilder();
        ((StringBuilder)localObject1).append((String)localObject2);
        ((StringBuilder)localObject1).append("C");
        localObject1 = ((StringBuilder)localObject1).toString();
      }
      else if (c == 3)
      {
        localObject1 = new StringBuilder();
        ((StringBuilder)localObject1).append((String)localObject2);
        ((StringBuilder)localObject1).append("F");
        localObject1 = ((StringBuilder)localObject1).toString();
      }
      else
      {
        localObject1 = localObject2;
        if (c == 2)
        {
          localObject1 = new StringBuilder();
          ((StringBuilder)localObject1).append((String)localObject2);
          ((StringBuilder)localObject1).append("R");
          localObject1 = ((StringBuilder)localObject1).toString();
        }
      }
      i += 1;
      localObject2 = localObject1;
    }
    return localObject2;
  }
  
  public ArrayList<Guideline> getHorizontalGuidelines()
  {
    return ai;
  }
  
  public int getNumCols()
  {
    return ac;
  }
  
  public int getNumRows()
  {
    return ad;
  }
  
  public int getPadding()
  {
    return ae;
  }
  
  public String getType()
  {
    return "ConstraintTableLayout";
  }
  
  public ArrayList<Guideline> getVerticalGuidelines()
  {
    return ah;
  }
  
  public boolean handlesInternalConstraints()
  {
    return true;
  }
  
  public boolean isVerticalGrowth()
  {
    return ab;
  }
  
  public void setColumnAlignment(int paramInt1, int paramInt2)
  {
    if (paramInt1 < af.size())
    {
      af.get(paramInt1)).c = paramInt2;
      d();
    }
  }
  
  public void setColumnAlignment(String paramString)
  {
    int j = paramString.length();
    int i = 0;
    while (i < j)
    {
      int k = paramString.charAt(i);
      if (k == 76) {
        setColumnAlignment(i, 1);
      } else if (k == 67) {
        setColumnAlignment(i, 0);
      } else if (k == 70) {
        setColumnAlignment(i, 3);
      } else if (k == 82) {
        setColumnAlignment(i, 2);
      } else {
        setColumnAlignment(i, 0);
      }
      i += 1;
    }
  }
  
  public void setDebugSolverName(LinearSystem paramLinearSystem, String paramString)
  {
    aj = paramLinearSystem;
    super.setDebugSolverName(paramLinearSystem, paramString);
    a();
  }
  
  public void setNumCols(int paramInt)
  {
    if ((ab) && (ac != paramInt))
    {
      ac = paramInt;
      b();
      setTableDimensions();
    }
  }
  
  public void setNumRows(int paramInt)
  {
    if ((!ab) && (ac != paramInt))
    {
      ad = paramInt;
      c();
      setTableDimensions();
    }
  }
  
  public void setPadding(int paramInt)
  {
    if (paramInt > 1) {
      ae = paramInt;
    }
  }
  
  public void setTableDimensions()
  {
    int k = mChildren.size();
    int i = 0;
    int j = 0;
    while (i < k)
    {
      j += ((ConstraintWidget)mChildren.get(i)).getContainerItemSkip();
      i += 1;
    }
    k += j;
    if (ab)
    {
      if (ac == 0) {
        setNumCols(1);
      }
      j = k / ac;
      i = j;
      if (ac * j < k) {
        i = j + 1;
      }
      if ((ad == i) && (ah.size() == ac - 1)) {
        return;
      }
      ad = i;
      c();
    }
    else
    {
      if (ad == 0) {
        setNumRows(1);
      }
      j = k / ad;
      i = j;
      if (ad * j < k) {
        i = j + 1;
      }
      if ((ac == i) && (ai.size() == ad - 1)) {
        return;
      }
      ac = i;
      b();
    }
    d();
  }
  
  public void setVerticalGrowth(boolean paramBoolean)
  {
    ab = paramBoolean;
  }
  
  public void updateFromSolver(LinearSystem paramLinearSystem)
  {
    super.updateFromSolver(paramLinearSystem);
    if (paramLinearSystem == mSystem)
    {
      int k = ah.size();
      int j = 0;
      int i = 0;
      while (i < k)
      {
        ((Guideline)ah.get(i)).updateFromSolver(paramLinearSystem);
        i += 1;
      }
      k = ai.size();
      i = j;
      while (i < k)
      {
        ((Guideline)ai.get(i)).updateFromSolver(paramLinearSystem);
        i += 1;
      }
    }
  }
  
  class a
  {
    ConstraintWidget a;
    ConstraintWidget b;
    
    a() {}
  }
  
  class b
  {
    ConstraintWidget a;
    ConstraintWidget b;
    int c = 1;
    
    b() {}
  }
}
