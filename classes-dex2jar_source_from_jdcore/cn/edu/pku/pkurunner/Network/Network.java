package cn.edu.pku.pkurunner.Network;

import android.content.Context;
import cn.edu.pku.pkurunner.Data;
import cn.edu.pku.pkurunner.Exception.ServerException;
import cn.edu.pku.pkurunner.Model.GymRecord;
import cn.edu.pku.pkurunner.Model.Point;
import cn.edu.pku.pkurunner.Model.Record;
import cn.edu.pku.pkurunner.Model.Task;
import cn.edu.pku.pkurunner.Model.User;
import cn.edu.pku.pkurunner.Model.Weather;
import cn.edu.pku.pkurunner.Network.Model.UserStatus;
import cn.edu.pku.pkurunner.Network.Model.Version;
import cn.edu.pku.pkurunner.Network.Service.ActivityService;
import cn.edu.pku.pkurunner.Network.Service.GymRecordService;
import cn.edu.pku.pkurunner.Network.Service.LoginService;
import cn.edu.pku.pkurunner.Network.Service.RecordService;
import cn.edu.pku.pkurunner.Network.Service.TaskService;
import cn.edu.pku.pkurunner.Network.Service.WeatherService;
import io.reactivex.Observable;
import io.reactivex.functions.Function;
import io.reactivex.schedulers.Schedulers;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import okhttp3.MediaType;
import okhttp3.OkHttpClient.Builder;
import okhttp3.RequestBody;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import retrofit2.Retrofit;
import retrofit2.Retrofit.Builder;
import retrofit2.adapter.rxjava2.RxJava2CallAdapterFactory;
import retrofit2.converter.gson.GsonConverterFactory;

public class Network
{
  private static WeatherService a;
  private static TaskService b;
  private static LoginService c;
  private static RecordService d;
  private static GymRecordService e;
  private static ActivityService f;
  public static final String photoBaseUrl = "https://pkunewyouth.pku.edu.cn/";
  public static Weather weather;
  
  public Network() {}
  
  public static Observable<Boolean> clearActivity20180420()
  {
    return f.clear20180420(Data.getUser().getId()).subscribeOn(Schedulers.newThread()).flatMap(-..Lambda.Network.wVFFg6Kdv2kNGhcKbXiIbvEqSOw.INSTANCE);
  }
  
  public static Observable<ArrayList<GymRecord>> getGymRecords()
  {
    return e.getGymRecords(Data.getUser().getId()).subscribeOn(Schedulers.newThread()).flatMap(new a(null)).flatMap(-..Lambda.Network.wkrN3qQDKFUJN1gr66g4wiwbEdM.INSTANCE);
  }
  
  public static Observable<Version> getLatestVersion(boolean paramBoolean)
  {
    Observable localObservable;
    if (paramBoolean) {
      localObservable = c.getLatestVersionForOffline();
    } else {
      localObservable = c.getLatestVersion();
    }
    return localObservable.subscribeOn(Schedulers.newThread());
  }
  
  public static Observable<Version> getMinVersion()
  {
    return c.getMinVersion().subscribeOn(Schedulers.newThread());
  }
  
  public static Observable<ArrayList<Record>> getRecords(String paramString)
  {
    return d.getRecords(paramString).subscribeOn(Schedulers.newThread()).flatMap(new a(null)).flatMap(-..Lambda.Network.HwGC19Ps9cZBckabFvWg3HnYIMU.INSTANCE);
  }
  
  public static Observable<String> getReverseEncoding(Point paramPoint)
  {
    return d.reverseEncoding(String.format("%.6f,%.6f", new Object[] { Double.valueOf(paramPoint.getLongitude()), Double.valueOf(paramPoint.getLatitude()) }), "bff87dda9f692c2c5f28102eb8d6dad7", 1000).subscribeOn(Schedulers.newThread()).flatMap(-..Lambda.FzV3mZVYQxrLE1CvaS7MrAJX71Y.INSTANCE);
  }
  
  public static Observable<Record> getSingleRecord(String paramString, int paramInt)
  {
    return d.getSingleRecord(paramString, paramInt).subscribeOn(Schedulers.newThread()).flatMap(new a(null)).flatMap(-..Lambda.Network.u2Eh4_2fZ4R7egyY8FSvAc_xkas.INSTANCE);
  }
  
  public static Observable<ArrayList<Task>> getTasks()
  {
    return b.getList(Data.getUser().getId()).subscribeOn(Schedulers.newThread()).flatMap(new a(null)).flatMap(-..Lambda.Network.F6laaxfgPJb97wY_5gxD-HJEKAg.INSTANCE);
  }
  
