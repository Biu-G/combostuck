package cn.edu.pku.pkurunner.Storage;

import android.content.Context;
import android.content.SharedPreferences;
import com.dropbox.core.DbxRequestConfig;
import com.dropbox.core.DbxRequestConfig.Builder;
import com.dropbox.core.http.OkHttp3Requestor;
import com.dropbox.core.v2.DbxClientV2;
import io.reactivex.Observable;
import io.reactivex.android.schedulers.AndroidSchedulers;

public abstract class Dropbox
{
  public Dropbox() {}
  
  public static abstract class APIWrapper
  {
    public APIWrapper() {}
    
    public static Observable<String> getToken(Context paramContext)
    {
      return Observable.create(new -..Lambda.Dropbox.APIWrapper.BP0b9MjrevyUlEAUD_VLSXnCjEs(paramContext)).subscribeOn(AndroidSchedulers.mainThread());
    }
    
    public static boolean hasToken(Context paramContext)
    {
      boolean bool = false;
      if (paramContext.getSharedPreferences("storage-dropbox", 0).getString("access-token", null) != null) {
        bool = true;
      }
      return bool;
    }
    
    public static class DropboxException
      extends Exception
    {
      public static final int NO_ACCESS_TOKEN = 1;
      private int a;
      
      public DropboxException(int paramInt)
      {
        a = paramInt;
      }
      
      public DropboxException(String paramString, int paramInt)
      {
        super();
        a = paramInt;
      }
      
      public int getCode()
      {
        return a;
      }
    }
  }
  
  public static abstract class ClientFactory
  {
    private static DbxClientV2 a;
    
    public ClientFactory() {}
    
    public static DbxClientV2 getClient()
    {
      if (a != null) {
        return a;
      }
      throw new IllegalStateException("Client not initialized.");
    }
    
    public static void init(String paramString)
    {
      if (a == null) {
        a = new DbxClientV2(DbxRequestConfig.newBuilder("PKU-Runner-Android-v1.2").withHttpRequestor(new OkHttp3Requestor(OkHttp3Requestor.defaultOkHttpClient())).build(), paramString);
      }
    }
  }
}
