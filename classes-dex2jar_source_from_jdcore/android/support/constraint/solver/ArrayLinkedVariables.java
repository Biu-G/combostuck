package android.support.constraint.solver;

import java.io.PrintStream;
import java.util.Arrays;

public class ArrayLinkedVariables
{
  int a = 0;
  private final ArrayRow b;
  private final Cache c;
  private int d = 8;
  private SolverVariable e = null;
  private int[] f = new int[d];
  private int[] g = new int[d];
  private float[] h = new float[d];
  private int i = -1;
  private int j = -1;
  private boolean k = false;
  
  ArrayLinkedVariables(ArrayRow paramArrayRow, Cache paramCache)
  {
    b = paramArrayRow;
    c = paramCache;
  }
  
  private boolean a(SolverVariable paramSolverVariable, LinearSystem paramLinearSystem)
  {
    return usageInRowCount <= 1;
  }
  
  final SolverVariable a(int paramInt)
  {
    int n = i;
    int m = 0;
    while ((n != -1) && (m < a))
    {
      if (m == paramInt) {
        return c.c[f[n]];
      }
      n = g[n];
      m += 1;
    }
    return null;
  }
  
  SolverVariable a(LinearSystem paramLinearSystem)
  {
    int n = i;
    Object localObject4 = null;
    int m = 0;
    Object localObject3 = null;
    float f5 = 0.0F;
    boolean bool2 = false;
    float f4 = 0.0F;
    int i1;
    for (int i2 = 0; (n != -1) && (m < a); i2 = i1)
    {
      float f2 = h[n];
      SolverVariable localSolverVariable = c.c[f[n]];
      float f1;
      if (f2 < 0.0F)
      {
        f1 = f2;
        if (f2 > -0.001F)
        {
          h[n] = 0.0F;
          localSolverVariable.removeFromRow(b);
        }
      }
      else
      {
        for (;;)
        {
          f1 = 0.0F;
          break;
          f1 = f2;
          if (f2 >= 0.001F) {
            break;
          }
          h[n] = 0.0F;
          localSolverVariable.removeFromRow(b);
        }
      }
      Object localObject1 = localObject4;
      Object localObject2 = localObject3;
      f2 = f5;
      boolean bool1 = bool2;
      float f3 = f4;
      i1 = i2;
      if (f1 != 0.0F) {
        if (c == SolverVariable.Type.UNRESTRICTED)
        {
          if (localObject4 == null) {}
          for (bool1 = a(localSolverVariable, paramLinearSystem);; bool1 = a(localSolverVariable, paramLinearSystem))
          {
            localObject1 = localSolverVariable;
            localObject2 = localObject3;
            f2 = f1;
            f3 = f4;
            i1 = i2;
            break label509;
            if (f5 <= f1) {
              break;
            }
          }
          localObject1 = localObject4;
          localObject2 = localObject3;
          f2 = f5;
          bool1 = bool2;
          f3 = f4;
          i1 = i2;
          if (!bool2)
          {
            localObject1 = localObject4;
            localObject2 = localObject3;
            f2 = f5;
            bool1 = bool2;
            f3 = f4;
            i1 = i2;
            if (a(localSolverVariable, paramLinearSystem))
            {
              bool1 = true;
              localObject1 = localSolverVariable;
              localObject2 = localObject3;
              f2 = f1;
              f3 = f4;
              i1 = i2;
            }
          }
        }
        else
        {
          localObject1 = localObject4;
          localObject2 = localObject3;
          f2 = f5;
          bool1 = bool2;
          f3 = f4;
          i1 = i2;
          if (localObject4 == null)
          {
            localObject1 = localObject4;
            localObject2 = localObject3;
            f2 = f5;
            bool1 = bool2;
            f3 = f4;
            i1 = i2;
            if (f1 < 0.0F)
            {
              if (localObject3 == null) {}
              for (bool1 = a(localSolverVariable, paramLinearSystem);; bool1 = a(localSolverVariable, paramLinearSystem))
              {
                i1 = bool1;
                localObject1 = localObject4;
                localObject2 = localSolverVariable;
                f2 = f5;
                bool1 = bool2;
                f3 = f1;
                break label509;
                if (f4 <= f1) {
                  break;
                }
              }
              localObject1 = localObject4;
              localObject2 = localObject3;
              f2 = f5;
              bool1 = bool2;
              f3 = f4;
              i1 = i2;
              if (i2 == 0)
              {
                localObject1 = localObject4;
                localObject2 = localObject3;
                f2 = f5;
                bool1 = bool2;
                f3 = f4;
                i1 = i2;
                if (a(localSolverVariable, paramLinearSystem))
                {
                  i1 = 1;
                  f3 = f1;
                  bool1 = bool2;
                  f2 = f5;
                  localObject2 = localSolverVariable;
                  localObject1 = localObject4;
                }
              }
            }
          }
        }
      }
      label509:
      n = g[n];
      m += 1;
      localObject4 = localObject1;
      localObject3 = localObject2;
      f5 = f2;
      bool2 = bool1;
      f4 = f3;
    }
    if (localObject4 != null) {
      return localObject4;
    }
    return localObject3;
  }
  
