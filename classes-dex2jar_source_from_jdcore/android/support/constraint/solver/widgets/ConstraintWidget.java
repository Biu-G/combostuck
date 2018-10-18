package android.support.constraint.solver.widgets;

import android.support.constraint.solver.ArrayRow;
import android.support.constraint.solver.Cache;
import android.support.constraint.solver.LinearSystem;
import android.support.constraint.solver.Metrics;
import android.support.constraint.solver.SolverVariable;
import java.util.ArrayList;

public class ConstraintWidget
{
  protected static final int ANCHOR_BASELINE = 4;
  protected static final int ANCHOR_BOTTOM = 3;
  protected static final int ANCHOR_LEFT = 0;
  protected static final int ANCHOR_RIGHT = 1;
  protected static final int ANCHOR_TOP = 2;
  public static final int CHAIN_PACKED = 2;
  public static final int CHAIN_SPREAD = 0;
  public static final int CHAIN_SPREAD_INSIDE = 1;
  public static float DEFAULT_BIAS = 0.5F;
  protected static final int DIRECT = 2;
  public static final int GONE = 8;
  public static final int HORIZONTAL = 0;
  public static final int INVISIBLE = 4;
  public static final int MATCH_CONSTRAINT_PERCENT = 2;
  public static final int MATCH_CONSTRAINT_RATIO = 3;
  public static final int MATCH_CONSTRAINT_RATIO_RESOLVED = 4;
  public static final int MATCH_CONSTRAINT_SPREAD = 0;
  public static final int MATCH_CONSTRAINT_WRAP = 1;
  protected static final int SOLVER = 1;
  public static final int UNKNOWN = -1;
  public static final int VERTICAL = 1;
  public static final int VISIBLE = 0;
  int A = 0;
  int B = 0;
  int C = 0;
  int D = 0;
  float E = DEFAULT_BIAS;
  float F = DEFAULT_BIAS;
  boolean G;
  boolean H;
  boolean I = false;
  boolean J = false;
  boolean K = false;
  int L = 0;
  int M = 0;
  boolean N;
  boolean O;
  float[] P = { -1.0F, -1.0F };
  ConstraintWidget Q = null;
  ConstraintWidget R = null;
  private int[] S = { Integer.MAX_VALUE, Integer.MAX_VALUE };
  private float T = 0.0F;
  private int U = 0;
  private int V = 0;
  private int W = 0;
  private int X = 0;
  private int Y;
  private int Z;
  ResolutionDimension a;
  private Object aa;
  private int ab = 0;
  private int ac = 0;
  private String ad = null;
  private String ae = null;
  ResolutionDimension b;
  int c = 0;
  int d = 0;
  int[] e = new int[2];
  int f = 0;
  int g = 0;
  float h = 1.0F;
  int i = 0;
  int j = 0;
  float k = 1.0F;
  boolean l;
  boolean m;
  protected ArrayList<ConstraintAnchor> mAnchors = new ArrayList();
  protected float mDimensionRatio = 0.0F;
  protected int mDimensionRatioSide = -1;
  public int mHorizontalResolution = -1;
  protected ConstraintAnchor[] mListAnchors = { q, s, r, t, u, x };
  protected DimensionBehaviour[] mListDimensionBehaviors = { DimensionBehaviour.FIXED, DimensionBehaviour.FIXED };
  protected ConstraintWidget[] mListNextMatchConstraintsWidget = { null, null };
  protected int mMinHeight;
  protected int mMinWidth;
  protected ConstraintWidget[] mNextChainWidget = { null, null };
  protected int mOffsetX = 0;
  protected int mOffsetY = 0;
  public int mVerticalResolution = -1;
  protected int mX = 0;
  protected int mY = 0;
  int n = -1;
  float o = 1.0F;
  ConstraintWidgetGroup p = null;
  ConstraintAnchor q = new ConstraintAnchor(this, ConstraintAnchor.Type.LEFT);
  ConstraintAnchor r = new ConstraintAnchor(this, ConstraintAnchor.Type.TOP);
  ConstraintAnchor s = new ConstraintAnchor(this, ConstraintAnchor.Type.RIGHT);
  ConstraintAnchor t = new ConstraintAnchor(this, ConstraintAnchor.Type.BOTTOM);
  ConstraintAnchor u = new ConstraintAnchor(this, ConstraintAnchor.Type.BASELINE);
  ConstraintAnchor v = new ConstraintAnchor(this, ConstraintAnchor.Type.CENTER_X);
  ConstraintAnchor w = new ConstraintAnchor(this, ConstraintAnchor.Type.CENTER_Y);
  ConstraintAnchor x = new ConstraintAnchor(this, ConstraintAnchor.Type.CENTER);
  ConstraintWidget y = null;
  int z = 0;
  
  public ConstraintWidget()
  {
    a();
  }
  
  public ConstraintWidget(int paramInt1, int paramInt2)
  {
    this(0, 0, paramInt1, paramInt2);
  }
  
  public ConstraintWidget(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    mX = paramInt1;
    mY = paramInt2;
    z = paramInt3;
    A = paramInt4;
    a();
    forceUpdateDrawPosition();
  }
  
  private void a()
  {
    mAnchors.add(q);
    mAnchors.add(r);
    mAnchors.add(s);
    mAnchors.add(t);
    mAnchors.add(v);
    mAnchors.add(w);
    mAnchors.add(x);
    mAnchors.add(u);
  }
  
