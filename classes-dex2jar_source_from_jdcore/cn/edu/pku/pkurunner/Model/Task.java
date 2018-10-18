package cn.edu.pku.pkurunner.Model;

import java.lang.annotation.Annotation;

public class Task
{
  public static final int ACQUIRED = 2;
  public static final int HIDDEN = 0;
  public static final int NOT_ACQUIRED = 1;
  private int activityId;
  private String description;
  private int id;
  private String name;
  private String requirement;
  private int status;
  
  public Task() {}
  
  public int getActivityId()
  {
    return activityId;
  }
  
  public String getDescription()
  {
    return description;
  }
  
  public int getId()
  {
    return id;
  }
  
  public String getName()
  {
    return name;
  }
  
  public String getRequirement()
  {
    return requirement;
  }
  
  public int getStatus()
  {
    return status;
  }
  
  public void setActivityId(int paramInt)
  {
    activityId = paramInt;
  }
  
  public void setDescription(String paramString)
  {
    description = paramString;
  }
  
  public void setId(int paramInt)
  {
    id = paramInt;
  }
  
  public void setName(String paramString)
  {
    name = paramString;
  }
  
  public void setRequirement(String paramString)
  {
    requirement = paramString;
  }
  
  public void setStatus(int paramInt)
  {
    status = paramInt;
  }
  
  public static @interface Status {}
}