  SolverVariable a(boolean[] paramArrayOfBoolean, SolverVariable paramSolverVariable)
  {
    int n = i;
    int m = 0;
    Object localObject1 = null;
    float f2;
    for (float f1 = 0.0F; (n != -1) && (m < a); f1 = f2)
    {
      Object localObject2 = localObject1;
      f2 = f1;
      if (h[n] < 0.0F)
      {
        SolverVariable localSolverVariable = c.c[f[n]];
        if (paramArrayOfBoolean != null)
        {
          localObject2 = localObject1;
          f2 = f1;
          if (paramArrayOfBoolean[id] != 0) {}
        }
        else
        {
          localObject2 = localObject1;
          f2 = f1;
          if (localSolverVariable != paramSolverVariable) {
            if (c != SolverVariable.Type.SLACK)
            {
              localObject2 = localObject1;
              f2 = f1;
              if (c != SolverVariable.Type.ERROR) {}
            }
            else
            {
              float f3 = h[n];
              localObject2 = localObject1;
              f2 = f1;
              if (f3 < f1)
              {
                localObject2 = localSolverVariable;
                f2 = f3;
              }
            }
          }
        }
      }
      n = g[n];
      m += 1;
      localObject1 = localObject2;
    }
    return localObject1;
  }
  
  void a()
  {
    int n = i;
    int m = 0;
    while ((n != -1) && (m < a))
    {
      float[] arrayOfFloat = h;
      arrayOfFloat[n] *= -1.0F;
      n = g[n];
      m += 1;
    }
  }
  
  void a(float paramFloat)
  {
    int n = i;
    int m = 0;
    while ((n != -1) && (m < a))
    {
      float[] arrayOfFloat = h;
      arrayOfFloat[n] /= paramFloat;
      n = g[n];
      m += 1;
    }
  }
  
  final void a(ArrayRow paramArrayRow1, ArrayRow paramArrayRow2, boolean paramBoolean)
  {
    int m = i;
    int n = 0;
    for (;;)
    {
      if ((m == -1) || (n >= a)) {
        return;
      }
      if (f[m] == a.id)
      {
        float f1 = h[m];
        remove(a, paramBoolean);
        ArrayLinkedVariables localArrayLinkedVariables = (ArrayLinkedVariables)variables;
        n = i;
        m = 0;
        while ((n != -1) && (m < a))
        {
          a(c.c[f[n]], h[n] * f1, paramBoolean);
          n = g[n];
          m += 1;
        }
        b += b * f1;
        if (paramBoolean) {
          a.removeFromRow(paramArrayRow1);
        }
        m = i;
        break;
      }
      m = g[m];
      n += 1;
    }
  }
  
  void a(ArrayRow paramArrayRow, ArrayRow[] paramArrayOfArrayRow)
  {
    int m = i;
    int n = 0;
    for (;;)
    {
      if ((m == -1) || (n >= a)) {
        return;
      }
      Object localObject = c.c[f[m]];
      if (a != -1)
      {
        float f1 = h[m];
        remove((SolverVariable)localObject, true);
        localObject = paramArrayOfArrayRow[a];
        if (!d)
        {
          ArrayLinkedVariables localArrayLinkedVariables = (ArrayLinkedVariables)variables;
          n = i;
          m = 0;
          while ((n != -1) && (m < a))
          {
            a(c.c[f[n]], h[n] * f1, true);
            n = g[n];
            m += 1;
          }
        }
        b += b * f1;
        a.removeFromRow(paramArrayRow);
        m = i;
        break;
      }
      m = g[m];
      n += 1;
    }
  }
  
