package android.support.constraint.solver.widgets;

import java.util.ArrayList;

public class Snapshot
{
  private int a;
  private int b;
  private int c;
  private int d;
  private ArrayList<a> e = new ArrayList();
  
  public Snapshot(ConstraintWidget paramConstraintWidget)
  {
    a = paramConstraintWidget.getX();
    b = paramConstraintWidget.getY();
    c = paramConstraintWidget.getWidth();
    d = paramConstraintWidget.getHeight();
    paramConstraintWidget = paramConstraintWidget.getAnchors();
    int j = paramConstraintWidget.size();
    int i = 0;
    while (i < j)
    {
      ConstraintAnchor localConstraintAnchor = (ConstraintAnchor)paramConstraintWidget.get(i);
      e.add(new a(localConstraintAnchor));
      i += 1;
    }
  }
  
  public void applyTo(ConstraintWidget paramConstraintWidget)
  {
    paramConstraintWidget.setX(a);
    paramConstraintWidget.setY(b);
    paramConstraintWidget.setWidth(c);
    paramConstraintWidget.setHeight(d);
    int j = e.size();
    int i = 0;
    while (i < j)
    {
      ((a)e.get(i)).b(paramConstraintWidget);
      i += 1;
    }
  }
  
  public void updateFrom(ConstraintWidget paramConstraintWidget)
  {
    a = paramConstraintWidget.getX();
    b = paramConstraintWidget.getY();
    c = paramConstraintWidget.getWidth();
    d = paramConstraintWidget.getHeight();
    int j = e.size();
    int i = 0;
    while (i < j)
    {
      ((a)e.get(i)).a(paramConstraintWidget);
      i += 1;
    }
  }
  
  static class a
  {
    private ConstraintAnchor a;
    private ConstraintAnchor b;
    private int c;
    private ConstraintAnchor.Strength d;
    private int e;
    
    public a(ConstraintAnchor paramConstraintAnchor)
    {
      a = paramConstraintAnchor;
      b = paramConstraintAnchor.getTarget();
      c = paramConstraintAnchor.getMargin();
      d = paramConstraintAnchor.getStrength();
      e = paramConstraintAnchor.getConnectionCreator();
    }
    
    public void a(ConstraintWidget paramConstraintWidget)
    {
      a = paramConstraintWidget.getAnchor(a.getType());
      if (a != null)
      {
        b = a.getTarget();
        c = a.getMargin();
        d = a.getStrength();
        e = a.getConnectionCreator();
        return;
      }
      b = null;
      c = 0;
      d = ConstraintAnchor.Strength.STRONG;
      e = 0;
    }
    
    public void b(ConstraintWidget paramConstraintWidget)
    {
      paramConstraintWidget.getAnchor(a.getType()).connect(b, c, d, e);
    }
  }
}
