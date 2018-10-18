package android.support.constraint.solver;

import android.support.constraint.solver.widgets.ConstraintAnchor;
import android.support.constraint.solver.widgets.ConstraintAnchor.Type;
import android.support.constraint.solver.widgets.ConstraintWidget;
import java.io.PrintStream;
import java.util.Arrays;
import java.util.HashMap;

public class LinearSystem
{
  public static final boolean FULL_DEBUG = false;
  private static int f = 1000;
  public static Metrics sMetrics;
  int a = 0;
  ArrayRow[] b = null;
  int c = 1;
  int d = 0;
  final Cache e;
  private HashMap<String, SolverVariable> g = null;
  public boolean graphOptimizer = false;
  private a h;
  private int i = 32;
  private int j = i;
  private boolean[] k = new boolean[i];
  private int l = i;
  private SolverVariable[] m = new SolverVariable[f];
  private int n = 0;
  private ArrayRow[] o = new ArrayRow[i];
  private final a p;
  
  public LinearSystem()
  {
    b();
    e = new Cache();
    h = new GoalRow(e);
    p = new ArrayRow(e);
  }
  
  private final int a(a paramA, boolean paramBoolean)
  {
    Object localObject;
    if (sMetrics != null)
    {
      localObject = sMetrics;
      optimize += 1L;
    }
    int i1 = 0;
    while (i1 < c)
    {
      k[i1] = false;
      i1 += 1;
    }
    int i2 = 0;
    i1 = 0;
    while (i2 == 0)
    {
      if (sMetrics != null)
      {
        localObject = sMetrics;
        iterations += 1L;
      }
      int i5 = i1 + 1;
      if (i5 >= c * 2) {
        return i5;
      }
      if (paramA.getKey() != null) {
        k[getKeyid] = true;
      }
      localObject = paramA.getPivotCandidate(this, k);
      if (localObject != null)
      {
        if (k[id] != 0) {
          return i5;
        }
        k[id] = true;
      }
      if (localObject != null)
      {
        i1 = 0;
        int i3 = -1;
        ArrayRow localArrayRow;
        float f2;
        for (float f1 = Float.MAX_VALUE; i1 < d; f1 = f2)
        {
          localArrayRow = b[i1];
          int i4;
          if (a.c == SolverVariable.Type.UNRESTRICTED)
          {
            i4 = i3;
            f2 = f1;
          }
          else if (d)
          {
            i4 = i3;
            f2 = f1;
          }
          else
          {
            i4 = i3;
            f2 = f1;
            if (localArrayRow.a((SolverVariable)localObject))
            {
              float f3 = variables.get((SolverVariable)localObject);
              i4 = i3;
              f2 = f1;
              if (f3 < 0.0F)
              {
                f3 = -b / f3;
                i4 = i3;
                f2 = f1;
                if (f3 < f1)
                {
                  i4 = i1;
                  f2 = f3;
                }
              }
            }
          }
          i1 += 1;
          i3 = i4;
        }
        if (i3 > -1)
        {
          localArrayRow = b[i3];
          a.a = -1;
          if (sMetrics != null)
          {
            Metrics localMetrics = sMetrics;
            pivots += 1L;
          }
          localArrayRow.c((SolverVariable)localObject);
          a.a = i3;
          a.updateReferencesWithNewDefinition(localArrayRow);
          i1 = i5;
          continue;
        }
      }
      i2 = 1;
      i1 = i5;
    }
    return i1;
  }
  
  private SolverVariable a(SolverVariable.Type paramType, String paramString)
  {
    SolverVariable localSolverVariable = (SolverVariable)e.b.a();
    if (localSolverVariable == null)
    {
      localSolverVariable = new SolverVariable(paramType, paramString);
      localSolverVariable.setType(paramType, paramString);
      paramType = localSolverVariable;
    }
    else
    {
      localSolverVariable.reset();
      localSolverVariable.setType(paramType, paramString);
      paramType = localSolverVariable;
    }
    if (n >= f)
    {
      f *= 2;
      m = ((SolverVariable[])Arrays.copyOf(m, f));
    }
    paramString = m;
    int i1 = n;
    n = (i1 + 1);
    paramString[i1] = paramType;
    return paramType;
  }
  