  final void a(SolverVariable paramSolverVariable, float paramFloat, boolean paramBoolean)
  {
    if (paramFloat == 0.0F) {
      return;
    }
    if (i == -1)
    {
      i = 0;
      h[i] = paramFloat;
      f[i] = id;
      g[i] = -1;
      usageInRowCount += 1;
      paramSolverVariable.addToRow(b);
      a += 1;
      if (!k)
      {
        j += 1;
        if (j >= f.length)
        {
          k = true;
          j = (f.length - 1);
        }
      }
      return;
    }
    int m = i;
    int n = 0;
    int i2 = -1;
    while ((m != -1) && (n < a))
    {
      if (f[m] == id)
      {
        float[] arrayOfFloat = h;
        arrayOfFloat[m] += paramFloat;
        if (h[m] == 0.0F)
        {
          if (m == i) {
            i = g[m];
          } else {
            g[i2] = g[m];
          }
          if (paramBoolean) {
            paramSolverVariable.removeFromRow(b);
          }
          if (k) {
            j = m;
          }
          usageInRowCount -= 1;
          a -= 1;
        }
        return;
      }
      if (f[m] < id) {
        i2 = m;
      }
      m = g[m];
      n += 1;
    }
    m = j + 1;
    if (k) {
      if (f[j] == -1) {
        m = j;
      } else {
        m = f.length;
      }
    }
    n = m;
    if (m >= f.length)
    {
      n = m;
      if (a < f.length)
      {
        int i1 = 0;
        for (;;)
        {
          n = m;
          if (i1 >= f.length) {
            break;
          }
          if (f[i1] == -1)
          {
            n = i1;
            break;
          }
          i1 += 1;
        }
      }
    }
    m = n;
    if (n >= f.length)
    {
      m = f.length;
      d *= 2;
      k = false;
      j = (m - 1);
      h = Arrays.copyOf(h, d);
      f = Arrays.copyOf(f, d);
      g = Arrays.copyOf(g, d);
    }
    f[m] = id;
    h[m] = paramFloat;
    if (i2 != -1)
    {
      g[m] = g[i2];
      g[i2] = m;
    }
    else
    {
      g[m] = i;
      i = m;
    }
    usageInRowCount += 1;
    paramSolverVariable.addToRow(b);
    a += 1;
    if (!k) {
      j += 1;
    }
    if (j >= f.length)
    {
      k = true;
      j = (f.length - 1);
    }
  }
  
  final boolean a(SolverVariable paramSolverVariable)
  {
    if (i == -1) {
      return false;
    }
    int n = i;
    int m = 0;
    while ((n != -1) && (m < a))
    {
      if (f[n] == id) {
        return true;
      }
      n = g[n];
      m += 1;
    }
    return false;
  }
  
  final float b(int paramInt)
  {
    int n = i;
    int m = 0;
    while ((n != -1) && (m < a))
    {
      if (m == paramInt) {
        return h[n];
      }
      n = g[n];
      m += 1;
    }
    return 0.0F;
  }
  
  int b()
  {
    return f.length * 4 * 3 + 0 + 36;
  }
  
  public final void clear()
  {
    int n = i;
    int m = 0;
    while ((n != -1) && (m < a))
    {
      SolverVariable localSolverVariable = c.c[f[n]];
      if (localSolverVariable != null) {
        localSolverVariable.removeFromRow(b);
      }
      n = g[n];
      m += 1;
    }
    i = -1;
    j = -1;
    k = false;
    a = 0;
  }
  
