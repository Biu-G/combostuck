package android.support.design.shape;

import android.support.design.internal.Experimental;

@Experimental("The shapes API is currently experimental and subject to change")
public class ShapePathModel
{
  private static final CornerTreatment a = new CornerTreatment();
  private static final EdgeTreatment b = new EdgeTreatment();
  private CornerTreatment c = a;
  private CornerTreatment d = a;
  private CornerTreatment e = a;
  private CornerTreatment f = a;
  private EdgeTreatment g = b;
  private EdgeTreatment h = b;
  private EdgeTreatment i = b;
  private EdgeTreatment j = b;
  
  public ShapePathModel() {}
  
  public EdgeTreatment getBottomEdge()
  {
    return i;
  }
  
  public CornerTreatment getBottomLeftCorner()
  {
    return f;
  }
  
  public CornerTreatment getBottomRightCorner()
  {
    return e;
  }
  
  public EdgeTreatment getLeftEdge()
  {
    return j;
  }
  
  public EdgeTreatment getRightEdge()
  {
    return h;
  }
  
  public EdgeTreatment getTopEdge()
  {
    return g;
  }
  
  public CornerTreatment getTopLeftCorner()
  {
    return c;
  }
  
  public CornerTreatment getTopRightCorner()
  {
    return d;
  }
  
  public void setAllCorners(CornerTreatment paramCornerTreatment)
  {
    c = paramCornerTreatment;
    d = paramCornerTreatment;
    e = paramCornerTreatment;
    f = paramCornerTreatment;
  }
  
  public void setAllEdges(EdgeTreatment paramEdgeTreatment)
  {
    j = paramEdgeTreatment;
    g = paramEdgeTreatment;
    h = paramEdgeTreatment;
    i = paramEdgeTreatment;
  }
  
  public void setBottomEdge(EdgeTreatment paramEdgeTreatment)
  {
    i = paramEdgeTreatment;
  }
  
  public void setBottomLeftCorner(CornerTreatment paramCornerTreatment)
  {
    f = paramCornerTreatment;
  }
  
  public void setBottomRightCorner(CornerTreatment paramCornerTreatment)
  {
    e = paramCornerTreatment;
  }
  
  public void setCornerTreatments(CornerTreatment paramCornerTreatment1, CornerTreatment paramCornerTreatment2, CornerTreatment paramCornerTreatment3, CornerTreatment paramCornerTreatment4)
  {
    c = paramCornerTreatment1;
    d = paramCornerTreatment2;
    e = paramCornerTreatment3;
    f = paramCornerTreatment4;
  }
  
  public void setEdgeTreatments(EdgeTreatment paramEdgeTreatment1, EdgeTreatment paramEdgeTreatment2, EdgeTreatment paramEdgeTreatment3, EdgeTreatment paramEdgeTreatment4)
  {
    j = paramEdgeTreatment1;
    g = paramEdgeTreatment2;
    h = paramEdgeTreatment3;
    i = paramEdgeTreatment4;
  }
  
  public void setLeftEdge(EdgeTreatment paramEdgeTreatment)
  {
    j = paramEdgeTreatment;
  }
  
  public void setRightEdge(EdgeTreatment paramEdgeTreatment)
  {
    h = paramEdgeTreatment;
  }
  
  public void setTopEdge(EdgeTreatment paramEdgeTreatment)
  {
    g = paramEdgeTreatment;
  }
  
  public void setTopLeftCorner(CornerTreatment paramCornerTreatment)
  {
    c = paramCornerTreatment;
  }
  
  public void setTopRightCorner(CornerTreatment paramCornerTreatment)
  {
    d = paramCornerTreatment;
  }
}
