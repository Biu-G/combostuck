package android.support.constraint.solver.widgets;

import android.support.constraint.solver.LinearSystem;
import android.support.constraint.solver.Metrics;
import android.support.constraint.solver.SolverVariable;

public class ResolutionAnchor
  extends ResolutionNode
{
  public static final int BARRIER_CONNECTION = 5;
  public static final int CENTER_CONNECTION = 2;
  public static final int CHAIN_CONNECTION = 4;
  public static final int DIRECT_CONNECTION = 1;
  public static final int MATCH_CONNECTION = 3;
  public static final int UNCONNECTED = 0;
  ConstraintAnchor a;
  float b;
  ResolutionAnchor c;
  float d;
  ResolutionAnchor e;
  float f;
  int g = 0;
  private ResolutionAnchor j;
  private float k;
  private ResolutionDimension l = null;
  private int m = 1;
  private ResolutionDimension n = null;
  private int o = 1;
  
  public ResolutionAnchor(ConstraintAnchor paramConstraintAnchor)
  {
    a = paramConstraintAnchor;
  }
  
  String a(int paramInt)
  {
    if (paramInt == 1) {
      return "DIRECT";
    }
    if (paramInt == 2) {
      return "CENTER";
    }
    if (paramInt == 3) {
      return "MATCH";
    }
    if (paramInt == 4) {
      return "CHAIN";
    }
    if (paramInt == 5) {
      return "BARRIER";
    }
    return "UNCONNECTED";
  }
  
  void a(LinearSystem paramLinearSystem)
  {
    SolverVariable localSolverVariable = a.getSolverVariable();
    if (e == null)
    {
      paramLinearSystem.addEquality(localSolverVariable, (int)(f + 0.5F));
      return;
    }
    paramLinearSystem.addEquality(localSolverVariable, paramLinearSystem.createObjectVariable(e.a), (int)(f + 0.5F), 6);
  }
  
  public void dependsOn(int paramInt1, ResolutionAnchor paramResolutionAnchor, int paramInt2)
  {
    g = paramInt1;
    c = paramResolutionAnchor;
    d = paramInt2;
    c.addDependent(this);
  }
  
  public void dependsOn(ResolutionAnchor paramResolutionAnchor, int paramInt)
  {
    c = paramResolutionAnchor;
    d = paramInt;
    c.addDependent(this);
  }
  
  public void dependsOn(ResolutionAnchor paramResolutionAnchor, int paramInt, ResolutionDimension paramResolutionDimension)
  {
    c = paramResolutionAnchor;
    c.addDependent(this);
    l = paramResolutionDimension;
    m = paramInt;
    l.addDependent(this);
  }
  
  public float getResolvedValue()
  {
    return f;
  }
  
  public void remove(ResolutionDimension paramResolutionDimension)
  {
    if (l == paramResolutionDimension)
    {
      l = null;
      d = m;
    }
    else if (l == n)
    {
      n = null;
      k = o;
    }
    resolve();
  }
  
  public void reset()
  {
    super.reset();
    c = null;
    d = 0.0F;
    l = null;
    m = 1;
    n = null;
    o = 1;
    e = null;
    f = 0.0F;
    b = 0.0F;
    j = null;
    k = 0.0F;
    g = 0;
  }
  
  public void resolve()
  {
    int i = this.i;
    int i2 = 1;
    if (i == 1) {
      return;
    }
    if (g == 4) {
      return;
    }
    if (l != null)
    {
      if (l.i != 1) {
        return;
      }
      d = (m * l.a);
    }
    if (n != null)
    {
      if (n.i != 1) {
        return;
      }
      k = (o * n.a);
    }
    if ((g == 1) && ((c == null) || (c.i == 1)))
    {
      if (c == null)
      {
        e = this;
        f = d;
      }
      else
      {
        e = c.e;
        f = (c.f + d);
      }
      didResolve();
      return;
    }
    Object localObject;
    if ((g == 2) && (c != null) && (c.i == 1) && (j != null) && (j.c != null) && (j.c.i == 1))
    {
      if (LinearSystem.getMetrics() != null)
      {
        localObject = LinearSystem.getMetrics();
        centerConnectionResolved += 1L;
      }
      e = c.e;
      j.e = j.c.e;
      localObject = a.b;
      ConstraintAnchor.Type localType = ConstraintAnchor.Type.RIGHT;
      int i1 = 0;
      i = i2;
      if (localObject != localType) {
        if (a.b == ConstraintAnchor.Type.BOTTOM) {
          i = i2;
        } else {
          i = 0;
        }
      }
      float f1;
      if (i != 0) {
        f1 = c.f - j.c.f;
      } else {
        f1 = j.c.f - c.f;
      }
      if ((a.b != ConstraintAnchor.Type.LEFT) && (a.b != ConstraintAnchor.Type.RIGHT))
      {
        f2 = f1 - a.a.getHeight();
        f1 = a.a.F;
      }
      else
      {
        f2 = f1 - a.a.getWidth();
        f1 = a.a.E;
      }
      int i3 = a.getMargin();
      i2 = j.a.getMargin();
      if (a.getTarget() == j.a.getTarget())
      {
        f1 = 0.5F;
        i2 = 0;
      }
      else
      {
        i1 = i3;
      }
      float f3 = i1;
      float f4 = i2;
      float f2 = f2 - f3 - f4;
      if (i != 0)
      {
        j.f = (j.c.f + f4 + f2 * f1);
        f = (c.f - f3 - f2 * (1.0F - f1));
      }
      else
      {
        f = (c.f + f3 + f2 * f1);
        j.f = (j.c.f - f4 - f2 * (1.0F - f1));
      }
      didResolve();
      j.didResolve();
      return;
    }
    if ((g == 3) && (c != null) && (c.i == 1) && (j != null) && (j.c != null) && (j.c.i == 1))
    {
      if (LinearSystem.getMetrics() != null)
      {
        localObject = LinearSystem.getMetrics();
        matchConnectionResolved += 1L;
      }
      e = c.e;
      j.e = j.c.e;
      f = (c.f + d);
      j.f = (j.c.f + j.d);
      didResolve();
      j.didResolve();
      return;
    }
    if (g == 5) {
      a.a.resolve();
    }
  }
  
  public void resolve(ResolutionAnchor paramResolutionAnchor, float paramFloat)
  {
    if ((i == 0) || ((e != paramResolutionAnchor) && (f != paramFloat)))
    {
      e = paramResolutionAnchor;
      f = paramFloat;
      if (i == 1) {
        invalidate();
      }
      didResolve();
    }
  }
  
  public void setOpposite(ResolutionAnchor paramResolutionAnchor, float paramFloat)
  {
    j = paramResolutionAnchor;
    k = paramFloat;
  }
  
  public void setOpposite(ResolutionAnchor paramResolutionAnchor, int paramInt, ResolutionDimension paramResolutionDimension)
  {
    j = paramResolutionAnchor;
    n = paramResolutionDimension;
    o = paramInt;
  }
  
  public void setType(int paramInt)
  {
    g = paramInt;
  }
  
  public String toString()
  {
    if (i == 1)
    {
      if (e == this)
      {
        localStringBuilder = new StringBuilder();
        localStringBuilder.append("[");
        localStringBuilder.append(a);
        localStringBuilder.append(", RESOLVED: ");
        localStringBuilder.append(f);
        localStringBuilder.append("]  type: ");
        localStringBuilder.append(a(g));
        return localStringBuilder.toString();
      }
      localStringBuilder = new StringBuilder();
      localStringBuilder.append("[");
      localStringBuilder.append(a);
      localStringBuilder.append(", RESOLVED: ");
      localStringBuilder.append(e);
      localStringBuilder.append(":");
      localStringBuilder.append(f);
      localStringBuilder.append("] type: ");
      localStringBuilder.append(a(g));
      return localStringBuilder.toString();
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("{ ");
    localStringBuilder.append(a);
    localStringBuilder.append(" UNRESOLVED} type: ");
    localStringBuilder.append(a(g));
    return localStringBuilder.toString();
  }
  
  public void update()
  {
    ConstraintAnchor localConstraintAnchor = a.getTarget();
    if (localConstraintAnchor == null) {
      return;
    }
    if (localConstraintAnchor.getTarget() == a)
    {
      g = 4;
      getResolutionNodeg = 4;
    }
    int i1 = a.getMargin();
    int i;
    if (a.b != ConstraintAnchor.Type.RIGHT)
    {
      i = i1;
      if (a.b != ConstraintAnchor.Type.BOTTOM) {}
    }
    else
    {
      i = -i1;
    }
    dependsOn(localConstraintAnchor.getResolutionNode(), i);
  }
}
