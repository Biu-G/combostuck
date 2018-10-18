package com.dropbox.core.v2;

import com.dropbox.core.DbxHost;
import com.dropbox.core.DbxRequestConfig;
import com.dropbox.core.DbxRequestUtil;
import com.dropbox.core.http.HttpRequestor.Header;
import com.dropbox.core.v2.common.PathRoot;
import java.util.List;

public class DbxAppClientV2
  extends DbxAppClientV2Base
{
  public DbxAppClientV2(DbxRequestConfig paramDbxRequestConfig, String paramString1, String paramString2)
  {
    this(paramDbxRequestConfig, paramString1, paramString2, DbxHost.DEFAULT);
  }
  
  public DbxAppClientV2(DbxRequestConfig paramDbxRequestConfig, String paramString1, String paramString2, DbxHost paramDbxHost)
  {
    super(new a(paramDbxRequestConfig, paramString1, paramString2, paramDbxHost, null, null));
  }
  
  public DbxAppClientV2(DbxRequestConfig paramDbxRequestConfig, String paramString1, String paramString2, DbxHost paramDbxHost, String paramString3)
  {
    super(new a(paramDbxRequestConfig, paramString1, paramString2, paramDbxHost, paramString3, null));
  }
  
  private static final class a
    extends DbxRawClientV2
  {
    private final String a;
    private final String b;
    
    private a(DbxRequestConfig paramDbxRequestConfig, String paramString1, String paramString2, DbxHost paramDbxHost, String paramString3)
    {
      super(paramDbxHost, paramString3, null);
      a = paramString1;
      b = paramString2;
    }
    
    protected void addAuthHeaders(List<HttpRequestor.Header> paramList)
    {
      DbxRequestUtil.addBasicAuthHeader(paramList, a, b);
    }
    
    protected DbxRawClientV2 withPathRoot(PathRoot paramPathRoot)
    {
      throw new UnsupportedOperationException("App endpoints don't support Dropbox-API-Path-Root header.");
    }
  }
}
