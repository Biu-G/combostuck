package android.support.constraint.solver.widgets;

import android.support.constraint.solver.ArrayRow;
import android.support.constraint.solver.LinearSystem;
import android.support.constraint.solver.SolverVariable;
import java.util.ArrayList;

class a
{
  static void a(ConstraintWidgetContainer paramConstraintWidgetContainer, LinearSystem paramLinearSystem, int paramInt)
  {
    int k = 0;
    int j;
    ChainHead[] arrayOfChainHead;
    int i;
    if (paramInt == 0)
    {
      j = W;
      arrayOfChainHead = Z;
      i = 0;
    }
    else
    {
      i = 2;
      j = X;
      arrayOfChainHead = Y;
    }
    while (k < j)
    {
      ChainHead localChainHead = arrayOfChainHead[k];
      localChainHead.define();
      if (paramConstraintWidgetContainer.optimizeFor(4))
      {
        if (!Optimizer.a(paramConstraintWidgetContainer, paramLinearSystem, paramInt, i, localChainHead)) {
          a(paramConstraintWidgetContainer, paramLinearSystem, paramInt, i, localChainHead);
        }
      }
      else {
        a(paramConstraintWidgetContainer, paramLinearSystem, paramInt, i, localChainHead);
      }
      k += 1;
    }
  }
  
