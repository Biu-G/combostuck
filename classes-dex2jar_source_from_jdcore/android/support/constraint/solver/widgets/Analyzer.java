package android.support.constraint.solver.widgets;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

public class Analyzer
{
  private Analyzer() {}
  
  private static int a(ConstraintWidget paramConstraintWidget)
  {
    int i;
    if (paramConstraintWidget.getHorizontalDimensionBehaviour() == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT)
    {
      if (mDimensionRatioSide == 0) {
        i = (int)(paramConstraintWidget.getHeight() * mDimensionRatio);
      } else {
        i = (int)(paramConstraintWidget.getHeight() / mDimensionRatio);
      }
      paramConstraintWidget.setWidth(i);
      return i;
    }
    if (paramConstraintWidget.getVerticalDimensionBehaviour() == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT)
    {
      if (mDimensionRatioSide == 1) {
        i = (int)(paramConstraintWidget.getWidth() * mDimensionRatio);
      } else {
        i = (int)(paramConstraintWidget.getWidth() / mDimensionRatio);
      }
      paramConstraintWidget.setHeight(i);
      return i;
    }
    return -1;
  }
  
  private static int a(ConstraintWidget paramConstraintWidget, int paramInt)
  {
    int i = paramInt * 2;
    ConstraintAnchor localConstraintAnchor1 = mListAnchors[i];
    ConstraintAnchor localConstraintAnchor2 = mListAnchors[(i + 1)];
    if ((c != null) && (c.a == y) && (c != null) && (c.a == y))
    {
      i = y.getLength(paramInt);
      float f;
      if (paramInt == 0) {
        f = E;
      } else {
        f = F;
      }
      paramInt = paramConstraintWidget.getLength(paramInt);
      return (int)((i - localConstraintAnchor1.getMargin() - localConstraintAnchor2.getMargin() - paramInt) * f);
    }
    return 0;
  }
  
  private static int a(ConstraintWidget paramConstraintWidget, int paramInt1, boolean paramBoolean, int paramInt2)
  {
    boolean bool = I;
    int i3 = 0;
    if (!bool) {
      return 0;
    }
    if ((u.c != null) && (paramInt1 == 1)) {
      k = 1;
    } else {
      k = 0;
    }
    int j;
    int i;
    if (paramBoolean)
    {
      n = paramConstraintWidget.getBaselineDistance();
      i1 = paramConstraintWidget.getHeight() - paramConstraintWidget.getBaselineDistance();
      j = paramInt1 * 2;
      i = j + 1;
    }
    else
    {
      n = paramConstraintWidget.getHeight() - paramConstraintWidget.getBaselineDistance();
      i1 = paramConstraintWidget.getBaselineDistance();
      i = paramInt1 * 2;
      j = i + 1;
    }
    int m;
    if ((mListAnchors[i].c != null) && (mListAnchors[j].c == null))
    {
      i2 = j;
      m = -1;
      j = i;
      i = i2;
    }
    else
    {
      m = 1;
    }
    if (k != 0) {
      paramInt2 -= n;
    }
    int i5 = mListAnchors[j].getMargin() * m + a(paramConstraintWidget, paramInt1);
    int i2 = paramInt2 + i5;
    if (paramInt1 == 0) {
      paramInt2 = paramConstraintWidget.getWidth();
    } else {
      paramInt2 = paramConstraintWidget.getHeight();
    }
    int i6 = paramInt2 * m;
    Object localObject = mListAnchors[j].getResolutionNode().h.iterator();
    for (paramInt2 = i3; ((Iterator)localObject).hasNext(); paramInt2 = Math.max(paramInt2, a(nexta.a, paramInt1, paramBoolean, i2))) {}
    localObject = mListAnchors[i].getResolutionNode().h.iterator();
    for (i3 = 0; ((Iterator)localObject).hasNext(); i3 = Math.max(i3, a(nexta.a, paramInt1, paramBoolean, i6 + i2))) {}
    int i4;
    if (k != 0)
    {
      paramInt2 -= n;
      i4 = i3 + i1;
    }
    for (i3 = paramInt2;; i3 = paramInt2)
    {
      break;
      if (paramInt1 == 0) {
        i4 = paramConstraintWidget.getWidth();
      } else {
        i4 = paramConstraintWidget.getHeight();
      }
      i4 = i3 + i4 * m;
    }
    if (paramInt1 == 1)
    {
      localObject = u.getResolutionNode().h.iterator();
      paramInt2 = 0;
      while (((Iterator)localObject).hasNext())
      {
        ResolutionAnchor localResolutionAnchor = (ResolutionAnchor)((Iterator)localObject).next();
        if (m == 1) {
          paramInt2 = Math.max(paramInt2, a(a.a, paramInt1, paramBoolean, n + i2));
        } else {
          paramInt2 = Math.max(paramInt2, a(a.a, paramInt1, paramBoolean, i1 * m + i2));
        }
      }
      if ((u.getResolutionNode().h.size() > 0) && (k == 0)) {
        if (m == 1) {
          paramInt2 += n;
        } else {
          paramInt2 -= i1;
        }
      }
    }
    else
    {
      paramInt2 = 0;
    }
    int i1 = Math.max(i3, Math.max(i4, paramInt2));
    int k = i2 + i6;
    int n = k;
    paramInt2 = i2;
    if (m == -1)
    {
      paramInt2 = k;
      n = i2;
    }
    if (paramBoolean)
    {
      Optimizer.a(paramConstraintWidget, paramInt1, paramInt2);
      paramConstraintWidget.setFrame(paramInt2, n, paramInt1);
    }
    else
    {
      p.a(paramConstraintWidget, paramInt1);
      paramConstraintWidget.a(paramInt2, paramInt1);
    }
    if ((paramConstraintWidget.getDimensionBehaviour(paramInt1) == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) && (mDimensionRatio != 0.0F)) {
      p.a(paramConstraintWidget, paramInt1);
    }
    if ((mListAnchors[j].c != null) && (mListAnchors[i].c != null))
    {
      localObject = paramConstraintWidget.getParent();
      if ((mListAnchors[j].c.a == localObject) && (mListAnchors[i].c.a == localObject)) {
        p.a(paramConstraintWidget, paramInt1);
      }
    }
    return i5 + i1;
  }
  
