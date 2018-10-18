package cn.edu.pku.pkurunner.TaskList;

import java.util.HashMap;

public abstract class BadgeResourceResolver
{
  public static final int NULL_RESOURCE = 2131230830;
  public static final int UNACHIEVED_RESOURCE = 2131230830;
  private static final HashMap<String, Integer> a = new HashMap();
  
  static
  {
    a.put("daily", Integer.valueOf(2131230829));
  }
  
  public BadgeResourceResolver() {}
  
  public static int resolve(String paramString)
    throws BadgeResourceResolver.a
  {
    if ((paramString != null) && (a.containsKey(paramString))) {
      return ((Integer)a.get(paramString)).intValue();
    }
    throw new a();
  }
  
  static class a
    extends Exception
  {
    a() {}
  }
}