  private void a()
  {
    i *= 2;
    b = ((ArrayRow[])Arrays.copyOf(b, i));
    e.c = ((SolverVariable[])Arrays.copyOf(e.c, i));
    k = new boolean[i];
    j = i;
    l = i;
    if (sMetrics != null)
    {
      Metrics localMetrics = sMetrics;
      tableSizeIncrease += 1L;
      sMetricsmaxTableSize = Math.max(sMetricsmaxTableSize, i);
      sMetricslastTableSize = sMetricsmaxTableSize;
    }
  }
  
  private void a(ArrayRow paramArrayRow)
  {
    paramArrayRow.addError(this, 0);
  }
  
  private void a(ArrayRow paramArrayRow, int paramInt)
  {
    a(paramArrayRow, paramInt, 0);
  }
  
  private int b(a paramA)
    throws Exception
  {
    int i1 = 0;
    while (i1 < d)
    {
      if ((b[i1].a.c != SolverVariable.Type.UNRESTRICTED) && (b[i1].b < 0.0F))
      {
        i1 = 1;
        break label67;
      }
      i1 += 1;
    }
    i1 = 0;
    label67:
    if (i1 != 0)
    {
      int i4 = 0;
      int i10;
      for (i1 = 0; i4 == 0; i1 = i10)
      {
        if (sMetrics != null)
        {
          paramA = sMetrics;
          bfs += 1L;
        }
        i10 = i1 + 1;
        int i5 = 0;
        i1 = -1;
        int i2 = -1;
        float f1 = Float.MAX_VALUE;
        int i9;
        Object localObject;
        for (int i3 = 0; i5 < d; i3 = i9)
        {
          paramA = b[i5];
          int i7;
          int i8;
          float f2;
          if (a.c == SolverVariable.Type.UNRESTRICTED)
          {
            i7 = i1;
            i8 = i2;
            f2 = f1;
            i9 = i3;
          }
          else if (d)
          {
            i7 = i1;
            i8 = i2;
            f2 = f1;
            i9 = i3;
          }
          else
          {
            i7 = i1;
            i8 = i2;
            f2 = f1;
            i9 = i3;
            if (b < 0.0F)
            {
              int i6 = 1;
              for (;;)
              {
                i7 = i1;
                i8 = i2;
                f2 = f1;
                i9 = i3;
                if (i6 >= c) {
                  break;
                }
                localObject = e.c[i6];
                float f3 = variables.get((SolverVariable)localObject);
                if (f3 > 0.0F)
                {
                  i8 = i3;
                  i9 = 0;
                  i3 = i2;
                  i7 = i1;
                  i1 = i9;
                  for (i2 = i8; i1 < 7; i2 = i8)
                  {
                    f2 = b[i1] / f3;
                    if ((f2 >= f1) || (i1 != i2))
                    {
                      i8 = i2;
                      if (i1 <= i2) {}
                    }
                    else
                    {
                      i3 = i6;
                      i7 = i5;
                      f1 = f2;
                      i8 = i1;
                    }
                    i1 += 1;
                  }
                  i1 = i3;
                  i3 = i2;
                  i2 = i1;
                  i1 = i7;
                }
                i6 += 1;
              }
            }
          }
          i5 += 1;
          i1 = i7;
          i2 = i8;
          f1 = f2;
        }
        if (i1 != -1)
        {
          paramA = b[i1];
          a.a = -1;
          if (sMetrics != null)
          {
            localObject = sMetrics;
            pivots += 1L;
          }
          paramA.c(e.c[i2]);
          a.a = i1;
          a.updateReferencesWithNewDefinition(paramA);
        }
        else
        {
          i4 = 1;
        }
        if (i10 > c / 2) {
          i4 = 1;
        }
      }
      return i1;
    }
    return 0;
  }
  
  private void b()
  {
    int i1 = 0;
    while (i1 < b.length)
    {
      ArrayRow localArrayRow = b[i1];
      if (localArrayRow != null) {
        e.a.a(localArrayRow);
      }
      b[i1] = null;
      i1 += 1;
    }
  }
  
