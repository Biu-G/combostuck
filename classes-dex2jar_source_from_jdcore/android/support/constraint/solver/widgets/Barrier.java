package android.support.constraint.solver.widgets;

import android.support.constraint.solver.LinearSystem;
import android.support.constraint.solver.Metrics;
import android.support.constraint.solver.SolverVariable;
import java.util.ArrayList;

public class Barrier
  extends Helper
{
  public static final int BOTTOM = 3;
  public static final int LEFT = 0;
  public static final int RIGHT = 1;
  public static final int TOP = 2;
  private int S = 0;
  private ArrayList<ResolutionAnchor> T = new ArrayList(4);
  private boolean U = true;
  
  public Barrier() {}
  
  public void addToSolver(LinearSystem paramLinearSystem)
  {
    mListAnchors[0] = q;
    mListAnchors[2] = r;
    mListAnchors[1] = s;
    mListAnchors[3] = t;
    int i = 0;
    while (i < mListAnchors.length)
    {
      mListAnchors[i].e = paramLinearSystem.createObjectVariable(mListAnchors[i]);
      i += 1;
    }
    if ((S >= 0) && (S < 4))
    {
      ConstraintAnchor localConstraintAnchor = mListAnchors[S];
      i = 0;
      ConstraintWidget localConstraintWidget;
      while (i < mWidgetsCount)
      {
        localConstraintWidget = mWidgets[i];
        if ((U) || (localConstraintWidget.allowedInBarrier()))
        {
          if (((S == 0) || (S == 1)) && (localConstraintWidget.getHorizontalDimensionBehaviour() == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT)) {}
          while (((S == 2) || (S == 3)) && (localConstraintWidget.getVerticalDimensionBehaviour() == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT))
          {
            bool = true;
            break;
          }
        }
        i += 1;
      }
      boolean bool = false;
      if ((S != 0) && (S != 1) ? getParent().getVerticalDimensionBehaviour() == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT : getParent().getHorizontalDimensionBehaviour() == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT) {
        bool = false;
      }
      i = 0;
      while (i < mWidgetsCount)
      {
        localConstraintWidget = mWidgets[i];
        if ((U) || (localConstraintWidget.allowedInBarrier()))
        {
          SolverVariable localSolverVariable = paramLinearSystem.createObjectVariable(mListAnchors[S]);
          mListAnchors[S].e = localSolverVariable;
          if ((S != 0) && (S != 2)) {
            paramLinearSystem.addGreaterBarrier(e, localSolverVariable, bool);
          } else {
            paramLinearSystem.addLowerBarrier(e, localSolverVariable, bool);
          }
        }
        i += 1;
      }
      if (S == 0)
      {
        paramLinearSystem.addEquality(s.e, q.e, 0, 6);
        if (!bool) {
          paramLinearSystem.addEquality(q.e, y.s.e, 0, 5);
        }
      }
      else if (S == 1)
      {
        paramLinearSystem.addEquality(q.e, s.e, 0, 6);
        if (!bool) {
          paramLinearSystem.addEquality(q.e, y.q.e, 0, 5);
        }
      }
      else if (S == 2)
      {
        paramLinearSystem.addEquality(t.e, r.e, 0, 6);
        if (!bool) {
          paramLinearSystem.addEquality(r.e, y.t.e, 0, 5);
        }
      }
      else if (S == 3)
      {
        paramLinearSystem.addEquality(r.e, t.e, 0, 6);
        if (!bool) {
          paramLinearSystem.addEquality(r.e, y.r.e, 0, 5);
        }
      }
      return;
    }
  }
  
  public boolean allowedInBarrier()
  {
    return true;
  }
  
  public boolean allowsGoneWidget()
  {
    return U;
  }
  
  public void analyze(int paramInt)
  {
    if (y == null) {
      return;
    }
    if (!((ConstraintWidgetContainer)y).optimizeFor(2)) {
      return;
    }
    ResolutionAnchor localResolutionAnchor;
    switch (S)
    {
    default: 
      return;
    case 3: 
      localResolutionAnchor = t.getResolutionNode();
      break;
    case 2: 
      localResolutionAnchor = r.getResolutionNode();
      break;
    case 1: 
      localResolutionAnchor = s.getResolutionNode();
      break;
    case 0: 
      localResolutionAnchor = q.getResolutionNode();
    }
    localResolutionAnchor.setType(5);
    if ((S != 0) && (S != 1))
    {
      q.getResolutionNode().resolve(null, 0.0F);
      s.getResolutionNode().resolve(null, 0.0F);
    }
    else
    {
      r.getResolutionNode().resolve(null, 0.0F);
      t.getResolutionNode().resolve(null, 0.0F);
    }
    T.clear();
    paramInt = 0;
    while (paramInt < mWidgetsCount)
    {
      Object localObject = mWidgets[paramInt];
      if ((U) || (((ConstraintWidget)localObject).allowedInBarrier()))
      {
        switch (S)
        {
        default: 
          localObject = null;
          break;
        case 3: 
          localObject = t.getResolutionNode();
          break;
        case 2: 
          localObject = r.getResolutionNode();
          break;
        case 1: 
          localObject = s.getResolutionNode();
          break;
        case 0: 
          localObject = q.getResolutionNode();
        }
        if (localObject != null)
        {
          T.add(localObject);
          ((ResolutionAnchor)localObject).addDependent(localResolutionAnchor);
        }
      }
      paramInt += 1;
    }
  }
  
  public void resetResolutionNodes()
  {
    super.resetResolutionNodes();
    T.clear();
  }
  
  public void resolve()
  {
    int i = S;
    float f1 = Float.MAX_VALUE;
    switch (i)
    {
    default: 
      return;
    case 3: 
      localResolutionAnchor1 = t.getResolutionNode();
      break;
    case 2: 
      localResolutionAnchor1 = r.getResolutionNode();
      break;
    case 1: 
      localResolutionAnchor1 = s.getResolutionNode();
      f1 = 0.0F;
      break;
    }
    ResolutionAnchor localResolutionAnchor1 = q.getResolutionNode();
    int j = T.size();
    ResolutionAnchor localResolutionAnchor2 = null;
    i = 0;
    Object localObject;
    for (float f2 = f1; i < j; f2 = f1)
    {
      localObject = (ResolutionAnchor)T.get(i);
      if (i != 1) {
        return;
      }
      if ((S != 0) && (S != 2))
      {
        f1 = f2;
        if (f > f2)
        {
          f1 = f;
          localResolutionAnchor2 = e;
        }
      }
      else
      {
        f1 = f2;
        if (f < f2)
        {
          f1 = f;
          localResolutionAnchor2 = e;
        }
      }
      i += 1;
    }
    if (LinearSystem.getMetrics() != null)
    {
      localObject = LinearSystem.getMetrics();
      barrierConnectionResolved += 1L;
    }
    e = localResolutionAnchor2;
    f = f2;
    localResolutionAnchor1.didResolve();
    switch (S)
    {
    default: 
      return;
    case 3: 
      r.getResolutionNode().resolve(localResolutionAnchor2, f2);
      return;
    case 2: 
      t.getResolutionNode().resolve(localResolutionAnchor2, f2);
      return;
    case 1: 
      q.getResolutionNode().resolve(localResolutionAnchor2, f2);
      return;
    }
    s.getResolutionNode().resolve(localResolutionAnchor2, f2);
  }
  
  public void setAllowsGoneWidget(boolean paramBoolean)
  {
    U = paramBoolean;
  }
  
  public void setBarrierType(int paramInt)
  {
    S = paramInt;
  }
}
