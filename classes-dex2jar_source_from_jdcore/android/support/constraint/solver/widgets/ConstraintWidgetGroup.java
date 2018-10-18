package android.support.constraint.solver.widgets;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

public class ConstraintWidgetGroup
{
  int a = -1;
  int b = -1;
  List<ConstraintWidget> c = new ArrayList();
  List<ConstraintWidget> d = new ArrayList();
  HashSet<ConstraintWidget> e = new HashSet();
  HashSet<ConstraintWidget> f = new HashSet();
  List<ConstraintWidget> g = new ArrayList();
  List<ConstraintWidget> h = new ArrayList();
  public List<ConstraintWidget> mConstrainedGroup;
  public final int[] mGroupDimensions = { a, b };
  public boolean mSkipSolver = false;
  
  ConstraintWidgetGroup(List<ConstraintWidget> paramList)
  {
    mConstrainedGroup = paramList;
  }
  
  ConstraintWidgetGroup(List<ConstraintWidget> paramList, boolean paramBoolean)
  {
    mConstrainedGroup = paramList;
    mSkipSolver = paramBoolean;
  }
  
  private void a(ConstraintWidget paramConstraintWidget)
  {
    if (I)
    {
      if (paramConstraintWidget.isFullyResolved()) {
        return;
      }
      ConstraintAnchor localConstraintAnchor = s.c;
      int k = 0;
      if (localConstraintAnchor != null) {
        j = 1;
      } else {
        j = 0;
      }
      if (j != 0) {
        localConstraintAnchor = s.c;
      } else {
        localConstraintAnchor = q.c;
      }
      if (localConstraintAnchor != null)
      {
        if (!a.J) {
          a(a);
        }
        if (b == ConstraintAnchor.Type.RIGHT)
        {
          i = a.mX;
          i = a.getWidth() + i;
          break label148;
        }
        if (b == ConstraintAnchor.Type.LEFT)
        {
          i = a.mX;
          break label148;
        }
      }
      int i = 0;
      label148:
      if (j != 0) {
        i -= s.getMargin();
      } else {
        i += q.getMargin() + paramConstraintWidget.getWidth();
      }
      paramConstraintWidget.setHorizontalDimension(i - paramConstraintWidget.getWidth(), i);
      if (u.c != null)
      {
        localConstraintAnchor = u.c;
        if (!a.J) {
          a(a);
        }
        i = a.mY + a.D - D;
        paramConstraintWidget.setVerticalDimension(i, A + i);
        J = true;
        return;
      }
      if (t.c != null) {
        k = 1;
      }
      if (k != 0) {
        localConstraintAnchor = t.c;
      } else {
        localConstraintAnchor = r.c;
      }
      int j = i;
      if (localConstraintAnchor != null)
      {
        if (!a.J) {
          a(a);
        }
        if (b == ConstraintAnchor.Type.BOTTOM)
        {
          j = a.mY + a.getHeight();
        }
        else
        {
          j = i;
          if (b == ConstraintAnchor.Type.TOP) {
            j = a.mY;
          }
        }
      }
      if (k != 0) {
        i = j - t.getMargin();
      } else {
        i = j + (r.getMargin() + paramConstraintWidget.getHeight());
      }
      paramConstraintWidget.setVerticalDimension(i - paramConstraintWidget.getHeight(), i);
      J = true;
    }
  }
  
  private void a(ArrayList<ConstraintWidget> paramArrayList, ConstraintWidget paramConstraintWidget)
  {
    if (K) {
      return;
    }
    paramArrayList.add(paramConstraintWidget);
    K = true;
    if (paramConstraintWidget.isFullyResolved()) {
      return;
    }
    boolean bool = paramConstraintWidget instanceof Helper;
    int j = 0;
    Object localObject;
    if (bool)
    {
      localObject = (Helper)paramConstraintWidget;
      k = mWidgetsCount;
      i = 0;
      while (i < k)
      {
        a(paramArrayList, mWidgets[i]);
        i += 1;
      }
    }
    int k = mListAnchors.length;
    int i = j;
    while (i < k)
    {
      localObject = mListAnchors[i].c;
      if (localObject != null)
      {
        ConstraintWidget localConstraintWidget = a;
        if ((localObject != null) && (localConstraintWidget != paramConstraintWidget.getParent())) {
          a(paramArrayList, localConstraintWidget);
        }
      }
      i += 1;
    }
  }
  
  List<ConstraintWidget> a()
  {
    if (!g.isEmpty()) {
      return g;
    }
    int j = mConstrainedGroup.size();
    int i = 0;
    while (i < j)
    {
      ConstraintWidget localConstraintWidget = (ConstraintWidget)mConstrainedGroup.get(i);
      if (!I) {
        a((ArrayList)g, localConstraintWidget);
      }
      i += 1;
    }
    h.clear();
    h.addAll(mConstrainedGroup);
    h.removeAll(g);
    return g;
  }
  
  Set<ConstraintWidget> a(int paramInt)
  {
    if (paramInt == 0) {
      return e;
    }
    if (paramInt == 1) {
      return f;
    }
    return null;
  }
  
  void a(ConstraintWidget paramConstraintWidget, int paramInt)
  {
    if (paramInt == 0)
    {
      e.add(paramConstraintWidget);
      return;
    }
    if (paramInt == 1) {
      f.add(paramConstraintWidget);
    }
  }
  
  void b()
  {
    int j = h.size();
    int i = 0;
    while (i < j)
    {
      a((ConstraintWidget)h.get(i));
      i += 1;
    }
  }
  
  public List<ConstraintWidget> getStartWidgets(int paramInt)
  {
    if (paramInt == 0) {
      return c;
    }
    if (paramInt == 1) {
      return d;
    }
    return null;
  }
}