  private void a(LinearSystem paramLinearSystem, boolean paramBoolean1, SolverVariable paramSolverVariable1, SolverVariable paramSolverVariable2, DimensionBehaviour paramDimensionBehaviour, boolean paramBoolean2, ConstraintAnchor paramConstraintAnchor1, ConstraintAnchor paramConstraintAnchor2, int paramInt1, int paramInt2, int paramInt3, int paramInt4, float paramFloat1, boolean paramBoolean3, boolean paramBoolean4, int paramInt5, int paramInt6, int paramInt7, float paramFloat2, boolean paramBoolean5)
  {
    SolverVariable localSolverVariable1 = paramLinearSystem.createObjectVariable(paramConstraintAnchor1);
    SolverVariable localSolverVariable3 = paramLinearSystem.createObjectVariable(paramConstraintAnchor2);
    SolverVariable localSolverVariable2 = paramLinearSystem.createObjectVariable(paramConstraintAnchor1.getTarget());
    SolverVariable localSolverVariable4 = paramLinearSystem.createObjectVariable(paramConstraintAnchor2.getTarget());
    if ((graphOptimizer) && (getResolutionNodei == 1) && (getResolutionNodei == 1))
    {
      if (LinearSystem.getMetrics() != null)
      {
        paramSolverVariable1 = LinearSystem.getMetrics();
        resolvedWidgets += 1L;
      }
      paramConstraintAnchor1.getResolutionNode().a(paramLinearSystem);
      paramConstraintAnchor2.getResolutionNode().a(paramLinearSystem);
      if ((!paramBoolean4) && (paramBoolean1)) {
        paramLinearSystem.addGreaterThan(paramSolverVariable2, localSolverVariable3, 0, 6);
      }
      return;
    }
    Object localObject;
    if (LinearSystem.getMetrics() != null)
    {
      localObject = LinearSystem.getMetrics();
      nonresolvedWidgets += 1L;
    }
    boolean bool1 = paramConstraintAnchor1.isConnected();
    boolean bool2 = paramConstraintAnchor2.isConnected();
    boolean bool3 = x.isConnected();
    if (bool1) {
      i2 = 1;
    } else {
      i2 = 0;
    }
    int i1 = i2;
    if (bool2) {
      i1 = i2 + 1;
    }
    int i2 = i1;
    if (bool3) {
      i2 = i1 + 1;
    }
    int i3;
    if (paramBoolean3) {
      i3 = 3;
    } else {
      i3 = paramInt5;
    }
    switch (1.b[paramDimensionBehaviour.ordinal()])
    {
    }
    do
    {
      i1 = 0;
      break;
    } while (i3 == 4);
    i1 = 1;
    if (ac == 8)
    {
      paramInt5 = 0;
      i1 = 0;
    }
    else
    {
      paramInt5 = paramInt2;
    }
    if (paramBoolean5) {
      if ((!bool1) && (!bool2) && (!bool3)) {
        paramLinearSystem.addEquality(localSolverVariable1, paramInt1);
      } else if ((bool1) && (!bool2)) {
        paramLinearSystem.addEquality(localSolverVariable1, localSolverVariable2, paramConstraintAnchor1.getMargin(), 6);
      }
    }
    if (i1 == 0)
    {
      if (paramBoolean2)
      {
        paramLinearSystem.addEquality(localSolverVariable3, localSolverVariable1, 0, 3);
        if (paramInt3 > 0) {
          paramLinearSystem.addGreaterThan(localSolverVariable3, localSolverVariable1, paramInt3, 6);
        }
        if (paramInt4 < Integer.MAX_VALUE) {
          paramLinearSystem.addLowerThan(localSolverVariable3, localSolverVariable1, paramInt4, 6);
        }
      }
      else
      {
        paramLinearSystem.addEquality(localSolverVariable3, localSolverVariable1, paramInt5, 6);
      }
      paramInt1 = paramInt6;
      paramInt2 = paramInt7;
      paramInt4 = i1;
    }
    for (;;)
    {
      paramInt5 = paramInt2;
      break;
      if (paramInt6 == -2) {
        paramInt1 = paramInt5;
      } else {
        paramInt1 = paramInt6;
      }
      paramInt2 = paramInt7;
      if (paramInt7 == -2) {
        paramInt2 = paramInt5;
      }
      if (paramInt1 > 0)
      {
        paramLinearSystem.addGreaterThan(localSolverVariable3, localSolverVariable1, paramInt1, 6);
        paramInt5 = Math.max(paramInt5, paramInt1);
      }
      paramInt6 = paramInt5;
      if (paramInt2 > 0)
      {
        paramLinearSystem.addLowerThan(localSolverVariable3, localSolverVariable1, paramInt2, 6);
        paramInt6 = Math.min(paramInt5, paramInt2);
      }
      if (i3 == 1)
      {
        if (paramBoolean1) {
          paramLinearSystem.addEquality(localSolverVariable3, localSolverVariable1, paramInt6, 6);
        } else if (paramBoolean4) {
          paramLinearSystem.addEquality(localSolverVariable3, localSolverVariable1, paramInt6, 4);
        } else {
          paramLinearSystem.addEquality(localSolverVariable3, localSolverVariable1, paramInt6, 1);
        }
      }
      else if (i3 == 2)
      {
        if ((paramConstraintAnchor1.getType() != ConstraintAnchor.Type.TOP) && (paramConstraintAnchor1.getType() != ConstraintAnchor.Type.BOTTOM))
        {
          paramDimensionBehaviour = paramLinearSystem.createObjectVariable(y.getAnchor(ConstraintAnchor.Type.LEFT));
          localObject = paramLinearSystem.createObjectVariable(y.getAnchor(ConstraintAnchor.Type.RIGHT));
        }
        else
        {
          paramDimensionBehaviour = paramLinearSystem.createObjectVariable(y.getAnchor(ConstraintAnchor.Type.TOP));
          localObject = paramLinearSystem.createObjectVariable(y.getAnchor(ConstraintAnchor.Type.BOTTOM));
        }
        paramLinearSystem.addConstraint(paramLinearSystem.createRow().createRowDimensionRatio(localSolverVariable3, localSolverVariable1, (SolverVariable)localObject, paramDimensionBehaviour, paramFloat2));
        paramInt4 = 0;
        break label749;
      }
      paramInt4 = i1;
      label749:
      if (paramInt4 != 0) {
        if (i2 != 2)
        {
          if (!paramBoolean3)
          {
            paramInt5 = Math.max(paramInt1, paramInt6);
            paramInt4 = paramInt5;
            if (paramInt2 > 0) {
              paramInt4 = Math.min(paramInt2, paramInt5);
            }
            paramLinearSystem.addEquality(localSolverVariable3, localSolverVariable1, paramInt4, 6);
            paramInt4 = 0;
            paramInt5 = paramInt2;
            break;
          }
          paramInt5 = paramInt2;
          break;
        }
      }
    }
    paramDimensionBehaviour = localSolverVariable2;
    if ((paramBoolean5) && (!paramBoolean4))
    {
      if ((!bool1) && (!bool2) && (!bool3)) {
        if (paramBoolean1) {
          paramLinearSystem.addGreaterThan(paramSolverVariable2, localSolverVariable3, 0, 5);
        }
      }
      for (;;)
      {
        break;
        if ((bool1) && (!bool2))
        {
          if (paramBoolean1) {
            paramLinearSystem.addGreaterThan(paramSolverVariable2, localSolverVariable3, 0, 5);
          }
        }
        else if ((!bool1) && (bool2))
        {
          paramLinearSystem.addEquality(localSolverVariable3, localSolverVariable4, -paramConstraintAnchor2.getMargin(), 6);
          if (paramBoolean1) {
            paramLinearSystem.addGreaterThan(localSolverVariable1, paramSolverVariable1, 0, 5);
          }
        }
        else if ((bool1) && (bool2))
        {
          if (paramInt4 != 0)
          {
            if ((paramBoolean1) && (paramInt3 == 0)) {
              paramLinearSystem.addGreaterThan(localSolverVariable3, localSolverVariable1, 0, 6);
            }
            if (i3 == 0)
            {
              if ((paramInt5 <= 0) && (paramInt1 <= 0))
              {
                paramInt3 = 6;
                paramInt2 = 0;
              }
              else
              {
                paramInt3 = 4;
                paramInt2 = 1;
              }
              paramLinearSystem.addEquality(localSolverVariable1, paramDimensionBehaviour, paramConstraintAnchor1.getMargin(), paramInt3);
              paramLinearSystem.addEquality(localSolverVariable3, localSolverVariable4, -paramConstraintAnchor2.getMargin(), paramInt3);
              if ((paramInt5 <= 0) && (paramInt1 <= 0)) {
                paramInt1 = 0;
              } else {
                paramInt1 = 1;
              }
              paramInt5 = paramInt2;
              paramInt3 = 5;
              paramInt2 = paramInt1;
              paramInt1 = paramInt5;
              break label1199;
            }
            if (i3 == 1) {}
            for (paramInt3 = 6;; paramInt3 = 5)
            {
              paramInt2 = 1;
              paramInt1 = 1;
              break label1199;
              if (i3 != 3) {
                break;
              }
              if ((!paramBoolean3) && (n != -1) && (paramInt5 <= 0)) {
                paramInt1 = 6;
              } else {
                paramInt1 = 4;
              }
              paramLinearSystem.addEquality(localSolverVariable1, paramDimensionBehaviour, paramConstraintAnchor1.getMargin(), paramInt1);
              paramLinearSystem.addEquality(localSolverVariable3, localSolverVariable4, -paramConstraintAnchor2.getMargin(), paramInt1);
            }
            paramInt2 = 0;
          }
          else
          {
            paramInt2 = 1;
          }
          paramInt3 = 5;
          paramInt1 = 0;
          label1199:
          if (paramInt2 != 0)
          {
            paramLinearSystem.addCentering(localSolverVariable1, paramDimensionBehaviour, paramConstraintAnchor1.getMargin(), paramFloat1, localSolverVariable4, localSolverVariable3, paramConstraintAnchor2.getMargin(), paramInt3);
            paramBoolean3 = true;
            paramBoolean2 = c.a instanceof Barrier;
            paramBoolean4 = c.a instanceof Barrier;
            if ((paramBoolean2) && (!paramBoolean4))
            {
              paramBoolean2 = true;
              paramInt3 = 6;
              break label1308;
            }
            if ((!paramBoolean2) && (paramBoolean4))
            {
              paramBoolean2 = paramBoolean1;
              paramInt3 = 5;
              paramInt2 = 6;
              break label1314;
            }
          }
          paramBoolean2 = paramBoolean1;
          paramInt3 = 5;
          label1308:
          paramBoolean3 = paramBoolean1;
          paramInt2 = 5;
          label1314:
          if (paramInt1 != 0)
          {
            paramInt2 = 6;
            paramInt3 = 6;
          }
          if (((paramInt4 == 0) && (paramBoolean3)) || (paramInt1 != 0)) {
            paramLinearSystem.addGreaterThan(localSolverVariable1, paramDimensionBehaviour, paramConstraintAnchor1.getMargin(), paramInt2);
          }
          if (((paramInt4 == 0) && (paramBoolean2)) || (paramInt1 != 0)) {
            paramLinearSystem.addLowerThan(localSolverVariable3, localSolverVariable4, -paramConstraintAnchor2.getMargin(), paramInt3);
          }
          if (paramBoolean1) {
            paramLinearSystem.addGreaterThan(localSolverVariable1, paramSolverVariable1, 0, 6);
          }
        }
      }
      if (paramBoolean1) {
        paramLinearSystem.addGreaterThan(paramSolverVariable2, localSolverVariable3, 0, 6);
      }
      return;
    }
    if ((i2 < 2) && (paramBoolean1))
    {
      paramLinearSystem.addGreaterThan(localSolverVariable1, paramSolverVariable1, 0, 6);
      paramLinearSystem.addGreaterThan(paramSolverVariable2, localSolverVariable3, 0, 6);
    }
  }
  
  private boolean b(int paramInt)
  {
    paramInt *= 2;
    if ((mListAnchors[paramInt].c != null) && (mListAnchors[paramInt].c.c != mListAnchors[paramInt]))
    {
      ConstraintAnchor[] arrayOfConstraintAnchor = mListAnchors;
      paramInt += 1;
      if ((c != null) && (mListAnchors[paramInt].c.c == mListAnchors[paramInt])) {
        return true;
      }
    }
    return false;
  }
  
  int a(int paramInt)
  {
    if (paramInt == 0) {
      return B;
    }
    if (paramInt == 1) {
      return C;
    }
    return 0;
  }
  
  void a(int paramInt1, int paramInt2)
  {
    if (paramInt2 == 0)
    {
      B = paramInt1;
      return;
    }
    if (paramInt2 == 1) {
      C = paramInt1;
    }
  }
  