  private static int a(ConstraintWidgetGroup paramConstraintWidgetGroup, int paramInt)
  {
    int k = paramInt * 2;
    List localList = paramConstraintWidgetGroup.getStartWidgets(paramInt);
    int m = localList.size();
    int i = 0;
    int j = 0;
    while (i < m)
    {
      ConstraintWidget localConstraintWidget = (ConstraintWidget)localList.get(i);
      ConstraintAnchor[] arrayOfConstraintAnchor = mListAnchors;
      int n = k + 1;
      boolean bool;
      if ((c != null) && ((mListAnchors[k].c == null) || (mListAnchors[n].c == null))) {
        bool = false;
      } else {
        bool = true;
      }
      j = Math.max(j, a(localConstraintWidget, paramInt, bool, 0));
      i += 1;
    }
    mGroupDimensions[paramInt] = j;
    return j;
  }
  
  private static void a(ConstraintAnchor paramConstraintAnchor)
  {
    ResolutionAnchor localResolutionAnchor = paramConstraintAnchor.getResolutionNode();
    if ((c != null) && (c.c != paramConstraintAnchor)) {
      c.getResolutionNode().addDependent(localResolutionAnchor);
    }
  }
  
  private static void a(ConstraintWidget paramConstraintWidget, int paramInt1, int paramInt2)
  {
    int j = paramInt1 * 2;
    ConstraintAnchor localConstraintAnchor1 = mListAnchors[j];
    ConstraintAnchor localConstraintAnchor2 = mListAnchors[(j + 1)];
    if ((c != null) && (c != null)) {
      i = 1;
    } else {
      i = 0;
    }
    if (i != 0)
    {
      Optimizer.a(paramConstraintWidget, paramInt1, a(paramConstraintWidget, paramInt1) + localConstraintAnchor1.getMargin());
      return;
    }
    if ((mDimensionRatio != 0.0F) && (paramConstraintWidget.getDimensionBehaviour(paramInt1) == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT))
    {
      paramInt2 = a(paramConstraintWidget);
      i = (int)mListAnchors[j].getResolutionNode().f;
      getResolutionNodee = localConstraintAnchor1.getResolutionNode();
      getResolutionNodef = paramInt2;
      getResolutionNodei = 1;
      paramConstraintWidget.setFrame(i, i + paramInt2, paramInt1);
      return;
    }
    paramInt2 -= paramConstraintWidget.a(paramInt1);
    int i = paramInt2 - paramConstraintWidget.getLength(paramInt1);
    paramConstraintWidget.setFrame(i, paramInt2, paramInt1);
    Optimizer.a(paramConstraintWidget, paramInt1, i);
  }
  
  private static void a(ConstraintWidgetContainer paramConstraintWidgetContainer)
  {
    mWidgetGroups.clear();
    mWidgetGroups.add(0, new ConstraintWidgetGroup(mChildren));
  }
  
  private static void a(ConstraintWidgetContainer paramConstraintWidgetContainer, ConstraintWidget paramConstraintWidget, ConstraintWidgetGroup paramConstraintWidgetGroup)
  {
    mSkipSolver = false;
    mSkipSolver = false;
    I = false;
  }
  
