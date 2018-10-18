package android.support.constraint.solver.widgets;

import android.support.constraint.solver.Cache;
import android.support.constraint.solver.SolverVariable;
import android.support.constraint.solver.SolverVariable.Type;
import java.util.ArrayList;
import java.util.HashSet;

public class ConstraintAnchor
{
  public static final int AUTO_CONSTRAINT_CREATOR = 2;
  public static final int SCOUT_CREATOR = 1;
  public static final int USER_CREATOR = 0;
  final ConstraintWidget a;
  final Type b;
  ConstraintAnchor c;
  int d = -1;
  SolverVariable e;
  private ResolutionAnchor f = new ResolutionAnchor(this);
  private Strength g = Strength.NONE;
  private ConnectionType h = ConnectionType.RELAXED;
  private int i = 0;
  public int mMargin = 0;
  
  public ConstraintAnchor(ConstraintWidget paramConstraintWidget, Type paramType)
  {
    a = paramConstraintWidget;
    b = paramType;
  }
  
  private boolean a(ConstraintWidget paramConstraintWidget, HashSet<ConstraintWidget> paramHashSet)
  {
    if (paramHashSet.contains(paramConstraintWidget)) {
      return false;
    }
    paramHashSet.add(paramConstraintWidget);
    if (paramConstraintWidget == getOwner()) {
      return true;
    }
    paramConstraintWidget = paramConstraintWidget.getAnchors();
    int k = paramConstraintWidget.size();
    int j = 0;
    while (j < k)
    {
      ConstraintAnchor localConstraintAnchor = (ConstraintAnchor)paramConstraintWidget.get(j);
      if ((localConstraintAnchor.isSimilarDimensionConnection(this)) && (localConstraintAnchor.isConnected()) && (a(localConstraintAnchor.getTarget().getOwner(), paramHashSet))) {
        return true;
      }
      j += 1;
    }
    return false;
  }
  
  public boolean connect(ConstraintAnchor paramConstraintAnchor, int paramInt)
  {
    return connect(paramConstraintAnchor, paramInt, -1, Strength.STRONG, 0, false);
  }
  
  public boolean connect(ConstraintAnchor paramConstraintAnchor, int paramInt1, int paramInt2)
  {
    return connect(paramConstraintAnchor, paramInt1, -1, Strength.STRONG, paramInt2, false);
  }
  
  public boolean connect(ConstraintAnchor paramConstraintAnchor, int paramInt1, int paramInt2, Strength paramStrength, int paramInt3, boolean paramBoolean)
  {
    if (paramConstraintAnchor == null)
    {
      c = null;
      mMargin = 0;
      d = -1;
      g = Strength.NONE;
      i = 2;
      return true;
    }
    if ((!paramBoolean) && (!isValidConnection(paramConstraintAnchor))) {
      return false;
    }
    c = paramConstraintAnchor;
    if (paramInt1 > 0) {
      mMargin = paramInt1;
    } else {
      mMargin = 0;
    }
    d = paramInt2;
    g = paramStrength;
    i = paramInt3;
    return true;
  }
  
  public boolean connect(ConstraintAnchor paramConstraintAnchor, int paramInt1, Strength paramStrength, int paramInt2)
  {
    return connect(paramConstraintAnchor, paramInt1, -1, paramStrength, paramInt2, false);
  }
  
  public int getConnectionCreator()
  {
    return i;
  }
  
  public ConnectionType getConnectionType()
  {
    return h;
  }
  
  public int getMargin()
  {
    if (a.getVisibility() == 8) {
      return 0;
    }
    if ((d > -1) && (c != null) && (c.a.getVisibility() == 8)) {
      return d;
    }
    return mMargin;
  }
  
  public final ConstraintAnchor getOpposite()
  {
    switch (1.a[b.ordinal()])
    {
    default: 
      throw new AssertionError(b.name());
    case 5: 
      return a.r;
    case 4: 
      return a.t;
    case 3: 
      return a.q;
    case 2: 
      return a.s;
    }
    return null;
  }
  
  public ConstraintWidget getOwner()
  {
    return a;
  }
  