  private final void b(ArrayRow paramArrayRow)
  {
    if (d > 0)
    {
      variables.a(paramArrayRow, b);
      if (variables.a == 0) {
        d = true;
      }
    }
  }
  
  private void c()
  {
    int i1 = 0;
    while (i1 < d)
    {
      ArrayRow localArrayRow = b[i1];
      a.computedValue = b;
      i1 += 1;
    }
  }
  
  private final void c(ArrayRow paramArrayRow)
  {
    if (b[d] != null) {
      e.a.a(b[d]);
    }
    b[d] = paramArrayRow;
    a.a = d;
    d += 1;
    a.updateReferencesWithNewDefinition(paramArrayRow);
  }
  
  public static ArrayRow createRowCentering(LinearSystem paramLinearSystem, SolverVariable paramSolverVariable1, SolverVariable paramSolverVariable2, int paramInt1, float paramFloat, SolverVariable paramSolverVariable3, SolverVariable paramSolverVariable4, int paramInt2, boolean paramBoolean)
  {
    ArrayRow localArrayRow = paramLinearSystem.createRow();
    localArrayRow.a(paramSolverVariable1, paramSolverVariable2, paramInt1, paramFloat, paramSolverVariable3, paramSolverVariable4, paramInt2);
    if (paramBoolean) {
      localArrayRow.addError(paramLinearSystem, 4);
    }
    return localArrayRow;
  }
  
  public static ArrayRow createRowDimensionPercent(LinearSystem paramLinearSystem, SolverVariable paramSolverVariable1, SolverVariable paramSolverVariable2, SolverVariable paramSolverVariable3, float paramFloat, boolean paramBoolean)
  {
    ArrayRow localArrayRow = paramLinearSystem.createRow();
    if (paramBoolean) {
      paramLinearSystem.a(localArrayRow);
    }
    return localArrayRow.a(paramSolverVariable1, paramSolverVariable2, paramSolverVariable3, paramFloat);
  }
  
  public static ArrayRow createRowEquals(LinearSystem paramLinearSystem, SolverVariable paramSolverVariable1, SolverVariable paramSolverVariable2, int paramInt, boolean paramBoolean)
  {
    ArrayRow localArrayRow = paramLinearSystem.createRow();
    localArrayRow.createRowEquals(paramSolverVariable1, paramSolverVariable2, paramInt);
    if (paramBoolean) {
      paramLinearSystem.a(localArrayRow, 1);
    }
    return localArrayRow;
  }
  
  public static ArrayRow createRowGreaterThan(LinearSystem paramLinearSystem, SolverVariable paramSolverVariable1, SolverVariable paramSolverVariable2, int paramInt, boolean paramBoolean)
  {
    SolverVariable localSolverVariable = paramLinearSystem.createSlackVariable();
    ArrayRow localArrayRow = paramLinearSystem.createRow();
    localArrayRow.createRowGreaterThan(paramSolverVariable1, paramSolverVariable2, localSolverVariable, paramInt);
    if (paramBoolean) {
      paramLinearSystem.a(localArrayRow, (int)(variables.get(localSolverVariable) * -1.0F));
    }
    return localArrayRow;
  }
  
  public static ArrayRow createRowLowerThan(LinearSystem paramLinearSystem, SolverVariable paramSolverVariable1, SolverVariable paramSolverVariable2, int paramInt, boolean paramBoolean)
  {
    SolverVariable localSolverVariable = paramLinearSystem.createSlackVariable();
    ArrayRow localArrayRow = paramLinearSystem.createRow();
    localArrayRow.createRowLowerThan(paramSolverVariable1, paramSolverVariable2, localSolverVariable, paramInt);
    if (paramBoolean) {
      paramLinearSystem.a(localArrayRow, (int)(variables.get(localSolverVariable) * -1.0F));
    }
    return localArrayRow;
  }
  
  private void d()
  {
    Object localObject = new StringBuilder();
    ((StringBuilder)localObject).append("Display Rows (");
    ((StringBuilder)localObject).append(d);
    ((StringBuilder)localObject).append("x");
    ((StringBuilder)localObject).append(c);
    ((StringBuilder)localObject).append(")\n");
    localObject = ((StringBuilder)localObject).toString();
    System.out.println((String)localObject);
  }
  