  public void addToSolver(LinearSystem paramLinearSystem)
  {
    SolverVariable localSolverVariable2 = paramLinearSystem.createObjectVariable(q);
    Object localObject4 = paramLinearSystem.createObjectVariable(s);
    Object localObject5 = paramLinearSystem.createObjectVariable(r);
    SolverVariable localSolverVariable1 = paramLinearSystem.createObjectVariable(t);
    Object localObject1 = paramLinearSystem.createObjectVariable(u);
    boolean bool1;
    boolean bool2;
    boolean bool3;
    boolean bool4;
    boolean bool6;
    if (y != null)
    {
      if ((y != null) && (y.mListDimensionBehaviors[0] == DimensionBehaviour.WRAP_CONTENT)) {
        bool1 = true;
      } else {
        bool1 = false;
      }
      if ((y != null) && (y.mListDimensionBehaviors[1] == DimensionBehaviour.WRAP_CONTENT)) {
        bool2 = true;
      } else {
        bool2 = false;
      }
      if (b(0))
      {
        ((ConstraintWidgetContainer)y).a(this, 0);
        bool3 = true;
      }
      else
      {
        bool3 = isInHorizontalChain();
      }
      if (b(1))
      {
        ((ConstraintWidgetContainer)y).a(this, 1);
        bool4 = true;
      }
      else
      {
        bool4 = isInVerticalChain();
      }
      if ((bool1) && (ac != 8) && (q.c == null) && (s.c == null)) {
        paramLinearSystem.addGreaterThan(paramLinearSystem.createObjectVariable(y.s), (SolverVariable)localObject4, 0, 1);
      }
      if ((bool2) && (ac != 8) && (r.c == null) && (t.c == null) && (u == null)) {
        paramLinearSystem.addGreaterThan(paramLinearSystem.createObjectVariable(y.t), localSolverVariable1, 0, 1);
      }
      bool5 = bool3;
      bool6 = bool4;
      bool3 = bool1;
      bool1 = bool2;
      bool4 = bool5;
      bool2 = bool6;
    }
    else
    {
      bool3 = false;
      bool1 = false;
      bool4 = false;
      bool2 = false;
    }
    int i2 = z;
    int i1 = i2;
    if (i2 < mMinWidth) {
      i1 = mMinWidth;
    }
    int i3 = A;
    i2 = i3;
    if (i3 < mMinHeight) {
      i2 = mMinHeight;
    }
    if (mListDimensionBehaviors[0] != DimensionBehaviour.MATCH_CONSTRAINT) {
      bool5 = true;
    } else {
      bool5 = false;
    }
    if (mListDimensionBehaviors[1] != DimensionBehaviour.MATCH_CONSTRAINT) {
      bool6 = true;
    } else {
      bool6 = false;
    }
    n = mDimensionRatioSide;
    o = mDimensionRatio;
    int i4 = c;
    int i5 = d;
    if ((mDimensionRatio > 0.0F) && (ac != 8))
    {
      i3 = i4;
      if (mListDimensionBehaviors[0] == DimensionBehaviour.MATCH_CONSTRAINT)
      {
        i3 = i4;
        if (i4 == 0) {
          i3 = 3;
        }
      }
      i4 = i5;
      if (mListDimensionBehaviors[1] == DimensionBehaviour.MATCH_CONSTRAINT)
      {
        i4 = i5;
        if (i5 == 0) {
          i4 = 3;
        }
      }
      if ((mListDimensionBehaviors[0] == DimensionBehaviour.MATCH_CONSTRAINT) && (mListDimensionBehaviors[1] == DimensionBehaviour.MATCH_CONSTRAINT) && (i3 == 3) && (i4 == 3))
      {
        setupDimensionRatio(bool3, bool1, bool5, bool6);
      }
      else
      {
        if ((mListDimensionBehaviors[0] == DimensionBehaviour.MATCH_CONSTRAINT) && (i3 == 3))
        {
          n = 0;
          i1 = (int)(o * A);
          if (mListDimensionBehaviors[1] != DimensionBehaviour.MATCH_CONSTRAINT)
          {
            i3 = i1;
            i5 = i4;
            i4 = i2;
            i1 = 4;
            i2 = i5;
            break label773;
          }
          i5 = i1;
          break label740;
        }
        if ((mListDimensionBehaviors[1] == DimensionBehaviour.MATCH_CONSTRAINT) && (i4 == 3))
        {
          n = 1;
          if (mDimensionRatioSide == -1) {
            o = (1.0F / o);
          }
          i5 = (int)(o * z);
          if (mListDimensionBehaviors[0] != DimensionBehaviour.MATCH_CONSTRAINT)
          {
            i4 = i5;
            i5 = i1;
            i1 = i3;
            i2 = 4;
            i3 = i5;
            break label773;
          }
          i2 = i1;
          i1 = i5;
          break label745;
        }
      }
      i5 = i1;
      label740:
      i1 = i2;
      i2 = i5;
      label745:
      i5 = 1;
      i6 = i2;
      i7 = i1;
      break label790;
    }
    else
    {
      i6 = i4;
      i4 = i2;
      i3 = i1;
      i2 = i5;
      i1 = i6;
    }
    label773:
    i5 = 0;
    int i7 = i4;
    int i6 = i3;
    i4 = i2;
    i3 = i1;
    label790:
    e[0] = i3;
    e[1] = i4;
    if (i5 != 0)
    {
      if (n != 0) {
        if (n != -1) {
          break label835;
        }
      }
      bool5 = true;
      break label838;
    }
    label835:
    boolean bool5 = false;
    label838:
    if ((mListDimensionBehaviors[0] == DimensionBehaviour.WRAP_CONTENT) && ((this instanceof ConstraintWidgetContainer))) {
      bool6 = true;
    } else {
      bool6 = false;
    }
    boolean bool7 = x.isConnected() ^ true;
    if (mHorizontalResolution != 2)
    {
      if (y != null) {
        localObject2 = paramLinearSystem.createObjectVariable(y.s);
      } else {
        localObject2 = null;
      }
      if (y != null) {
        localObject3 = paramLinearSystem.createObjectVariable(y.q);
      } else {
        localObject3 = null;
      }
      a(paramLinearSystem, bool3, (SolverVariable)localObject3, (SolverVariable)localObject2, mListDimensionBehaviors[0], bool6, q, s, mX, i6, mMinWidth, S[0], E, bool5, bool4, i3, f, g, h, bool7);
    }
    Object localObject2 = localObject5;
    Object localObject3 = localObject4;
    if (mVerticalResolution == 2) {
      return;
    }
    if ((mListDimensionBehaviors[1] == DimensionBehaviour.WRAP_CONTENT) && ((this instanceof ConstraintWidgetContainer))) {
      bool3 = true;
    } else {
      bool3 = false;
    }
    if ((i5 != 0) && ((n == 1) || (n == -1))) {
      bool4 = true;
    } else {
      bool4 = false;
    }
    if (D > 0) {
      if (u.getResolutionNode().i == 1)
      {
        u.getResolutionNode().a(paramLinearSystem);
      }
      else
      {
        localObject4 = paramLinearSystem;
        ((LinearSystem)localObject4).addEquality((SolverVariable)localObject1, (SolverVariable)localObject2, getBaselineDistance(), 6);
        if (u.c != null)
        {
          ((LinearSystem)localObject4).addEquality((SolverVariable)localObject1, ((LinearSystem)localObject4).createObjectVariable(u.c), 0, 6);
          bool5 = false;
          break label1179;
        }
      }
    }
    bool5 = bool7;
    label1179:
    localObject5 = paramLinearSystem;
    localObject4 = localObject2;
    if (y != null) {
      localObject1 = ((LinearSystem)localObject5).createObjectVariable(y.t);
    } else {
      localObject1 = null;
    }
    if (y != null) {
      localObject2 = ((LinearSystem)localObject5).createObjectVariable(y.r);
    } else {
      localObject2 = null;
    }
    a(paramLinearSystem, bool1, (SolverVariable)localObject2, (SolverVariable)localObject1, mListDimensionBehaviors[1], bool3, r, t, mY, i7, mMinHeight, S[1], F, bool4, bool2, i4, i, j, k, bool5);
    if (i5 != 0)
    {
      localObject1 = this;
      if (n == 1) {
        paramLinearSystem.addRatio(localSolverVariable1, (SolverVariable)localObject4, (SolverVariable)localObject3, localSolverVariable2, o, 6);
      } else {
        paramLinearSystem.addRatio((SolverVariable)localObject3, localSolverVariable2, localSolverVariable1, (SolverVariable)localObject4, o, 6);
      }
    }
    localObject1 = this;
    if (x.isConnected()) {
      paramLinearSystem.addCenterPoint((ConstraintWidget)localObject1, x.getTarget().getOwner(), (float)Math.toRadians(T + 90.0F), x.getMargin());
    }
  }
  
  public boolean allowedInBarrier()
  {
    return ac != 8;
  }
  
  public void analyze(int paramInt)
  {
    Optimizer.a(paramInt, this);
  }
  
  public void connect(ConstraintAnchor.Type paramType1, ConstraintWidget paramConstraintWidget, ConstraintAnchor.Type paramType2)
  {
    connect(paramType1, paramConstraintWidget, paramType2, 0, ConstraintAnchor.Strength.STRONG);
  }
  
  public void connect(ConstraintAnchor.Type paramType1, ConstraintWidget paramConstraintWidget, ConstraintAnchor.Type paramType2, int paramInt)
  {
    connect(paramType1, paramConstraintWidget, paramType2, paramInt, ConstraintAnchor.Strength.STRONG);
  }
  
  public void connect(ConstraintAnchor.Type paramType1, ConstraintWidget paramConstraintWidget, ConstraintAnchor.Type paramType2, int paramInt, ConstraintAnchor.Strength paramStrength)
  {
    connect(paramType1, paramConstraintWidget, paramType2, paramInt, paramStrength, 0);
  }
  