  public int getPriorityLevel()
  {
    switch (1.a[b.ordinal()])
    {
    default: 
      throw new AssertionError(b.name());
    case 9: 
      return 0;
    case 8: 
      return 0;
    case 7: 
      return 0;
    case 6: 
      return 1;
    case 5: 
      return 2;
    case 4: 
      return 2;
    case 3: 
      return 2;
    case 2: 
      return 2;
    }
    return 2;
  }
  
  public ResolutionAnchor getResolutionNode()
  {
    return f;
  }
  
  public int getSnapPriorityLevel()
  {
    switch (1.a[b.ordinal()])
    {
    default: 
      throw new AssertionError(b.name());
    case 9: 
      return 0;
    case 8: 
      return 1;
    case 7: 
      return 0;
    case 6: 
      return 2;
    case 5: 
      return 0;
    case 4: 
      return 0;
    case 3: 
      return 1;
    case 2: 
      return 1;
    }
    return 3;
  }
  
  public SolverVariable getSolverVariable()
  {
    return e;
  }
  
  public Strength getStrength()
  {
    return g;
  }
  
  public ConstraintAnchor getTarget()
  {
    return c;
  }
  
  public Type getType()
  {
    return b;
  }
  
  public boolean isConnected()
  {
    return c != null;
  }
  
  public boolean isConnectionAllowed(ConstraintWidget paramConstraintWidget)
  {
    if (a(paramConstraintWidget, new HashSet())) {
      return false;
    }
    ConstraintWidget localConstraintWidget = getOwner().getParent();
    if (localConstraintWidget == paramConstraintWidget) {
      return true;
    }
    return paramConstraintWidget.getParent() == localConstraintWidget;
  }
  
  public boolean isConnectionAllowed(ConstraintWidget paramConstraintWidget, ConstraintAnchor paramConstraintAnchor)
  {
    return isConnectionAllowed(paramConstraintWidget);
  }
  
  public boolean isSideAnchor()
  {
    switch (1.a[b.ordinal()])
    {
    default: 
      throw new AssertionError(b.name());
    case 2: 
    case 3: 
    case 4: 
    case 5: 
      return true;
    }
    return false;
  }
  
  public boolean isSimilarDimensionConnection(ConstraintAnchor paramConstraintAnchor)
  {
    paramConstraintAnchor = paramConstraintAnchor.getType();
    Type localType = b;
    boolean bool3 = true;
    boolean bool2 = true;
    if (paramConstraintAnchor == localType) {
      return true;
    }
    boolean bool1;
    switch (1.a[b.ordinal()])
    {
    default: 
      throw new AssertionError(b.name());
    case 9: 
      return false;
    case 4: 
    case 5: 
    case 6: 
    case 8: 
      bool1 = bool2;
      if (paramConstraintAnchor != Type.TOP)
      {
        bool1 = bool2;
        if (paramConstraintAnchor != Type.BOTTOM)
        {
          bool1 = bool2;
          if (paramConstraintAnchor != Type.CENTER_Y)
          {
            if (paramConstraintAnchor == Type.BASELINE) {
              return true;
            }
            bool1 = false;
          }
        }
      }
      return bool1;
    case 2: 
    case 3: 
    case 7: 
      bool1 = bool3;
      if (paramConstraintAnchor != Type.LEFT)
      {
        bool1 = bool3;
        if (paramConstraintAnchor != Type.RIGHT)
        {
          if (paramConstraintAnchor == Type.CENTER_X) {
            return true;
          }
          bool1 = false;
        }
      }
      return bool1;
    }
    return paramConstraintAnchor != Type.BASELINE;
  }
  
  public boolean isSnapCompatibleWith(ConstraintAnchor paramConstraintAnchor)
  {
    if (b == Type.CENTER) {
      return false;
    }
    if (b == paramConstraintAnchor.getType()) {
      return true;
    }
    int j;
    switch (1.a[b.ordinal()])
    {
    default: 
      throw new AssertionError(b.name());
    case 8: 
      switch (1.a[paramConstraintAnchor.getType().ordinal()])
      {
      default: 
        return false;
      case 5: 
        return true;
      }
      return true;
    case 7: 
      switch (1.a[paramConstraintAnchor.getType().ordinal()])
      {
      default: 
        return false;
      case 3: 
        return true;
      }
      return true;
    case 5: 
      j = 1.a[paramConstraintAnchor.getType().ordinal()];
      if (j != 4) {
        return j == 8;
      }
      return true;
    case 4: 
      j = 1.a[paramConstraintAnchor.getType().ordinal()];
      if (j != 5) {
        return j == 8;
      }
      return true;
    case 3: 
      j = 1.a[paramConstraintAnchor.getType().ordinal()];
      if (j != 2) {
        return j == 7;
      }
      return true;
    case 2: 
      j = 1.a[paramConstraintAnchor.getType().ordinal()];
      if (j != 3) {
        return j == 7;
      }
      return true;
    }
    return false;
  }
  