  public static Metrics getMetrics()
  {
    return sMetrics;
  }
  
  void a(ArrayRow paramArrayRow, int paramInt1, int paramInt2)
  {
    paramArrayRow.b(createErrorVariable(paramInt2, null), paramInt1);
  }
  
  void a(a paramA)
    throws Exception
  {
    if (sMetrics != null)
    {
      Metrics localMetrics = sMetrics;
      minimizeGoal += 1L;
      sMetricsmaxVariables = Math.max(sMetricsmaxVariables, c);
      sMetricsmaxRows = Math.max(sMetricsmaxRows, d);
    }
    b((ArrayRow)paramA);
    b(paramA);
    a(paramA, false);
    c();
  }
  
  public void addCenterPoint(ConstraintWidget paramConstraintWidget1, ConstraintWidget paramConstraintWidget2, float paramFloat, int paramInt)
  {
    SolverVariable localSolverVariable1 = createObjectVariable(paramConstraintWidget1.getAnchor(ConstraintAnchor.Type.LEFT));
    SolverVariable localSolverVariable3 = createObjectVariable(paramConstraintWidget1.getAnchor(ConstraintAnchor.Type.TOP));
    SolverVariable localSolverVariable2 = createObjectVariable(paramConstraintWidget1.getAnchor(ConstraintAnchor.Type.RIGHT));
    SolverVariable localSolverVariable5 = createObjectVariable(paramConstraintWidget1.getAnchor(ConstraintAnchor.Type.BOTTOM));
    paramConstraintWidget1 = createObjectVariable(paramConstraintWidget2.getAnchor(ConstraintAnchor.Type.LEFT));
    SolverVariable localSolverVariable6 = createObjectVariable(paramConstraintWidget2.getAnchor(ConstraintAnchor.Type.TOP));
    SolverVariable localSolverVariable4 = createObjectVariable(paramConstraintWidget2.getAnchor(ConstraintAnchor.Type.RIGHT));
    paramConstraintWidget2 = createObjectVariable(paramConstraintWidget2.getAnchor(ConstraintAnchor.Type.BOTTOM));
    ArrayRow localArrayRow = createRow();
    double d1 = paramFloat;
    double d2 = Math.sin(d1);
    double d3 = paramInt;
    localArrayRow.createRowWithAngle(localSolverVariable3, localSolverVariable5, localSolverVariable6, paramConstraintWidget2, (float)(d2 * d3));
    addConstraint(localArrayRow);
    paramConstraintWidget2 = createRow();
    paramConstraintWidget2.createRowWithAngle(localSolverVariable1, localSolverVariable2, paramConstraintWidget1, localSolverVariable4, (float)(Math.cos(d1) * d3));
    addConstraint(paramConstraintWidget2);
  }
  
  public void addCentering(SolverVariable paramSolverVariable1, SolverVariable paramSolverVariable2, int paramInt1, float paramFloat, SolverVariable paramSolverVariable3, SolverVariable paramSolverVariable4, int paramInt2, int paramInt3)
  {
    ArrayRow localArrayRow = createRow();
    localArrayRow.a(paramSolverVariable1, paramSolverVariable2, paramInt1, paramFloat, paramSolverVariable3, paramSolverVariable4, paramInt2);
    if (paramInt3 != 6) {
      localArrayRow.addError(this, paramInt3);
    }
    addConstraint(localArrayRow);
  }
  
