package cn.edu.pku.pkurunner.Network;

public class DataPack<T>
{
  private int code;
  private T data;
  private String message;
  private boolean success;
  private int version;
  
  public DataPack() {}
  
  public int getCode()
  {
    return code;
  }
  
  public T getData()
  {
    return data;
  }
  
  public String getMessage()
  {
    return message;
  }
  
  public int getVersion()
  {
    return version;
  }
  
  public boolean isSuccess()
  {
    return success;
  }
}
