package cn.edu.pku.pkurunner;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import cn.edu.pku.pkurunner.Exception.DataException;
import cn.edu.pku.pkurunner.Map.SpeedHelper.SPEED_UNIT;
import cn.edu.pku.pkurunner.Model.GymRecord;
import cn.edu.pku.pkurunner.Model.PartialPoint;
import cn.edu.pku.pkurunner.Model.PartialRecord;
import cn.edu.pku.pkurunner.Model.Point;
import cn.edu.pku.pkurunner.Model.Record;
import cn.edu.pku.pkurunner.Model.Task;
import cn.edu.pku.pkurunner.Model.User;
import cn.edu.pku.pkurunner.Network.Model.UserStatus;
import cn.edu.pku.pkurunner.Network.Network;
import cn.edu.pku.pkurunner.Photo.PhotoFile;
import io.reactivex.Observable;
import io.reactivex.android.schedulers.AndroidSchedulers;
import io.reactivex.functions.Function;
import io.reactivex.schedulers.Schedulers;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import org.xutils.DbManager;
import org.xutils.DbManager.DaoConfig;
import org.xutils.ex.DbException;
import org.xutils.x;

public class Data
{
  private static User a;
  private static UserStatus b;
  private static ArrayList<Task> c = new ArrayList();
  private static boolean d = false;
  private static final Function<Context, File> e = -..Lambda.QAUCUxm7PKcLTHUdy6IW72nTjF8.INSTANCE;
  private static DbManager.DaoConfig f;
  private static DbManager g;
  private static SharedPreferences h;
  private static File i;
  private static SharedPreferences j;
  private static SharedPreferences k;
  
  public Data() {}
  
  private static void a()
  {
    g = x.getDb(f);
  }
  
  private static void a(String paramString)
  {
    j.edit().putString("lastUsed", paramString).apply();
  }
  
  public static int addGymRecord(GymRecord paramGymRecord)
    throws DataException
  {
    try
    {
      g.saveBindingId(paramGymRecord);
      int m = a.addGymRecord(paramGymRecord);
      return m;
    }
    catch (DbException paramGymRecord)
    {
      paramGymRecord.printStackTrace();
      throw new DataException(2, "Add record failed!", paramGymRecord);
    }
  }
  
  private static void b()
    throws IOException
  {
    g.close();
    g = null;
  }
  
  private static void c()
    throws DataException
  {
    try
    {
      String str = getCurrentUserIdFromFile();
      if ((str != null) && (!"".equals(str)))
      {
        a = (User)g.findById(User.class, str);
        return;
      }
      a = null;
      return;
    }
    catch (DbException localDbException)
    {
      localDbException.printStackTrace();
      throw new DataException(1, localDbException.getMessage());
    }
  }
  
  public static Observable<Boolean> changeUserToken(String paramString)
  {
    return Observable.create(new -..Lambda.Data.eS97tk0qhri_kLkaWDYL6XlrCTc(paramString)).subscribeOn(Schedulers.io());
  }
  
  public static void clearPartialData()
    throws DataException
  {
    try
    {
      g.delete(PartialRecord.class);
      g.delete(PartialPoint.class);
      return;
    }
    catch (DbException localDbException)
    {
      localDbException.printStackTrace();
      throw new DataException(8, localDbException.getMessage());
    }
  }
  
  private static Observable<Boolean> d()
  {
    return Observable.create(-..Lambda.Data.53vWSBYNuPTOM-pYK1yx74D0jb8.INSTANCE);
  }
  
  public static Observable<Boolean> deleteGymRecordById(int paramInt)
  {
    return Observable.create(new -..Lambda.Data.XAvMA_qidTs4Kgy62bUriyCC5B4(paramInt)).subscribeOn(Schedulers.io());
  }
  
  public static Observable<Boolean> deleteRecordById(int paramInt)
  {
    return Observable.create(new -..Lambda.Data.NeHUyVNqeqSFaoreF3Z_VajNIuU(paramInt)).subscribeOn(Schedulers.io());
  }
  
  public static String getCurrentUserIdFromFile()
  {
    return h.getString("id", null);
  }
  
