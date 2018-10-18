package com.dropbox.core;

import com.dropbox.core.util.IOUtil;
import com.dropbox.core.util.StringUtil;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class DbxSdkVersion
{
  public static final String Version = ;
  
  public DbxSdkVersion() {}
  
  private static String a()
    throws DbxSdkVersion.a
  {
    try
    {
      InputStream localInputStream = DbxSdkVersion.class.getResourceAsStream("/sdk-version.txt");
      if (localInputStream != null) {
        try
        {
          Object localObject3 = new BufferedReader(IOUtil.utf8Reader(localInputStream));
          Object localObject1 = ((BufferedReader)localObject3).readLine();
          if (localObject1 != null)
          {
            localObject3 = ((BufferedReader)localObject3).readLine();
            if (localObject3 == null) {
              return localObject1;
            }
            localObject1 = new StringBuilder();
            ((StringBuilder)localObject1).append("Found more than one line.  Second line: ");
            ((StringBuilder)localObject1).append(StringUtil.jq((String)localObject3));
            throw new a(((StringBuilder)localObject1).toString());
          }
          throw new a("No lines.");
        }
        finally
        {
          IOUtil.closeInput(localInputStream);
        }
      }
      throw new a("Not found.");
    }
    catch (IOException localIOException)
    {
      throw new a(localIOException.getMessage());
    }
  }
  
  private static String b()
  {
    try
    {
      String str = a();
      if (Pattern.compile("[0-9]+(?:\\.[0-9]+)*(?:-[-_A-Za-z0-9]+)?").matcher(str).matches()) {
        return str;
      }
      localStringBuilder = new StringBuilder();
      localStringBuilder.append("Text doesn't follow expected pattern: ");
      localStringBuilder.append(StringUtil.jq(str));
      throw new a(localStringBuilder.toString());
    }
    catch (a localA)
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("Error loading version from resource \"sdk-version.txt\": ");
      localStringBuilder.append(localA.getMessage());
      throw new RuntimeException(localStringBuilder.toString());
    }
  }
  
  private static final class a
    extends Exception
  {
    private static final long serialVersionUID = 0L;
    
    public a(String paramString)
    {
      super();
    }
  }
}