  public void connect(ConstraintAnchor.Type paramType1, ConstraintWidget paramConstraintWidget, ConstraintAnchor.Type paramType2, int paramInt1, ConstraintAnchor.Strength paramStrength, int paramInt2)
  {
    Object localObject = ConstraintAnchor.Type.CENTER;
    int i1 = 0;
    if (paramType1 == localObject)
    {
      if (paramType2 == ConstraintAnchor.Type.CENTER)
      {
        paramType1 = getAnchor(ConstraintAnchor.Type.LEFT);
        paramType2 = getAnchor(ConstraintAnchor.Type.RIGHT);
        localObject = getAnchor(ConstraintAnchor.Type.TOP);
        ConstraintAnchor localConstraintAnchor = getAnchor(ConstraintAnchor.Type.BOTTOM);
        i1 = 1;
        if (((paramType1 != null) && (paramType1.isConnected())) || ((paramType2 != null) && (paramType2.isConnected())))
        {
          paramInt1 = 0;
        }
        else
        {
          connect(ConstraintAnchor.Type.LEFT, paramConstraintWidget, ConstraintAnchor.Type.LEFT, 0, paramStrength, paramInt2);
          connect(ConstraintAnchor.Type.RIGHT, paramConstraintWidget, ConstraintAnchor.Type.RIGHT, 0, paramStrength, paramInt2);
          paramInt1 = 1;
        }
        if (((localObject != null) && (((ConstraintAnchor)localObject).isConnected())) || ((localConstraintAnchor != null) && (localConstraintAnchor.isConnected())))
        {
          i1 = 0;
        }
        else
        {
          connect(ConstraintAnchor.Type.TOP, paramConstraintWidget, ConstraintAnchor.Type.TOP, 0, paramStrength, paramInt2);
          connect(ConstraintAnchor.Type.BOTTOM, paramConstraintWidget, ConstraintAnchor.Type.BOTTOM, 0, paramStrength, paramInt2);
        }
        if ((paramInt1 != 0) && (i1 != 0))
        {
          getAnchor(ConstraintAnchor.Type.CENTER).connect(paramConstraintWidget.getAnchor(ConstraintAnchor.Type.CENTER), 0, paramInt2);
          return;
        }
        if (paramInt1 != 0)
        {
          getAnchor(ConstraintAnchor.Type.CENTER_X).connect(paramConstraintWidget.getAnchor(ConstraintAnchor.Type.CENTER_X), 0, paramInt2);
          return;
        }
        if (i1 == 0) {
          break label956;
        }
        getAnchor(ConstraintAnchor.Type.CENTER_Y).connect(paramConstraintWidget.getAnchor(ConstraintAnchor.Type.CENTER_Y), 0, paramInt2);
        return;
      }
      if ((paramType2 != ConstraintAnchor.Type.LEFT) && (paramType2 != ConstraintAnchor.Type.RIGHT))
      {
        if ((paramType2 != ConstraintAnchor.Type.TOP) && (paramType2 != ConstraintAnchor.Type.BOTTOM)) {
          break label956;
        }
        connect(ConstraintAnchor.Type.TOP, paramConstraintWidget, paramType2, 0, paramStrength, paramInt2);
        connect(ConstraintAnchor.Type.BOTTOM, paramConstraintWidget, paramType2, 0, paramStrength, paramInt2);
        getAnchor(ConstraintAnchor.Type.CENTER).connect(paramConstraintWidget.getAnchor(paramType2), 0, paramInt2);
        return;
      }
      connect(ConstraintAnchor.Type.LEFT, paramConstraintWidget, paramType2, 0, paramStrength, paramInt2);
      paramType1 = ConstraintAnchor.Type.RIGHT;
    }
    try
    {
      connect(paramType1, paramConstraintWidget, paramType2, 0, paramStrength, paramInt2);
      getAnchor(ConstraintAnchor.Type.CENTER).connect(paramConstraintWidget.getAnchor(paramType2), 0, paramInt2);
      return;
    }
    catch (Throwable paramType1)
    {
      throw paramType1;
    }
    if ((paramType1 == ConstraintAnchor.Type.CENTER_X) && ((paramType2 == ConstraintAnchor.Type.LEFT) || (paramType2 == ConstraintAnchor.Type.RIGHT)))
    {
      paramType1 = getAnchor(ConstraintAnchor.Type.LEFT);
      paramConstraintWidget = paramConstraintWidget.getAnchor(paramType2);
      paramType2 = getAnchor(ConstraintAnchor.Type.RIGHT);
      paramType1.connect(paramConstraintWidget, 0, paramInt2);
      paramType2.connect(paramConstraintWidget, 0, paramInt2);
      getAnchor(ConstraintAnchor.Type.CENTER_X).connect(paramConstraintWidget, 0, paramInt2);
      return;
    }
    if ((paramType1 == ConstraintAnchor.Type.CENTER_Y) && ((paramType2 == ConstraintAnchor.Type.TOP) || (paramType2 == ConstraintAnchor.Type.BOTTOM)))
    {
      paramType1 = paramConstraintWidget.getAnchor(paramType2);
      getAnchor(ConstraintAnchor.Type.TOP).connect(paramType1, 0, paramInt2);
      getAnchor(ConstraintAnchor.Type.BOTTOM).connect(paramType1, 0, paramInt2);
      getAnchor(ConstraintAnchor.Type.CENTER_Y).connect(paramType1, 0, paramInt2);
      return;
    }
    if ((paramType1 == ConstraintAnchor.Type.CENTER_X) && (paramType2 == ConstraintAnchor.Type.CENTER_X))
    {
      getAnchor(ConstraintAnchor.Type.LEFT).connect(paramConstraintWidget.getAnchor(ConstraintAnchor.Type.LEFT), 0, paramInt2);
      getAnchor(ConstraintAnchor.Type.RIGHT).connect(paramConstraintWidget.getAnchor(ConstraintAnchor.Type.RIGHT), 0, paramInt2);
      getAnchor(ConstraintAnchor.Type.CENTER_X).connect(paramConstraintWidget.getAnchor(paramType2), 0, paramInt2);
      return;
    }
    if ((paramType1 == ConstraintAnchor.Type.CENTER_Y) && (paramType2 == ConstraintAnchor.Type.CENTER_Y))
    {
      getAnchor(ConstraintAnchor.Type.TOP).connect(paramConstraintWidget.getAnchor(ConstraintAnchor.Type.TOP), 0, paramInt2);
      getAnchor(ConstraintAnchor.Type.BOTTOM).connect(paramConstraintWidget.getAnchor(ConstraintAnchor.Type.BOTTOM), 0, paramInt2);
      getAnchor(ConstraintAnchor.Type.CENTER_Y).connect(paramConstraintWidget.getAnchor(paramType2), 0, paramInt2);
      return;
    }
    localObject = getAnchor(paramType1);
    paramConstraintWidget = paramConstraintWidget.getAnchor(paramType2);
    if (((ConstraintAnchor)localObject).isValidConnection(paramConstraintWidget))
    {
      if (paramType1 == ConstraintAnchor.Type.BASELINE)
      {
        paramType1 = getAnchor(ConstraintAnchor.Type.TOP);
        paramType2 = getAnchor(ConstraintAnchor.Type.BOTTOM);
        if (paramType1 != null) {
          paramType1.reset();
        }
        paramInt1 = i1;
        if (paramType2 != null)
        {
          paramType2.reset();
          paramInt1 = i1;
        }
      }
      for (;;)
      {
        break;
        if ((paramType1 != ConstraintAnchor.Type.TOP) && (paramType1 != ConstraintAnchor.Type.BOTTOM))
        {
          if ((paramType1 == ConstraintAnchor.Type.LEFT) || (paramType1 == ConstraintAnchor.Type.RIGHT))
          {
            paramType2 = getAnchor(ConstraintAnchor.Type.CENTER);
            if (paramType2.getTarget() != paramConstraintWidget) {
              paramType2.reset();
            }
            paramType1 = getAnchor(paramType1).getOpposite();
            paramType2 = getAnchor(ConstraintAnchor.Type.CENTER_X);
            if (paramType2.isConnected())
            {
              paramType1.reset();
              paramType2.reset();
            }
          }
        }
        else
        {
          paramType2 = getAnchor(ConstraintAnchor.Type.BASELINE);
          if (paramType2 != null) {
            paramType2.reset();
          }
          paramType2 = getAnchor(ConstraintAnchor.Type.CENTER);
          if (paramType2.getTarget() != paramConstraintWidget) {
            paramType2.reset();
          }
          paramType1 = getAnchor(paramType1).getOpposite();
          paramType2 = getAnchor(ConstraintAnchor.Type.CENTER_Y);
          if (paramType2.isConnected())
          {
            paramType1.reset();
            paramType2.reset();
          }
        }
      }
      ((ConstraintAnchor)localObject).connect(paramConstraintWidget, paramInt1, paramStrength, paramInt2);
      paramConstraintWidget.getOwner().connectedTo(((ConstraintAnchor)localObject).getOwner());
    }
    label956:
  }
  
  public void connect(ConstraintAnchor paramConstraintAnchor1, ConstraintAnchor paramConstraintAnchor2, int paramInt)
  {
    connect(paramConstraintAnchor1, paramConstraintAnchor2, paramInt, ConstraintAnchor.Strength.STRONG, 0);
  }
  
  public void connect(ConstraintAnchor paramConstraintAnchor1, ConstraintAnchor paramConstraintAnchor2, int paramInt1, int paramInt2)
  {
    connect(paramConstraintAnchor1, paramConstraintAnchor2, paramInt1, ConstraintAnchor.Strength.STRONG, paramInt2);
  }
  
  public void connect(ConstraintAnchor paramConstraintAnchor1, ConstraintAnchor paramConstraintAnchor2, int paramInt1, ConstraintAnchor.Strength paramStrength, int paramInt2)
  {
    if (paramConstraintAnchor1.getOwner() == this) {
      connect(paramConstraintAnchor1.getType(), paramConstraintAnchor2.getOwner(), paramConstraintAnchor2.getType(), paramInt1, paramStrength, paramInt2);
    }
  }
  
