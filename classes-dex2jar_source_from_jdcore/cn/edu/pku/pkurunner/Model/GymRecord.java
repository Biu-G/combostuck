package cn.edu.pku.pkurunner.Model;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.TimeZone;
import org.xutils.db.annotation.Column;
import org.xutils.db.annotation.Table;

@Table(name="record2")
public class GymRecord
{
  private static final DateFormat dateFormatter = ;
  @Column(name="duration")
  private int duration;
  @Column(isId=true, name="id", property="UNIQUE")
  private int id;
  @Column(name="place")
  private int place;
  @Column(name="recordId")
  private int recordId;
  @Column(name="startTime")
  private Date startTime;
  @Column(name="uploaded")
  private Boolean uploaded;
  @Column(name="userId")
  private String userId;
  @Column(name="verified")
  private Boolean verified;
  
  static
  {
    dateFormatter.setTimeZone(TimeZone.getTimeZone("Asia/Shanghai"));
  }
  
  public GymRecord() {}
  
  public GymRecord(Inner paramInner)
  {
    id = -1;
    verified = Boolean.valueOf(true);
    recordId = recordId;
    duration = ((int)duration);
    place = place;
    startTime = startTime;
    uploaded = Boolean.valueOf(true);
    userId = userId;
  }
  
  public GymRecord(String paramString, int paramInt)
  {
    place = paramInt;
    id = 0;
    recordId = -1;
    userId = paramString;
    duration = -1;
    startTime = new Date();
    uploaded = Boolean.valueOf(false);
    verified = Boolean.valueOf(false);
  }
  
  public int getDuration()
  {
    return duration;
  }
  
  public int getId()
  {
    return id;
  }
  
  public int getPlace()
  {
    return place;
  }
  
  public int getRecordId()
  {
    return recordId;
  }
  
  public Date getStartTime()
  {
    return startTime;
  }
  
  public String getUserId()
  {
    return userId;
  }
  
  public Boolean isUploaded()
  {
    return uploaded;
  }
  
  public Boolean isVerified()
  {
    return verified;
  }
  
  public void setDuration(int paramInt)
  {
    duration = paramInt;
  }
  
  public void setId(int paramInt)
  {
    id = paramInt;
  }
  
  public void setPlace(int paramInt)
  {
    place = paramInt;
  }
  
  public void setRecordId(int paramInt)
  {
    recordId = paramInt;
  }
  
  public void setStartTime(Date paramDate)
  {
    startTime = paramDate;
  }
  
  public void setUploaded(Boolean paramBoolean)
  {
    uploaded = paramBoolean;
  }
  
  public void setUserId(String paramString)
  {
    userId = paramString;
  }
  
  public void setVerified(Boolean paramBoolean)
  {
    verified = paramBoolean;
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("GymRecord{id=");
    localStringBuilder.append(id);
    localStringBuilder.append(", recordId=");
    localStringBuilder.append(recordId);
    localStringBuilder.append(", userId='");
    localStringBuilder.append(userId);
    localStringBuilder.append('\'');
    localStringBuilder.append(", place='");
    localStringBuilder.append(place);
    localStringBuilder.append('\'');
    localStringBuilder.append(", duration=");
    localStringBuilder.append(duration);
    localStringBuilder.append(", startTime=");
    localStringBuilder.append(dateFormatter.format(startTime));
    localStringBuilder.append(", uploaded=");
    localStringBuilder.append(uploaded);
    localStringBuilder.append('}');
    return localStringBuilder.toString();
  }
  
  public static class Inner
  {
    private double duration;
    private int place;
    private int recordId;
    private Date startTime;
    private String userId;
    
    public Inner() {}
  }
}
