package com.dropbox.core.v2;

import com.dropbox.core.DbxHost;
import com.dropbox.core.DbxRequestConfig;
import com.dropbox.core.DbxRequestUtil;
import com.dropbox.core.http.HttpRequestor.Header;
import com.dropbox.core.v2.common.PathRoot;
import java.util.List;

public class DbxClientV2
  extends DbxClientV2Base
{
  public DbxClientV2(DbxRequestConfig paramDbxRequestConfig, String paramString)
  {
    this(paramDbxRequestConfig, paramString, DbxHost.DEFAULT, null);
  }
  
  public DbxClientV2(DbxRequestConfig paramDbxRequestConfig, String paramString, DbxHost paramDbxHost)
  {
    this(paramDbxRequestConfig, paramString, paramDbxHost, null);
  }
  
  public DbxClientV2(DbxRequestConfig paramDbxRequestConfig, String paramString1, DbxHost paramDbxHost, String paramString2)
  {
    super(new a(paramDbxRequestConfig, paramString1, paramDbxHost, paramString2, null));
  }
  
  public DbxClientV2(DbxRequestConfig paramDbxRequestConfig, String paramString1, String paramString2)
  {
    this(paramDbxRequestConfig, paramString1, DbxHost.DEFAULT, paramString2);
  }
  
  DbxClientV2(DbxRawClientV2 paramDbxRawClientV2)
  {
    super(paramDbxRawClientV2);
  }
  
  public DbxClientV2 withPathRoot(PathRoot paramPathRoot)
  {
    if (paramPathRoot != null) {
      return new DbxClientV2(_client.withPathRoot(paramPathRoot));
    }
    throw new IllegalArgumentException("'pathRoot' should not be null");
  }
  
  private static final class a
    extends DbxRawClientV2
  {
    private final String a;
    
    public a(DbxRequestConfig paramDbxRequestConfig, String paramString1, DbxHost paramDbxHost, String paramString2, PathRoot paramPathRoot)
    {
      super(paramDbxHost, paramString2, paramPathRoot);
      if (paramString1 != null)
      {
        a = paramString1;
        return;
      }
      throw new NullPointerException("accessToken");
    }
    
    protected void addAuthHeaders(List<HttpRequestor.Header> paramList)
    {
      DbxRequestUtil.addAuthHeader(paramList, a);
    }
    
    protected DbxRawClientV2 withPathRoot(PathRoot paramPathRoot)
    {
      return new a(getRequestConfig(), a, getHost(), getUserId(), paramPathRoot);
    }
  }
}
