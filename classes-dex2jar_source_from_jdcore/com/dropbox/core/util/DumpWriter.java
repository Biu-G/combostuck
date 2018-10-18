package com.dropbox.core.util;

import com.dropbox.core.json.JsonDateReader;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.Iterator;

public abstract class DumpWriter
{
  public DumpWriter() {}
  
  private static String a(String paramString, int paramInt)
  {
    while (paramString.length() < paramInt)
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("0");
      localStringBuilder.append(paramString);
      paramString = localStringBuilder.toString();
    }
    return paramString;
  }
  
  public static String toStringDate(Date paramDate)
  {
    if (paramDate == null) {
      return "null";
    }
    StringBuilder localStringBuilder = new StringBuilder();
    Object localObject = new GregorianCalendar(JsonDateReader.UTC);
    ((GregorianCalendar)localObject).setTime(paramDate);
    paramDate = Integer.toString(((GregorianCalendar)localObject).get(1));
    String str1 = a(Integer.toString(((GregorianCalendar)localObject).get(2) + 1), 2);
    String str2 = a(Integer.toString(((GregorianCalendar)localObject).get(5)), 2);
    String str3 = a(Integer.toString(((GregorianCalendar)localObject).get(11)), 2);
    String str4 = a(Integer.toString(((GregorianCalendar)localObject).get(12)), 2);
    localObject = a(Integer.toString(((GregorianCalendar)localObject).get(13)), 2);
    localStringBuilder.append('"');
    localStringBuilder.append(paramDate);
    localStringBuilder.append("/");
    localStringBuilder.append(str1);
    localStringBuilder.append("/");
    localStringBuilder.append(str2);
    localStringBuilder.append(" ");
    localStringBuilder.append(str3);
    localStringBuilder.append(":");
    localStringBuilder.append(str4);
    localStringBuilder.append(":");
    localStringBuilder.append((String)localObject);
    localStringBuilder.append(" UTC");
    localStringBuilder.append('"');
    return localStringBuilder.toString();
  }
  
  public abstract DumpWriter f(String paramString);
  
  public DumpWriter fieldVerbatim(String paramString1, String paramString2)
  {
    return f(paramString1).verbatim(paramString2);
  }
  
  public abstract DumpWriter listEnd();
  
  public abstract DumpWriter listStart();
  
  public abstract DumpWriter recordEnd();
  
  public abstract DumpWriter recordStart(String paramString);
  
  public DumpWriter v(double paramDouble)
  {
    return verbatim(Double.toString(paramDouble));
  }
  
  public DumpWriter v(float paramFloat)
  {
    return verbatim(Float.toString(paramFloat));
  }
  
  public DumpWriter v(int paramInt)
  {
    return verbatim(Integer.toString(paramInt));
  }
  
  public DumpWriter v(long paramLong)
  {
    return verbatim(Long.toString(paramLong));
  }
  
  public DumpWriter v(Dumpable paramDumpable)
  {
    if (paramDumpable == null)
    {
      verbatim("null");
      return this;
    }
    recordStart(paramDumpable.getTypeName());
    paramDumpable.dumpFields(this);
    recordEnd();
    return this;
  }
  
  public DumpWriter v(Iterable<? extends Dumpable> paramIterable)
  {
    if (paramIterable == null)
    {
      verbatim("null");
      return this;
    }
    listStart();
    paramIterable = paramIterable.iterator();
    while (paramIterable.hasNext()) {
      v((Dumpable)paramIterable.next());
    }
    listEnd();
    return this;
  }
  
  public DumpWriter v(Long paramLong)
  {
    if (paramLong == null) {
      paramLong = "null";
    } else {
      paramLong = Long.toString(paramLong.longValue());
    }
    return verbatim(paramLong);
  }
  
  public DumpWriter v(String paramString)
  {
    if (paramString == null)
    {
      verbatim("null");
      return this;
    }
    verbatim(StringUtil.jq(paramString));
    return this;
  }
  
  public DumpWriter v(Date paramDate)
  {
    return verbatim(toStringDate(paramDate));
  }
  
  public DumpWriter v(boolean paramBoolean)
  {
    return verbatim(Boolean.toString(paramBoolean));
  }
  
  public abstract DumpWriter verbatim(String paramString);
  
  public static final class Multiline
    extends DumpWriter
  {
    boolean a = true;
    private final StringBuilder b;
    private final int c;
    private int d;
    
    public Multiline(StringBuilder paramStringBuilder, int paramInt1, int paramInt2, boolean paramBoolean)
    {
      if (paramStringBuilder != null)
      {
        if (paramInt1 >= 0)
        {
          if (paramInt2 >= 0)
          {
            b = paramStringBuilder;
            c = paramInt1;
            d = paramInt2;
            a = paramBoolean;
            return;
          }
          throw new IllegalArgumentException("'currentIndent' must be non-negative");
        }
        throw new IllegalArgumentException("'indentAmount' must be non-negative");
      }
      throw new IllegalArgumentException("'buf' must not be null");
    }
    
    public Multiline(StringBuilder paramStringBuilder, int paramInt, boolean paramBoolean)
    {
      this(paramStringBuilder, paramInt, 0, paramBoolean);
    }
    
    private void a()
    {
      if (a)
      {
        int j = d;
        int i = 0;
        while (i < j)
        {
          b.append(' ');
          i += 1;
        }
      }
    }
    
    private void b()
    {
      d += c;
    }
    
    private void c()
    {
      if (c <= d)
      {
        d -= c;
        return;
      }
      throw new IllegalStateException("indent went negative");
    }
    
    public DumpWriter f(String paramString)
    {
      if (a)
      {
        a();
        StringBuilder localStringBuilder = b;
        localStringBuilder.append(paramString);
        localStringBuilder.append(" = ");
        a = false;
        return this;
      }
      throw new AssertionError("called fieldStart() in a bad state");
    }
    
    public DumpWriter listEnd()
    {
      if (a)
      {
        c();
        a();
        b.append("]\n");
        a = true;
        return this;
      }
      throw new AssertionError("called listEnd() in a bad state");
    }
    
    public DumpWriter listStart()
    {
      a();
      b.append("[\n");
      a = true;
      b();
      return this;
    }
    
    public DumpWriter recordEnd()
    {
      if (a)
      {
        c();
        a();
        b.append("}\n");
        a = true;
        return this;
      }
      throw new AssertionError("called recordEnd() in a bad state");
    }
    
    public DumpWriter recordStart(String paramString)
    {
      a();
      if (paramString != null)
      {
        StringBuilder localStringBuilder = b;
        localStringBuilder.append(paramString);
        localStringBuilder.append(" ");
      }
      b.append("{\n");
      a = true;
      b();
      return this;
    }
    
    public DumpWriter verbatim(String paramString)
    {
      a();
      b.append(paramString);
      b.append('\n');
      a = true;
      return this;
    }
  }
  
  public static final class Plain
    extends DumpWriter
  {
    private StringBuilder a;
    private boolean b = false;
    
    public Plain(StringBuilder paramStringBuilder)
    {
      a = paramStringBuilder;
    }
    
    private void a()
    {
      if (b)
      {
        a.append(", ");
        return;
      }
      b = true;
    }
    
    public DumpWriter f(String paramString)
    {
      a();
      StringBuilder localStringBuilder = a;
      localStringBuilder.append(paramString);
      localStringBuilder.append('=');
      b = false;
      return this;
    }
    
    public DumpWriter listEnd()
    {
      a.append("]");
      b = true;
      return this;
    }
    
    public DumpWriter listStart()
    {
      a();
      a.append("[");
      b = false;
      return this;
    }
    
    public DumpWriter recordEnd()
    {
      a.append(")");
      b = true;
      return this;
    }
    
    public DumpWriter recordStart(String paramString)
    {
      if (paramString != null) {
        a.append(paramString);
      }
      a.append("(");
      b = false;
      return this;
    }
    
    public DumpWriter verbatim(String paramString)
    {
      a();
      a.append(paramString);
      return this;
    }
  }
}