  public static List<User> getDatabaseUsers()
    throws DataException
  {
    try
    {
      List localList = g.findAll(User.class);
      return localList;
    }
    catch (DbException localDbException)
    {
      localDbException.printStackTrace();
      throw new DataException(1, localDbException.getMessage());
    }
  }
  
  public static ArrayList<GymRecord> getGymRecords()
  {
    return a.getGymRecords();
  }
  
  public static Observable<ArrayList<GymRecord>> getGymRecordsFromServer()
  {
    return Network.getGymRecords().observeOn(Schedulers.io()).flatMap(-..Lambda.Data.yab5CI6WPzFsgcwCGSl5st8onnU.INSTANCE);
  }
  
  public static String getLastUsedPhoto()
  {
    return j.getString("lastUsed", "");
  }
  
  public static Observable<String> getRecordPlaceHintForOfflineUser(Record paramRecord)
  {
    if (paramRecord.isPlaceHintAvailable()) {
      return Observable.just(paramRecord.getPlaceHint());
    }
    return Network.getReverseEncoding((Point)paramRecord.getTrack().get(0)).observeOn(Schedulers.io()).flatMap(new -..Lambda.Data.kI4jEVJgM_M15eat8DkKtE-YNjc(paramRecord));
  }
  
  public static ArrayList<Record> getRecords()
  {
    return a.getRecords();
  }
  
  public static Observable<ArrayList<Record>> getRecordsFromServer()
  {
    return Network.getRecords(a.getId()).observeOn(Schedulers.io()).flatMap(-..Lambda.Data.1y-mX5dP_XawyKMMxYq_b3G5Gds.INSTANCE);
  }
  
  public static Record getSingleRecord(int paramInt)
  {
    return a.getRecordById(paramInt);
  }
  
  public static Observable<Record> getSingleRecordFromServer(int paramInt)
  {
    Record localRecord = a.getRecordById(paramInt);
    if (localRecord.isUploaded()) {
      return Network.getSingleRecord(a.getId(), localRecord.getRecordId()).observeOn(Schedulers.io()).flatMap(new -..Lambda.Data._jlVyp7adFrK4SHhZht7_yFz78k(paramInt));
    }
    return Observable.error(new DataException(16));
  }
  
  public static SpeedHelper.SPEED_UNIT getSpeedUnitPreference()
  {
    if (k.contains("unit"))
    {
      int m = k.getInt("unit", 0);
      SpeedHelper.SPEED_UNIT[] arrayOfSPEED_UNIT = SpeedHelper.SPEED_UNIT.values();
      if ((m >= 0) && (m < arrayOfSPEED_UNIT.length)) {
        return arrayOfSPEED_UNIT[m];
      }
      return SpeedHelper.SPEED_UNIT.KilometerPerHour;
    }
    return SpeedHelper.SPEED_UNIT.KilometerPerHour;
  }
  
  public static ArrayList<Task> getTasks()
  {
    return c;
  }
  
  public static Observable<ArrayList<Task>> getTasksFromServer()
  {
    return Network.getTasks().observeOn(Schedulers.io()).doOnNext(-..Lambda.Data.VYKn-jSdzBsagUMYtYN-tQ8AiFo.INSTANCE);
  }
  
  public static User getUser()
  {
    return a;
  }
  
  public static UserStatus getUserStatus()
  {
    return b;
  }
  
  public static Observable<Boolean> init(Context paramContext)
  {
    return Observable.create(new -..Lambda.Data.iq2eXs0WtKIPvCtOtLmnt7b_SvY(paramContext));
  }
  
  public static boolean isValid()
  {
    return d;
  }
  
  public static Observable<Boolean> loadByUser()
  {
    return Observable.create(-..Lambda.Data.G1HxFEO8aRMImjLqya-VviyBLRQ.INSTANCE);
  }
  
  public static void loadSpecificUser(String paramString)
    throws DataException
  {
    try
    {
      a = (User)g.findById(User.class, paramString);
      saveCurrentUserIdToFile();
      return;
    }
    catch (DbException paramString)
    {
      paramString.printStackTrace();
      throw new DataException(1, paramString.getMessage());
    }
  }
  
  public static Observable<Boolean> login()
  {
    return Network.loginNew(a.getToken()).observeOn(Schedulers.io()).flatMap(-..Lambda.Data.t5E8MBq1DYXFbvDNiP7IHKYoRbQ.INSTANCE);
  }
  