  public void addConstraint(ArrayRow paramArrayRow)
  {
    if (paramArrayRow == null) {
      return;
    }
    Object localObject;
    if (sMetrics != null)
    {
      localObject = sMetrics;
      constraints += 1L;
      if (d)
      {
        localObject = sMetrics;
        simpleconstraints += 1L;
      }
    }
    if ((d + 1 >= l) || (c + 1 >= j)) {
      a();
    }
    int i1 = 0;
    int i2 = 0;
    if (!d)
    {
      b(paramArrayRow);
      if (paramArrayRow.isEmpty()) {
        return;
      }
      paramArrayRow.d();
      i1 = i2;
      if (paramArrayRow.a(this))
      {
        localObject = createExtraVariable();
        a = ((SolverVariable)localObject);
        c(paramArrayRow);
        p.initFromRow(paramArrayRow);
        a(p, true);
        if (a == -1)
        {
          if (a == localObject)
          {
            localObject = paramArrayRow.b((SolverVariable)localObject);
            if (localObject != null)
            {
              if (sMetrics != null)
              {
                Metrics localMetrics = sMetrics;
                pivots += 1L;
              }
              paramArrayRow.c((SolverVariable)localObject);
            }
          }
          if (!d) {
            a.updateReferencesWithNewDefinition(paramArrayRow);
          }
          d -= 1;
        }
        i1 = 1;
      }
      if (!paramArrayRow.a()) {
        return;
      }
    }
    if (i1 == 0) {
      c(paramArrayRow);
    }
  }
  
  public ArrayRow addEquality(SolverVariable paramSolverVariable1, SolverVariable paramSolverVariable2, int paramInt1, int paramInt2)
  {
    ArrayRow localArrayRow = createRow();
    localArrayRow.createRowEquals(paramSolverVariable1, paramSolverVariable2, paramInt1);
    if (paramInt2 != 6) {
      localArrayRow.addError(this, paramInt2);
    }
    addConstraint(localArrayRow);
    return localArrayRow;
  }
  
  public void addEquality(SolverVariable paramSolverVariable, int paramInt)
  {
    int i1 = a;
    if (a != -1)
    {
      localArrayRow = b[i1];
      if (d)
      {
        b = paramInt;
        return;
      }
      if (variables.a == 0)
      {
        d = true;
        b = paramInt;
        return;
      }
      localArrayRow = createRow();
      localArrayRow.createRowEquals(paramSolverVariable, paramInt);
      addConstraint(localArrayRow);
      return;
    }
    ArrayRow localArrayRow = createRow();
    localArrayRow.a(paramSolverVariable, paramInt);
    addConstraint(localArrayRow);
  }
  
  public void addEquality(SolverVariable paramSolverVariable, int paramInt1, int paramInt2)
  {
    int i1 = a;
    if (a != -1)
    {
      localArrayRow = b[i1];
      if (d)
      {
        b = paramInt1;
        return;
      }
      localArrayRow = createRow();
      localArrayRow.createRowEquals(paramSolverVariable, paramInt1);
      localArrayRow.addError(this, paramInt2);
      addConstraint(localArrayRow);
      return;
    }
    ArrayRow localArrayRow = createRow();
    localArrayRow.a(paramSolverVariable, paramInt1);
    localArrayRow.addError(this, paramInt2);
    addConstraint(localArrayRow);
  }
  
  public void addGreaterBarrier(SolverVariable paramSolverVariable1, SolverVariable paramSolverVariable2, boolean paramBoolean)
  {
    ArrayRow localArrayRow = createRow();
    SolverVariable localSolverVariable = createSlackVariable();
    strength = 0;
    localArrayRow.createRowGreaterThan(paramSolverVariable1, paramSolverVariable2, localSolverVariable, 0);
    if (paramBoolean) {
      a(localArrayRow, (int)(variables.get(localSolverVariable) * -1.0F), 1);
    }
    addConstraint(localArrayRow);
  }
  
  public void addGreaterThan(SolverVariable paramSolverVariable, int paramInt)
  {
    ArrayRow localArrayRow = createRow();
    SolverVariable localSolverVariable = createSlackVariable();
    strength = 0;
    localArrayRow.createRowGreaterThan(paramSolverVariable, paramInt, localSolverVariable);
    addConstraint(localArrayRow);
  }
  
  public void addGreaterThan(SolverVariable paramSolverVariable1, SolverVariable paramSolverVariable2, int paramInt1, int paramInt2)
  {
    ArrayRow localArrayRow = createRow();
    SolverVariable localSolverVariable = createSlackVariable();
    strength = 0;
    localArrayRow.createRowGreaterThan(paramSolverVariable1, paramSolverVariable2, localSolverVariable, paramInt1);
    if (paramInt2 != 6) {
      a(localArrayRow, (int)(variables.get(localSolverVariable) * -1.0F), paramInt2);
    }
    addConstraint(localArrayRow);
  }
  
