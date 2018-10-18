package cn.edu.pku.pkurunner.Network.Model;

public class Badge
{
  private String description;
  private int id;
  private String name;
  private String requirement;
  private int status;
  
  public Badge() {}
  
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
}
