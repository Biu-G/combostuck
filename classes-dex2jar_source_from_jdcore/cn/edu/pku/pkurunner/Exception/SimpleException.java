package cn.edu.pku.pkurunner.Exception;

public abstract class SimpleException
  extends Exception
{
  protected int errorCode;
  
  public SimpleException(int paramInt)
  {
    super("SimpleException");
    errorCode = paramInt;
  }
  
  public SimpleException(int paramInt, String paramString)
  {
    super(paramString);
    errorCode = paramInt;
  }
  
  public SimpleException(int paramInt, String paramString, Throwable paramThrowable)
  {
    super(paramString, paramThrowable);
    errorCode = paramInt;
  }
  
  public int getErrorCode()
  {
    return errorCode;
  }
}
