package android.support.v4.provider;

import android.net.Uri;
import android.support.annotation.Nullable;
import android.util.Log;
import android.webkit.MimeTypeMap;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;

class b
  extends DocumentFile
{
  private File a;
  
  b(@Nullable DocumentFile paramDocumentFile, File paramFile)
  {
    super(paramDocumentFile);
    a = paramFile;
  }
  
  private static String a(String paramString)
  {
    int i = paramString.lastIndexOf('.');
    if (i >= 0)
    {
      paramString = paramString.substring(i + 1).toLowerCase();
      paramString = MimeTypeMap.getSingleton().getMimeTypeFromExtension(paramString);
      if (paramString != null) {
        return paramString;
      }
    }
    return "application/octet-stream";
  }
  
  private static boolean a(File paramFile)
  {
    paramFile = paramFile.listFiles();
    boolean bool1 = true;
    if (paramFile != null)
    {
      int j = paramFile.length;
      int i = 0;
      bool1 = true;
      while (i < j)
      {
        File localFile = paramFile[i];
        boolean bool2 = bool1;
        if (localFile.isDirectory()) {
          bool2 = bool1 & a(localFile);
        }
        bool1 = bool2;
        if (!localFile.delete())
        {
          StringBuilder localStringBuilder = new StringBuilder();
          localStringBuilder.append("Failed to delete ");
          localStringBuilder.append(localFile);
          Log.w("DocumentFile", localStringBuilder.toString());
          bool1 = false;
        }
        i += 1;
      }
    }
    return bool1;
  }
  
  public boolean canRead()
  {
    return a.canRead();
  }
  
  public boolean canWrite()
  {
    return a.canWrite();
  }
  
  @Nullable
  public DocumentFile createDirectory(String paramString)
  {
    paramString = new File(a, paramString);
    if ((!paramString.isDirectory()) && (!paramString.mkdir())) {
      return null;
    }
    return new b(this, paramString);
  }
  
  @Nullable
  public DocumentFile createFile(String paramString1, String paramString2)
  {
    String str = MimeTypeMap.getSingleton().getExtensionFromMimeType(paramString1);
    paramString1 = paramString2;
    if (str != null)
    {
      paramString1 = new StringBuilder();
      paramString1.append(paramString2);
      paramString1.append(".");
      paramString1.append(str);
      paramString1 = paramString1.toString();
    }
    paramString1 = new File(a, paramString1);
    try
    {
      paramString1.createNewFile();
      paramString1 = new b(this, paramString1);
      return paramString1;
    }
    catch (IOException paramString1)
    {
      paramString2 = new StringBuilder();
      paramString2.append("Failed to createFile: ");
      paramString2.append(paramString1);
      Log.w("DocumentFile", paramString2.toString());
    }
    return null;
  }
  
  public boolean delete()
  {
    a(a);
    return a.delete();
  }
  
  public boolean exists()
  {
    return a.exists();
  }
  
  public String getName()
  {
    return a.getName();
  }
  
  @Nullable
  public String getType()
  {
    if (a.isDirectory()) {
      return null;
    }
    return a(a.getName());
  }
  
  public Uri getUri()
  {
    return Uri.fromFile(a);
  }
  
  public boolean isDirectory()
  {
    return a.isDirectory();
  }
  
  public boolean isFile()
  {
    return a.isFile();
  }
  
  public boolean isVirtual()
  {
    return false;
  }
  
  public long lastModified()
  {
    return a.lastModified();
  }
  
  public long length()
  {
    return a.length();
  }
  
  public DocumentFile[] listFiles()
  {
    ArrayList localArrayList = new ArrayList();
    File[] arrayOfFile = a.listFiles();
    if (arrayOfFile != null)
    {
      int j = arrayOfFile.length;
      int i = 0;
      while (i < j)
      {
        localArrayList.add(new b(this, arrayOfFile[i]));
        i += 1;
      }
    }
    return (DocumentFile[])localArrayList.toArray(new DocumentFile[localArrayList.size()]);
  }
  
  public boolean renameTo(String paramString)
  {
    paramString = new File(a.getParentFile(), paramString);
    if (a.renameTo(paramString))
    {
      a = paramString;
      return true;
    }
    return false;
  }
}
