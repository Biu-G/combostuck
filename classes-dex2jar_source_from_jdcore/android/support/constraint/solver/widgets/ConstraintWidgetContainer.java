package android.support.constraint.solver.widgets;

import android.support.constraint.solver.LinearSystem;
import android.support.constraint.solver.Metrics;
import java.io.PrintStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public class ConstraintWidgetContainer
  extends WidgetContainer
{
  int S;
  int T;
  int U;
  int V;
  int W = 0;
  int X = 0;
  ChainHead[] Y = new ChainHead[4];
  ChainHead[] Z = new ChainHead[4];
  int aa = 0;
  private boolean ab = false;
  private Snapshot ac;
  private int ad = 7;
  private boolean ae = false;
  private boolean af = false;
  public boolean mGroupsWrapOptimized = false;
  public boolean mHorizontalWrapOptimized = false;
  public boolean mSkipSolver = false;
  protected LinearSystem mSystem = new LinearSystem();
  public boolean mVerticalWrapOptimized = false;
  public List<ConstraintWidgetGroup> mWidgetGroups = new ArrayList();
  public int mWrapFixedHeight = 0;
  public int mWrapFixedWidth = 0;
  
  public ConstraintWidgetContainer() {}
  
  public ConstraintWidgetContainer(int paramInt1, int paramInt2)
  {
    super(paramInt1, paramInt2);
  }
  
  public ConstraintWidgetContainer(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super(paramInt1, paramInt2, paramInt3, paramInt4);
  }
  
  private void a()
  {
    W = 0;
    X = 0;
  }
  
  private void a(ConstraintWidget paramConstraintWidget)
  {
    if (W + 1 >= Z.length) {
      Z = ((ChainHead[])Arrays.copyOf(Z, Z.length * 2));
    }
    Z[W] = new ChainHead(paramConstraintWidget, 0, isRtl());
    W += 1;
  }
  
  private void b(ConstraintWidget paramConstraintWidget)
  {
    if (X + 1 >= Y.length) {
      Y = ((ChainHead[])Arrays.copyOf(Y, Y.length * 2));
    }
    Y[X] = new ChainHead(paramConstraintWidget, 1, isRtl());
    X += 1;
  }
  
  void a(ConstraintWidget paramConstraintWidget, int paramInt)
  {
    if (paramInt == 0)
    {
      a(paramConstraintWidget);
      return;
    }
    if (paramInt == 1) {
      b(paramConstraintWidget);
    }
  }
  
  public boolean addChildrenToSolver(LinearSystem paramLinearSystem)
  {
    addToSolver(paramLinearSystem);
    int j = mChildren.size();
    int i = 0;
    while (i < j)
    {
      ConstraintWidget localConstraintWidget = (ConstraintWidget)mChildren.get(i);
      if ((localConstraintWidget instanceof ConstraintWidgetContainer))
      {
        ConstraintWidget.DimensionBehaviour localDimensionBehaviour1 = mListDimensionBehaviors[0];
        ConstraintWidget.DimensionBehaviour localDimensionBehaviour2 = mListDimensionBehaviors[1];
        if (localDimensionBehaviour1 == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT) {
          localConstraintWidget.setHorizontalDimensionBehaviour(ConstraintWidget.DimensionBehaviour.FIXED);
        }
        if (localDimensionBehaviour2 == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT) {
          localConstraintWidget.setVerticalDimensionBehaviour(ConstraintWidget.DimensionBehaviour.FIXED);
        }
        localConstraintWidget.addToSolver(paramLinearSystem);
        if (localDimensionBehaviour1 == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT) {
          localConstraintWidget.setHorizontalDimensionBehaviour(localDimensionBehaviour1);
        }
        if (localDimensionBehaviour2 == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT) {
          localConstraintWidget.setVerticalDimensionBehaviour(localDimensionBehaviour2);
        }
      }
      else
      {
        Optimizer.a(this, paramLinearSystem, localConstraintWidget);
        localConstraintWidget.addToSolver(paramLinearSystem);
      }
      i += 1;
    }
    if (W > 0) {
      a.a(this, paramLinearSystem, 0);
    }
    if (X > 0) {
      a.a(this, paramLinearSystem, 1);
    }
    return true;
  }
  
  public void analyze(int paramInt)
  {
    super.analyze(paramInt);
    int j = mChildren.size();
    int i = 0;
    while (i < j)
    {
      ((ConstraintWidget)mChildren.get(i)).analyze(paramInt);
      i += 1;
    }
  }
  
  public void fillMetrics(Metrics paramMetrics)
  {
    mSystem.fillMetrics(paramMetrics);
  }
  
  public ArrayList<Guideline> getHorizontalGuidelines()
  {
    ArrayList localArrayList = new ArrayList();
    int j = mChildren.size();
    int i = 0;
    while (i < j)
    {
      Object localObject = (ConstraintWidget)mChildren.get(i);
      if ((localObject instanceof Guideline))
      {
        localObject = (Guideline)localObject;
        if (((Guideline)localObject).getOrientation() == 0) {
          localArrayList.add(localObject);
        }
      }
      i += 1;
    }
    return localArrayList;
  }
  
  public int getOptimizationLevel()
  {
    return ad;
  }
  
  public LinearSystem getSystem()
  {
    return mSystem;
  }
  
  public String getType()
  {
    return "ConstraintLayout";
  }
  
  public ArrayList<Guideline> getVerticalGuidelines()
  {
    ArrayList localArrayList = new ArrayList();
    int j = mChildren.size();
    int i = 0;
    while (i < j)
    {
      Object localObject = (ConstraintWidget)mChildren.get(i);
      if ((localObject instanceof Guideline))
      {
        localObject = (Guideline)localObject;
        if (((Guideline)localObject).getOrientation() == 1) {
          localArrayList.add(localObject);
        }
      }
      i += 1;
    }
    return localArrayList;
  }
  
  public List<ConstraintWidgetGroup> getWidgetGroups()
  {
    return mWidgetGroups;
  }
  
  public boolean handlesInternalConstraints()
  {
    return false;
  }
  
  public boolean isHeightMeasuredTooSmall()
  {
    return af;
  }
  
  public boolean isRtl()
  {
    return ab;
  }
  
  public boolean isWidthMeasuredTooSmall()
  {
    return ae;
  }
  
  public void layout()
  {
    int i5 = mX;
    int i6 = mY;
    int i7 = Math.max(0, getWidth());
    int i8 = Math.max(0, getHeight());
    ae = false;
    af = false;
    if (y != null)
    {
      if (ac == null) {
        ac = new Snapshot(this);
      }
      ac.updateFrom(this);
      setX(S);
      setY(T);
      resetAnchors();
      resetSolverVariables(mSystem.getCache());
    }
    else
    {
      mX = 0;
      mY = 0;
    }
    if (ad != 0)
    {
      if (!optimizeFor(8)) {
        optimizeReset();
      }
      if (!optimizeFor(32)) {
        optimize();
      }
      mSystem.graphOptimizer = true;
    }
    else
    {
      mSystem.graphOptimizer = false;
    }
    ConstraintWidget.DimensionBehaviour localDimensionBehaviour1 = mListDimensionBehaviors[1];
    ConstraintWidget.DimensionBehaviour localDimensionBehaviour2 = mListDimensionBehaviors[0];
    a();
    if (mWidgetGroups.size() == 0)
    {
      mWidgetGroups.clear();
      mWidgetGroups.add(0, new ConstraintWidgetGroup(mChildren));
    }
    int i = mWidgetGroups.size();
    ArrayList localArrayList = mChildren;
    int i1;
    if ((getHorizontalDimensionBehaviour() != ConstraintWidget.DimensionBehaviour.WRAP_CONTENT) && (getVerticalDimensionBehaviour() != ConstraintWidget.DimensionBehaviour.WRAP_CONTENT)) {
      i1 = 0;
    } else {
      i1 = 1;
    }
    int j = 0;
    int i2 = 0;
    int k;
    while ((i2 < i) && (!mSkipSolver))
    {
      if (!mWidgetGroups.get(i2)).mSkipSolver)
      {
        if (optimizeFor(32)) {
          if ((getHorizontalDimensionBehaviour() == ConstraintWidget.DimensionBehaviour.FIXED) && (getVerticalDimensionBehaviour() == ConstraintWidget.DimensionBehaviour.FIXED)) {
            mChildren = ((ArrayList)((ConstraintWidgetGroup)mWidgetGroups.get(i2)).a());
          } else {
            mChildren = ((ArrayList)mWidgetGroups.get(i2)).mConstrainedGroup);
          }
        }
        a();
        int i9 = mChildren.size();
        k = 0;
        ConstraintWidget localConstraintWidget1;
        while (k < i9)
        {
          localConstraintWidget1 = (ConstraintWidget)mChildren.get(k);
          if ((localConstraintWidget1 instanceof WidgetContainer)) {
            ((WidgetContainer)localConstraintWidget1).layout();
          }
          k += 1;
        }
        k = j;
        int m = 0;
        boolean bool1 = true;
        j = i;
        i = k;
        k = m;
        label610:
        label779:
        label1253:
        while (bool1)
        {
          m = k + 1;
          k = i;
          boolean bool2;
          try
          {
            mSystem.reset();
            k = i;
            a();
            k = i;
            createObjectVariables(mSystem);
            n = 0;
            for (;;)
            {
              if (n < i9)
              {
                k = i;
                localConstraintWidget1 = (ConstraintWidget)mChildren.get(n);
              }
              try
              {
                localConstraintWidget1.createObjectVariables(mSystem);
                n += 1;
              }
              catch (Exception localException2)
              {
                break label610;
              }
            }
            k = i;
            bool2 = addChildrenToSolver(mSystem);
            if (bool2) {
              try
              {
                mSystem.minimize();
              }
              catch (Exception localException1)
              {
                bool1 = bool2;
                i = k;
                break label610;
              }
            }
            i = k;
            bool1 = bool2;
          }
          catch (Exception localException3)
          {
            i = k;
          }
          localException3.printStackTrace();
          PrintStream localPrintStream = System.out;
          StringBuilder localStringBuilder = new StringBuilder();
          localStringBuilder.append("EXCEPTION : ");
          localStringBuilder.append(localException3);
          localPrintStream.println(localStringBuilder.toString());
          if (bool1) {
            updateChildrenFromSolver(mSystem, Optimizer.a);
          }
          ConstraintWidget localConstraintWidget2;
          for (;;)
          {
            break;
            updateFromSolver(mSystem);
            k = 0;
            for (;;)
            {
              if (k >= i9) {
                break label779;
              }
              localConstraintWidget2 = (ConstraintWidget)mChildren.get(k);
              if ((mListDimensionBehaviors[0] == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) && (localConstraintWidget2.getWidth() < localConstraintWidget2.getWrapWidth()))
              {
                Optimizer.a[2] = true;
                break;
              }
              if ((mListDimensionBehaviors[1] == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) && (localConstraintWidget2.getHeight() < localConstraintWidget2.getWrapHeight()))
              {
                Optimizer.a[2] = true;
                break;
              }
              k += 1;
            }
          }
          if ((i1 != 0) && (m < 8) && (Optimizer.a[2] != 0))
          {
            int i4 = 0;
            int i3 = 0;
            n = 0;
            k = m;
            m = i4;
            while (m < i9)
            {
              localConstraintWidget2 = (ConstraintWidget)mChildren.get(m);
              i3 = Math.max(i3, mX + localConstraintWidget2.getWidth());
              n = Math.max(n, mY + localConstraintWidget2.getHeight());
              m += 1;
            }
            i3 = Math.max(mMinWidth, i3);
            m = Math.max(mMinHeight, n);
            if ((localDimensionBehaviour2 == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT) && (getWidth() < i3))
            {
              setWidth(i3);
              mListDimensionBehaviors[0] = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
              bool1 = true;
              i = 1;
            }
            else
            {
              bool1 = false;
            }
            if ((localDimensionBehaviour1 == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT) && (getHeight() < m))
            {
              setHeight(m);
              mListDimensionBehaviors[1] = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
              bool1 = true;
              i = 1;
            }
          }
          else
          {
            k = m;
            bool1 = false;
          }
          m = Math.max(mMinWidth, getWidth());
          if (m > getWidth())
          {
            setWidth(m);
            mListDimensionBehaviors[0] = ConstraintWidget.DimensionBehaviour.FIXED;
            bool1 = true;
            i = 1;
          }
          m = Math.max(mMinHeight, getHeight());
          if (m > getHeight())
          {
            setHeight(m);
            mListDimensionBehaviors[1] = ConstraintWidget.DimensionBehaviour.FIXED;
            bool1 = true;
            i = 1;
          }
          boolean bool3 = bool1;
          int n = i;
          if (i == 0)
          {
            bool2 = bool1;
            m = i;
            if (mListDimensionBehaviors[0] == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT)
            {
              bool2 = bool1;
              m = i;
              if (i7 > 0)
              {
                bool2 = bool1;
                m = i;
                if (getWidth() > i7)
                {
                  ae = true;
                  mListDimensionBehaviors[0] = ConstraintWidget.DimensionBehaviour.FIXED;
                  setWidth(i7);
                  bool2 = true;
                  m = 1;
                }
              }
            }
            bool3 = bool2;
            n = m;
            if (mListDimensionBehaviors[1] == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT)
            {
              bool3 = bool2;
              n = m;
              if (i8 > 0)
              {
                bool3 = bool2;
                n = m;
                if (getHeight() > i8)
                {
                  af = true;
                  mListDimensionBehaviors[1] = ConstraintWidget.DimensionBehaviour.FIXED;
                  setHeight(i8);
                  bool1 = true;
                  i = 1;
                  break label1253;
                }
              }
            }
          }
          bool1 = bool3;
          i = n;
        }
        ((ConstraintWidgetGroup)mWidgetGroups.get(i2)).b();
        k = i;
        i = j;
        j = k;
      }
      i2 += 1;
    }
    mChildren = ((ArrayList)localArrayList);
    if (y != null)
    {
      i = Math.max(mMinWidth, getWidth());
      k = Math.max(mMinHeight, getHeight());
      ac.applyTo(this);
      setWidth(i + S + U);
      setHeight(k + T + V);
    }
    else
    {
      mX = i5;
      mY = i6;
    }
    if (j != 0)
    {
      mListDimensionBehaviors[0] = localDimensionBehaviour2;
      mListDimensionBehaviors[1] = localDimensionBehaviour1;
    }
    resetSolverVariables(mSystem.getCache());
    if (this == getRootConstraintContainer()) {
      updateDrawPosition();
    }
  }
  
  public void optimize()
  {
    if (!optimizeFor(8)) {
      analyze(ad);
    }
    solveGraph();
  }
  
  public boolean optimizeFor(int paramInt)
  {
    return (ad & paramInt) == paramInt;
  }
  
  public void optimizeForDimensions(int paramInt1, int paramInt2)
  {
    if ((mListDimensionBehaviors[0] != ConstraintWidget.DimensionBehaviour.WRAP_CONTENT) && (a != null)) {
      a.resolve(paramInt1);
    }
    if ((mListDimensionBehaviors[1] != ConstraintWidget.DimensionBehaviour.WRAP_CONTENT) && (b != null)) {
      b.resolve(paramInt2);
    }
  }
  
  public void optimizeReset()
  {
    int j = mChildren.size();
    resetResolutionNodes();
    int i = 0;
    while (i < j)
    {
      ((ConstraintWidget)mChildren.get(i)).resetResolutionNodes();
      i += 1;
    }
  }
  
  public void preOptimize()
  {
    optimizeReset();
    analyze(ad);
  }
  
  public void reset()
  {
    mSystem.reset();
    S = 0;
    U = 0;
    T = 0;
    V = 0;
    mWidgetGroups.clear();
    mSkipSolver = false;
    super.reset();
  }
  
  public void resetGraph()
  {
    ResolutionAnchor localResolutionAnchor1 = getAnchor(ConstraintAnchor.Type.LEFT).getResolutionNode();
    ResolutionAnchor localResolutionAnchor2 = getAnchor(ConstraintAnchor.Type.TOP).getResolutionNode();
    localResolutionAnchor1.invalidateAnchors();
    localResolutionAnchor2.invalidateAnchors();
    localResolutionAnchor1.resolve(null, 0.0F);
    localResolutionAnchor2.resolve(null, 0.0F);
  }
  
  public void setOptimizationLevel(int paramInt)
  {
    ad = paramInt;
  }
  
  public void setPadding(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    S = paramInt1;
    T = paramInt2;
    U = paramInt3;
    V = paramInt4;
  }
  
  public void setRtl(boolean paramBoolean)
  {
    ab = paramBoolean;
  }
  
  public void solveGraph()
  {
    ResolutionAnchor localResolutionAnchor1 = getAnchor(ConstraintAnchor.Type.LEFT).getResolutionNode();
    ResolutionAnchor localResolutionAnchor2 = getAnchor(ConstraintAnchor.Type.TOP).getResolutionNode();
    localResolutionAnchor1.resolve(null, 0.0F);
    localResolutionAnchor2.resolve(null, 0.0F);
  }
  
  public void updateChildrenFromSolver(LinearSystem paramLinearSystem, boolean[] paramArrayOfBoolean)
  {
    paramArrayOfBoolean[2] = false;
    updateFromSolver(paramLinearSystem);
    int j = mChildren.size();
    int i = 0;
    while (i < j)
    {
      ConstraintWidget localConstraintWidget = (ConstraintWidget)mChildren.get(i);
      localConstraintWidget.updateFromSolver(paramLinearSystem);
      if ((mListDimensionBehaviors[0] == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) && (localConstraintWidget.getWidth() < localConstraintWidget.getWrapWidth())) {
        paramArrayOfBoolean[2] = true;
      }
      if ((mListDimensionBehaviors[1] == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) && (localConstraintWidget.getHeight() < localConstraintWidget.getWrapHeight())) {
        paramArrayOfBoolean[2] = true;
      }
      i += 1;
    }
  }
}
