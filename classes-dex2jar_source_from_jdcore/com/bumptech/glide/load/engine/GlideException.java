package com.bumptech.glide.load.engine;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.util.Log;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.Key;
import java.io.IOException;
import java.io.PrintStream;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

public final class GlideException
  extends Exception
{
  private static final StackTraceElement[] a = new StackTraceElement[0];
  private static final long serialVersionUID = 1L;
  private final List<Throwable> b;
  private Key c;
  private DataSource d;
  private Class<?> e;
  private String f;
  
  public GlideException(String paramString)
  {
    this(paramString, Collections.emptyList());
  }
  
  public GlideException(String paramString, Throwable paramThrowable)
  {
    this(paramString, Collections.singletonList(paramThrowable));
  }
  
  public GlideException(String paramString, List<Throwable> paramList)
  {
    f = paramString;
    setStackTrace(a);
    b = paramList;
  }
  
  private void a(Appendable paramAppendable)
  {
    a(this, paramAppendable);
    a(getCauses(), new a(paramAppendable));
  }
  
  private static void a(Throwable paramThrowable, Appendable paramAppendable)
  {
    try
    {
      paramAppendable.append(paramThrowable.getClass().toString()).append(": ").append(paramThrowable.getMessage()).append('\n');
      return;
    }
    catch (IOException paramAppendable)
    {
      for (;;) {}
    }
    throw new RuntimeException(paramThrowable);
  }
  
  private void a(Throwable paramThrowable, List<Throwable> paramList)
  {
    if ((paramThrowable instanceof GlideException))
    {
      paramThrowable = ((GlideException)paramThrowable).getCauses().iterator();
      while (paramThrowable.hasNext()) {
        a((Throwable)paramThrowable.next(), paramList);
      }
    }
    paramList.add(paramThrowable);
  }
  
  private static void a(List<Throwable> paramList, Appendable paramAppendable)
  {
    try
    {
      b(paramList, paramAppendable);
      return;
    }
    catch (IOException paramList)
    {
      throw new RuntimeException(paramList);
    }
  }
  
  private static void b(List<Throwable> paramList, Appendable paramAppendable)
    throws IOException
  {
    int k = paramList.size();
    int j;
    for (int i = 0; i < k; i = j)
    {
      Object localObject = paramAppendable.append("Cause (");
      j = i + 1;
      ((Appendable)localObject).append(String.valueOf(j)).append(" of ").append(String.valueOf(k)).append("): ");
      localObject = (Throwable)paramList.get(i);
      if ((localObject instanceof GlideException)) {
        ((GlideException)localObject).a(paramAppendable);
      } else {
        a((Throwable)localObject, paramAppendable);
      }
    }
  }
  
  void a(Key paramKey, DataSource paramDataSource)
  {
    a(paramKey, paramDataSource, null);
  }
  
  void a(Key paramKey, DataSource paramDataSource, Class<?> paramClass)
  {
    c = paramKey;
    d = paramDataSource;
    e = paramClass;
  }
  
  public Throwable fillInStackTrace()
  {
    return this;
  }
  
  public List<Throwable> getCauses()
  {
    return b;
  }
  
  public String getMessage()
  {
    StringBuilder localStringBuilder = new StringBuilder(71);
    localStringBuilder.append(f);
    if (e != null)
    {
      localObject = new StringBuilder();
      ((StringBuilder)localObject).append(", ");
      ((StringBuilder)localObject).append(e);
      localObject = ((StringBuilder)localObject).toString();
    }
    else
    {
      localObject = "";
    }
    localStringBuilder.append((String)localObject);
    if (d != null)
    {
      localObject = new StringBuilder();
      ((StringBuilder)localObject).append(", ");
      ((StringBuilder)localObject).append(d);
      localObject = ((StringBuilder)localObject).toString();
    }
    else
    {
      localObject = "";
    }
    localStringBuilder.append((String)localObject);
    if (c != null)
    {
      localObject = new StringBuilder();
      ((StringBuilder)localObject).append(", ");
      ((StringBuilder)localObject).append(c);
      localObject = ((StringBuilder)localObject).toString();
    }
    else
    {
      localObject = "";
    }
    localStringBuilder.append((String)localObject);
    Object localObject = getRootCauses();
    if (((List)localObject).isEmpty()) {
      return localStringBuilder.toString();
    }
    if (((List)localObject).size() == 1)
    {
      localStringBuilder.append("\nThere was 1 cause:");
    }
    else
    {
      localStringBuilder.append("\nThere were ");
      localStringBuilder.append(((List)localObject).size());
      localStringBuilder.append(" causes:");
    }
    localObject = ((List)localObject).iterator();
    while (((Iterator)localObject).hasNext())
    {
      Throwable localThrowable = (Throwable)((Iterator)localObject).next();
      localStringBuilder.append('\n');
      localStringBuilder.append(localThrowable.getClass().getName());
      localStringBuilder.append('(');
      localStringBuilder.append(localThrowable.getMessage());
      localStringBuilder.append(')');
    }
    localStringBuilder.append("\n call GlideException#logRootCauses(String) for more detail");
    return localStringBuilder.toString();
  }
  
  public List<Throwable> getRootCauses()
  {
    ArrayList localArrayList = new ArrayList();
    a(this, localArrayList);
    return localArrayList;
  }
  
  public void logRootCauses(String paramString)
  {
    List localList = getRootCauses();
    int k = localList.size();
    int j;
    for (int i = 0; i < k; i = j)
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("Root cause (");
      j = i + 1;
      localStringBuilder.append(j);
      localStringBuilder.append(" of ");
      localStringBuilder.append(k);
      localStringBuilder.append(")");
      Log.i(paramString, localStringBuilder.toString(), (Throwable)localList.get(i));
    }
  }
  
  public void printStackTrace()
  {
    printStackTrace(System.err);
  }
  
  public void printStackTrace(PrintStream paramPrintStream)
  {
    a(paramPrintStream);
  }
  
  public void printStackTrace(PrintWriter paramPrintWriter)
  {
    a(paramPrintWriter);
  }
  
  private static final class a
    implements Appendable
  {
    private final Appendable a;
    private boolean b = true;
    
    a(Appendable paramAppendable)
    {
      a = paramAppendable;
    }
    
    @NonNull
    private CharSequence a(@Nullable CharSequence paramCharSequence)
    {
      if (paramCharSequence == null) {
        return "";
      }
      return paramCharSequence;
    }
    
    public Appendable append(char paramChar)
      throws IOException
    {
      boolean bool2 = b;
      boolean bool1 = false;
      if (bool2)
      {
        b = false;
        a.append("  ");
      }
      if (paramChar == '\n') {
        bool1 = true;
      }
      b = bool1;
      a.append(paramChar);
      return this;
    }
    
    public Appendable append(@Nullable CharSequence paramCharSequence)
      throws IOException
    {
      paramCharSequence = a(paramCharSequence);
      return append(paramCharSequence, 0, paramCharSequence.length());
    }
    
    public Appendable append(@Nullable CharSequence paramCharSequence, int paramInt1, int paramInt2)
      throws IOException
    {
      paramCharSequence = a(paramCharSequence);
      boolean bool1 = b;
      boolean bool2 = false;
      if (bool1)
      {
        b = false;
        a.append("  ");
      }
      bool1 = bool2;
      if (paramCharSequence.length() > 0)
      {
        bool1 = bool2;
        if (paramCharSequence.charAt(paramInt2 - 1) == '\n') {
          bool1 = true;
        }
      }
      b = bool1;
      a.append(paramCharSequence, paramInt1, paramInt2);
      return this;
    }
  }
}
