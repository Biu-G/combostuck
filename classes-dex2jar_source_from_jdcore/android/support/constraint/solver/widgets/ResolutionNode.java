package android.support.constraint.solver.widgets;

import java.util.HashSet;
import java.util.Iterator;

public class ResolutionNode
{
  public static final int REMOVED = 2;
  public static final int RESOLVED = 1;
  public static final int UNRESOLVED = 0;
  HashSet<ResolutionNode> h = new HashSet(2);
  int i = 0;
  
  public ResolutionNode() {}
  
  public void addDependent(ResolutionNode paramResolutionNode)
  {
    h.add(paramResolutionNode);
  }
  
  public void didResolve()
  {
    i = 1;
    Iterator localIterator = h.iterator();
    while (localIterator.hasNext()) {
      ((ResolutionNode)localIterator.next()).resolve();
    }
  }
  
  public void invalidate()
  {
    i = 0;
    Iterator localIterator = h.iterator();
    while (localIterator.hasNext()) {
      ((ResolutionNode)localIterator.next()).invalidate();
    }
  }
  
  public void invalidateAnchors()
  {
    if ((this instanceof ResolutionAnchor)) {
      i = 0;
    }
    Iterator localIterator = h.iterator();
    while (localIterator.hasNext()) {
      ((ResolutionNode)localIterator.next()).invalidateAnchors();
    }
  }
  
  public boolean isResolved()
  {
    return i == 1;
  }
  
  public void remove(ResolutionDimension paramResolutionDimension) {}
  
  public void reset()
  {
    i = 0;
    h.clear();
  }
  
  public void resolve() {}
}