  public void connectCircularConstraint(ConstraintWidget paramConstraintWidget, float paramFloat, int paramInt)
  {
    immediateConnect(ConstraintAnchor.Type.CENTER, paramConstraintWidget, ConstraintAnchor.Type.CENTER, paramInt, 0);
    T = paramFloat;
  }
  
  public void connectedTo(ConstraintWidget paramConstraintWidget) {}
  
  public void createObjectVariables(LinearSystem paramLinearSystem)
  {
    paramLinearSystem.createObjectVariable(q);
    paramLinearSystem.createObjectVariable(r);
    paramLinearSystem.createObjectVariable(s);
    paramLinearSystem.createObjectVariable(t);
    if (D > 0) {
      paramLinearSystem.createObjectVariable(u);
    }
  }
  
  public void disconnectUnlockedWidget(ConstraintWidget paramConstraintWidget)
  {
    ArrayList localArrayList = getAnchors();
    int i2 = localArrayList.size();
    int i1 = 0;
    while (i1 < i2)
    {
      ConstraintAnchor localConstraintAnchor = (ConstraintAnchor)localArrayList.get(i1);
      if ((localConstraintAnchor.isConnected()) && (localConstraintAnchor.getTarget().getOwner() == paramConstraintWidget) && (localConstraintAnchor.getConnectionCreator() == 2)) {
        localConstraintAnchor.reset();
      }
      i1 += 1;
    }
  }
  
  public void disconnectWidget(ConstraintWidget paramConstraintWidget)
  {
    ArrayList localArrayList = getAnchors();
    int i2 = localArrayList.size();
    int i1 = 0;
    while (i1 < i2)
    {
      ConstraintAnchor localConstraintAnchor = (ConstraintAnchor)localArrayList.get(i1);
      if ((localConstraintAnchor.isConnected()) && (localConstraintAnchor.getTarget().getOwner() == paramConstraintWidget)) {
        localConstraintAnchor.reset();
      }
      i1 += 1;
    }
  }
  
  public void forceUpdateDrawPosition()
  {
    int i1 = mX;
    int i2 = mY;
    int i3 = mX;
    int i4 = z;
    int i5 = mY;
    int i6 = A;
    U = i1;
    V = i2;
    W = (i3 + i4 - i1);
    X = (i5 + i6 - i2);
  }
  
  public ConstraintAnchor getAnchor(ConstraintAnchor.Type paramType)
  {
    switch (1.a[paramType.ordinal()])
    {
    default: 
      throw new AssertionError(paramType.name());
    case 9: 
      return null;
    case 8: 
      return w;
    case 7: 
      return v;
    case 6: 
      return x;
    case 5: 
      return u;
    case 4: 
      return t;
    case 3: 
      return s;
    case 2: 
      return r;
    }
    return q;
  }
  
  public ArrayList<ConstraintAnchor> getAnchors()
  {
    return mAnchors;
  }
  
  public int getBaselineDistance()
  {
    return D;
  }
  
  public float getBiasPercent(int paramInt)
  {
    if (paramInt == 0) {
      return E;
    }
    if (paramInt == 1) {
      return F;
    }
    return -1.0F;
  }
  
  public int getBottom()
  {
    return getY() + A;
  }
  
  public Object getCompanionWidget()
  {
    return aa;
  }
  
  public int getContainerItemSkip()
  {
    return ab;
  }
  
  public String getDebugName()
  {
    return ad;
  }
  
  public DimensionBehaviour getDimensionBehaviour(int paramInt)
  {
    if (paramInt == 0) {
      return getHorizontalDimensionBehaviour();
    }
    if (paramInt == 1) {
      return getVerticalDimensionBehaviour();
    }
    return null;
  }
  
  public float getDimensionRatio()
  {
    return mDimensionRatio;
  }
  
  public int getDimensionRatioSide()
  {
    return mDimensionRatioSide;
  }
  
  public int getDrawBottom()
  {
    return getDrawY() + X;
  }
  
  public int getDrawHeight()
  {
    return X;
  }
  
  public int getDrawRight()
  {
    return getDrawX() + W;
  }
  
  public int getDrawWidth()
  {
    return W;
  }
  
  public int getDrawX()
  {
    return U + mOffsetX;
  }
  
  public int getDrawY()
  {
    return V + mOffsetY;
  }
  
  public int getHeight()
  {
    if (ac == 8) {
      return 0;
    }
    return A;
  }
  
  public float getHorizontalBiasPercent()
  {
    return E;
  }
  
  public ConstraintWidget getHorizontalChainControlWidget()
  {
    if (isInHorizontalChain())
    {
      Object localObject1 = this;
      Object localObject2 = null;
      for (;;)
      {
        localObject3 = localObject2;
        if (localObject2 != null) {
          break;
        }
        localObject3 = localObject2;
        if (localObject1 == null) {
          break;
        }
        localObject3 = ((ConstraintWidget)localObject1).getAnchor(ConstraintAnchor.Type.LEFT);
        if (localObject3 == null) {
          localObject3 = null;
        } else {
          localObject3 = ((ConstraintAnchor)localObject3).getTarget();
        }
        if (localObject3 == null) {
          localObject3 = null;
        } else {
          localObject3 = ((ConstraintAnchor)localObject3).getOwner();
        }
        if (localObject3 == getParent()) {
          return localObject1;
        }
        ConstraintAnchor localConstraintAnchor;
        if (localObject3 == null) {
          localConstraintAnchor = null;
        } else {
          localConstraintAnchor = ((ConstraintWidget)localObject3).getAnchor(ConstraintAnchor.Type.RIGHT).getTarget();
        }
        if ((localConstraintAnchor != null) && (localConstraintAnchor.getOwner() != localObject1)) {
          localObject2 = localObject1;
        } else {
          localObject1 = localObject3;
        }
      }
    }
    Object localObject3 = null;
    return localObject3;
  }
  
  public int getHorizontalChainStyle()
  {
    return L;
  }
  
  public DimensionBehaviour getHorizontalDimensionBehaviour()
  {
    return mListDimensionBehaviors[0];
  }
  
  public int getInternalDrawBottom()
  {
    return V + X;
  }
  
  public int getInternalDrawRight()
  {
    return U + W;
  }
  
  public int getLeft()
  {
    return getX();
  }
  
  public int getLength(int paramInt)
  {
    if (paramInt == 0) {
      return getWidth();
    }
    if (paramInt == 1) {
      return getHeight();
    }
    return 0;
  }
  
  public int getMaxHeight()
  {
    return S[1];
  }
  
  public int getMaxWidth()
  {
    return S[0];
  }
  
  public int getMinHeight()
  {
    return mMinHeight;
  }
  
  public int getMinWidth()
  {
    return mMinWidth;
  }
  
  public int getOptimizerWrapHeight()
  {
    int i1 = A;
    int i2 = i1;
    if (mListDimensionBehaviors[1] == DimensionBehaviour.MATCH_CONSTRAINT)
    {
      if (d == 1)
      {
        i1 = Math.max(i, i1);
      }
      else if (i > 0)
      {
        i1 = i;
        A = i1;
      }
      else
      {
        i1 = 0;
      }
      i2 = i1;
      if (j > 0)
      {
        i2 = i1;
        if (j < i1) {
          i2 = j;
        }
      }
    }
    return i2;
  }
  
  public int getOptimizerWrapWidth()
  {
    int i1 = z;
    int i2 = i1;
    if (mListDimensionBehaviors[0] == DimensionBehaviour.MATCH_CONSTRAINT)
    {
      if (c == 1)
      {
        i1 = Math.max(f, i1);
      }
      else if (f > 0)
      {
        i1 = f;
        z = i1;
      }
      else
      {
        i1 = 0;
      }
      i2 = i1;
      if (g > 0)
      {
        i2 = i1;
        if (g < i1) {
          i2 = g;
        }
      }
    }
    return i2;
  }
  
  public ConstraintWidget getParent()
  {
    return y;
  }
  
  public ResolutionDimension getResolutionHeight()
  {
    if (b == null) {
      b = new ResolutionDimension();
    }
    return b;
  }
  
  public ResolutionDimension getResolutionWidth()
  {
    if (a == null) {
      a = new ResolutionDimension();
    }
    return a;
  }
  
  public int getRight()
  {
    return getX() + z;
  }
  
  public WidgetContainer getRootWidgetContainer()
  {
    for (ConstraintWidget localConstraintWidget = this; localConstraintWidget.getParent() != null; localConstraintWidget = localConstraintWidget.getParent()) {}
    if ((localConstraintWidget instanceof WidgetContainer)) {
      return (WidgetContainer)localConstraintWidget;
    }
    return null;
  }
  
  protected int getRootX()
  {
    return mX + mOffsetX;
  }
  
  protected int getRootY()
  {
    return mY + mOffsetY;
  }
  
  public int getTop()
  {
    return getY();
  }
  
  public String getType()
  {
    return ae;
  }
  
  public float getVerticalBiasPercent()
  {
    return F;
  }
  
