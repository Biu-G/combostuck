package android.support.constraint.solver.widgets;

import android.support.constraint.solver.LinearSystem;
import android.support.constraint.solver.Metrics;

public class Optimizer
{
  public static final int OPTIMIZATION_BARRIER = 2;
  public static final int OPTIMIZATION_CHAIN = 4;
  public static final int OPTIMIZATION_DIMENSIONS = 8;
  public static final int OPTIMIZATION_DIRECT = 1;
  public static final int OPTIMIZATION_GROUPS = 32;
  public static final int OPTIMIZATION_NONE = 0;
  public static final int OPTIMIZATION_RATIO = 16;
  public static final int OPTIMIZATION_STANDARD = 7;
  static boolean[] a = new boolean[3];
  
  public Optimizer() {}
  
  static void a(int paramInt, ConstraintWidget paramConstraintWidget)
  {
    paramConstraintWidget.updateResolutionNodes();
    ResolutionAnchor localResolutionAnchor1 = q.getResolutionNode();
    ResolutionAnchor localResolutionAnchor2 = r.getResolutionNode();
    ResolutionAnchor localResolutionAnchor3 = s.getResolutionNode();
    ResolutionAnchor localResolutionAnchor4 = t.getResolutionNode();
    if ((paramInt & 0x8) == 8) {
      paramInt = 1;
    } else {
      paramInt = 0;
    }
    int i;
    if ((mListDimensionBehaviors[0] == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) && (a(paramConstraintWidget, 0))) {
      i = 1;
    } else {
      i = 0;
    }
    if ((g != 4) && (g != 4)) {
      if ((mListDimensionBehaviors[0] != ConstraintWidget.DimensionBehaviour.FIXED) && ((i == 0) || (paramConstraintWidget.getVisibility() != 8)))
      {
        if (i != 0)
        {
          i = paramConstraintWidget.getWidth();
          localResolutionAnchor1.setType(1);
          localResolutionAnchor3.setType(1);
          if ((q.c == null) && (s.c == null))
          {
            if (paramInt != 0) {
              localResolutionAnchor3.dependsOn(localResolutionAnchor1, 1, paramConstraintWidget.getResolutionWidth());
            } else {
              localResolutionAnchor3.dependsOn(localResolutionAnchor1, i);
            }
          }
          else if ((q.c != null) && (s.c == null))
          {
            if (paramInt != 0) {
              localResolutionAnchor3.dependsOn(localResolutionAnchor1, 1, paramConstraintWidget.getResolutionWidth());
            } else {
              localResolutionAnchor3.dependsOn(localResolutionAnchor1, i);
            }
          }
          else if ((q.c == null) && (s.c != null))
          {
            if (paramInt != 0) {
              localResolutionAnchor1.dependsOn(localResolutionAnchor3, -1, paramConstraintWidget.getResolutionWidth());
            } else {
              localResolutionAnchor1.dependsOn(localResolutionAnchor3, -i);
            }
          }
          else if ((q.c != null) && (s.c != null))
          {
            if (paramInt != 0)
            {
              paramConstraintWidget.getResolutionWidth().addDependent(localResolutionAnchor1);
              paramConstraintWidget.getResolutionWidth().addDependent(localResolutionAnchor3);
            }
            if (mDimensionRatio == 0.0F)
            {
              localResolutionAnchor1.setType(3);
              localResolutionAnchor3.setType(3);
              localResolutionAnchor1.setOpposite(localResolutionAnchor3, 0.0F);
              localResolutionAnchor3.setOpposite(localResolutionAnchor1, 0.0F);
            }
            else
            {
              localResolutionAnchor1.setType(2);
              localResolutionAnchor3.setType(2);
              localResolutionAnchor1.setOpposite(localResolutionAnchor3, -i);
              localResolutionAnchor3.setOpposite(localResolutionAnchor1, i);
              paramConstraintWidget.setWidth(i);
            }
          }
        }
      }
      else if ((q.c == null) && (s.c == null))
      {
        localResolutionAnchor1.setType(1);
        localResolutionAnchor3.setType(1);
        if (paramInt != 0) {
          localResolutionAnchor3.dependsOn(localResolutionAnchor1, 1, paramConstraintWidget.getResolutionWidth());
        } else {
          localResolutionAnchor3.dependsOn(localResolutionAnchor1, paramConstraintWidget.getWidth());
        }
      }
      else if ((q.c != null) && (s.c == null))
      {
        localResolutionAnchor1.setType(1);
        localResolutionAnchor3.setType(1);
        if (paramInt != 0) {
          localResolutionAnchor3.dependsOn(localResolutionAnchor1, 1, paramConstraintWidget.getResolutionWidth());
        } else {
          localResolutionAnchor3.dependsOn(localResolutionAnchor1, paramConstraintWidget.getWidth());
        }
      }
      else if ((q.c == null) && (s.c != null))
      {
        localResolutionAnchor1.setType(1);
        localResolutionAnchor3.setType(1);
        localResolutionAnchor1.dependsOn(localResolutionAnchor3, -paramConstraintWidget.getWidth());
        if (paramInt != 0) {
          localResolutionAnchor1.dependsOn(localResolutionAnchor3, -1, paramConstraintWidget.getResolutionWidth());
        } else {
          localResolutionAnchor1.dependsOn(localResolutionAnchor3, -paramConstraintWidget.getWidth());
        }
      }
      else if ((q.c != null) && (s.c != null))
      {
        localResolutionAnchor1.setType(2);
        localResolutionAnchor3.setType(2);
        if (paramInt != 0)
        {
          paramConstraintWidget.getResolutionWidth().addDependent(localResolutionAnchor1);
          paramConstraintWidget.getResolutionWidth().addDependent(localResolutionAnchor3);
          localResolutionAnchor1.setOpposite(localResolutionAnchor3, -1, paramConstraintWidget.getResolutionWidth());
          localResolutionAnchor3.setOpposite(localResolutionAnchor1, 1, paramConstraintWidget.getResolutionWidth());
        }
        else
        {
          localResolutionAnchor1.setOpposite(localResolutionAnchor3, -paramConstraintWidget.getWidth());
          localResolutionAnchor3.setOpposite(localResolutionAnchor1, paramConstraintWidget.getWidth());
        }
      }
    }
    if ((mListDimensionBehaviors[1] == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) && (a(paramConstraintWidget, 1))) {
      i = 1;
    } else {
      i = 0;
    }
    if ((g != 4) && (g != 4)) {
      if ((mListDimensionBehaviors[1] != ConstraintWidget.DimensionBehaviour.FIXED) && ((i == 0) || (paramConstraintWidget.getVisibility() != 8)))
      {
        if (i != 0)
        {
          i = paramConstraintWidget.getHeight();
          localResolutionAnchor2.setType(1);
          localResolutionAnchor4.setType(1);
          if ((r.c == null) && (t.c == null))
          {
            if (paramInt != 0)
            {
              localResolutionAnchor4.dependsOn(localResolutionAnchor2, 1, paramConstraintWidget.getResolutionHeight());
              return;
            }
            localResolutionAnchor4.dependsOn(localResolutionAnchor2, i);
            return;
          }
          if ((r.c != null) && (t.c == null))
          {
            if (paramInt != 0)
            {
              localResolutionAnchor4.dependsOn(localResolutionAnchor2, 1, paramConstraintWidget.getResolutionHeight());
              return;
            }
            localResolutionAnchor4.dependsOn(localResolutionAnchor2, i);
            return;
          }
          if ((r.c == null) && (t.c != null))
          {
            if (paramInt != 0)
            {
              localResolutionAnchor2.dependsOn(localResolutionAnchor4, -1, paramConstraintWidget.getResolutionHeight());
              return;
            }
            localResolutionAnchor2.dependsOn(localResolutionAnchor4, -i);
            return;
          }
          if ((r.c != null) && (t.c != null))
          {
            if (paramInt != 0)
            {
              paramConstraintWidget.getResolutionHeight().addDependent(localResolutionAnchor2);
              paramConstraintWidget.getResolutionWidth().addDependent(localResolutionAnchor4);
            }
            if (mDimensionRatio == 0.0F)
            {
              localResolutionAnchor2.setType(3);
              localResolutionAnchor4.setType(3);
              localResolutionAnchor2.setOpposite(localResolutionAnchor4, 0.0F);
              localResolutionAnchor4.setOpposite(localResolutionAnchor2, 0.0F);
              return;
            }
            localResolutionAnchor2.setType(2);
            localResolutionAnchor4.setType(2);
            localResolutionAnchor2.setOpposite(localResolutionAnchor4, -i);
            localResolutionAnchor4.setOpposite(localResolutionAnchor2, i);
            paramConstraintWidget.setHeight(i);
            if (D > 0) {
              u.getResolutionNode().dependsOn(1, localResolutionAnchor2, D);
            }
          }
        }
      }
      else if ((r.c == null) && (t.c == null))
      {
        localResolutionAnchor2.setType(1);
        localResolutionAnchor4.setType(1);
        if (paramInt != 0) {
          localResolutionAnchor4.dependsOn(localResolutionAnchor2, 1, paramConstraintWidget.getResolutionHeight());
        } else {
          localResolutionAnchor4.dependsOn(localResolutionAnchor2, paramConstraintWidget.getHeight());
        }
        if (u.c != null)
        {
          u.getResolutionNode().setType(1);
          localResolutionAnchor2.dependsOn(1, u.getResolutionNode(), -D);
        }
      }
      else if ((r.c != null) && (t.c == null))
      {
        localResolutionAnchor2.setType(1);
        localResolutionAnchor4.setType(1);
        if (paramInt != 0) {
          localResolutionAnchor4.dependsOn(localResolutionAnchor2, 1, paramConstraintWidget.getResolutionHeight());
        } else {
          localResolutionAnchor4.dependsOn(localResolutionAnchor2, paramConstraintWidget.getHeight());
        }
        if (D > 0) {
          u.getResolutionNode().dependsOn(1, localResolutionAnchor2, D);
        }
      }
      else if ((r.c == null) && (t.c != null))
      {
        localResolutionAnchor2.setType(1);
        localResolutionAnchor4.setType(1);
        if (paramInt != 0) {
          localResolutionAnchor2.dependsOn(localResolutionAnchor4, -1, paramConstraintWidget.getResolutionHeight());
        } else {
          localResolutionAnchor2.dependsOn(localResolutionAnchor4, -paramConstraintWidget.getHeight());
        }
        if (D > 0) {
          u.getResolutionNode().dependsOn(1, localResolutionAnchor2, D);
        }
      }
      else if ((r.c != null) && (t.c != null))
      {
        localResolutionAnchor2.setType(2);
        localResolutionAnchor4.setType(2);
        if (paramInt != 0)
        {
          localResolutionAnchor2.setOpposite(localResolutionAnchor4, -1, paramConstraintWidget.getResolutionHeight());
          localResolutionAnchor4.setOpposite(localResolutionAnchor2, 1, paramConstraintWidget.getResolutionHeight());
          paramConstraintWidget.getResolutionHeight().addDependent(localResolutionAnchor2);
          paramConstraintWidget.getResolutionWidth().addDependent(localResolutionAnchor4);
        }
        else
        {
          localResolutionAnchor2.setOpposite(localResolutionAnchor4, -paramConstraintWidget.getHeight());
          localResolutionAnchor4.setOpposite(localResolutionAnchor2, paramConstraintWidget.getHeight());
        }
        if (D > 0) {
          u.getResolutionNode().dependsOn(1, localResolutionAnchor2, D);
        }
      }
    }
  }
  
