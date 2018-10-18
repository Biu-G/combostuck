package cn.edu.pku.pkurunner.Exception;

import android.content.res.Resources;
import android.util.SparseIntArray;

public class ServerException
  extends SimpleException
{
  private static Resources a;
  private static final SparseIntArray b = new SparseIntArray();
  
  static
  {
    b.put(-1, 2131689578);
    b.put(0, 2131689554);
    b.put(1, 2131689555);
    b.put(2, 2131689566);
    b.put(3, 2131689571);
    b.put(4, 2131689572);
    b.put(5, 2131689573);
    b.put(6, 2131689574);
    b.put(7, 2131689575);
    b.put(8, 2131689576);
    b.put(9, 2131689577);
    b.put(10, 2131689556);
    b.put(11, 2131689557);
    b.put(12, 2131689558);
    b.put(13, 2131689559);
    b.put(14, 2131689560);
    b.put(15, 2131689561);
    b.put(16, 2131689562);
    b.put(17, 2131689563);
    b.put(18, 2131689564);
    b.put(19, 2131689565);
    b.put(20, 2131689567);
    b.put(21, 2131689568);
    b.put(22, 2131689569);
    b.put(23, 2131689570);
  }
  
  public ServerException(int paramInt, String paramString)
  {
    super(paramInt, paramString);
  }
  
  public static String getLocalizedMessage(int paramInt)
  {
    return a.getString(b.get(paramInt, 2131689578));
  }
  
  public static void setResources(Resources paramResources)
  {
    a = paramResources;
  }
  
  public String getLocalizedMessage()
  {
    return a.getString(b.get(errorCode, 2131689578));
  }
}
