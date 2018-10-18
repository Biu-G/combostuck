package cn.edu.pku.pkurunner.Model;

import java.util.ArrayList;
import java.util.Date;
import org.xutils.db.annotation.Column;
import org.xutils.db.annotation.Table;

@Table(name="partial_record")
public class PartialRecord
{
  @Column(name="date")
  private Date date;
  @Column(name="distance")
  private int distance;
  @Column(name="duration")
  private int duration;
  private ArrayList<Point> geo;
  @Column(isId=true, name="id", property="UNIQUE")
  private int id;
  @Column(name="step")
  private int step;
  
  public PartialRecord() {}
  
  public PartialRecord(int paramInt1, int paramInt2, Date paramDate, int paramInt3)
  {
    duration = paramInt2;
    distance = paramInt1;
    step = paramInt3;
    date = paramDate;
  }
  
  public Date getDate()
  {
    return date;
  }
  
  public int getDistance()
  {
    return distance;
  }
  
  public int getDuration()
  {
    return duration;
  }
  
  public ArrayList<Point> getGeo()
  {
    return geo;
  }
  
  public int getId()
  {
    return id;
  }
  
  public int getStep()
  {
    return step;
  }
  
  public Record toRecord(String paramString)
  {
    return new Record(paramString, distance, duration, date, step);
  }
}
