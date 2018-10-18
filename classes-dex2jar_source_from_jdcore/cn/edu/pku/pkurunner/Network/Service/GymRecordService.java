package cn.edu.pku.pkurunner.Network.Service;

import cn.edu.pku.pkurunner.Model.GymRecord.Inner;
import cn.edu.pku.pkurunner.Network.DataPack;
import io.reactivex.Observable;
import java.util.ArrayList;
import retrofit2.http.Field;
import retrofit2.http.FormUrlEncoded;
import retrofit2.http.GET;
import retrofit2.http.POST;
import retrofit2.http.Path;

public abstract interface GymRecordService
{
  @GET("record2/{userId}")
  public abstract Observable<DataPack<ArrayList<GymRecord.Inner>>> getGymRecords(@Path("userId") String paramString);
  
  @FormUrlEncoded
  @POST("record2/{userId}/{recordId}")
  public abstract Observable<DataPack<GymRecord.Inner>> verifyGymRecord(@Path("userId") String paramString1, @Path("recordId") int paramInt, @Field("token") String paramString2);
}