  public ConstraintWidget getVerticalChainControlWidget()
  {
    if (isInVerticalChain())
    {
      Object localObject1 = this;
      Object localObject2 = null;
      for (;;)
      {
        localObject3 = localObject2;
        if (localObject2 != null) {
          break;
        }
        localObject3 = localObject2;
        if (localObject1 == null) {
          break;
        }
        localObject3 = ((ConstraintWidget)localObject1).getAnchor(ConstraintAnchor.Type.TOP);
        if (localObject3 == null) {
          localObject3 = null;
        } else {
          localObject3 = ((ConstraintAnchor)localObject3).getTarget();
        }
        if (localObject3 == null) {
          localObject3 = null;
        } else {
          localObject3 = ((ConstraintAnchor)localObject3).getOwner();
        }
        if (localObject3 == getParent()) {
          return localObject1;
        }
        ConstraintAnchor localConstraintAnchor;
        if (localObject3 == null) {
          localConstraintAnchor = null;
        } else {
          localConstraintAnchor = ((ConstraintWidget)localObject3).getAnchor(ConstraintAnchor.Type.BOTTOM).getTarget();
        }
        if ((localConstraintAnchor != null) && (localConstraintAnchor.getOwner() != localObject1)) {
          localObject2 = localObject1;
        } else {
          localObject1 = localObject3;
        }
      }
    }
    Object localObject3 = null;
    return localObject3;
  }
  
  public int getVerticalChainStyle()
  {
    return M;
  }
  
  public DimensionBehaviour getVerticalDimensionBehaviour()
  {
    return mListDimensionBehaviors[1];
  }
  
  public int getVisibility()
  {
    return ac;
  }
  
  public int getWidth()
  {
    if (ac == 8) {
      return 0;
    }
    return z;
  }
  
  public int getWrapHeight()
  {
    return Z;
  }
  
  public int getWrapWidth()
  {
    return Y;
  }
  
  public int getX()
  {
    return mX;
  }
  
  public int getY()
  {
    return mY;
  }
  
  public boolean hasAncestor(ConstraintWidget paramConstraintWidget)
  {
    ConstraintWidget localConstraintWidget2 = getParent();
    if (localConstraintWidget2 == paramConstraintWidget) {
      return true;
    }
    ConstraintWidget localConstraintWidget1 = localConstraintWidget2;
    if (localConstraintWidget2 == paramConstraintWidget.getParent()) {
      return false;
    }
    while (localConstraintWidget1 != null)
    {
      if (localConstraintWidget1 == paramConstraintWidget) {
        return true;
      }
      if (localConstraintWidget1 == paramConstraintWidget.getParent()) {
        return true;
      }
      localConstraintWidget1 = localConstraintWidget1.getParent();
    }
    return false;
  }
  
  public boolean hasBaseline()
  {
    return D > 0;
  }
  
  public void immediateConnect(ConstraintAnchor.Type paramType1, ConstraintWidget paramConstraintWidget, ConstraintAnchor.Type paramType2, int paramInt1, int paramInt2)
  {
    getAnchor(paramType1).connect(paramConstraintWidget.getAnchor(paramType2), paramInt1, paramInt2, ConstraintAnchor.Strength.STRONG, 0, true);
  }
  
  public boolean isFullyResolved()
  {
    return (q.getResolutionNode().i == 1) && (s.getResolutionNode().i == 1) && (r.getResolutionNode().i == 1) && (t.getResolutionNode().i == 1);
  }
  
  public boolean isHeightWrapContent()
  {
    return m;
  }
  
  public boolean isInHorizontalChain()
  {
    return ((q.c != null) && (q.c.c == q)) || ((s.c != null) && (s.c.c == s));
  }
  
  public boolean isInVerticalChain()
  {
    return ((r.c != null) && (r.c.c == r)) || ((t.c != null) && (t.c.c == t));
  }
  
  public boolean isInsideConstraintLayout()
  {
    ConstraintWidget localConstraintWidget2 = getParent();
    ConstraintWidget localConstraintWidget1 = localConstraintWidget2;
    if (localConstraintWidget2 == null) {
      return false;
    }
    while (localConstraintWidget1 != null)
    {
      if ((localConstraintWidget1 instanceof ConstraintWidgetContainer)) {
        return true;
      }
      localConstraintWidget1 = localConstraintWidget1.getParent();
    }
    return false;
  }
  
  public boolean isRoot()
  {
    return y == null;
  }
  
  public boolean isRootContainer()
  {
    return ((this instanceof ConstraintWidgetContainer)) && ((y == null) || (!(y instanceof ConstraintWidgetContainer)));
  }
  
  public boolean isSpreadHeight()
  {
    return (d == 0) && (mDimensionRatio == 0.0F) && (i == 0) && (j == 0) && (mListDimensionBehaviors[1] == DimensionBehaviour.MATCH_CONSTRAINT);
  }
  
  public boolean isSpreadWidth()
  {
    int i1 = c;
    boolean bool2 = false;
    boolean bool1 = bool2;
    if (i1 == 0)
    {
      bool1 = bool2;
      if (mDimensionRatio == 0.0F)
      {
        bool1 = bool2;
        if (f == 0)
        {
          bool1 = bool2;
          if (g == 0)
          {
            bool1 = bool2;
            if (mListDimensionBehaviors[0] == DimensionBehaviour.MATCH_CONSTRAINT) {
              bool1 = true;
            }
          }
        }
      }
    }
    return bool1;
  }
  
  public boolean isWidthWrapContent()
  {
    return l;
  }
  
  public void reset()
  {
    q.reset();
    r.reset();
    s.reset();
    t.reset();
    u.reset();
    v.reset();
    w.reset();
    x.reset();
    y = null;
    T = 0.0F;
    z = 0;
    A = 0;
    mDimensionRatio = 0.0F;
    mDimensionRatioSide = -1;
    mX = 0;
    mY = 0;
    U = 0;
    V = 0;
    W = 0;
    X = 0;
    mOffsetX = 0;
    mOffsetY = 0;
    D = 0;
    mMinWidth = 0;
    mMinHeight = 0;
    Y = 0;
    Z = 0;
    E = DEFAULT_BIAS;
    F = DEFAULT_BIAS;
    mListDimensionBehaviors[0] = DimensionBehaviour.FIXED;
    mListDimensionBehaviors[1] = DimensionBehaviour.FIXED;
    aa = null;
    ab = 0;
    ac = 0;
    ae = null;
    G = false;
    H = false;
    L = 0;
    M = 0;
    N = false;
    O = false;
    P[0] = -1.0F;
    P[1] = -1.0F;
    mHorizontalResolution = -1;
    mVerticalResolution = -1;
    S[0] = Integer.MAX_VALUE;
    S[1] = Integer.MAX_VALUE;
    c = 0;
    d = 0;
    h = 1.0F;
    k = 1.0F;
    g = Integer.MAX_VALUE;
    j = Integer.MAX_VALUE;
    f = 0;
    i = 0;
    n = -1;
    o = 1.0F;
    if (a != null) {
      a.reset();
    }
    if (b != null) {
      b.reset();
    }
    p = null;
    I = false;
    J = false;
    K = false;
  }
  
  public void resetAllConstraints()
  {
    resetAnchors();
    setVerticalBiasPercent(DEFAULT_BIAS);
    setHorizontalBiasPercent(DEFAULT_BIAS);
    if ((this instanceof ConstraintWidgetContainer)) {
      return;
    }
    if (getHorizontalDimensionBehaviour() == DimensionBehaviour.MATCH_CONSTRAINT) {
      if (getWidth() == getWrapWidth()) {
        setHorizontalDimensionBehaviour(DimensionBehaviour.WRAP_CONTENT);
      } else if (getWidth() > getMinWidth()) {
        setHorizontalDimensionBehaviour(DimensionBehaviour.FIXED);
      }
    }
    if (getVerticalDimensionBehaviour() == DimensionBehaviour.MATCH_CONSTRAINT)
    {
      if (getHeight() == getWrapHeight())
      {
        setVerticalDimensionBehaviour(DimensionBehaviour.WRAP_CONTENT);
        return;
      }
      if (getHeight() > getMinHeight()) {
        setVerticalDimensionBehaviour(DimensionBehaviour.FIXED);
      }
    }
  }
  
  public void resetAnchor(ConstraintAnchor paramConstraintAnchor)
  {
    if ((getParent() != null) && ((getParent() instanceof ConstraintWidgetContainer)) && (((ConstraintWidgetContainer)getParent()).handlesInternalConstraints())) {
      return;
    }
    ConstraintAnchor localConstraintAnchor1 = getAnchor(ConstraintAnchor.Type.LEFT);
    ConstraintAnchor localConstraintAnchor2 = getAnchor(ConstraintAnchor.Type.RIGHT);
    ConstraintAnchor localConstraintAnchor3 = getAnchor(ConstraintAnchor.Type.TOP);
    ConstraintAnchor localConstraintAnchor4 = getAnchor(ConstraintAnchor.Type.BOTTOM);
    ConstraintAnchor localConstraintAnchor5 = getAnchor(ConstraintAnchor.Type.CENTER);
    ConstraintAnchor localConstraintAnchor6 = getAnchor(ConstraintAnchor.Type.CENTER_X);
    ConstraintAnchor localConstraintAnchor7 = getAnchor(ConstraintAnchor.Type.CENTER_Y);
    if (paramConstraintAnchor == localConstraintAnchor5)
    {
      if ((localConstraintAnchor1.isConnected()) && (localConstraintAnchor2.isConnected()) && (localConstraintAnchor1.getTarget() == localConstraintAnchor2.getTarget()))
      {
        localConstraintAnchor1.reset();
        localConstraintAnchor2.reset();
      }
      if ((localConstraintAnchor3.isConnected()) && (localConstraintAnchor4.isConnected()) && (localConstraintAnchor3.getTarget() == localConstraintAnchor4.getTarget()))
      {
        localConstraintAnchor3.reset();
        localConstraintAnchor4.reset();
      }
      E = 0.5F;
      F = 0.5F;
    }
    else if (paramConstraintAnchor == localConstraintAnchor6)
    {
      if ((localConstraintAnchor1.isConnected()) && (localConstraintAnchor2.isConnected()) && (localConstraintAnchor1.getTarget().getOwner() == localConstraintAnchor2.getTarget().getOwner()))
      {
        localConstraintAnchor1.reset();
        localConstraintAnchor2.reset();
      }
      E = 0.5F;
    }
    else if (paramConstraintAnchor == localConstraintAnchor7)
    {
      if ((localConstraintAnchor3.isConnected()) && (localConstraintAnchor4.isConnected()) && (localConstraintAnchor3.getTarget().getOwner() == localConstraintAnchor4.getTarget().getOwner()))
      {
        localConstraintAnchor3.reset();
        localConstraintAnchor4.reset();
      }
      F = 0.5F;
    }
    else if ((paramConstraintAnchor != localConstraintAnchor1) && (paramConstraintAnchor != localConstraintAnchor2))
    {
      if (((paramConstraintAnchor == localConstraintAnchor3) || (paramConstraintAnchor == localConstraintAnchor4)) && (localConstraintAnchor3.isConnected()) && (localConstraintAnchor3.getTarget() == localConstraintAnchor4.getTarget())) {
        localConstraintAnchor5.reset();
      }
    }
    else if ((localConstraintAnchor1.isConnected()) && (localConstraintAnchor1.getTarget() == localConstraintAnchor2.getTarget()))
    {
      localConstraintAnchor5.reset();
    }
    paramConstraintAnchor.reset();
  }
  
