package android.support.constraint.solver;

public class ArrayRow
  implements LinearSystem.a
{
  SolverVariable a = null;
  float b = 0.0F;
  boolean c = false;
  boolean d = false;
  public final ArrayLinkedVariables variables;
  
  public ArrayRow(Cache paramCache)
  {
    variables = new ArrayLinkedVariables(this, paramCache);
  }
  
  ArrayRow a(SolverVariable paramSolverVariable, int paramInt)
  {
    a = paramSolverVariable;
    float f = paramInt;
    computedValue = f;
    b = f;
    d = true;
    return this;
  }
  
  ArrayRow a(SolverVariable paramSolverVariable1, SolverVariable paramSolverVariable2, int paramInt1, float paramFloat, SolverVariable paramSolverVariable3, SolverVariable paramSolverVariable4, int paramInt2)
  {
    if (paramSolverVariable2 == paramSolverVariable3)
    {
      variables.put(paramSolverVariable1, 1.0F);
      variables.put(paramSolverVariable4, 1.0F);
      variables.put(paramSolverVariable2, -2.0F);
      return this;
    }
    if (paramFloat == 0.5F)
    {
      variables.put(paramSolverVariable1, 1.0F);
      variables.put(paramSolverVariable2, -1.0F);
      variables.put(paramSolverVariable3, -1.0F);
      variables.put(paramSolverVariable4, 1.0F);
      if ((paramInt1 > 0) || (paramInt2 > 0))
      {
        b = (-paramInt1 + paramInt2);
        return this;
      }
    }
    else
    {
      if (paramFloat <= 0.0F)
      {
        variables.put(paramSolverVariable1, -1.0F);
        variables.put(paramSolverVariable2, 1.0F);
        b = paramInt1;
        return this;
      }
      if (paramFloat >= 1.0F)
      {
        variables.put(paramSolverVariable3, -1.0F);
        variables.put(paramSolverVariable4, 1.0F);
        b = paramInt2;
        return this;
      }
      ArrayLinkedVariables localArrayLinkedVariables = variables;
      float f = 1.0F - paramFloat;
      localArrayLinkedVariables.put(paramSolverVariable1, f * 1.0F);
      variables.put(paramSolverVariable2, f * -1.0F);
      variables.put(paramSolverVariable3, -1.0F * paramFloat);
      variables.put(paramSolverVariable4, 1.0F * paramFloat);
      if ((paramInt1 > 0) || (paramInt2 > 0)) {
        b = (-paramInt1 * f + paramInt2 * paramFloat);
      }
    }
    return this;
  }
  
  ArrayRow a(SolverVariable paramSolverVariable1, SolverVariable paramSolverVariable2, SolverVariable paramSolverVariable3, float paramFloat)
  {
    variables.put(paramSolverVariable1, -1.0F);
    variables.put(paramSolverVariable2, 1.0F - paramFloat);
    variables.put(paramSolverVariable3, paramFloat);
    return this;
  }
  
  boolean a()
  {
    return (a != null) && ((a.c == SolverVariable.Type.UNRESTRICTED) || (b >= 0.0F));
  }
  
  boolean a(LinearSystem paramLinearSystem)
  {
    paramLinearSystem = variables.a(paramLinearSystem);
    boolean bool;
    if (paramLinearSystem == null)
    {
      bool = true;
    }
    else
    {
      c(paramLinearSystem);
      bool = false;
    }
    if (variables.a == 0) {
      d = true;
    }
    return bool;
  }
  
  boolean a(SolverVariable paramSolverVariable)
  {
    return variables.a(paramSolverVariable);
  }
  
  public ArrayRow addError(LinearSystem paramLinearSystem, int paramInt)
  {
    variables.put(paramLinearSystem.createErrorVariable(paramInt, "ep"), 1.0F);
    variables.put(paramLinearSystem.createErrorVariable(paramInt, "em"), -1.0F);
    return this;
  }
  
  public void addError(SolverVariable paramSolverVariable)
  {
    int i = strength;
    float f = 1.0F;
    if (i != 1) {
      if (strength == 2) {
        f = 1000.0F;
      } else if (strength == 3) {
        f = 1000000.0F;
      } else if (strength == 4) {
        f = 1.0E9F;
      } else if (strength == 5) {
        f = 1.0E12F;
      }
    }
    variables.put(paramSolverVariable, f);
  }
  
  ArrayRow b(SolverVariable paramSolverVariable, int paramInt)
  {
    variables.put(paramSolverVariable, paramInt);
    return this;
  }
  
  SolverVariable b(SolverVariable paramSolverVariable)
  {
    return variables.a(null, paramSolverVariable);
  }
  
  String b()
  {
    if (a == null)
    {
      localObject1 = new StringBuilder();
      ((StringBuilder)localObject1).append("");
      ((StringBuilder)localObject1).append("0");
      localObject1 = ((StringBuilder)localObject1).toString();
    }
    else
    {
      localObject1 = new StringBuilder();
      ((StringBuilder)localObject1).append("");
      ((StringBuilder)localObject1).append(a);
      localObject1 = ((StringBuilder)localObject1).toString();
    }
    Object localObject2 = new StringBuilder();
    ((StringBuilder)localObject2).append((String)localObject1);
    ((StringBuilder)localObject2).append(" = ");
    Object localObject1 = ((StringBuilder)localObject2).toString();
    float f1 = b;
    int j = 0;
    int i;
    if (f1 != 0.0F)
    {
      localObject2 = new StringBuilder();
      ((StringBuilder)localObject2).append((String)localObject1);
      ((StringBuilder)localObject2).append(b);
      localObject1 = ((StringBuilder)localObject2).toString();
      i = 1;
    }
    else
    {
      i = 0;
    }
    int k = variables.a;
    while (j < k)
    {
      localObject2 = variables.a(j);
      if (localObject2 != null)
      {
        float f2 = variables.b(j);
        boolean bool = f2 < 0.0F;
        if (bool)
        {
          String str = ((SolverVariable)localObject2).toString();
          if (i == 0)
          {
            localObject2 = localObject1;
            f1 = f2;
            if (f2 < 0.0F)
            {
              localObject2 = new StringBuilder();
              ((StringBuilder)localObject2).append((String)localObject1);
              ((StringBuilder)localObject2).append("- ");
              localObject2 = ((StringBuilder)localObject2).toString();
              f1 = f2 * -1.0F;
            }
          }
          else if (bool)
          {
            localObject2 = new StringBuilder();
            ((StringBuilder)localObject2).append((String)localObject1);
            ((StringBuilder)localObject2).append(" + ");
            localObject2 = ((StringBuilder)localObject2).toString();
            f1 = f2;
          }
          else
          {
            localObject2 = new StringBuilder();
            ((StringBuilder)localObject2).append((String)localObject1);
            ((StringBuilder)localObject2).append(" - ");
            localObject2 = ((StringBuilder)localObject2).toString();
            f1 = f2 * -1.0F;
          }
          if (f1 == 1.0F)
          {
            localObject1 = new StringBuilder();
            ((StringBuilder)localObject1).append((String)localObject2);
            ((StringBuilder)localObject1).append(str);
            localObject1 = ((StringBuilder)localObject1).toString();
          }
          else
          {
            localObject1 = new StringBuilder();
            ((StringBuilder)localObject1).append((String)localObject2);
            ((StringBuilder)localObject1).append(f1);
            ((StringBuilder)localObject1).append(" ");
            ((StringBuilder)localObject1).append(str);
            localObject1 = ((StringBuilder)localObject1).toString();
          }
          i = 1;
        }
      }
      j += 1;
    }
    localObject2 = localObject1;
    if (i == 0)
    {
      localObject2 = new StringBuilder();
      ((StringBuilder)localObject2).append((String)localObject1);
      ((StringBuilder)localObject2).append("0.0");
      localObject2 = ((StringBuilder)localObject2).toString();
    }
    return localObject2;
  }
  
  int c()
  {
    int i;
    if (a != null) {
      i = 4;
    } else {
      i = 0;
    }
    return i + 4 + 4 + variables.b();
  }
  
  void c(SolverVariable paramSolverVariable)
  {
    if (a != null)
    {
      variables.put(a, -1.0F);
      a = null;
    }
    float f = variables.remove(paramSolverVariable, true) * -1.0F;
    a = paramSolverVariable;
    if (f == 1.0F) {
      return;
    }
    b /= f;
    variables.a(f);
  }
  
  public void clear()
  {
    variables.clear();
    a = null;
    b = 0.0F;
  }
  
  public ArrayRow createRowDimensionRatio(SolverVariable paramSolverVariable1, SolverVariable paramSolverVariable2, SolverVariable paramSolverVariable3, SolverVariable paramSolverVariable4, float paramFloat)
  {
    variables.put(paramSolverVariable1, -1.0F);
    variables.put(paramSolverVariable2, 1.0F);
    variables.put(paramSolverVariable3, paramFloat);
    variables.put(paramSolverVariable4, -paramFloat);
    return this;
  }
  
  public ArrayRow createRowEqualDimension(float paramFloat1, float paramFloat2, float paramFloat3, SolverVariable paramSolverVariable1, int paramInt1, SolverVariable paramSolverVariable2, int paramInt2, SolverVariable paramSolverVariable3, int paramInt3, SolverVariable paramSolverVariable4, int paramInt4)
  {
    if ((paramFloat2 != 0.0F) && (paramFloat1 != paramFloat3))
    {
      paramFloat1 = paramFloat1 / paramFloat2 / (paramFloat3 / paramFloat2);
      b = (-paramInt1 - paramInt2 + paramInt3 * paramFloat1 + paramInt4 * paramFloat1);
      variables.put(paramSolverVariable1, 1.0F);
      variables.put(paramSolverVariable2, -1.0F);
      variables.put(paramSolverVariable4, paramFloat1);
      variables.put(paramSolverVariable3, -paramFloat1);
      return this;
    }
    b = (-paramInt1 - paramInt2 + paramInt3 + paramInt4);
    variables.put(paramSolverVariable1, 1.0F);
    variables.put(paramSolverVariable2, -1.0F);
    variables.put(paramSolverVariable4, 1.0F);
    variables.put(paramSolverVariable3, -1.0F);
    return this;
  }
  
  public ArrayRow createRowEqualMatchDimensions(float paramFloat1, float paramFloat2, float paramFloat3, SolverVariable paramSolverVariable1, SolverVariable paramSolverVariable2, SolverVariable paramSolverVariable3, SolverVariable paramSolverVariable4)
  {
    b = 0.0F;
    if ((paramFloat2 != 0.0F) && (paramFloat1 != paramFloat3))
    {
      if (paramFloat1 == 0.0F)
      {
        variables.put(paramSolverVariable1, 1.0F);
        variables.put(paramSolverVariable2, -1.0F);
        return this;
      }
      if (paramFloat3 == 0.0F)
      {
        variables.put(paramSolverVariable3, 1.0F);
        variables.put(paramSolverVariable4, -1.0F);
        return this;
      }
      paramFloat1 = paramFloat1 / paramFloat2 / (paramFloat3 / paramFloat2);
      variables.put(paramSolverVariable1, 1.0F);
      variables.put(paramSolverVariable2, -1.0F);
      variables.put(paramSolverVariable4, paramFloat1);
      variables.put(paramSolverVariable3, -paramFloat1);
      return this;
    }
    variables.put(paramSolverVariable1, 1.0F);
    variables.put(paramSolverVariable2, -1.0F);
    variables.put(paramSolverVariable4, 1.0F);
    variables.put(paramSolverVariable3, -1.0F);
    return this;
  }
  
  public ArrayRow createRowEquals(SolverVariable paramSolverVariable, int paramInt)
  {
    if (paramInt < 0)
    {
      b = (paramInt * -1);
      variables.put(paramSolverVariable, 1.0F);
      return this;
    }
    b = paramInt;
    variables.put(paramSolverVariable, -1.0F);
    return this;
  }
  
  public ArrayRow createRowEquals(SolverVariable paramSolverVariable1, SolverVariable paramSolverVariable2, int paramInt)
  {
    int i = 0;
    int j = 0;
    if (paramInt != 0)
    {
      i = j;
      j = paramInt;
      if (paramInt < 0)
      {
        j = paramInt * -1;
        i = 1;
      }
      b = j;
    }
    if (i == 0)
    {
      variables.put(paramSolverVariable1, -1.0F);
      variables.put(paramSolverVariable2, 1.0F);
      return this;
    }
    variables.put(paramSolverVariable1, 1.0F);
    variables.put(paramSolverVariable2, -1.0F);
    return this;
  }
  
  public ArrayRow createRowGreaterThan(SolverVariable paramSolverVariable1, int paramInt, SolverVariable paramSolverVariable2)
  {
    b = paramInt;
    variables.put(paramSolverVariable1, -1.0F);
    return this;
  }
  
  public ArrayRow createRowGreaterThan(SolverVariable paramSolverVariable1, SolverVariable paramSolverVariable2, SolverVariable paramSolverVariable3, int paramInt)
  {
    int i = 0;
    int j = 0;
    if (paramInt != 0)
    {
      i = j;
      j = paramInt;
      if (paramInt < 0)
      {
        j = paramInt * -1;
        i = 1;
      }
      b = j;
    }
    if (i == 0)
    {
      variables.put(paramSolverVariable1, -1.0F);
      variables.put(paramSolverVariable2, 1.0F);
      variables.put(paramSolverVariable3, 1.0F);
      return this;
    }
    variables.put(paramSolverVariable1, 1.0F);
    variables.put(paramSolverVariable2, -1.0F);
    variables.put(paramSolverVariable3, -1.0F);
    return this;
  }
  
  public ArrayRow createRowLowerThan(SolverVariable paramSolverVariable1, SolverVariable paramSolverVariable2, SolverVariable paramSolverVariable3, int paramInt)
  {
    int i = 0;
    int j = 0;
    if (paramInt != 0)
    {
      i = j;
      j = paramInt;
      if (paramInt < 0)
      {
        j = paramInt * -1;
        i = 1;
      }
      b = j;
    }
    if (i == 0)
    {
      variables.put(paramSolverVariable1, -1.0F);
      variables.put(paramSolverVariable2, 1.0F);
      variables.put(paramSolverVariable3, -1.0F);
      return this;
    }
    variables.put(paramSolverVariable1, 1.0F);
    variables.put(paramSolverVariable2, -1.0F);
    variables.put(paramSolverVariable3, 1.0F);
    return this;
  }
  
  public ArrayRow createRowWithAngle(SolverVariable paramSolverVariable1, SolverVariable paramSolverVariable2, SolverVariable paramSolverVariable3, SolverVariable paramSolverVariable4, float paramFloat)
  {
    variables.put(paramSolverVariable3, 0.5F);
    variables.put(paramSolverVariable4, 0.5F);
    variables.put(paramSolverVariable1, -0.5F);
    variables.put(paramSolverVariable2, -0.5F);
    b = (-paramFloat);
    return this;
  }
  
  void d()
  {
    if (b < 0.0F)
    {
      b *= -1.0F;
      variables.a();
    }
  }
  
  public SolverVariable getKey()
  {
    return a;
  }
  
  public SolverVariable getPivotCandidate(LinearSystem paramLinearSystem, boolean[] paramArrayOfBoolean)
  {
    return variables.a(paramArrayOfBoolean, null);
  }
  
  public void initFromRow(LinearSystem.a paramA)
  {
    if ((paramA instanceof ArrayRow))
    {
      paramA = (ArrayRow)paramA;
      a = null;
      variables.clear();
      int i = 0;
      while (i < variables.a)
      {
        SolverVariable localSolverVariable = variables.a(i);
        float f = variables.b(i);
        variables.a(localSolverVariable, f, true);
        i += 1;
      }
    }
  }
  
  public boolean isEmpty()
  {
    return (a == null) && (b == 0.0F) && (variables.a == 0);
  }
  
  public void reset()
  {
    a = null;
    variables.clear();
    b = 0.0F;
    d = false;
  }
  
  public String toString()
  {
    return b();
  }
}
