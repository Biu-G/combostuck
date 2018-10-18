package cn.edu.pku.pkurunner.Network.Service;

import cn.edu.pku.pkurunner.Model.User.Inner;
import cn.edu.pku.pkurunner.Network.DataPack;
import cn.edu.pku.pkurunner.Network.Model.Version;
import io.reactivex.Observable;
import retrofit2.http.Field;
import retrofit2.http.FormUrlEncoded;
import retrofit2.http.GET;
import retrofit2.http.POST;

public abstract interface LoginService
{
  @GET("public/client/android/curr_version")
  public abstract Observable<Version> getLatestVersion();
  
  @GET("https://raw.githubusercontent.com/pku-runner/pku-runner.github.io/android/public/client/android/curr_version")
  public abstract Observable<Version> getLatestVersionForOffline();
  
  @GET("public/client/android/min_version")
  public abstract Observable<Version> getMinVersion();
  
  @FormUrlEncoded
  @POST("user")
  public abstract Observable<DataPack<User.Inner>> login(@Field("access_token") String paramString);
}