  public static Observable<Boolean> provideTrackForPartialRecord(int paramInt, List<Point> paramList)
  {
    return Observable.create(new -..Lambda.Data.aK8r8wgKVPKpkbIAL0aH_IaJ04U(paramInt, paramList)).subscribeOn(Schedulers.io());
  }
  
  public static Observable<Boolean> provideTrackForRecord(int paramInt, ArrayList<Point> paramArrayList)
  {
    return Observable.create(new -..Lambda.Data.LPjt7TN7L21PD784aCdfgAdu7KQ(paramInt, paramArrayList)).subscribeOn(Schedulers.io());
  }
  
  public static Observable<UserStatus> refreshUserStatus()
  {
    return Network.getUserStatus().observeOn(AndroidSchedulers.mainThread()).flatMap(-..Lambda.Data.0NgRDjF_LN8P8V4qw4Fp2KhLWN4.INSTANCE);
  }
  
  public static void saveCurrentUserIdToFile()
  {
    if (a == null)
    {
      h.edit().putString("id", null).apply();
      return;
    }
    h.edit().putString("id", a.getId()).apply();
  }
  
  public static int savePartialRecordToDatabase(PartialRecord paramPartialRecord)
    throws DataException
  {
    try
    {
      g.saveBindingId(paramPartialRecord);
      int m = paramPartialRecord.getId();
      return m;
    }
    catch (DbException paramPartialRecord)
    {
      paramPartialRecord.printStackTrace();
      throw new DataException(2, "Add partial record failed!", paramPartialRecord);
    }
  }
  
  public static int saveRecordToDatabase(Record paramRecord)
    throws DataException
  {
    try
    {
      g.saveBindingId(paramRecord);
      int m = a.addRecord(paramRecord);
      return m;
    }
    catch (DbException paramRecord)
    {
      paramRecord.printStackTrace();
      throw new DataException(2, "Add record failed!", paramRecord);
    }
  }
  
  public static Observable<Boolean> saveUserToDatabase()
  {
    return Observable.create(-..Lambda.Data.ig6lXl0KhpztFuYy7P74ixKRSLI.INSTANCE).subscribeOn(Schedulers.io());
  }
  
  public static Observable<Boolean> setPhotoForRecord(Record paramRecord, String paramString)
  {
    return Observable.create(new -..Lambda.Data.xsa97R7yhCV0enh75D7XLQ0su2A(paramRecord, paramString)).subscribeOn(Schedulers.io());
  }
  
  public static void setSpeedUnitPreference(SpeedHelper.SPEED_UNIT paramSPEED_UNIT)
  {
    k.edit().putInt("unit", paramSPEED_UNIT.ordinal()).apply();
  }
  
  public static void setUser(User paramUser)
  {
    a = paramUser;
  }
  
  public static void setUserStatus(UserStatus paramUserStatus)
  {
    b = paramUserStatus;
  }
  
  public static void setValid(boolean paramBoolean)
  {
    d = paramBoolean;
  }
  
