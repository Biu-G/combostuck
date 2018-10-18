package cn.edu.pku.pkurunner.Network.Service;

import cn.edu.pku.pkurunner.Model.Record.Inner;
import cn.edu.pku.pkurunner.Network.DataPack;
import cn.edu.pku.pkurunner.Network.Model.AMapReverseEncoding;
import cn.edu.pku.pkurunner.Network.Model.UserStatus;
import io.reactivex.Observable;
import java.util.ArrayList;
import java.util.Date;
import okhttp3.RequestBody;
import retrofit2.http.GET;
import retrofit2.http.Multipart;
import retrofit2.http.POST;
import retrofit2.http.Part;
import retrofit2.http.Path;
import retrofit2.http.Query;

public abstract interface RecordService
{
  @GET("record/{userId}")
  public abstract Observable<DataPack<ArrayList<Record.Inner>>> getRecords(@Path("userId") String paramString);
  
  @GET("record/{userId}/{recordId}")
  public abstract Observable<DataPack<Record.Inner>> getSingleRecord(@Path("userId") String paramString, @Path("recordId") int paramInt);
  
  @GET("record/status/{userId}")
  public abstract Observable<DataPack<UserStatus>> getStatus(@Path("userId") String paramString);
  
  @GET("https://restapi.amap.com/v3/geocode/regeo?output=json&extensions=base")
  public abstract Observable<AMapReverseEncoding> reverseEncoding(@Query("location") String paramString1, @Query("key") String paramString2, @Query("radius") int paramInt);
  
  @Multipart
  @POST("record/{userId}")
  public abstract Observable<DataPack<Record.Inner>> uploadRecord(@Path("userId") String paramString1, @Part("duration") int paramInt1, @Part("date") Date paramDate, @Part("detail") String paramString2, @Part("misc") String paramString3, @Part("step") int paramInt2, @Part("photo\"; filename=\"image.jpg\" ") RequestBody paramRequestBody);
  
  @Multipart
  @POST("record/{userId}")
  public abstract Observable<DataPack<Record.Inner>> uploadRecordWithoutPhoto(@Path("userId") String paramString1, @Part("duration") int paramInt1, @Part("date") Date paramDate, @Part("detail") String paramString2, @Part("misc") String paramString3, @Part("step") int paramInt2);
}
