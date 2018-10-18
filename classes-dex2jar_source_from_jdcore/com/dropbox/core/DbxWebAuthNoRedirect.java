package com.dropbox.core;

@Deprecated
public class DbxWebAuthNoRedirect
{
  private final DbxWebAuth a;
  
  public DbxWebAuthNoRedirect(DbxRequestConfig paramDbxRequestConfig, DbxAppInfo paramDbxAppInfo)
  {
    a = new DbxWebAuth(paramDbxRequestConfig, paramDbxAppInfo);
  }
  
  public DbxAuthFinish finish(String paramString)
    throws DbxException
  {
    return a.finishFromCode(paramString);
  }
  
  public String start()
  {
    DbxWebAuth.Request localRequest = DbxWebAuth.newRequestBuilder().withNoRedirect().build();
    return a.authorize(localRequest);
  }
}
