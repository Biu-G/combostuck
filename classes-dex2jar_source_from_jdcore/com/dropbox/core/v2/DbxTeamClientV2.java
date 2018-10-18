package com.dropbox.core.v2;

import com.dropbox.core.DbxHost;
import com.dropbox.core.DbxRequestConfig;
import com.dropbox.core.DbxRequestUtil;
import com.dropbox.core.http.HttpRequestor.Header;
import com.dropbox.core.v2.common.PathRoot;
import java.util.List;

public class DbxTeamClientV2
  extends DbxTeamClientV2Base
{
  private final String a;
  
  public DbxTeamClientV2(DbxRequestConfig paramDbxRequestConfig, String paramString)
  {
    this(paramDbxRequestConfig, paramString, DbxHost.DEFAULT);
  }
  
  public DbxTeamClientV2(DbxRequestConfig paramDbxRequestConfig, String paramString, DbxHost paramDbxHost)
  {
    this(paramDbxRequestConfig, paramString, paramDbxHost, null);
  }
  
  public DbxTeamClientV2(DbxRequestConfig paramDbxRequestConfig, String paramString1, DbxHost paramDbxHost, String paramString2)
  {
    super(new a(paramDbxRequestConfig, paramDbxHost, paramString1, paramString2, null, null, null, null));
    a = paramString1;
  }
  
  public DbxClientV2 asAdmin(String paramString)
  {
    if (paramString != null) {
      return new DbxClientV2(new a(_client.getRequestConfig(), _client.getHost(), a, _client.getUserId(), null, paramString, null, null));
    }
    throw new IllegalArgumentException("'adminId' should not be null");
  }
  
  public DbxClientV2 asMember(String paramString)
  {
    if (paramString != null) {
      return new DbxClientV2(new a(_client.getRequestConfig(), _client.getHost(), a, _client.getUserId(), paramString, null, null, null));
    }
    throw new IllegalArgumentException("'memberId' should not be null");
  }
  
  private static final class a
    extends DbxRawClientV2
  {
    private final String a;
    private final String b;
    private final String c;
    
    private a(DbxRequestConfig paramDbxRequestConfig, DbxHost paramDbxHost, String paramString1, String paramString2, String paramString3, String paramString4, PathRoot paramPathRoot)
    {
      super(paramDbxHost, paramString2, paramPathRoot);
      if (paramString1 != null)
      {
        a = paramString1;
        b = paramString3;
        c = paramString4;
        return;
      }
      throw new NullPointerException("accessToken");
    }
    
    protected void addAuthHeaders(List<HttpRequestor.Header> paramList)
    {
      DbxRequestUtil.addAuthHeader(paramList, a);
      if (b != null) {
        DbxRequestUtil.addSelectUserHeader(paramList, b);
      }
      if (c != null) {
        DbxRequestUtil.addSelectAdminHeader(paramList, c);
      }
    }
    
    protected DbxRawClientV2 withPathRoot(PathRoot paramPathRoot)
    {
      return new a(getRequestConfig(), getHost(), a, getUserId(), b, c, paramPathRoot);
    }
  }
}