  private static boolean a(ConstraintWidget paramConstraintWidget, ConstraintWidgetGroup paramConstraintWidgetGroup, List<ConstraintWidgetGroup> paramList, boolean paramBoolean)
  {
    if (paramConstraintWidget == null) {
      return true;
    }
    J = false;
    ConstraintWidgetContainer localConstraintWidgetContainer = (ConstraintWidgetContainer)paramConstraintWidget.getParent();
    if (p == null)
    {
      I = true;
      mConstrainedGroup.add(paramConstraintWidget);
      p = paramConstraintWidgetGroup;
      if ((q.c == null) && (s.c == null) && (r.c == null) && (t.c == null) && (u.c == null) && (x.c == null))
      {
        a(localConstraintWidgetContainer, paramConstraintWidget, paramConstraintWidgetGroup);
        if (paramBoolean) {
          return false;
        }
      }
      Object localObject;
      if ((r.c != null) && (t.c != null))
      {
        localConstraintWidgetContainer.getVerticalDimensionBehaviour();
        localObject = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
        if (paramBoolean)
        {
          a(localConstraintWidgetContainer, paramConstraintWidget, paramConstraintWidgetGroup);
          return false;
        }
        if ((r.c.a != paramConstraintWidget.getParent()) || (t.c.a != paramConstraintWidget.getParent())) {
          a(localConstraintWidgetContainer, paramConstraintWidget, paramConstraintWidgetGroup);
        }
      }
      if ((q.c != null) && (s.c != null))
      {
        localConstraintWidgetContainer.getHorizontalDimensionBehaviour();
        localObject = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
        if (paramBoolean)
        {
          a(localConstraintWidgetContainer, paramConstraintWidget, paramConstraintWidgetGroup);
          return false;
        }
        if ((q.c.a != paramConstraintWidget.getParent()) || (s.c.a != paramConstraintWidget.getParent())) {
          a(localConstraintWidgetContainer, paramConstraintWidget, paramConstraintWidgetGroup);
        }
      }
      if (paramConstraintWidget.getHorizontalDimensionBehaviour() == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
        i = 1;
      } else {
        i = 0;
      }
      if (paramConstraintWidget.getVerticalDimensionBehaviour() == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
        j = 1;
      } else {
        j = 0;
      }
      if (((i ^ j) != 0) && (mDimensionRatio != 0.0F))
      {
        a(paramConstraintWidget);
      }
      else if ((paramConstraintWidget.getHorizontalDimensionBehaviour() == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) || (paramConstraintWidget.getVerticalDimensionBehaviour() == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT))
      {
        a(localConstraintWidgetContainer, paramConstraintWidget, paramConstraintWidgetGroup);
        if (paramBoolean) {
          return false;
        }
      }
      if (((q.c == null) && (s.c == null)) || ((q.c != null) && (q.c.a == y) && (s.c == null)) || ((s.c != null) && (s.c.a == y) && (q.c == null)) || ((q.c != null) && (q.c.a == y) && (s.c != null) && (s.c.a == y) && (x.c == null) && (!(paramConstraintWidget instanceof Guideline)) && (!(paramConstraintWidget instanceof Helper)))) {
        c.add(paramConstraintWidget);
      }
      if (((r.c == null) && (t.c == null)) || ((r.c != null) && (r.c.a == y) && (t.c == null)) || ((t.c != null) && (t.c.a == y) && (r.c == null)) || ((r.c != null) && (r.c.a == y) && (t.c != null) && (t.c.a == y) && (x.c == null) && (u.c == null) && (!(paramConstraintWidget instanceof Guideline)) && (!(paramConstraintWidget instanceof Helper)))) {
        d.add(paramConstraintWidget);
      }
      if ((paramConstraintWidget instanceof Helper))
      {
        a(localConstraintWidgetContainer, paramConstraintWidget, paramConstraintWidgetGroup);
        if (paramBoolean) {
          return false;
        }
        localObject = (Helper)paramConstraintWidget;
        i = 0;
        while (i < mWidgetsCount)
        {
          if (!a(mWidgets[i], paramConstraintWidgetGroup, paramList, paramBoolean)) {
            return false;
          }
          i += 1;
        }
      }
      int j = mListAnchors.length;
      int i = 0;
      while (i < j)
      {
        localObject = mListAnchors[i];
        if ((c != null) && (c.a != paramConstraintWidget.getParent()))
        {
          if (b == ConstraintAnchor.Type.CENTER)
          {
            a(localConstraintWidgetContainer, paramConstraintWidget, paramConstraintWidgetGroup);
            if (paramBoolean) {
              return false;
            }
          }
          else
          {
            a((ConstraintAnchor)localObject);
          }
          if (!a(c.a, paramConstraintWidgetGroup, paramList, paramBoolean)) {
            return false;
          }
        }
        i += 1;
      }
      return true;
    }
    if (p != paramConstraintWidgetGroup)
    {
      mConstrainedGroup.addAll(p.mConstrainedGroup);
      c.addAll(p.c);
      d.addAll(p.d);
      if (!p.mSkipSolver) {
        mSkipSolver = false;
      }
      paramList.remove(p);
      paramConstraintWidget = p.mConstrainedGroup.iterator();
      while (paramConstraintWidget.hasNext()) {
        nextp = paramConstraintWidgetGroup;
      }
    }
    return true;
  }
  