  static void a(ConstraintWidgetContainer paramConstraintWidgetContainer, LinearSystem paramLinearSystem, int paramInt1, int paramInt2, ChainHead paramChainHead)
  {
    Object localObject4 = mFirst;
    ConstraintWidget localConstraintWidget2 = mLast;
    ConstraintWidget localConstraintWidget1 = mFirstVisibleWidget;
    ConstraintWidget localConstraintWidget3 = mLastVisibleWidget;
    Object localObject2 = mHead;
    float f1 = mTotalWeight;
    Object localObject1 = mFirstMatchConstraintWidget;
    localObject1 = mLastMatchConstraintWidget;
    int i1;
    if (mListDimensionBehaviors[paramInt1] == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT) {
      i1 = 1;
    } else {
      i1 = 0;
    }
    int i;
    int j;
    int k;
    int m;
    if (paramInt1 == 0)
    {
      if (L == 0) {
        i = 1;
      } else {
        i = 0;
      }
      if (L == 1) {
        j = 1;
      } else {
        j = 0;
      }
      k = j;
      m = i;
      if (L != 2) {}
    }
    int n;
    Object localObject3;
    for (;;)
    {
      k = 1;
      m = j;
      n = i;
      do
      {
        i = 0;
        n = m;
        m = k;
        k = i;
        localObject3 = localObject4;
        i = 0;
        break;
        if (M == 0) {
          i = 1;
        } else {
          i = 0;
        }
        if (M == 1) {
          j = 1;
        } else {
          j = 0;
        }
        k = j;
        m = i;
      } while (M != 2);
    }
    Object localObject5;
    int i2;
    Object localObject6;
    for (;;)
    {
      localObject5 = null;
      if (i != 0) {
        break;
      }
      localObject1 = mListAnchors[paramInt2];
      if ((i1 == 0) && (k == 0)) {
        j = 4;
      } else {
        j = 1;
      }
      int i3 = ((ConstraintAnchor)localObject1).getMargin();
      i2 = i3;
      if (c != null)
      {
        i2 = i3;
        if (localObject3 != localObject4) {
          i2 = i3 + c.getMargin();
        }
      }
      if ((k != 0) && (localObject3 != localObject4) && (localObject3 != localConstraintWidget1)) {
        j = 6;
      } else if ((n != 0) && (i1 != 0)) {
        j = 4;
      }
      if (c != null)
      {
        if (localObject3 == localConstraintWidget1) {
          paramLinearSystem.addGreaterThan(e, c.e, i2, 5);
        } else {
          paramLinearSystem.addGreaterThan(e, c.e, i2, 6);
        }
        paramLinearSystem.addEquality(e, c.e, i2, j);
      }
      if (i1 != 0)
      {
        if ((((ConstraintWidget)localObject3).getVisibility() != 8) && (mListDimensionBehaviors[paramInt1] == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT)) {
          paramLinearSystem.addGreaterThan(mListAnchors[(paramInt2 + 1)].e, mListAnchors[paramInt2].e, 0, 5);
        }
        paramLinearSystem.addGreaterThan(mListAnchors[paramInt2].e, mListAnchors[paramInt2].e, 0, 6);
      }
      localObject6 = mListAnchors[(paramInt2 + 1)].c;
      localObject1 = localObject5;
      if (localObject6 != null)
      {
        localObject6 = a;
        localObject1 = localObject5;
        if (mListAnchors[paramInt2].c != null) {
          if (mListAnchors[paramInt2].c.a != localObject3) {
            localObject1 = localObject5;
          } else {
            localObject1 = localObject6;
          }
        }
      }
      if (localObject1 != null) {
        localObject3 = localObject1;
      } else {
        i = 1;
      }
    }
    if (localConstraintWidget3 != null)
    {
      localObject1 = mListAnchors;
      i = paramInt2 + 1;
      if (c != null)
      {
        localObject1 = mListAnchors[i];
        paramLinearSystem.addLowerThan(e, mListAnchors[i].c.e, -((ConstraintAnchor)localObject1).getMargin(), 5);
      }
    }
    if (i1 != 0)
    {
      paramConstraintWidgetContainer = mListAnchors;
      i = paramInt2 + 1;
      paramLinearSystem.addGreaterThan(e, mListAnchors[i].e, mListAnchors[i].getMargin(), 6);
    }
    paramConstraintWidgetContainer = mWeightedMatchConstraintsWidgets;
    label915:
    SolverVariable localSolverVariable;
    Object localObject7;
    if (paramConstraintWidgetContainer != null)
    {
      j = paramConstraintWidgetContainer.size();
      if (j > 1)
      {
        float f2 = f1;
        if (mHasUndefinedWeights)
        {
          f2 = f1;
          if (!mHasComplexMatchWeights) {
            f2 = mWidgetsMatchCount;
          }
        }
        localObject1 = null;
        i = 0;
        for (float f3 = 0.0F; i < j; f3 = f1)
        {
          localObject3 = (ConstraintWidget)paramConstraintWidgetContainer.get(i);
          f1 = P[paramInt1];
          if (f1 < 0.0F)
          {
            if (mHasComplexMatchWeights)
            {
              paramLinearSystem.addEquality(mListAnchors[(paramInt2 + 1)].e, mListAnchors[paramInt2].e, 0, 4);
              break label915;
            }
            f1 = 1.0F;
          }
          if (f1 == 0.0F)
          {
            paramLinearSystem.addEquality(mListAnchors[(paramInt2 + 1)].e, mListAnchors[paramInt2].e, 0, 6);
            f1 = f3;
          }
          else
          {
            if (localObject1 != null)
            {
              localObject5 = mListAnchors[paramInt2].e;
              localObject1 = mListAnchors;
              i1 = paramInt2 + 1;
              localObject1 = e;
              localObject6 = mListAnchors[paramInt2].e;
              localSolverVariable = mListAnchors[i1].e;
              localObject7 = paramLinearSystem.createRow();
              ((ArrayRow)localObject7).createRowEqualMatchDimensions(f3, f2, f1, (SolverVariable)localObject5, (SolverVariable)localObject1, (SolverVariable)localObject6, localSolverVariable);
              paramLinearSystem.addConstraint((ArrayRow)localObject7);
            }
            localObject1 = localObject3;
          }
          i += 1;
        }
      }
    }
    if ((localConstraintWidget1 != null) && ((localConstraintWidget1 == localConstraintWidget3) || (k != 0)))
    {
      localObject1 = mListAnchors[paramInt2];
      paramConstraintWidgetContainer = mListAnchors;
      i = paramInt2 + 1;
      localObject3 = paramConstraintWidgetContainer[i];
      if (mListAnchors[paramInt2].c != null) {
        paramConstraintWidgetContainer = mListAnchors[paramInt2].c.e;
      } else {
        paramConstraintWidgetContainer = null;
      }
      if (mListAnchors[i].c != null) {
        paramChainHead = mListAnchors[i].c.e;
      } else {
        paramChainHead = null;
      }
      if (localConstraintWidget1 == localConstraintWidget3)
      {
        localObject1 = mListAnchors[paramInt2];
        localObject3 = mListAnchors[i];
      }
      if ((paramConstraintWidgetContainer != null) && (paramChainHead != null))
      {
        if (paramInt1 == 0) {}
        for (f1 = E;; f1 = F) {
          break;
        }
        paramInt1 = ((ConstraintAnchor)localObject1).getMargin();
        i = ((ConstraintAnchor)localObject3).getMargin();
        paramLinearSystem.addCentering(e, paramConstraintWidgetContainer, paramInt1, f1, paramChainHead, e, i, 5);
      }
    }
    else
    {
      if ((n != 0) && (localConstraintWidget1 != null))
      {
        if ((mWidgetsMatchCount > 0) && (mWidgetsCount == mWidgetsMatchCount)) {
          k = 1;
        } else {
          k = 0;
        }
        localObject1 = localConstraintWidget1;
        localObject2 = localObject1;
      }
      while (localObject2 != null)
      {
        for (paramConstraintWidgetContainer = mNextChainWidget[paramInt1]; (paramConstraintWidgetContainer != null) && (paramConstraintWidgetContainer.getVisibility() == 8); paramConstraintWidgetContainer = mNextChainWidget[paramInt1]) {}
        if ((paramConstraintWidgetContainer == null) && (localObject2 != localConstraintWidget3)) {}
        for (;;)
        {
          break;
          localObject5 = mListAnchors[paramInt2];
          localSolverVariable = e;
          if (c != null) {
            localObject3 = c.e;
          } else {
            localObject3 = null;
          }
          if (localObject1 != localObject2)
          {
            paramChainHead = mListAnchors[(paramInt2 + 1)].e;
          }
          else
          {
            paramChainHead = (ChainHead)localObject3;
            if (localObject2 == localConstraintWidget1)
            {
              paramChainHead = (ChainHead)localObject3;
              if (localObject1 == localObject2) {
                if (mListAnchors[paramInt2].c != null) {
                  paramChainHead = mListAnchors[paramInt2].c.e;
                } else {
                  paramChainHead = null;
                }
              }
            }
          }
          j = ((ConstraintAnchor)localObject5).getMargin();
          localObject3 = mListAnchors;
          i2 = paramInt2 + 1;
          i1 = localObject3[i2].getMargin();
          if (paramConstraintWidgetContainer != null)
          {
            localObject6 = mListAnchors[paramInt2];
            localObject3 = e;
          }
          for (localObject5 = mListAnchors[i2].e;; localObject5 = mListAnchors[i2].e)
          {
            break;
            localObject6 = mListAnchors[i2].c;
            if (localObject6 != null) {
              localObject3 = e;
            } else {
              localObject3 = null;
            }
          }
          i = i1;
          if (localObject6 != null) {
            i = i1 + ((ConstraintAnchor)localObject6).getMargin();
          }
          if (localObject1 != null) {
            j += mListAnchors[i2].getMargin();
          }
          if ((localSolverVariable != null) && (paramChainHead != null) && (localObject3 != null) && (localObject5 != null))
          {
            if (localObject2 == localConstraintWidget1) {
              j = mListAnchors[paramInt2].getMargin();
            }
            if (localObject2 == localConstraintWidget3) {
              i = mListAnchors[i2].getMargin();
            }
            if (k != 0) {
              i1 = 6;
            } else {
              i1 = 4;
            }
            paramLinearSystem.addCentering(localSolverVariable, paramChainHead, j, 0.5F, (SolverVariable)localObject3, (SolverVariable)localObject5, i, i1);
            break;
          }
        }
        if (((ConstraintWidget)localObject2).getVisibility() != 8) {
          localObject1 = localObject2;
        }
        localObject2 = paramConstraintWidgetContainer;
        continue;
        if ((m != 0) && (localConstraintWidget1 != null))
        {
          if ((mWidgetsMatchCount > 0) && (mWidgetsCount == mWidgetsMatchCount)) {
            i = 1;
          } else {
            i = 0;
          }
          paramChainHead = localConstraintWidget1;
          paramConstraintWidgetContainer = paramChainHead;
          for (;;)
          {
            localObject2 = paramConstraintWidgetContainer;
            if (localObject2 == null) {
              break;
            }
            for (paramConstraintWidgetContainer = mNextChainWidget[paramInt1]; (paramConstraintWidgetContainer != null) && (paramConstraintWidgetContainer.getVisibility() == 8); paramConstraintWidgetContainer = mNextChainWidget[paramInt1]) {}
            if ((localObject2 != localConstraintWidget1) && (localObject2 != localConstraintWidget3) && (paramConstraintWidgetContainer != null))
            {
              if (paramConstraintWidgetContainer == localConstraintWidget3) {
                paramConstraintWidgetContainer = null;
              }
              localObject1 = mListAnchors[paramInt2];
              localSolverVariable = e;
              if (c != null) {
                localObject3 = c.e;
              }
              localObject3 = mListAnchors;
              i2 = paramInt2 + 1;
              localObject7 = e;
              i1 = ((ConstraintAnchor)localObject1).getMargin();
              k = mListAnchors[i2].getMargin();
              if (paramConstraintWidgetContainer != null)
              {
                localObject3 = mListAnchors[paramInt2];
                localObject5 = e;
                if (c != null) {
                  localObject1 = c.e;
                } else {
                  localObject1 = null;
                }
                localObject6 = localObject1;
              }
              else
              {
                localObject3 = mListAnchors[i2].c;
                if (localObject3 != null) {
                  localObject1 = e;
                } else {
                  localObject1 = null;
                }
                localObject6 = mListAnchors[i2].e;
                localObject5 = localObject1;
              }
              j = k;
              if (localObject3 != null) {
                j = k + ((ConstraintAnchor)localObject3).getMargin();
              }
              k = i1;
              if (paramChainHead != null) {
                k = i1 + mListAnchors[i2].getMargin();
              }
              if (i != 0) {
                i1 = 6;
              } else {
                i1 = 4;
              }
              if ((localSolverVariable != null) && (localObject7 != null) && (localObject5 != null) && (localObject6 != null)) {
                paramLinearSystem.addCentering(localSolverVariable, (SolverVariable)localObject7, k, 0.5F, (SolverVariable)localObject5, (SolverVariable)localObject6, j, i1);
              }
            }
            if (((ConstraintWidget)localObject2).getVisibility() != 8) {
              paramChainHead = (ChainHead)localObject2;
            }
          }
          paramConstraintWidgetContainer = mListAnchors[paramInt2];
          localObject3 = mListAnchors[paramInt2].c;
          paramChainHead = mListAnchors;
          paramInt1 = paramInt2 + 1;
          paramChainHead = paramChainHead[paramInt1];
          localObject1 = mListAnchors[paramInt1].c;
          if (localObject3 != null)
          {
            if (localConstraintWidget1 != localConstraintWidget3) {
              paramLinearSystem.addEquality(e, e, paramConstraintWidgetContainer.getMargin(), 5);
            }
            while (localObject1 == null)
            {
              paramConstraintWidgetContainer = paramLinearSystem;
              break;
            }
            localObject2 = e;
            localObject3 = e;
            paramInt1 = paramConstraintWidgetContainer.getMargin();
            localObject4 = e;
            localObject5 = e;
            i = paramChainHead.getMargin();
            paramConstraintWidgetContainer = paramLinearSystem;
            paramLinearSystem.addCentering((SolverVariable)localObject2, (SolverVariable)localObject3, paramInt1, 0.5F, (SolverVariable)localObject4, (SolverVariable)localObject5, i, 5);
          }
          else
          {
            paramConstraintWidgetContainer = paramLinearSystem;
          }
          if ((localObject1 != null) && (localConstraintWidget1 != localConstraintWidget3)) {
            paramConstraintWidgetContainer.addEquality(e, e, -paramChainHead.getMargin(), 5);
          }
        }
      }
    }
    if (((n != 0) || (m != 0)) && (localConstraintWidget1 != null))
    {
      localObject1 = mListAnchors[paramInt2];
      paramConstraintWidgetContainer = mListAnchors;
      paramInt1 = paramInt2 + 1;
      localObject2 = paramConstraintWidgetContainer[paramInt1];
      if (c != null) {
        paramChainHead = c.e;
      } else {
        paramChainHead = null;
      }
      if (c != null) {
        paramConstraintWidgetContainer = c.e;
      } else {
        paramConstraintWidgetContainer = null;
      }
      if (localConstraintWidget2 != localConstraintWidget3)
      {
        paramConstraintWidgetContainer = mListAnchors[paramInt1];
        if (c != null) {
          paramConstraintWidgetContainer = c.e;
        } else {
          paramConstraintWidgetContainer = null;
        }
      }
      if (localConstraintWidget1 == localConstraintWidget3)
      {
        localObject1 = mListAnchors[paramInt2];
        localObject2 = mListAnchors[paramInt1];
      }
      if ((paramChainHead != null) && (paramConstraintWidgetContainer != null))
      {
        paramInt2 = ((ConstraintAnchor)localObject1).getMargin();
        if (localConstraintWidget3 == null) {
          localObject3 = localConstraintWidget2;
        } else {
          localObject3 = localConstraintWidget3;
        }
        paramInt1 = mListAnchors[paramInt1].getMargin();
        paramLinearSystem.addCentering(e, paramChainHead, paramInt2, 0.5F, paramConstraintWidgetContainer, e, paramInt1, 5);
      }
    }
  }
}