  public boolean isValidConnection(ConstraintAnchor paramConstraintAnchor)
  {
    boolean bool2 = false;
    if (paramConstraintAnchor == null) {
      return false;
    }
    Type localType = paramConstraintAnchor.getType();
    if (localType == b) {
      return (b != Type.BASELINE) || ((paramConstraintAnchor.getOwner().hasBaseline()) && (getOwner().hasBaseline()));
    }
    switch (1.a[b.ordinal()])
    {
    default: 
      throw new AssertionError(b.name());
    case 6: 
    case 7: 
    case 8: 
    case 9: 
      return false;
    case 4: 
    case 5: 
      if ((localType != Type.TOP) && (localType != Type.BOTTOM)) {
        bool1 = false;
      } else {
        bool1 = true;
      }
      bool2 = bool1;
      if ((paramConstraintAnchor.getOwner() instanceof Guideline))
      {
        if ((!bool1) && (localType != Type.CENTER_Y)) {
          return false;
        }
        bool2 = true;
      }
      return bool2;
    case 2: 
    case 3: 
      if ((localType != Type.LEFT) && (localType != Type.RIGHT)) {
        bool1 = false;
      } else {
        bool1 = true;
      }
      bool2 = bool1;
      if ((paramConstraintAnchor.getOwner() instanceof Guideline))
      {
        if ((!bool1) && (localType != Type.CENTER_X)) {
          return false;
        }
        bool2 = true;
      }
      return bool2;
    }
    boolean bool1 = bool2;
    if (localType != Type.BASELINE)
    {
      bool1 = bool2;
      if (localType != Type.CENTER_X)
      {
        bool1 = bool2;
        if (localType != Type.CENTER_Y) {
          bool1 = true;
        }
      }
    }
    return bool1;
  }
  
  public boolean isVerticalAnchor()
  {
    switch (1.a[b.ordinal()])
    {
    default: 
      throw new AssertionError(b.name());
    case 4: 
    case 5: 
    case 6: 
    case 8: 
    case 9: 
      return true;
    }
    return false;
  }
  
  public void reset()
  {
    c = null;
    mMargin = 0;
    d = -1;
    g = Strength.STRONG;
    i = 0;
    h = ConnectionType.RELAXED;
    f.reset();
  }
  
  public void resetSolverVariable(Cache paramCache)
  {
    if (e == null)
    {
      e = new SolverVariable(SolverVariable.Type.UNRESTRICTED, null);
      return;
    }
    e.reset();
  }
  
  public void setConnectionCreator(int paramInt)
  {
    i = paramInt;
  }
  
  public void setConnectionType(ConnectionType paramConnectionType)
  {
    h = paramConnectionType;
  }
  
  public void setGoneMargin(int paramInt)
  {
    if (isConnected()) {
      d = paramInt;
    }
  }
  
  public void setMargin(int paramInt)
  {
    if (isConnected()) {
      mMargin = paramInt;
    }
  }
  
  public void setStrength(Strength paramStrength)
  {
    if (isConnected()) {
      g = paramStrength;
    }
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(a.getDebugName());
    localStringBuilder.append(":");
    localStringBuilder.append(b.toString());
    return localStringBuilder.toString();
  }
  
  public static enum ConnectionType
  {
    private ConnectionType() {}
  }
  
  public static enum Strength
  {
    private Strength() {}
  }
  
  public static enum Type
  {
    static
    {
      LEFT = new Type("LEFT", 1);
      TOP = new Type("TOP", 2);
      RIGHT = new Type("RIGHT", 3);
      BOTTOM = new Type("BOTTOM", 4);
    }
    
    private Type() {}
  }
}
