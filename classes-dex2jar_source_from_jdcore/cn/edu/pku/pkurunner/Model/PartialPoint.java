package cn.edu.pku.pkurunner.Model;

import java.util.ArrayList;
import java.util.List;
import org.xutils.db.annotation.Column;
import org.xutils.db.annotation.Table;

@Table(name="partial_track")
public class PartialPoint
{
  @Column(isId=true, name="id")
  private int id;
  @Column(name="latitude")
  private double latitude;
  @Column(name="longitude")
  private double longitude;
  @Column(name="recordDbId")
  private int recordDbId;
  @Column(name="sequence")
  private int sequence;
  @Column(name="status")
  private int status;
  
  public PartialPoint() {}
  
  public PartialPoint(Point paramPoint)
  {
    id = 0;
    sequence = 0;
    recordDbId = 0;
    latitude = paramPoint.getLatitude();
    longitude = paramPoint.getLongitude();
    status = paramPoint.getStatus();
  }
  
  public static ArrayList<PartialPoint> assignInfoToTrack(int paramInt, List<Point> paramList)
  {
    ArrayList localArrayList = new ArrayList();
    int i = 0;
    while (i < paramList.size())
    {
      PartialPoint localPartialPoint = new PartialPoint((Point)paramList.get(i));
      localPartialPoint.setSequence(i);
      localPartialPoint.setRecordDbId(paramInt);
      localArrayList.add(localPartialPoint);
      i += 1;
    }
    return localArrayList;
  }
  
  public int getId()
  {
    return id;
  }
  
  public double getLatitude()
  {
    return latitude;
  }
  
  public double getLongitude()
  {
    return longitude;
  }
  
  public int getRecordDbId()
  {
    return recordDbId;
  }
  
  public int getSequence()
  {
    return sequence;
  }
  
  public int getStatus()
  {
    return status;
  }
  
  public void setId(int paramInt)
  {
    id = paramInt;
  }
  
  public void setLatitude(double paramDouble)
  {
    latitude = paramDouble;
  }
  
  public void setLongitude(double paramDouble)
  {
    longitude = paramDouble;
  }
  
  public void setRecordDbId(int paramInt)
  {
    recordDbId = paramInt;
  }
  
  public void setSequence(int paramInt)
  {
    sequence = paramInt;
  }
  
  public void setStatus(int paramInt)
  {
    status = paramInt;
  }
  
  public Point toPoint()
  {
    return new Point(sequence, recordDbId, longitude, latitude, status);
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("PartialPoint{id=");
    localStringBuilder.append(id);
    localStringBuilder.append(", sequence=");
    localStringBuilder.append(sequence);
    localStringBuilder.append(", recordDbId=");
    localStringBuilder.append(recordDbId);
    localStringBuilder.append(", latitude=");
    localStringBuilder.append(latitude);
    localStringBuilder.append(", longitude=");
    localStringBuilder.append(longitude);
    localStringBuilder.append(", status=");
    localStringBuilder.append(status);
    localStringBuilder.append('}');
    return localStringBuilder.toString();
  }
}
