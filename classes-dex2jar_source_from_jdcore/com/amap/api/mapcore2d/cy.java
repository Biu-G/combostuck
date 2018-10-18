package com.amap.api.mapcore2d;

import android.text.TextUtils;
import java.util.HashMap;
import java.util.Map;

@dn(a="a")
public class cy
{
  @do(a="a1", b=6)
  private String a;
  @do(a="a2", b=6)
  private String b;
  @do(a="a6", b=2)
  private int c = 1;
  @do(a="a3", b=6)
  private String d;
  @do(a="a4", b=6)
  private String e;
  @do(a="a5", b=6)
  private String f;
  private String g;
  private String h;
  private String i;
  private String j;
  private String k;
  private String[] l = null;
  
  private cy() {}
  
  private cy(a paramA) {}
  
  public static String a(String paramString)
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("a1", cz.b(paramString));
    return dm.a(localHashMap);
  }
  
  private String a(String[] paramArrayOfString)
  {
    if (paramArrayOfString == null) {
      return null;
    }
    try
    {
      StringBuilder localStringBuilder = new StringBuilder();
      int n = paramArrayOfString.length;
      int m = 0;
      while (m < n)
      {
        localStringBuilder.append(paramArrayOfString[m]);
        localStringBuilder.append(";");
        m += 1;
      }
      paramArrayOfString = localStringBuilder.toString();
      return paramArrayOfString;
    }
    catch (Throwable paramArrayOfString)
    {
      paramArrayOfString.printStackTrace();
    }
    return null;
  }
  
  private String[] b(String paramString)
  {
    try
    {
      paramString = paramString.split(";");
      return paramString;
    }
    catch (Throwable paramString)
    {
      paramString.printStackTrace();
    }
    return null;
  }
  
  public static String h()
  {
    return "a6=1";
  }
  
  public String a()
  {
    if ((TextUtils.isEmpty(j)) && (!TextUtils.isEmpty(a))) {
      j = cz.c(a);
    }
    return j;
  }
  
  public void a(boolean paramBoolean)
  {
    throw new Runtime("d2j fail translate: java.lang.RuntimeException: can not merge I and Z\n\tat com.googlecode.dex2jar.ir.TypeClass.merge(TypeClass.java:100)\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer$TypeRef.updateTypeClass(TypeTransformer.java:174)\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer$TypeAnalyze.copyTypes(TypeTransformer.java:311)\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer$TypeAnalyze.fixTypes(TypeTransformer.java:226)\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer$TypeAnalyze.analyze(TypeTransformer.java:207)\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer.transform(TypeTransformer.java:44)\n\tat com.googlecode.d2j.dex.Dex2jar$2.optimize(Dex2jar.java:162)\n\tat com.googlecode.d2j.dex.Dex2Asm.convertCode(Dex2Asm.java:414)\n\tat com.googlecode.d2j.dex.ExDex2Asm.convertCode(ExDex2Asm.java:42)\n\tat com.googlecode.d2j.dex.Dex2jar$2.convertCode(Dex2jar.java:128)\n\tat com.googlecode.d2j.dex.Dex2Asm.convertMethod(Dex2Asm.java:509)\n\tat com.googlecode.d2j.dex.Dex2Asm.convertClass(Dex2Asm.java:406)\n\tat com.googlecode.d2j.dex.Dex2Asm.convertDex(Dex2Asm.java:422)\n\tat com.googlecode.d2j.dex.Dex2jar.doTranslate(Dex2jar.java:172)\n\tat com.googlecode.d2j.dex.Dex2jar.to(Dex2jar.java:272)\n\tat com.googlecode.dex2jar.tools.Dex2jarCmd.doCommandLine(Dex2jarCmd.java:108)\n\tat com.googlecode.dex2jar.tools.BaseCmd.doMain(BaseCmd.java:288)\n\tat com.googlecode.dex2jar.tools.Dex2jarCmd.main(Dex2jarCmd.java:32)\n");
  }
  
  public String b()
  {
    return g;
  }
  
  public String c()
  {
    if ((TextUtils.isEmpty(h)) && (!TextUtils.isEmpty(b))) {
      h = cz.c(b);
    }
    return h;
  }
  
  public String d()
  {
    if ((TextUtils.isEmpty(i)) && (!TextUtils.isEmpty(d))) {
      i = cz.c(d);
    }
    return i;
  }
  
  public String e()
  {
    if ((TextUtils.isEmpty(k)) && (!TextUtils.isEmpty(f))) {
      k = cz.c(f);
    }
    if (TextUtils.isEmpty(k)) {
      k = "standard";
    }
    return k;
  }
  
  public boolean equals(Object paramObject)
  {
    boolean bool = false;
    if (paramObject == null) {
      return false;
    }
    if (paramObject == this) {
      return true;
    }
    if (getClass() != paramObject.getClass()) {
      return false;
    }
    paramObject = (cy)paramObject;
    if (hashCode() == paramObject.hashCode()) {
      bool = true;
    }
    return bool;
  }
  
  public boolean f()
  {
    return c == 1;
  }
  
  public String[] g()
  {
    if (((l == null) || (l.length == 0)) && (!TextUtils.isEmpty(e))) {
      l = b(cz.c(e));
    }
    return (String[])l.clone();
  }
  
  public int hashCode()
  {
    dc localDc = new dc();
    localDc.a(j).a(g).a(h).a(l);
    return localDc.a();
  }
  
  public static class a
  {
    private String a;
    private String b;
    private String c;
    private String d;
    private boolean e = true;
    private String f = "standard";
    private String[] g = null;
    
    public a(String paramString1, String paramString2, String paramString3)
    {
      a = paramString2;
      b = paramString2;
      d = paramString3;
      c = paramString1;
    }
    
    public a a(String paramString)
    {
      b = paramString;
      return this;
    }
    
    public a a(String[] paramArrayOfString)
    {
      g = ((String[])paramArrayOfString.clone());
      return this;
    }
    
    public cy a()
      throws co
    {
      if (g != null) {
        return new cy(this, null);
      }
      throw new co("sdk packages is null");
    }
  }
}
