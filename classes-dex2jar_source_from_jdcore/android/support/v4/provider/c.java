package android.support.v4.provider;

import android.content.Context;
import android.net.Uri;
import android.provider.DocumentsContract;
import android.support.annotation.Nullable;
import android.support.annotation.RequiresApi;

@RequiresApi(19)
class c
  extends DocumentFile
{
  private Context a;
  private Uri b;
  
  c(@Nullable DocumentFile paramDocumentFile, Context paramContext, Uri paramUri)
  {
    super(paramDocumentFile);
    a = paramContext;
    b = paramUri;
  }
  
  public boolean canRead()
  {
    return a.i(a, b);
  }
  
  public boolean canWrite()
  {
    return a.j(a, b);
  }
  
  public DocumentFile createDirectory(String paramString)
  {
    throw new UnsupportedOperationException();
  }
  
  public DocumentFile createFile(String paramString1, String paramString2)
  {
    throw new UnsupportedOperationException();
  }
  
  public boolean delete()
  {
    try
    {
      boolean bool = DocumentsContract.deleteDocument(a.getContentResolver(), b);
      return bool;
    }
    catch (Exception localException)
    {
      for (;;) {}
    }
    return false;
  }
  
  public boolean exists()
  {
    return a.k(a, b);
  }
  
  @Nullable
  public String getName()
  {
    return a.b(a, b);
  }
  
  @Nullable
  public String getType()
  {
    return a.c(a, b);
  }
  
  public Uri getUri()
  {
    return b;
  }
  
  public boolean isDirectory()
  {
    return a.e(a, b);
  }
  
  public boolean isFile()
  {
    return a.f(a, b);
  }
  
  public boolean isVirtual()
  {
    return a.a(a, b);
  }
  
  public long lastModified()
  {
    return a.g(a, b);
  }
  
  public long length()
  {
    return a.h(a, b);
  }
  
  public DocumentFile[] listFiles()
  {
    throw new UnsupportedOperationException();
  }
  
  public boolean renameTo(String paramString)
  {
    throw new UnsupportedOperationException();
  }
}
