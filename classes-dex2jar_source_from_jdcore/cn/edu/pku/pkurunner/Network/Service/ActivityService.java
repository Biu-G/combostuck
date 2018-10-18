package cn.edu.pku.pkurunner.Network.Service;

import cn.edu.pku.pkurunner.Network.DataPack;
import io.reactivex.Observable;
import retrofit2.http.POST;
import retrofit2.http.Path;

public abstract interface ActivityService
{
  @POST("activity/20180420/user/{userId}/team/purple")
  public abstract Observable<DataPack> clear20180420(@Path("userId") String paramString);
  
  @POST("activity/{activityId}/user/{userId}/team/{color}")
  public abstract Observable<DataPack> signUp20180420(@Path("activityId") int paramInt, @Path("userId") String paramString1, @Path("color") String paramString2);
}