  public void addLowerBarrier(SolverVariable paramSolverVariable1, SolverVariable paramSolverVariable2, boolean paramBoolean)
  {
    ArrayRow localArrayRow = createRow();
    SolverVariable localSolverVariable = createSlackVariable();
    strength = 0;
    localArrayRow.createRowLowerThan(paramSolverVariable1, paramSolverVariable2, localSolverVariable, 0);
    if (paramBoolean) {
      a(localArrayRow, (int)(variables.get(localSolverVariable) * -1.0F), 1);
    }
    addConstraint(localArrayRow);
  }
  
  public void addLowerThan(SolverVariable paramSolverVariable1, SolverVariable paramSolverVariable2, int paramInt1, int paramInt2)
  {
    ArrayRow localArrayRow = createRow();
    SolverVariable localSolverVariable = createSlackVariable();
    strength = 0;
    localArrayRow.createRowLowerThan(paramSolverVariable1, paramSolverVariable2, localSolverVariable, paramInt1);
    if (paramInt2 != 6) {
      a(localArrayRow, (int)(variables.get(localSolverVariable) * -1.0F), paramInt2);
    }
    addConstraint(localArrayRow);
  }
  
  public void addRatio(SolverVariable paramSolverVariable1, SolverVariable paramSolverVariable2, SolverVariable paramSolverVariable3, SolverVariable paramSolverVariable4, float paramFloat, int paramInt)
  {
    ArrayRow localArrayRow = createRow();
    localArrayRow.createRowDimensionRatio(paramSolverVariable1, paramSolverVariable2, paramSolverVariable3, paramSolverVariable4, paramFloat);
    if (paramInt != 6) {
      localArrayRow.addError(this, paramInt);
    }
    addConstraint(localArrayRow);
  }
  
  public SolverVariable createErrorVariable(int paramInt, String paramString)
  {
    if (sMetrics != null)
    {
      Metrics localMetrics = sMetrics;
      errors += 1L;
    }
    if (c + 1 >= j) {
      a();
    }
    paramString = a(SolverVariable.Type.ERROR, paramString);
    a += 1;
    c += 1;
    id = a;
    strength = paramInt;
    e.c[a] = paramString;
    h.addError(paramString);
    return paramString;
  }
  
  public SolverVariable createExtraVariable()
  {
    if (sMetrics != null)
    {
      localObject = sMetrics;
      extravariables += 1L;
    }
    if (c + 1 >= j) {
      a();
    }
    Object localObject = a(SolverVariable.Type.SLACK, null);
    a += 1;
    c += 1;
    id = a;
    e.c[a] = localObject;
    return localObject;
  }
  
  public SolverVariable createObjectVariable(Object paramObject)
  {
    Object localObject = null;
    if (paramObject == null) {
      return null;
    }
    if (c + 1 >= j) {
      a();
    }
    if ((paramObject instanceof ConstraintAnchor))
    {
      ConstraintAnchor localConstraintAnchor = (ConstraintAnchor)paramObject;
      localObject = localConstraintAnchor.getSolverVariable();
      paramObject = localObject;
      if (localObject == null)
      {
        localConstraintAnchor.resetSolverVariable(e);
        paramObject = localConstraintAnchor.getSolverVariable();
      }
      if ((id != -1) && (id <= a))
      {
        localObject = paramObject;
        if (e.c[id] != null) {}
      }
      else
      {
        if (id != -1) {
          paramObject.reset();
        }
        a += 1;
        c += 1;
        id = a;
        c = SolverVariable.Type.UNRESTRICTED;
        e.c[a] = paramObject;
        localObject = paramObject;
      }
    }
    return localObject;
  }
  
  public ArrayRow createRow()
  {
    ArrayRow localArrayRow = (ArrayRow)e.a.a();
    if (localArrayRow == null) {
      localArrayRow = new ArrayRow(e);
    } else {
      localArrayRow.reset();
    }
    SolverVariable.a();
    return localArrayRow;
  }
  
