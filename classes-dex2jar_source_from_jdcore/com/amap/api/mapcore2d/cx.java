package com.amap.api.mapcore2d;

import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.util.Map;

public class cx
  extends Thread
  implements er.a
{
  private static String h = "sodownload";
  private static String i = "sofail";
  private er a;
  private a b;
  private RandomAccessFile c;
  private String d;
  private String e;
  private String f;
  private Context g;
  
  public cx(Context paramContext, String paramString1, String paramString2, String paramString3)
  {
    g = paramContext;
    f = paramString3;
    paramString3 = new StringBuilder();
    paramString3.append(paramString1);
    paramString3.append("temp.so");
    d = a(paramContext, paramString3.toString());
    e = a(paramContext, "libwgs2gcj.so");
    b = new a(paramString2);
    a = new er(b);
  }
  
  public static String a(Context paramContext, String paramString)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(paramContext.getFilesDir().getAbsolutePath());
    localStringBuilder.append(File.separator);
    localStringBuilder.append("libso");
    localStringBuilder.append(File.separator);
    localStringBuilder.append(paramString);
    return localStringBuilder.toString();
  }
  
  private static String b(Context paramContext, String paramString)
  {
    return a(paramContext, paramString);
  }
  
  private void d()
  {
    File localFile = new File(d);
    if (localFile.exists()) {
      localFile.delete();
    }
  }
  
  public void a()
  {
    if ((b != null) && (!TextUtils.isEmpty(b.g())) && (b.g().contains("libJni_wgs2gcj.so")))
    {
      if (!b.g().contains(Build.CPU_ABI)) {
        return;
      }
      if (new File(e).exists()) {
        return;
      }
      start();
      return;
    }
  }
  
  public void a(Throwable paramThrowable)
  {
    try
    {
      if (c != null) {
        c.close();
      }
      d();
      paramThrowable = new File(b(g, "tempfile"));
      boolean bool = paramThrowable.exists();
      if (!bool) {
        try
        {
          File localFile = paramThrowable.getParentFile();
          if (!localFile.exists()) {
            localFile.mkdir();
          }
          paramThrowable.createNewFile();
          return;
        }
        catch (Throwable paramThrowable)
        {
          dd.a(paramThrowable, "SDKCoordinatorDownload", "onException");
          return;
        }
      }
      return;
    }
    catch (Throwable paramThrowable)
    {
      dd.a(paramThrowable, "SDKCoordinatorDownload", "onException");
    }
  }
  
  public void a(byte[] paramArrayOfByte, long paramLong)
  {
    try
    {
      if (c == null)
      {
        File localFile1 = new File(d);
        File localFile2 = localFile1.getParentFile();
        if (!localFile2.exists()) {
          localFile2.mkdirs();
        }
        try
        {
          c = new RandomAccessFile(localFile1, "rw");
        }
        catch (FileNotFoundException localFileNotFoundException)
        {
          dd.a(localFileNotFoundException, "SDKCoordinatorDownload", "onDownload");
          d();
        }
      }
      RandomAccessFile localRandomAccessFile = c;
      if (localRandomAccessFile == null) {
        return;
      }
      try
      {
        c.seek(paramLong);
        c.write(paramArrayOfByte);
        return;
      }
      catch (IOException paramArrayOfByte)
      {
        d();
        dd.a(paramArrayOfByte, "SDKCoordinatorDownload", "onDownload");
        return;
      }
      return;
    }
    catch (Throwable paramArrayOfByte)
    {
      d();
      dd.a(paramArrayOfByte, "SDKCoordinatorDownload", "onDownload");
    }
  }
  
  public void b()
  {
    d();
  }
  
  public void c()
  {
    try
    {
      if (c != null) {
        c.close();
      }
      String str = cv.a(d);
      if ((str != null) && (str.equalsIgnoreCase(f)))
      {
        if (new File(e).exists())
        {
          d();
          return;
        }
        new File(d).renameTo(new File(e));
        return;
      }
      d();
      return;
    }
    catch (Throwable localThrowable)
    {
      d();
      File localFile = new File(e);
      if (localFile.exists()) {
        localFile.delete();
      }
      dd.a(localThrowable, "SDKCoordinatorDownload", "onFinish");
    }
  }
  
  public void run()
  {
    try
    {
      File localFile = new File(b(g, "tempfile"));
      if (localFile.exists()) {
        localFile.delete();
      }
      a.a(this);
      return;
    }
    catch (Throwable localThrowable)
    {
      dd.a(localThrowable, "SDKCoordinatorDownload", "run");
      d();
    }
  }
  
  private static class a
    extends ev
  {
    private String a;
    
    a(String paramString)
    {
      a = paramString;
    }
    
    public Map<String, String> e()
    {
      return null;
    }
    
    public Map<String, String> f()
    {
      return null;
    }
    
    public String g()
    {
      return a;
    }
  }
}