  public void display()
  {
    int n = a;
    System.out.print("{ ");
    int m = 0;
    while (m < n)
    {
      SolverVariable localSolverVariable = a(m);
      if (localSolverVariable != null)
      {
        PrintStream localPrintStream = System.out;
        StringBuilder localStringBuilder = new StringBuilder();
        localStringBuilder.append(localSolverVariable);
        localStringBuilder.append(" = ");
        localStringBuilder.append(b(m));
        localStringBuilder.append(" ");
        localPrintStream.print(localStringBuilder.toString());
      }
      m += 1;
    }
    System.out.println(" }");
  }
  
  public final float get(SolverVariable paramSolverVariable)
  {
    int n = i;
    int m = 0;
    while ((n != -1) && (m < a))
    {
      if (f[n] == id) {
        return h[n];
      }
      n = g[n];
      m += 1;
    }
    return 0.0F;
  }
  
  public final void put(SolverVariable paramSolverVariable, float paramFloat)
  {
    if (paramFloat == 0.0F)
    {
      remove(paramSolverVariable, true);
      return;
    }
    if (i == -1)
    {
      i = 0;
      h[i] = paramFloat;
      f[i] = id;
      g[i] = -1;
      usageInRowCount += 1;
      paramSolverVariable.addToRow(b);
      a += 1;
      if (!k)
      {
        j += 1;
        if (j >= f.length)
        {
          k = true;
          j = (f.length - 1);
        }
      }
      return;
    }
    int m = i;
    int n = 0;
    int i2 = -1;
    while ((m != -1) && (n < a))
    {
      if (f[m] == id)
      {
        h[m] = paramFloat;
        return;
      }
      if (f[m] < id) {
        i2 = m;
      }
      m = g[m];
      n += 1;
    }
    m = j + 1;
    if (k) {
      if (f[j] == -1) {
        m = j;
      } else {
        m = f.length;
      }
    }
    n = m;
    if (m >= f.length)
    {
      n = m;
      if (a < f.length)
      {
        int i1 = 0;
        for (;;)
        {
          n = m;
          if (i1 >= f.length) {
            break;
          }
          if (f[i1] == -1)
          {
            n = i1;
            break;
          }
          i1 += 1;
        }
      }
    }
    m = n;
    if (n >= f.length)
    {
      m = f.length;
      d *= 2;
      k = false;
      j = (m - 1);
      h = Arrays.copyOf(h, d);
      f = Arrays.copyOf(f, d);
      g = Arrays.copyOf(g, d);
    }
    f[m] = id;
    h[m] = paramFloat;
    if (i2 != -1)
    {
      g[m] = g[i2];
      g[i2] = m;
    }
    else
    {
      g[m] = i;
      i = m;
    }
    usageInRowCount += 1;
    paramSolverVariable.addToRow(b);
    a += 1;
    if (!k) {
      j += 1;
    }
    if (a >= f.length) {
      k = true;
    }
    if (j >= f.length)
    {
      k = true;
      j = (f.length - 1);
    }
  }
  
  public final float remove(SolverVariable paramSolverVariable, boolean paramBoolean)
  {
    if (e == paramSolverVariable) {
      e = null;
    }
    if (i == -1) {
      return 0.0F;
    }
    int m = i;
    int n = 0;
    int i1 = -1;
    while ((m != -1) && (n < a))
    {
      if (f[m] == id)
      {
        if (m == i) {
          i = g[m];
        } else {
          g[i1] = g[m];
        }
        if (paramBoolean) {
          paramSolverVariable.removeFromRow(b);
        }
        usageInRowCount -= 1;
        a -= 1;
        f[m] = -1;
        if (k) {
          j = m;
        }
        return h[m];
      }
      int i2 = g[m];
      n += 1;
      i1 = m;
      m = i2;
    }
    return 0.0F;
  }
  
  public String toString()
  {
    String str = "";
    int n = i;
    int m = 0;
    while ((n != -1) && (m < a))
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append(str);
      localStringBuilder.append(" -> ");
      str = localStringBuilder.toString();
      localStringBuilder = new StringBuilder();
      localStringBuilder.append(str);
      localStringBuilder.append(h[n]);
      localStringBuilder.append(" : ");
      str = localStringBuilder.toString();
      localStringBuilder = new StringBuilder();
      localStringBuilder.append(str);
      localStringBuilder.append(c.c[f[n]]);
      str = localStringBuilder.toString();
      n = g[n];
      m += 1;
    }
    return str;
  }
}