  public SolverVariable createSlackVariable()
  {
    if (sMetrics != null)
    {
      localObject = sMetrics;
      slackvariables += 1L;
    }
    if (c + 1 >= j) {
      a();
    }
    Object localObject = a(SolverVariable.Type.SLACK, null);
    a += 1;
    c += 1;
    id = a;
    e.c[a] = localObject;
    return localObject;
  }
  
  public void displayVariablesReadableRows()
  {
    d();
    Object localObject1 = "";
    int i1 = 0;
    while (i1 < d)
    {
      localObject2 = localObject1;
      if (b[i1].a.c == SolverVariable.Type.UNRESTRICTED)
      {
        localObject2 = new StringBuilder();
        ((StringBuilder)localObject2).append((String)localObject1);
        ((StringBuilder)localObject2).append(b[i1].b());
        localObject1 = ((StringBuilder)localObject2).toString();
        localObject2 = new StringBuilder();
        ((StringBuilder)localObject2).append((String)localObject1);
        ((StringBuilder)localObject2).append("\n");
        localObject2 = ((StringBuilder)localObject2).toString();
      }
      i1 += 1;
      localObject1 = localObject2;
    }
    Object localObject2 = new StringBuilder();
    ((StringBuilder)localObject2).append((String)localObject1);
    ((StringBuilder)localObject2).append(h);
    ((StringBuilder)localObject2).append("\n");
    localObject1 = ((StringBuilder)localObject2).toString();
    System.out.println((String)localObject1);
  }
  
  public void fillMetrics(Metrics paramMetrics)
  {
    sMetrics = paramMetrics;
  }
  
  public Cache getCache()
  {
    return e;
  }
  
  public int getMemoryUsed()
  {
    int i1 = 0;
    int i3;
    for (int i2 = 0; i1 < d; i2 = i3)
    {
      i3 = i2;
      if (b[i1] != null) {
        i3 = i2 + b[i1].c();
      }
      i1 += 1;
    }
    return i2;
  }
  
  public int getNumEquations()
  {
    return d;
  }
  
  public int getNumVariables()
  {
    return a;
  }
  
  public int getObjectVariableValue(Object paramObject)
  {
    paramObject = ((ConstraintAnchor)paramObject).getSolverVariable();
    if (paramObject != null) {
      return (int)(computedValue + 0.5F);
    }
    return 0;
  }
  
  public void minimize()
    throws Exception
  {
    Metrics localMetrics;
    if (sMetrics != null)
    {
      localMetrics = sMetrics;
      minimize += 1L;
    }
    if (graphOptimizer)
    {
      if (sMetrics != null)
      {
        localMetrics = sMetrics;
        graphOptimizer += 1L;
      }
      int i2 = 0;
      int i1 = 0;
      while (i1 < d)
      {
        if (!b[i1].d)
        {
          i1 = i2;
          break label85;
        }
        i1 += 1;
      }
      i1 = 1;
      label85:
      if (i1 == 0)
      {
        a(h);
        return;
      }
      if (sMetrics != null)
      {
        localMetrics = sMetrics;
        fullySolved += 1L;
      }
      c();
      return;
    }
    a(h);
  }
  
  public void reset()
  {
    int i1 = 0;
    while (i1 < e.c.length)
    {
      SolverVariable localSolverVariable = e.c[i1];
      if (localSolverVariable != null) {
        localSolverVariable.reset();
      }
      i1 += 1;
    }
    e.b.a(m, n);
    n = 0;
    Arrays.fill(e.c, null);
    if (g != null) {
      g.clear();
    }
    a = 0;
    h.clear();
    c = 1;
    i1 = 0;
    while (i1 < d)
    {
      b[i1].c = false;
      i1 += 1;
    }
    b();
    d = 0;
  }
  
  static abstract interface a
  {
    public abstract void addError(SolverVariable paramSolverVariable);
    
    public abstract void clear();
    
    public abstract SolverVariable getKey();
    
    public abstract SolverVariable getPivotCandidate(LinearSystem paramLinearSystem, boolean[] paramArrayOfBoolean);
    
    public abstract void initFromRow(a paramA);
  }
}