  private static boolean a(ConstraintWidget paramConstraintWidget, List<ConstraintWidgetGroup> paramList, boolean paramBoolean)
  {
    ConstraintWidgetGroup localConstraintWidgetGroup = new ConstraintWidgetGroup(new ArrayList(), true);
    paramList.add(localConstraintWidgetGroup);
    return a(paramConstraintWidget, localConstraintWidgetGroup, paramList, paramBoolean);
  }
  
  public static void determineGroups(ConstraintWidgetContainer paramConstraintWidgetContainer)
  {
    if ((paramConstraintWidgetContainer.getOptimizationLevel() & 0x20) != 32)
    {
      a(paramConstraintWidgetContainer);
      return;
    }
    mSkipSolver = true;
    mGroupsWrapOptimized = false;
    mHorizontalWrapOptimized = false;
    mVerticalWrapOptimized = false;
    Object localObject1 = mChildren;
    List localList = mWidgetGroups;
    int i;
    if (paramConstraintWidgetContainer.getHorizontalDimensionBehaviour() == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT) {
      i = 1;
    } else {
      i = 0;
    }
    int j;
    if (paramConstraintWidgetContainer.getVerticalDimensionBehaviour() == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT) {
      j = 1;
    } else {
      j = 0;
    }
    boolean bool;
    if ((i == 0) && (j == 0)) {
      bool = false;
    } else {
      bool = true;
    }
    localList.clear();
    Object localObject2 = ((List)localObject1).iterator();
    while (((Iterator)localObject2).hasNext())
    {
      ConstraintWidget localConstraintWidget = (ConstraintWidget)((Iterator)localObject2).next();
      p = null;
      K = false;
      localConstraintWidget.resetResolutionNodes();
    }
    localObject1 = ((List)localObject1).iterator();
    while (((Iterator)localObject1).hasNext())
    {
      localObject2 = (ConstraintWidget)((Iterator)localObject1).next();
      if ((p == null) && (!a((ConstraintWidget)localObject2, localList, bool)))
      {
        a(paramConstraintWidgetContainer);
        mSkipSolver = false;
        return;
      }
    }
    localObject1 = localList.iterator();
    int m = 0;
    for (int k = 0; ((Iterator)localObject1).hasNext(); k = Math.max(k, a((ConstraintWidgetGroup)localObject2, 1)))
    {
      localObject2 = (ConstraintWidgetGroup)((Iterator)localObject1).next();
      m = Math.max(m, a((ConstraintWidgetGroup)localObject2, 0));
    }
    if (i != 0)
    {
      paramConstraintWidgetContainer.setHorizontalDimensionBehaviour(ConstraintWidget.DimensionBehaviour.FIXED);
      paramConstraintWidgetContainer.setWidth(m);
      mGroupsWrapOptimized = true;
      mHorizontalWrapOptimized = true;
      mWrapFixedWidth = m;
    }
    if (j != 0)
    {
      paramConstraintWidgetContainer.setVerticalDimensionBehaviour(ConstraintWidget.DimensionBehaviour.FIXED);
      paramConstraintWidgetContainer.setHeight(k);
      mGroupsWrapOptimized = true;
      mVerticalWrapOptimized = true;
      mWrapFixedHeight = k;
    }
    setPosition(localList, 0, paramConstraintWidgetContainer.getWidth());
    setPosition(localList, 1, paramConstraintWidgetContainer.getHeight());
  }
  
  public static void setPosition(List<ConstraintWidgetGroup> paramList, int paramInt1, int paramInt2)
  {
    int j = paramList.size();
    int i = 0;
    while (i < j)
    {
      Iterator localIterator = ((ConstraintWidgetGroup)paramList.get(i)).a(paramInt1).iterator();
      while (localIterator.hasNext())
      {
        ConstraintWidget localConstraintWidget = (ConstraintWidget)localIterator.next();
        if (I) {
          a(localConstraintWidget, paramInt1, paramInt2);
        }
      }
      i += 1;
    }
  }
}