  public static Observable<UserStatus> getUserStatus()
  {
    return d.getStatus(Data.getUser().getId()).subscribeOn(Schedulers.newThread()).flatMap(new a(null));
  }
  
  public static Observable<Weather> getWeather()
  {
    return a.getWeather().subscribeOn(Schedulers.newThread()).doOnNext(-..Lambda.Network.py1IH-WUwTvRk3ambjlqH9nyopk.INSTANCE);
  }
  
  public static void init(Context paramContext)
  {
    paramContext = new OkHttpClient.Builder();
    paramContext.addInterceptor(-..Lambda.Network.r7Rm47rNGWiFwC5PKtkj4HsdbfA.INSTANCE);
    paramContext = new Retrofit.Builder().baseUrl("https://pkunewyouth.pku.edu.cn/").addConverterFactory(GsonConverterFactory.create()).addCallAdapterFactory(RxJava2CallAdapterFactory.create()).client(paramContext.build()).build();
    a = (WeatherService)paramContext.create(WeatherService.class);
    b = (TaskService)paramContext.create(TaskService.class);
    c = (LoginService)paramContext.create(LoginService.class);
    d = (RecordService)paramContext.create(RecordService.class);
    e = (GymRecordService)paramContext.create(GymRecordService.class);
    f = (ActivityService)paramContext.create(ActivityService.class);
  }
  
  public static Observable<User> loginNew(String paramString)
  {
    return c.login(paramString).subscribeOn(Schedulers.newThread()).flatMap(new a(null)).flatMap(-..Lambda.Network.cccPGUWAvSvm3ONuHhO49VMMj_Y.INSTANCE);
  }
  
  public static Observable<Boolean> signUpActivity20180420(boolean paramBoolean)
  {
    ActivityService localActivityService = f;
    String str2 = Data.getUser().getId();
    String str1;
    if (paramBoolean) {
      str1 = "red";
    } else {
      str1 = "blue";
    }
    return localActivityService.signUp20180420(20180420, str2, str1).subscribeOn(Schedulers.newThread()).flatMap(-..Lambda.Network.o3HSxtOKR3qiOEqpe7GKCP1-UU8.INSTANCE);
  }
  
  public static Observable<GymRecord> uploadGymRecordGetOut(int paramInt, String paramString)
  {
    return e.verifyGymRecord(Data.getUser().getId(), paramInt, paramString).subscribeOn(Schedulers.newThread()).flatMap(new a(null)).flatMap(-..Lambda.Network.lOsHi1a8cbWyrpG3DjEWtJiz6Uc.INSTANCE);
  }
  
  public static Observable<Record> uploadRecord(Record paramRecord, File paramFile)
  {
    JSONArray localJSONArray = new JSONArray();
    try
    {
      Object localObject = paramRecord.getTrack().iterator();
      while (((Iterator)localObject).hasNext()) {
        localJSONArray.put(((Point)((Iterator)localObject).next()).toJSONArray());//change it to new Point()
      }
      localObject = new JSONObject();
      try
      {
        ((JSONObject)localObject).put("agent", "Android v1.2+");
      }
      catch (JSONException localJSONException)
      {
        localJSONException.printStackTrace();
      }
      if (paramFile == null) {
        return d.uploadRecordWithoutPhoto(Data.getUser().getId(), paramRecord.getDuration(), paramRecord.getDate(), localJSONArray.toString(), ((JSONObject)localObject).toString(), paramRecord.getStep()).subscribeOn(Schedulers.newThread()).flatMap(new a(null)).flatMap(-..Lambda.Network.iTz00fTxEHcj8D-6WG8HEy8YpEw.INSTANCE);
      }
      paramFile = RequestBody.create(MediaType.parse("image/jpeg"), paramFile);
      return d.uploadRecord(Data.getUser().getId(), paramRecord.getDuration(), paramRecord.getDate(), localJSONArray.toString(), ((JSONObject)localObject).toString(), paramRecord.getStep(), paramFile).subscribeOn(Schedulers.newThread()).flatMap(new a(null)).flatMap(-..Lambda.Network.3Q8Pm2XUTTOMgF2UDJf5PDEBdkY.INSTANCE);
    }
    catch (JSONException paramRecord)
    {
      paramRecord.printStackTrace();
    }
    return Observable.error(paramRecord);
  }
  
  private static class a<T>
    implements Function<DataPack<T>, Observable<T>>
  {
    private a() {}
    
    public Observable<T> a(DataPack<T> paramDataPack)
    {
      if (paramDataPack.isSuccess()) {
        return Observable.just(paramDataPack.getData());
      }
      return Observable.error(new ServerException(paramDataPack.getCode(), paramDataPack.getMessage()));
    }
  }
}