  /* Error */
  public static com.dropbox.core.v2.files.FileMetadata uploadDatabaseToDropbox(Context paramContext, com.dropbox.core.v2.DbxClientV2 paramDbxClientV2)
    throws IOException, com.dropbox.core.DbxException
  {
    // Byte code:
    //   0: new 353	java/io/File
    //   3: dup
    //   4: aload_0
    //   5: invokevirtual 926	android/content/Context:getFilesDir	()Ljava/io/File;
    //   8: ldc_w 341
    //   11: invokespecial 929	java/io/File:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   14: astore_0
    //   15: invokestatic 931	cn/edu/pku/pkurunner/Data:b	()V
    //   18: new 933	java/io/FileInputStream
    //   21: dup
    //   22: aload_0
    //   23: invokespecial 936	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   26: astore_2
    //   27: aconst_null
    //   28: astore_0
    //   29: aload_1
    //   30: invokevirtual 942	com/dropbox/core/v2/DbxClientV2:files	()Lcom/dropbox/core/v2/files/DbxUserFilesRequests;
    //   33: ldc_w 944
    //   36: invokevirtual 950	com/dropbox/core/v2/files/DbxUserFilesRequests:uploadBuilder	(Ljava/lang/String;)Lcom/dropbox/core/v2/files/UploadBuilder;
    //   39: getstatic 956	com/dropbox/core/v2/files/WriteMode:OVERWRITE	Lcom/dropbox/core/v2/files/WriteMode;
    //   42: invokevirtual 962	com/dropbox/core/v2/files/UploadBuilder:withMode	(Lcom/dropbox/core/v2/files/WriteMode;)Lcom/dropbox/core/v2/files/UploadBuilder;
    //   45: aload_2
    //   46: invokevirtual 966	com/dropbox/core/v2/files/UploadBuilder:uploadAndFinish	(Ljava/io/InputStream;)Ljava/lang/Object;
    //   49: checkcast 968	com/dropbox/core/v2/files/FileMetadata
    //   52: astore_1
    //   53: aload_2
    //   54: invokevirtual 971	java/io/InputStream:close	()V
    //   57: aload_1
    //   58: invokevirtual 972	com/dropbox/core/v2/files/FileMetadata:toString	()Ljava/lang/String;
    //   61: invokestatic 521	org/xutils/common/util/LogUtil:d	(Ljava/lang/String;)V
    //   64: invokestatic 381	cn/edu/pku/pkurunner/Data:a	()V
    //   67: aload_1
    //   68: areturn
    //   69: astore_1
    //   70: goto +8 -> 78
    //   73: astore_1
    //   74: aload_1
    //   75: astore_0
    //   76: aload_1
    //   77: athrow
    //   78: aload_0
    //   79: ifnull +19 -> 98
    //   82: aload_2
    //   83: invokevirtual 971	java/io/InputStream:close	()V
    //   86: goto +16 -> 102
    //   89: astore_2
    //   90: aload_0
    //   91: aload_2
    //   92: invokevirtual 975	java/lang/Throwable:addSuppressed	(Ljava/lang/Throwable;)V
    //   95: goto +7 -> 102
    //   98: aload_2
    //   99: invokevirtual 971	java/io/InputStream:close	()V
    //   102: aload_1
    //   103: athrow
    //   104: astore_0
    //   105: aload_0
    //   106: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	107	0	paramContext	Context
    //   0	107	1	paramDbxClientV2	com.dropbox.core.v2.DbxClientV2
    //   26	57	2	localFileInputStream	java.io.FileInputStream
    //   89	10	2	localThrowable	Throwable
    // Exception table:
    //   from	to	target	type
    //   29	53	69	finally
    //   76	78	69	finally
    //   29	53	73	java/lang/Throwable
    //   82	86	89	java/lang/Throwable
    //   18	27	104	com/dropbox/core/DbxException
    //   18	27	104	java/io/IOException
    //   53	57	104	com/dropbox/core/DbxException
    //   53	57	104	java/io/IOException
    //   82	86	104	com/dropbox/core/DbxException
    //   82	86	104	java/io/IOException
    //   90	95	104	com/dropbox/core/DbxException
    //   90	95	104	java/io/IOException
    //   98	102	104	com/dropbox/core/DbxException
    //   98	102	104	java/io/IOException
    //   102	104	104	com/dropbox/core/DbxException
    //   102	104	104	java/io/IOException
  }
  
  public static Observable<Integer> uploadGymRecordGetOut(int paramInt, String paramString)
  {
    return Network.uploadGymRecordGetOut(a.getGymRecordById(paramInt).getRecordId(), paramString).observeOn(Schedulers.io()).flatMap(new -..Lambda.Data.pfuBqZsMdwc1bMHItc1KR16kyAc(paramInt));
  }
  
  public static Observable<Record> uploadRecordToServer(int paramInt)
  {
    Record localRecord = a.getRecordById(paramInt);
    Object localObject = localRecord.getPhotoName();
    if ((localObject != null) && (!"".equals(localObject))) {
      localObject = new File(PhotoFile.getCompressedPhotoDir(i), (String)localObject);
    } else {
      localObject = null;
    }
    return Network.uploadRecord(localRecord, (File)localObject).observeOn(Schedulers.io()).flatMap(new -..Lambda.Data.5RS96HT4Wju8u3X5Ie9lGV6LedY(localRecord, paramInt));
  }
}
