package android.support.constraint.solver.widgets;

import android.support.constraint.solver.LinearSystem;
import android.support.constraint.solver.SolverVariable;
import java.util.ArrayList;

public class Guideline
  extends ConstraintWidget
{
  public static final int HORIZONTAL = 0;
  public static final int RELATIVE_BEGIN = 1;
  public static final int RELATIVE_END = 2;
  public static final int RELATIVE_PERCENT = 0;
  public static final int RELATIVE_UNKNWON = -1;
  public static final int VERTICAL = 1;
  private ConstraintAnchor S = r;
  private int T;
  private boolean U;
  private int V;
  private Rectangle W;
  private int X;
  protected int mRelativeBegin = -1;
  protected int mRelativeEnd = -1;
  protected float mRelativePercent = -1.0F;
  
  public Guideline()
  {
    int i = 0;
    T = 0;
    U = false;
    V = 0;
    W = new Rectangle();
    X = 8;
    mAnchors.clear();
    mAnchors.add(S);
    int j = mListAnchors.length;
    while (i < j)
    {
      mListAnchors[i] = S;
      i += 1;
    }
  }
  
  void a()
  {
    float f = getX() / getParent().getWidth();
    if (T == 0) {
      f = getY() / getParent().getHeight();
    }
    setGuidePercent(f);
  }
  
  public void addToSolver(LinearSystem paramLinearSystem)
  {
    Object localObject2 = (ConstraintWidgetContainer)getParent();
    if (localObject2 == null) {
      return;
    }
    ConstraintAnchor localConstraintAnchor = ((ConstraintWidgetContainer)localObject2).getAnchor(ConstraintAnchor.Type.LEFT);
    Object localObject1 = ((ConstraintWidgetContainer)localObject2).getAnchor(ConstraintAnchor.Type.RIGHT);
    int i;
    if ((y != null) && (y.mListDimensionBehaviors[0] == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT)) {
      i = 1;
    } else {
      i = 0;
    }
    if (T == 0)
    {
      localConstraintAnchor = ((ConstraintWidgetContainer)localObject2).getAnchor(ConstraintAnchor.Type.TOP);
      localObject1 = ((ConstraintWidgetContainer)localObject2).getAnchor(ConstraintAnchor.Type.BOTTOM);
      if ((y != null) && (y.mListDimensionBehaviors[1] == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT)) {
        i = 1;
      } else {
        i = 0;
      }
    }
    if (mRelativeBegin != -1)
    {
      localObject2 = paramLinearSystem.createObjectVariable(S);
      paramLinearSystem.addEquality((SolverVariable)localObject2, paramLinearSystem.createObjectVariable(localConstraintAnchor), mRelativeBegin, 6);
      if (i != 0) {
        paramLinearSystem.addGreaterThan(paramLinearSystem.createObjectVariable(localObject1), (SolverVariable)localObject2, 0, 5);
      }
    }
    else if (mRelativeEnd != -1)
    {
      localObject2 = paramLinearSystem.createObjectVariable(S);
      localObject1 = paramLinearSystem.createObjectVariable(localObject1);
      paramLinearSystem.addEquality((SolverVariable)localObject2, (SolverVariable)localObject1, -mRelativeEnd, 6);
      if (i != 0)
      {
        paramLinearSystem.addGreaterThan((SolverVariable)localObject2, paramLinearSystem.createObjectVariable(localConstraintAnchor), 0, 5);
        paramLinearSystem.addGreaterThan((SolverVariable)localObject1, (SolverVariable)localObject2, 0, 5);
      }
    }
    else if (mRelativePercent != -1.0F)
    {
      paramLinearSystem.addConstraint(LinearSystem.createRowDimensionPercent(paramLinearSystem, paramLinearSystem.createObjectVariable(S), paramLinearSystem.createObjectVariable(localConstraintAnchor), paramLinearSystem.createObjectVariable(localObject1), mRelativePercent, U));
    }
  }
  
  public boolean allowedInBarrier()
  {
    return true;
  }
  
  public void analyze(int paramInt)
  {
    ConstraintWidget localConstraintWidget = getParent();
    if (localConstraintWidget == null) {
      return;
    }
    if (getOrientation() == 1)
    {
      r.getResolutionNode().dependsOn(1, r.getResolutionNode(), 0);
      t.getResolutionNode().dependsOn(1, r.getResolutionNode(), 0);
      if (mRelativeBegin != -1)
      {
        q.getResolutionNode().dependsOn(1, q.getResolutionNode(), mRelativeBegin);
        s.getResolutionNode().dependsOn(1, q.getResolutionNode(), mRelativeBegin);
        return;
      }
      if (mRelativeEnd != -1)
      {
        q.getResolutionNode().dependsOn(1, s.getResolutionNode(), -mRelativeEnd);
        s.getResolutionNode().dependsOn(1, s.getResolutionNode(), -mRelativeEnd);
        return;
      }
      if ((mRelativePercent != -1.0F) && (localConstraintWidget.getHorizontalDimensionBehaviour() == ConstraintWidget.DimensionBehaviour.FIXED))
      {
        paramInt = (int)(z * mRelativePercent);
        q.getResolutionNode().dependsOn(1, q.getResolutionNode(), paramInt);
        s.getResolutionNode().dependsOn(1, q.getResolutionNode(), paramInt);
      }
    }
    else
    {
      q.getResolutionNode().dependsOn(1, q.getResolutionNode(), 0);
      s.getResolutionNode().dependsOn(1, q.getResolutionNode(), 0);
      if (mRelativeBegin != -1)
      {
        r.getResolutionNode().dependsOn(1, r.getResolutionNode(), mRelativeBegin);
        t.getResolutionNode().dependsOn(1, r.getResolutionNode(), mRelativeBegin);
        return;
      }
      if (mRelativeEnd != -1)
      {
        r.getResolutionNode().dependsOn(1, t.getResolutionNode(), -mRelativeEnd);
        t.getResolutionNode().dependsOn(1, t.getResolutionNode(), -mRelativeEnd);
        return;
      }
      if ((mRelativePercent != -1.0F) && (localConstraintWidget.getVerticalDimensionBehaviour() == ConstraintWidget.DimensionBehaviour.FIXED))
      {
        paramInt = (int)(A * mRelativePercent);
        r.getResolutionNode().dependsOn(1, r.getResolutionNode(), paramInt);
        t.getResolutionNode().dependsOn(1, r.getResolutionNode(), paramInt);
      }
    }
  }
  
  void b()
  {
    int i = getX();
    if (T == 0) {
      i = getY();
    }
    setGuideBegin(i);
  }
  
  void c()
  {
    int i = getParent().getWidth() - getX();
    if (T == 0) {
      i = getParent().getHeight() - getY();
    }
    setGuideEnd(i);
  }
  
  public void cyclePosition()
  {
    if (mRelativeBegin != -1)
    {
      a();
      return;
    }
    if (mRelativePercent != -1.0F)
    {
      c();
      return;
    }
    if (mRelativeEnd != -1) {
      b();
    }
  }
  
  public ConstraintAnchor getAnchor()
  {
    return S;
  }
  
  public ConstraintAnchor getAnchor(ConstraintAnchor.Type paramType)
  {
    switch (1.a[paramType.ordinal()])
    {
    default: 
      break;
    case 5: 
    case 6: 
    case 7: 
    case 8: 
    case 9: 
      return null;
    case 3: 
    case 4: 
      if (T == 0) {
        return S;
      }
      break;
    case 1: 
    case 2: 
      if (T == 1) {
        return S;
      }
      break;
    }
    throw new AssertionError(paramType.name());
  }
  
  public ArrayList<ConstraintAnchor> getAnchors()
  {
    return mAnchors;
  }
  
  public Rectangle getHead()
  {
    W.setBounds(getDrawX() - X, getDrawY() - X * 2, X * 2, X * 2);
    if (getOrientation() == 0) {
      W.setBounds(getDrawX() - X * 2, getDrawY() - X, X * 2, X * 2);
    }
    return W;
  }
  
  public int getOrientation()
  {
    return T;
  }
  
  public int getRelativeBegin()
  {
    return mRelativeBegin;
  }
  
  public int getRelativeBehaviour()
  {
    if (mRelativePercent != -1.0F) {
      return 0;
    }
    if (mRelativeBegin != -1) {
      return 1;
    }
    if (mRelativeEnd != -1) {
      return 2;
    }
    return -1;
  }
  
  public int getRelativeEnd()
  {
    return mRelativeEnd;
  }
  
  public float getRelativePercent()
  {
    return mRelativePercent;
  }
  
  public String getType()
  {
    return "Guideline";
  }
  
  public void setDrawOrigin(int paramInt1, int paramInt2)
  {
    if (T == 1)
    {
      paramInt1 -= mOffsetX;
      if (mRelativeBegin != -1)
      {
        setGuideBegin(paramInt1);
        return;
      }
      if (mRelativeEnd != -1)
      {
        setGuideEnd(getParent().getWidth() - paramInt1);
        return;
      }
      if (mRelativePercent != -1.0F) {
        setGuidePercent(paramInt1 / getParent().getWidth());
      }
    }
    else
    {
      paramInt1 = paramInt2 - mOffsetY;
      if (mRelativeBegin != -1)
      {
        setGuideBegin(paramInt1);
        return;
      }
      if (mRelativeEnd != -1)
      {
        setGuideEnd(getParent().getHeight() - paramInt1);
        return;
      }
      if (mRelativePercent != -1.0F) {
        setGuidePercent(paramInt1 / getParent().getHeight());
      }
    }
  }
  
  public void setGuideBegin(int paramInt)
  {
    if (paramInt > -1)
    {
      mRelativePercent = -1.0F;
      mRelativeBegin = paramInt;
      mRelativeEnd = -1;
    }
  }
  
  public void setGuideEnd(int paramInt)
  {
    if (paramInt > -1)
    {
      mRelativePercent = -1.0F;
      mRelativeBegin = -1;
      mRelativeEnd = paramInt;
    }
  }
  
  public void setGuidePercent(float paramFloat)
  {
    if (paramFloat > -1.0F)
    {
      mRelativePercent = paramFloat;
      mRelativeBegin = -1;
      mRelativeEnd = -1;
    }
  }
  
  public void setGuidePercent(int paramInt)
  {
    setGuidePercent(paramInt / 100.0F);
  }
  
  public void setMinimumPosition(int paramInt)
  {
    V = paramInt;
  }
  
  public void setOrientation(int paramInt)
  {
    if (T == paramInt) {
      return;
    }
    T = paramInt;
    mAnchors.clear();
    if (T == 1) {
      S = q;
    } else {
      S = r;
    }
    mAnchors.add(S);
    int i = mListAnchors.length;
    paramInt = 0;
    while (paramInt < i)
    {
      mListAnchors[paramInt] = S;
      paramInt += 1;
    }
  }
  
  public void setPositionRelaxed(boolean paramBoolean)
  {
    if (U == paramBoolean) {
      return;
    }
    U = paramBoolean;
  }
  
  public void updateFromSolver(LinearSystem paramLinearSystem)
  {
    if (getParent() == null) {
      return;
    }
    int i = paramLinearSystem.getObjectVariableValue(S);
    if (T == 1)
    {
      setX(i);
      setY(0);
      setHeight(getParent().getHeight());
      setWidth(0);
      return;
    }
    setX(0);
    setY(i);
    setWidth(getParent().getWidth());
    setHeight(0);
  }
}