  public void resetAnchors()
  {
    ConstraintWidget localConstraintWidget = getParent();
    if ((localConstraintWidget != null) && ((localConstraintWidget instanceof ConstraintWidgetContainer)) && (((ConstraintWidgetContainer)getParent()).handlesInternalConstraints())) {
      return;
    }
    int i1 = 0;
    int i2 = mAnchors.size();
    while (i1 < i2)
    {
      ((ConstraintAnchor)mAnchors.get(i1)).reset();
      i1 += 1;
    }
  }
  
  public void resetAnchors(int paramInt)
  {
    Object localObject = getParent();
    if ((localObject != null) && ((localObject instanceof ConstraintWidgetContainer)) && (((ConstraintWidgetContainer)getParent()).handlesInternalConstraints())) {
      return;
    }
    int i1 = 0;
    int i2 = mAnchors.size();
    while (i1 < i2)
    {
      localObject = (ConstraintAnchor)mAnchors.get(i1);
      if (paramInt == ((ConstraintAnchor)localObject).getConnectionCreator())
      {
        if (((ConstraintAnchor)localObject).isVerticalAnchor()) {
          setVerticalBiasPercent(DEFAULT_BIAS);
        } else {
          setHorizontalBiasPercent(DEFAULT_BIAS);
        }
        ((ConstraintAnchor)localObject).reset();
      }
      i1 += 1;
    }
  }
  
  public void resetResolutionNodes()
  {
    int i1 = 0;
    while (i1 < 6)
    {
      mListAnchors[i1].getResolutionNode().reset();
      i1 += 1;
    }
  }
  
  public void resetSolverVariables(Cache paramCache)
  {
    q.resetSolverVariable(paramCache);
    r.resetSolverVariable(paramCache);
    s.resetSolverVariable(paramCache);
    t.resetSolverVariable(paramCache);
    u.resetSolverVariable(paramCache);
    x.resetSolverVariable(paramCache);
    v.resetSolverVariable(paramCache);
    w.resetSolverVariable(paramCache);
  }
  
  public void resolve() {}
  
  public void setBaselineDistance(int paramInt)
  {
    D = paramInt;
  }
  
  public void setCompanionWidget(Object paramObject)
  {
    aa = paramObject;
  }
  
  public void setContainerItemSkip(int paramInt)
  {
    if (paramInt >= 0)
    {
      ab = paramInt;
      return;
    }
    ab = 0;
  }
  
  public void setDebugName(String paramString)
  {
    ad = paramString;
  }
  
  public void setDebugSolverName(LinearSystem paramLinearSystem, String paramString)
  {
    ad = paramString;
    Object localObject4 = paramLinearSystem.createObjectVariable(q);
    Object localObject3 = paramLinearSystem.createObjectVariable(r);
    Object localObject2 = paramLinearSystem.createObjectVariable(s);
    Object localObject1 = paramLinearSystem.createObjectVariable(t);
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(paramString);
    localStringBuilder.append(".left");
    ((SolverVariable)localObject4).setName(localStringBuilder.toString());
    localObject4 = new StringBuilder();
    ((StringBuilder)localObject4).append(paramString);
    ((StringBuilder)localObject4).append(".top");
    ((SolverVariable)localObject3).setName(((StringBuilder)localObject4).toString());
    localObject3 = new StringBuilder();
    ((StringBuilder)localObject3).append(paramString);
    ((StringBuilder)localObject3).append(".right");
    ((SolverVariable)localObject2).setName(((StringBuilder)localObject3).toString());
    localObject2 = new StringBuilder();
    ((StringBuilder)localObject2).append(paramString);
    ((StringBuilder)localObject2).append(".bottom");
    ((SolverVariable)localObject1).setName(((StringBuilder)localObject2).toString());
    if (D > 0)
    {
      paramLinearSystem = paramLinearSystem.createObjectVariable(u);
      localObject1 = new StringBuilder();
      ((StringBuilder)localObject1).append(paramString);
      ((StringBuilder)localObject1).append(".baseline");
      paramLinearSystem.setName(((StringBuilder)localObject1).toString());
    }
  }
  
  public void setDimension(int paramInt1, int paramInt2)
  {
    z = paramInt1;
    if (z < mMinWidth) {
      z = mMinWidth;
    }
    A = paramInt2;
    if (A < mMinHeight) {
      A = mMinHeight;
    }
  }
  
  public void setDimensionRatio(float paramFloat, int paramInt)
  {
    mDimensionRatio = paramFloat;
    mDimensionRatioSide = paramInt;
  }
  
  public void setDimensionRatio(String paramString)
  {
    int i1;
    int i2;
    String str;
    if ((paramString != null) && (paramString.length() != 0))
    {
      int i3 = -1;
      int i5 = paramString.length();
      int i6 = paramString.indexOf(',');
      int i4 = 0;
      i1 = i3;
      i2 = i4;
      if (i6 > 0)
      {
        i1 = i3;
        i2 = i4;
        if (i6 < i5 - 1)
        {
          str = paramString.substring(0, i6);
          if (str.equalsIgnoreCase("W"))
          {
            i1 = 0;
          }
          else
          {
            i1 = i3;
            if (str.equalsIgnoreCase("H")) {
              i1 = 1;
            }
          }
          i2 = i6 + 1;
        }
      }
      i3 = paramString.indexOf(':');
      if ((i3 >= 0) && (i3 < i5 - 1))
      {
        str = paramString.substring(i2, i3);
        paramString = paramString.substring(i3 + 1);
        if ((str.length() <= 0) || (paramString.length() <= 0)) {
          break label241;
        }
      }
    }
    try
    {
      f1 = Float.parseFloat(str);
      float f2 = Float.parseFloat(paramString);
      if ((f1 <= 0.0F) || (f2 <= 0.0F)) {
        break label241;
      }
      if (i1 == 1) {
        f1 = Math.abs(f2 / f1);
      } else {
        f1 = Math.abs(f1 / f2);
      }
    }
    catch (NumberFormatException paramString)
    {
      float f1;
      for (;;) {}
    }
    paramString = paramString.substring(i2);
    if (paramString.length() > 0) {
      f1 = Float.parseFloat(paramString);
    } else {
      label241:
      f1 = 0.0F;
    }
    if (f1 > 0.0F)
    {
      mDimensionRatio = f1;
      mDimensionRatioSide = i1;
    }
    return;
    mDimensionRatio = 0.0F;
  }
  
  public void setDrawHeight(int paramInt)
  {
    X = paramInt;
  }
  
  public void setDrawOrigin(int paramInt1, int paramInt2)
  {
    U = (paramInt1 - mOffsetX);
    V = (paramInt2 - mOffsetY);
    mX = U;
    mY = V;
  }
  
  public void setDrawWidth(int paramInt)
  {
    W = paramInt;
  }
  
  public void setDrawX(int paramInt)
  {
    U = (paramInt - mOffsetX);
    mX = U;
  }
  
  public void setDrawY(int paramInt)
  {
    V = (paramInt - mOffsetY);
    mY = V;
  }
  
  public void setFrame(int paramInt1, int paramInt2, int paramInt3)
  {
    if (paramInt3 == 0) {
      setHorizontalDimension(paramInt1, paramInt2);
    } else if (paramInt3 == 1) {
      setVerticalDimension(paramInt1, paramInt2);
    }
    J = true;
  }
  
  public void setFrame(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    int i1 = paramInt3 - paramInt1;
    paramInt3 = paramInt4 - paramInt2;
    mX = paramInt1;
    mY = paramInt2;
    if (ac == 8)
    {
      z = 0;
      A = 0;
      return;
    }
    paramInt1 = i1;
    if (mListDimensionBehaviors[0] == DimensionBehaviour.FIXED)
    {
      paramInt1 = i1;
      if (i1 < z) {
        paramInt1 = z;
      }
    }
    paramInt2 = paramInt3;
    if (mListDimensionBehaviors[1] == DimensionBehaviour.FIXED)
    {
      paramInt2 = paramInt3;
      if (paramInt3 < A) {
        paramInt2 = A;
      }
    }
    z = paramInt1;
    A = paramInt2;
    if (A < mMinHeight) {
      A = mMinHeight;
    }
    if (z < mMinWidth) {
      z = mMinWidth;
    }
    J = true;
  }
  
