package cn.edu.pku.pkurunner.Model;

import java.lang.annotation.Annotation;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.UUID;
import org.xutils.db.annotation.Column;
import org.xutils.db.annotation.Table;

@Table(name="user")
public class User
{
  public static final int FEMALE = 0;
  public static final String FEMALE_STRING = "女";
  public static final int MALE = 1;
  public static final String MALE_STRING = "男";
  public static final int UNKNOWN_GENDER = -1;
  public static final String UNKNOWN_GENDER_STRING = "未知";
  @Column(name="PESpecialty")
  private Boolean PESpecialty;
  @Column(name="department")
  private String department;
  @Column(name="gender")
  private int gender;
  private ArrayList<GymRecord> gymRecords = new ArrayList();
  @Column(isId=true, name="id", property="UNIQUE")
  private String id;
  @Column(name="name")
  private String name;
  @Column(name="offline")
  private Boolean offline = Boolean.valueOf(false);
  private ArrayList<Record> records = new ArrayList();
  @Column(name="token")
  private String token;
  
  public User() {}
  
  public User(Inner paramInner)
  {
    token = access_token;
    PESpecialty = isPESpecialty;
    department = department;
    name = name;
    id = id;
    paramInner = sex;
    int i = paramInner.hashCode();
    if (i != 22899)
    {
      if ((i == 30007) && (paramInner.equals("男")))
      {
        i = 0;
        break label131;
      }
    }
    else if (paramInner.equals("女"))
    {
      i = 1;
      break label131;
    }
    i = -1;
    switch (i)
    {
    default: 
      gender = -1;
      return;
    case 1: 
      label131:
      gender = 0;
      return;
    }
    gender = 1;
  }
  
  public User(String paramString1, String paramString2)
  {
    id = paramString1;
    token = paramString2;
  }
  
  public static User createOfflineUser(int paramInt, String paramString)
  {
    User localUser = new User();
    offline = Boolean.valueOf(true);
    department = "离线";
    gender = paramInt;
    id = UUID.randomUUID().toString();
    name = paramString;
    PESpecialty = Boolean.valueOf(false);
    token = UUID.randomUUID().toString();
    return localUser;
  }
  
  private String getGenderByString()
  {
    switch (gender)
    {
    default: 
      return "未知";
    case 1: 
      return "男";
    }
    return "女";
  }
  
  public int addGymRecord(GymRecord paramGymRecord)
  {
    gymRecords.add(paramGymRecord);
    return paramGymRecord.getId();
  }
  
  public int addRecord(Record paramRecord)
  {
    records.add(paramRecord);
    return paramRecord.getId();
  }
  
  public Boolean deleteGymRecordById(int paramInt)
  {
    Iterator localIterator = gymRecords.iterator();
    while (localIterator.hasNext())
    {
      GymRecord localGymRecord = (GymRecord)localIterator.next();
      if (localGymRecord.getId() == paramInt)
      {
        if (localGymRecord.isUploaded().booleanValue()) {
          return Boolean.valueOf(false);
        }
        return Boolean.valueOf(gymRecords.remove(localGymRecord));
      }
    }
    return Boolean.valueOf(false);
  }
  
  public Boolean deleteRecord(Record paramRecord)
  {
    return Boolean.valueOf(records.remove(paramRecord));
  }
  
  public String getDepartment()
  {
    return department;
  }
  
  public int getGender()
  {
    return gender;
  }
  
  public GymRecord getGymRecordById(int paramInt)
  {
    Iterator localIterator = gymRecords.iterator();
    while (localIterator.hasNext())
    {
      GymRecord localGymRecord = (GymRecord)localIterator.next();
      if (localGymRecord.getId() == paramInt) {
        return localGymRecord;
      }
    }
    return null;
  }
  
  public ArrayList<GymRecord> getGymRecords()
  {
    return gymRecords;
  }
  
  public String getId()
  {
    return id;
  }
  
  public String getName()
  {
    return name;
  }
  
  public Record getRecordById(int paramInt)
  {
    Iterator localIterator = records.iterator();
    while (localIterator.hasNext())
    {
      Record localRecord = (Record)localIterator.next();
      if (localRecord.getId() == paramInt) {
        return localRecord;
      }
    }
    return null;
  }
  
  public ArrayList<Record> getRecords()
  {
    return records;
  }
  
  public String getToken()
  {
    return token;
  }
  
  public Boolean isOffline()
  {
    return offline;
  }
  
  public Boolean isPESpecialty()
  {
    return PESpecialty;
  }
  
  public Boolean provideTrackForRecord(int paramInt, ArrayList<Point> paramArrayList)
  {
    Record localRecord = getRecordById(paramInt);
    if (localRecord != null)
    {
      localRecord.setTrack(Point.assignInfoToTrack(paramInt, paramArrayList));
      localRecord.setDetailed(true);
      return Boolean.valueOf(true);
    }
    return Boolean.valueOf(false);
  }
  
  public void setDepartment(String paramString)
  {
    department = paramString;
  }
  
  public void setGender(int paramInt)
  {
    gender = paramInt;
  }
  
  public void setGymRecordById(int paramInt, GymRecord paramGymRecord)
  {
    int i = 0;
    while (i < gymRecords.size())
    {
      if (((GymRecord)gymRecords.get(i)).getId() == paramInt) {
        gymRecords.set(paramInt, paramGymRecord);
      }
      i += 1;
    }
  }
  
  public void setGymRecords(ArrayList<GymRecord> paramArrayList)
  {
    gymRecords = paramArrayList;
  }
  
  public void setId(String paramString)
  {
    id = paramString;
  }
  
  public void setName(String paramString)
  {
    name = paramString;
  }
  
  public void setPESpecialty(Boolean paramBoolean)
  {
    PESpecialty = paramBoolean;
  }
  
  public void setRecordById(int paramInt, Record paramRecord)
  {
    int i = 0;
    while (i < records.size())
    {
      if (((Record)records.get(i)).getId() == paramInt) {
        records.set(i, paramRecord);
      }
      i += 1;
    }
  }
  
  public void setRecords(ArrayList<Record> paramArrayList)
  {
    records = paramArrayList;
  }
  
  public void setToken(String paramString)
  {
    token = paramString;
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("User{id='");
    localStringBuilder.append(id);
    localStringBuilder.append('\'');
    localStringBuilder.append(", token='");
    localStringBuilder.append(token);
    localStringBuilder.append('\'');
    localStringBuilder.append(", PESpecialty=");
    localStringBuilder.append(PESpecialty);
    localStringBuilder.append(", name='");
    localStringBuilder.append(name);
    localStringBuilder.append('\'');
    localStringBuilder.append(", gender=");
    localStringBuilder.append(getGenderByString());
    localStringBuilder.append(", department=");
    localStringBuilder.append(department);
    localStringBuilder.append(", records=");
    localStringBuilder.append(records);
    localStringBuilder.append(", gymRecords=");
    localStringBuilder.append(gymRecords);
    localStringBuilder.append('}');
    return localStringBuilder.toString();
  }
  
  @Retention(RetentionPolicy.SOURCE)
  public static @interface GENDER {}
  
  public static class Inner
  {
    private String access_token;
    private String department;
    private String id;
    private Boolean isPESpecialty;
    private String name;
    private String password;
    private String sex;
    
    public Inner() {}
  }
}
