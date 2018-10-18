package cn.edu.pku.pkurunner.Network.Model;

import java.util.Date;

public class UserStatus
{
  private Date beginDate;
  private int bonus;
  private int current;
  private Date endDate;
  private int target;
  private int validCount;
  
  public UserStatus() {}
  
  public Date getBeginDate()
  {
    return beginDate;
  }
  
  public int getBonus()
  {
    return bonus;
  }
  
  public int getCurrent()
  {
    return current;
  }
  
  public Date getEndDate()
  {
    return endDate;
  }
  
  public int getTarget()
  {
    return target;
  }
  
  public int getValidCount()
  {
    return validCount;
  }
}