  static void a(ConstraintWidget paramConstraintWidget, int paramInt1, int paramInt2)
  {
    int i = paramInt1 * 2;
    int j = i + 1;
    mListAnchors[i].getResolutionNode().e = getParentq.getResolutionNode();
    mListAnchors[i].getResolutionNode().f = paramInt2;
    mListAnchors[i].getResolutionNode().i = 1;
    mListAnchors[j].getResolutionNode().e = mListAnchors[i].getResolutionNode();
    mListAnchors[j].getResolutionNode().f = paramConstraintWidget.getLength(paramInt1);
    mListAnchors[j].getResolutionNode().i = 1;
  }
  
  static void a(ConstraintWidgetContainer paramConstraintWidgetContainer, LinearSystem paramLinearSystem, ConstraintWidget paramConstraintWidget)
  {
    int i;
    int j;
    if ((mListDimensionBehaviors[0] != ConstraintWidget.DimensionBehaviour.WRAP_CONTENT) && (mListDimensionBehaviors[0] == ConstraintWidget.DimensionBehaviour.MATCH_PARENT))
    {
      i = q.mMargin;
      j = paramConstraintWidgetContainer.getWidth() - s.mMargin;
      q.e = paramLinearSystem.createObjectVariable(q);
      s.e = paramLinearSystem.createObjectVariable(s);
      paramLinearSystem.addEquality(q.e, i);
      paramLinearSystem.addEquality(s.e, j);
      mHorizontalResolution = 2;
      paramConstraintWidget.setHorizontalDimension(i, j);
    }
    if ((mListDimensionBehaviors[1] != ConstraintWidget.DimensionBehaviour.WRAP_CONTENT) && (mListDimensionBehaviors[1] == ConstraintWidget.DimensionBehaviour.MATCH_PARENT))
    {
      i = r.mMargin;
      j = paramConstraintWidgetContainer.getHeight() - t.mMargin;
      r.e = paramLinearSystem.createObjectVariable(r);
      t.e = paramLinearSystem.createObjectVariable(t);
      paramLinearSystem.addEquality(r.e, i);
      paramLinearSystem.addEquality(t.e, j);
      if ((D > 0) || (paramConstraintWidget.getVisibility() == 8))
      {
        u.e = paramLinearSystem.createObjectVariable(u);
        paramLinearSystem.addEquality(u.e, D + i);
      }
      mVerticalResolution = 2;
      paramConstraintWidget.setVerticalDimension(i, j);
    }
  }
  