  public void setGoneMargin(ConstraintAnchor.Type paramType, int paramInt)
  {
    switch (1.a[paramType.ordinal()])
    {
    default: 
      return;
    case 4: 
      t.d = paramInt;
      return;
    case 3: 
      s.d = paramInt;
      return;
    case 2: 
      r.d = paramInt;
      return;
    }
    q.d = paramInt;
  }
  
  public void setHeight(int paramInt)
  {
    A = paramInt;
    if (A < mMinHeight) {
      A = mMinHeight;
    }
  }
  
  public void setHeightWrapContent(boolean paramBoolean)
  {
    m = paramBoolean;
  }
  
  public void setHorizontalBiasPercent(float paramFloat)
  {
    E = paramFloat;
  }
  
  public void setHorizontalChainStyle(int paramInt)
  {
    L = paramInt;
  }
  
  public void setHorizontalDimension(int paramInt1, int paramInt2)
  {
    mX = paramInt1;
    z = (paramInt2 - paramInt1);
    if (z < mMinWidth) {
      z = mMinWidth;
    }
  }
  
  public void setHorizontalDimensionBehaviour(DimensionBehaviour paramDimensionBehaviour)
  {
    mListDimensionBehaviors[0] = paramDimensionBehaviour;
    if (paramDimensionBehaviour == DimensionBehaviour.WRAP_CONTENT) {
      setWidth(Y);
    }
  }
  
  public void setHorizontalMatchStyle(int paramInt1, int paramInt2, int paramInt3, float paramFloat)
  {
    c = paramInt1;
    f = paramInt2;
    g = paramInt3;
    h = paramFloat;
    if ((paramFloat < 1.0F) && (c == 0)) {
      c = 2;
    }
  }
  
  public void setHorizontalWeight(float paramFloat)
  {
    P[0] = paramFloat;
  }
  
  public void setLength(int paramInt1, int paramInt2)
  {
    if (paramInt2 == 0)
    {
      setWidth(paramInt1);
      return;
    }
    if (paramInt2 == 1) {
      setHeight(paramInt1);
    }
  }
  
  public void setMaxHeight(int paramInt)
  {
    S[1] = paramInt;
  }
  
  public void setMaxWidth(int paramInt)
  {
    S[0] = paramInt;
  }
  
  public void setMinHeight(int paramInt)
  {
    if (paramInt < 0)
    {
      mMinHeight = 0;
      return;
    }
    mMinHeight = paramInt;
  }
  
  public void setMinWidth(int paramInt)
  {
    if (paramInt < 0)
    {
      mMinWidth = 0;
      return;
    }
    mMinWidth = paramInt;
  }
  
  public void setOffset(int paramInt1, int paramInt2)
  {
    mOffsetX = paramInt1;
    mOffsetY = paramInt2;
  }
  
  public void setOrigin(int paramInt1, int paramInt2)
  {
    mX = paramInt1;
    mY = paramInt2;
  }
  
  public void setParent(ConstraintWidget paramConstraintWidget)
  {
    y = paramConstraintWidget;
  }
  
  public void setType(String paramString)
  {
    ae = paramString;
  }
  
  public void setVerticalBiasPercent(float paramFloat)
  {
    F = paramFloat;
  }
  
  public void setVerticalChainStyle(int paramInt)
  {
    M = paramInt;
  }
  
  public void setVerticalDimension(int paramInt1, int paramInt2)
  {
    mY = paramInt1;
    A = (paramInt2 - paramInt1);
    if (A < mMinHeight) {
      A = mMinHeight;
    }
  }
  
  public void setVerticalDimensionBehaviour(DimensionBehaviour paramDimensionBehaviour)
  {
    mListDimensionBehaviors[1] = paramDimensionBehaviour;
    if (paramDimensionBehaviour == DimensionBehaviour.WRAP_CONTENT) {
      setHeight(Z);
    }
  }
  
  public void setVerticalMatchStyle(int paramInt1, int paramInt2, int paramInt3, float paramFloat)
  {
    d = paramInt1;
    i = paramInt2;
    j = paramInt3;
    k = paramFloat;
    if ((paramFloat < 1.0F) && (d == 0)) {
      d = 2;
    }
  }
  
  public void setVerticalWeight(float paramFloat)
  {
    P[1] = paramFloat;
  }
  
  public void setVisibility(int paramInt)
  {
    ac = paramInt;
  }
  
  public void setWidth(int paramInt)
  {
    z = paramInt;
    if (z < mMinWidth) {
      z = mMinWidth;
    }
  }
  
  public void setWidthWrapContent(boolean paramBoolean)
  {
    l = paramBoolean;
  }
  
  public void setWrapHeight(int paramInt)
  {
    Z = paramInt;
  }
  
  public void setWrapWidth(int paramInt)
  {
    Y = paramInt;
  }
  
  public void setX(int paramInt)
  {
    mX = paramInt;
  }
  
  public void setY(int paramInt)
  {
    mY = paramInt;
  }
  
  public void setupDimensionRatio(boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3, boolean paramBoolean4)
  {
    if (n == -1) {
      if ((paramBoolean3) && (!paramBoolean4))
      {
        n = 0;
      }
      else if ((!paramBoolean3) && (paramBoolean4))
      {
        n = 1;
        if (mDimensionRatioSide == -1) {
          o = (1.0F / o);
        }
      }
    }
    if ((n == 0) && ((!r.isConnected()) || (!t.isConnected()))) {
      n = 1;
    } else if ((n == 1) && ((!q.isConnected()) || (!s.isConnected()))) {
      n = 0;
    }
    if ((n == -1) && ((!r.isConnected()) || (!t.isConnected()) || (!q.isConnected()) || (!s.isConnected()))) {
      if ((r.isConnected()) && (t.isConnected()))
      {
        n = 0;
      }
      else if ((q.isConnected()) && (s.isConnected()))
      {
        o = (1.0F / o);
        n = 1;
      }
    }
    if (n == -1) {
      if ((paramBoolean1) && (!paramBoolean2))
      {
        n = 0;
      }
      else if ((!paramBoolean1) && (paramBoolean2))
      {
        o = (1.0F / o);
        n = 1;
      }
    }
    if (n == -1) {
      if ((f > 0) && (i == 0))
      {
        n = 0;
      }
      else if ((f == 0) && (i > 0))
      {
        o = (1.0F / o);
        n = 1;
      }
    }
    if ((n == -1) && (paramBoolean1) && (paramBoolean2))
    {
      o = (1.0F / o);
      n = 1;
    }
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    Object localObject;
    if (ae != null)
    {
      localObject = new StringBuilder();
      ((StringBuilder)localObject).append("type: ");
      ((StringBuilder)localObject).append(ae);
      ((StringBuilder)localObject).append(" ");
      localObject = ((StringBuilder)localObject).toString();
    }
    else
    {
      localObject = "";
    }
    localStringBuilder.append((String)localObject);
    if (ad != null)
    {
      localObject = new StringBuilder();
      ((StringBuilder)localObject).append("id: ");
      ((StringBuilder)localObject).append(ad);
      ((StringBuilder)localObject).append(" ");
      localObject = ((StringBuilder)localObject).toString();
    }
    else
    {
      localObject = "";
    }
    localStringBuilder.append((String)localObject);
    localStringBuilder.append("(");
    localStringBuilder.append(mX);
    localStringBuilder.append(", ");
    localStringBuilder.append(mY);
    localStringBuilder.append(") - (");
    localStringBuilder.append(z);
    localStringBuilder.append(" x ");
    localStringBuilder.append(A);
    localStringBuilder.append(") wrap: (");
    localStringBuilder.append(Y);
    localStringBuilder.append(" x ");
    localStringBuilder.append(Z);
    localStringBuilder.append(")");
    return localStringBuilder.toString();
  }
  
  public void updateDrawPosition()
  {
    int i1 = mX;
    int i2 = mY;
    int i3 = mX;
    int i4 = z;
    int i5 = mY;
    int i6 = A;
    U = i1;
    V = i2;
    W = (i3 + i4 - i1);
    X = (i5 + i6 - i2);
  }
  
  public void updateFromSolver(LinearSystem paramLinearSystem)
  {
    int i2 = paramLinearSystem.getObjectVariableValue(q);
    int i3 = paramLinearSystem.getObjectVariableValue(r);
    int i4 = paramLinearSystem.getObjectVariableValue(s);
    int i5 = paramLinearSystem.getObjectVariableValue(t);
    int i1;
    if ((i4 - i2 >= 0) && (i5 - i3 >= 0) && (i2 != Integer.MIN_VALUE) && (i2 != Integer.MAX_VALUE) && (i3 != Integer.MIN_VALUE) && (i3 != Integer.MAX_VALUE) && (i4 != Integer.MIN_VALUE) && (i4 != Integer.MAX_VALUE) && (i5 != Integer.MIN_VALUE))
    {
      i1 = i5;
      if (i5 != Integer.MAX_VALUE) {}
    }
    else
    {
      i1 = 0;
      i2 = 0;
      i3 = 0;
      i4 = 0;
    }
    setFrame(i2, i3, i4, i1);
  }
  
  public void updateResolutionNodes()
  {
    int i1 = 0;
    while (i1 < 6)
    {
      mListAnchors[i1].getResolutionNode().update();
      i1 += 1;
    }
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
  
  public static enum DimensionBehaviour
  {
    private DimensionBehaviour() {}
  }
}
