package android.support.constraint.solver;

import java.util.Arrays;

public class SolverVariable
{
  public static final int STRENGTH_BARRIER = 7;
  public static final int STRENGTH_EQUALITY = 5;
  public static final int STRENGTH_FIXED = 6;
  public static final int STRENGTH_HIGH = 3;
  public static final int STRENGTH_HIGHEST = 4;
  public static final int STRENGTH_LOW = 1;
  public static final int STRENGTH_MEDIUM = 2;
  public static final int STRENGTH_NONE = 0;
  private static int f = 1;
  private static int g = 1;
  private static int h = 1;
  private static int i = 1;
  private static int j = 1;
  int a = -1;
  float[] b = new float[7];
  Type c;
  public float computedValue;
  ArrayRow[] d = new ArrayRow[8];
  int e = 0;
  public int id = -1;
  private String k;
  public int strength = 0;
  public int usageInRowCount = 0;
  
  public SolverVariable(Type paramType, String paramString)
  {
    c = paramType;
  }
  
  public SolverVariable(String paramString, Type paramType)
  {
    k = paramString;
    c = paramType;
  }
  
  static void a()
  {
    g += 1;
  }
  
  public final void addToRow(ArrayRow paramArrayRow)
  {
    int m = 0;
    while (m < e)
    {
      if (d[m] == paramArrayRow) {
        return;
      }
      m += 1;
    }
    if (e >= d.length) {
      d = ((ArrayRow[])Arrays.copyOf(d, d.length * 2));
    }
    d[e] = paramArrayRow;
    e += 1;
  }
  
  public String getName()
  {
    return k;
  }
  
  public final void removeFromRow(ArrayRow paramArrayRow)
  {
    int i1 = e;
    int n = 0;
    int m = 0;
    while (m < i1)
    {
      if (d[m] == paramArrayRow)
      {
        while (n < i1 - m - 1)
        {
          paramArrayRow = d;
          int i2 = m + n;
          paramArrayRow[i2] = d[(i2 + 1)];
          n += 1;
        }
        e -= 1;
        return;
      }
      m += 1;
    }
  }
  
  public void reset()
  {
    k = null;
    c = Type.UNKNOWN;
    strength = 0;
    id = -1;
    a = -1;
    computedValue = 0.0F;
    e = 0;
    usageInRowCount = 0;
  }
  
  public void setName(String paramString)
  {
    k = paramString;
  }
  
  public void setType(Type paramType, String paramString)
  {
    c = paramType;
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("");
    localStringBuilder.append(k);
    return localStringBuilder.toString();
  }
  
  public final void updateReferencesWithNewDefinition(ArrayRow paramArrayRow)
  {
    int n = e;
    int m = 0;
    while (m < n)
    {
      d[m].variables.a(d[m], paramArrayRow, false);
      m += 1;
    }
    e = 0;
  }
  
  public static enum Type
  {
    static
    {
      CONSTANT = new Type("CONSTANT", 1);
      SLACK = new Type("SLACK", 2);
    }
    
    private Type() {}
  }
}