  private static boolean a(ConstraintWidget paramConstraintWidget, int paramInt)
  {
    if (mListDimensionBehaviors[paramInt] != ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
      return false;
    }
    float f = mDimensionRatio;
    int i = 1;
    if (f != 0.0F)
    {
      paramConstraintWidget = mListDimensionBehaviors;
      if (paramInt == 0) {
        paramInt = i;
      } else {
        paramInt = 0;
      }
      return paramConstraintWidget[paramInt] != ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT;
    }
    if (paramInt == 0)
    {
      if (c != 0) {
        return false;
      }
      if ((paramConstraintWidget.f != 0) || (g != 0)) {
        return false;
      }
    }
    else
    {
      if (d != 0) {
        return false;
      }
      if (paramConstraintWidget.i != 0) {
        break label112;
      }
      if (j != 0) {
        return false;
      }
    }
    return true;
    label112:
    return false;
  }
  
  static boolean a(ConstraintWidgetContainer paramConstraintWidgetContainer, LinearSystem paramLinearSystem, int paramInt1, int paramInt2, ChainHead paramChainHead)
  {
    Object localObject1 = mFirst;
    ConstraintWidget localConstraintWidget1 = mLast;
    Object localObject3 = mFirstVisibleWidget;
    ConstraintWidget localConstraintWidget2 = mLastVisibleWidget;
    Object localObject2 = mHead;
    float f6 = mTotalWeight;
    ConstraintWidget localConstraintWidget3 = mFirstMatchConstraintWidget;
    paramChainHead = mLastMatchConstraintWidget;
    paramConstraintWidgetContainer = mListDimensionBehaviors[paramInt1];
    paramConstraintWidgetContainer = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
    int i;
    int j;
    int k;
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
      m = i;
      k = j;
      if (L == 2)
      {
        k = j;
        m = i;
      }
    }
    for (;;)
    {
      i = 1;
      j = m;
      break;
      do
      {
        i = 0;
        j = m;
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
        m = i;
        k = j;
      } while (M != 2);
      m = i;
      k = j;
    }
    paramChainHead = (ChainHead)localObject1;
    int i1 = 0;
    int n = 0;
    int m = 0;
    float f5 = 0.0F;
    float f3 = 0.0F;
    float f1;
    float f2;
    while (m == 0)
    {
      int i2 = n;
      f1 = f5;
      f2 = f3;
      if (paramChainHead.getVisibility() != 8)
      {
        i2 = n + 1;
        if (paramInt1 == 0) {
          f1 = f5 + paramChainHead.getWidth();
        } else {
          f1 = f5 + paramChainHead.getHeight();
        }
        f2 = f1;
        if (paramChainHead != localObject3) {
          f2 = f1 + mListAnchors[paramInt2].getMargin();
        }
        f1 = f2;
        if (paramChainHead != localConstraintWidget2) {
          f1 = f2 + mListAnchors[(paramInt2 + 1)].getMargin();
        }
        f2 = f3 + mListAnchors[paramInt2].getMargin() + mListAnchors[(paramInt2 + 1)].getMargin();
      }
      paramConstraintWidgetContainer = mListAnchors[paramInt2];
      n = i1;
      if (paramChainHead.getVisibility() != 8)
      {
        n = i1;
        if (mListDimensionBehaviors[paramInt1] == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT)
        {
          n = i1 + 1;
          if (paramInt1 == 0)
          {
            if (c != 0) {
              return false;
            }
            if ((f != 0) || (g != 0)) {
              return false;
            }
          }
          else
          {
            if (d != 0) {
              return false;
            }
            if (i != 0) {
              break label498;
            }
            if (j != 0) {
              return false;
            }
          }
          if (mDimensionRatio != 0.0F)
          {
            return false;
            label498:
            return false;
          }
        }
      }
      paramConstraintWidgetContainer = mListAnchors[(paramInt2 + 1)].c;
      if (paramConstraintWidgetContainer != null)
      {
        paramConstraintWidgetContainer = a;
        if ((mListAnchors[paramInt2].c != null) && (mListAnchors[paramInt2].c.a == paramChainHead)) {
          break label559;
        }
      }
      paramConstraintWidgetContainer = null;
      label559:
      if (paramConstraintWidgetContainer != null)
      {
        i1 = n;
        n = i2;
        paramChainHead = paramConstraintWidgetContainer;
        f5 = f1;
        f3 = f2;
      }
      else
      {
        m = 1;
        i1 = n;
        n = i2;
        f5 = f1;
        f3 = f2;
      }
    }
    localObject2 = mListAnchors[paramInt2].getResolutionNode();
    paramConstraintWidgetContainer = mListAnchors;
    m = paramInt2 + 1;
    paramConstraintWidgetContainer = paramConstraintWidgetContainer[m].getResolutionNode();
    if ((c != null) && (c != null))
    {
      if ((c.i == 1) && (c.i == 1))
      {
        if ((i1 > 0) && (i1 != n)) {
          return false;
        }
        if ((i == 0) && (j == 0) && (k == 0))
        {
          f1 = 0.0F;
        }
        else
        {
          if (localObject3 != null) {
            f2 = mListAnchors[paramInt2].getMargin();
          } else {
            f2 = 0.0F;
          }
          f1 = f2;
          if (localConstraintWidget2 != null) {
            f1 = f2 + mListAnchors[m].getMargin();
          }
        }
        float f4 = c.f;
        f2 = c.f;
        if (f4 < f2) {
          f2 = f2 - f4 - f5;
        } else {
          f2 = f4 - f2 - f5;
        }
        if ((i1 > 0) && (i1 == n))
        {
          if ((paramChainHead.getParent() != null) && (getParentmListDimensionBehaviors[paramInt1] == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT)) {
            return false;
          }
          f2 = f2 + f5 - f3;
          for (paramConstraintWidgetContainer = (ConstraintWidgetContainer)localObject1; paramConstraintWidgetContainer != null; paramConstraintWidgetContainer = paramChainHead)
          {
            if (LinearSystem.sMetrics != null)
            {
              paramChainHead = LinearSystem.sMetrics;
              nonresolvedWidgets -= 1L;
              paramChainHead = LinearSystem.sMetrics;
              resolvedWidgets += 1L;
              paramChainHead = LinearSystem.sMetrics;
              chainConnectionResolved += 1L;
            }
            paramChainHead = mNextChainWidget[paramInt1];
            if ((paramChainHead == null) && (paramConstraintWidgetContainer != localConstraintWidget1)) {
              continue;
            }
            f1 = f2 / i1;
            if (f6 > 0.0F) {
              if (P[paramInt1] == -1.0F) {
                f1 = 0.0F;
              } else {
                f1 = P[paramInt1] * f2 / f6;
              }
            }
            if (paramConstraintWidgetContainer.getVisibility() == 8) {
              f1 = 0.0F;
            }
            f3 = f4 + mListAnchors[paramInt2].getMargin();
            mListAnchors[paramInt2].getResolutionNode().resolve(e, f3);
            localObject1 = mListAnchors[m].getResolutionNode();
            localObject3 = e;
            f1 = f3 + f1;
            ((ResolutionAnchor)localObject1).resolve((ResolutionAnchor)localObject3, f1);
            mListAnchors[paramInt2].getResolutionNode().a(paramLinearSystem);
            mListAnchors[m].getResolutionNode().a(paramLinearSystem);
            f4 = f1 + mListAnchors[m].getMargin();
          }
          return true;
        }
        if (f2 < 0.0F)
        {
          i = 1;
          j = 0;
          k = 0;
        }
        if (i != 0)
        {
          paramConstraintWidgetContainer = (ConstraintWidgetContainer)localObject1;
          for (f1 = f4 + (f2 - f1) * paramConstraintWidgetContainer.getBiasPercent(paramInt1); paramConstraintWidgetContainer != null; f1 = f2)
          {
            if (LinearSystem.sMetrics != null)
            {
              paramChainHead = LinearSystem.sMetrics;
              nonresolvedWidgets -= 1L;
              paramChainHead = LinearSystem.sMetrics;
              resolvedWidgets += 1L;
              paramChainHead = LinearSystem.sMetrics;
              chainConnectionResolved += 1L;
            }
            paramChainHead = mNextChainWidget[paramInt1];
            if (paramChainHead == null)
            {
              f2 = f1;
              if (paramConstraintWidgetContainer != localConstraintWidget1) {}
            }
            else
            {
              if (paramInt1 == 0) {
                f2 = paramConstraintWidgetContainer.getWidth();
              } else {
                f2 = paramConstraintWidgetContainer.getHeight();
              }
              f1 += mListAnchors[paramInt2].getMargin();
              mListAnchors[paramInt2].getResolutionNode().resolve(e, f1);
              localObject1 = mListAnchors[m].getResolutionNode();
              localObject3 = e;
              f1 += f2;
              ((ResolutionAnchor)localObject1).resolve((ResolutionAnchor)localObject3, f1);
              mListAnchors[paramInt2].getResolutionNode().a(paramLinearSystem);
              mListAnchors[m].getResolutionNode().a(paramLinearSystem);
              f2 = f1 + mListAnchors[m].getMargin();
            }
            paramConstraintWidgetContainer = paramChainHead;
          }
        }
        for (;;)
        {
          return true;
          if ((j != 0) || (k != 0))
          {
            if (j != 0)
            {
              f3 = f2 - f1;
            }
            else
            {
              f3 = f2;
              if (k != 0) {
                f3 = f2 - f1;
              }
            }
            f2 = f3 / (n + 1);
            if (k != 0) {
              if (n > 1) {
                f2 = f3 / (n - 1);
              } else {
                f2 = f3 / 2.0F;
              }
            }
            if (((ConstraintWidget)localObject1).getVisibility() != 8) {
              f1 = f4 + f2;
            } else {
              f1 = f4;
            }
            f3 = f1;
            if (k != 0)
            {
              f3 = f1;
              if (n > 1) {
                f3 = mListAnchors[paramInt2].getMargin() + f4;
              }
            }
            paramConstraintWidgetContainer = (ConstraintWidgetContainer)localObject1;
            f1 = f3;
            if (j != 0)
            {
              paramConstraintWidgetContainer = (ConstraintWidgetContainer)localObject1;
              f1 = f3;
              if (localObject3 != null) {
                f1 = f3 + mListAnchors[paramInt2].getMargin();
              }
            }
            for (paramConstraintWidgetContainer = (ConstraintWidgetContainer)localObject1; paramConstraintWidgetContainer != null; paramConstraintWidgetContainer = paramChainHead)
            {
              if (LinearSystem.sMetrics != null)
              {
                paramChainHead = LinearSystem.sMetrics;
                nonresolvedWidgets -= 1L;
                paramChainHead = LinearSystem.sMetrics;
                resolvedWidgets += 1L;
                paramChainHead = LinearSystem.sMetrics;
                chainConnectionResolved += 1L;
              }
              paramChainHead = mNextChainWidget[paramInt1];
              if (paramChainHead == null)
              {
                f3 = f1;
                if (paramConstraintWidgetContainer == localConstraintWidget1) {}
              }
              do
              {
                f1 = f3;
                break;
                if (paramInt1 == 0) {
                  f3 = paramConstraintWidgetContainer.getWidth();
                } else {
                  f3 = paramConstraintWidgetContainer.getHeight();
                }
                f4 = f1;
                if (paramConstraintWidgetContainer != localObject3) {
                  f4 = f1 + mListAnchors[paramInt2].getMargin();
                }
                mListAnchors[paramInt2].getResolutionNode().resolve(e, f4);
                mListAnchors[m].getResolutionNode().resolve(e, f4 + f3);
                mListAnchors[paramInt2].getResolutionNode().a(paramLinearSystem);
                mListAnchors[m].getResolutionNode().a(paramLinearSystem);
                f4 += f3 + mListAnchors[m].getMargin();
                f3 = f4;
              } while (paramChainHead == null);
              f1 = f4;
              if (paramChainHead.getVisibility() != 8) {
                f1 = f4 + f2;
              }
            }
          }
        }
      }
      return false;
    }
    return false;
  }
}
