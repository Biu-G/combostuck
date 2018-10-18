package cn.edu.pku.pkurunner.Model;

import android.content.Context;
import java.io.Serializable;
import java.util.List;

public class Weather
  implements Serializable
{
  private AqiBean aqi;
  private BasicBean basic;
  private List<DailyForecastBean> daily_forecast;
  private List<HourlyForecastBean> hourly_forecast;
  private NowBean now;
  private String status;
  private SuggestionBean suggestion;
  
  public Weather() {}
  
  public AqiBean getAqi()
  {
    return aqi;
  }
  
  public String getDescription(Context paramContext)
  {
    if (Integer.valueOf(access$000aqi).aqi).intValue() > 100) {
      return paramContext.getString(2131689502, new Object[] { basic.city, access$300now).txt, access$500now).dir, access$000aqi).qlty });
    }
    return paramContext.getString(2131689503, new Object[] { basic.city, access$300now).txt, access$500now).dir, access$000aqi).qlty, access$800suggestion).brf, access$800suggestion).txt });
  }
  
  public NowBean getNow()
  {
    return now;
  }
  
  public static class AqiBean
    implements Serializable
  {
    private CityBean city;
    
    public AqiBean() {}
    
    public static class CityBean
      implements Serializable
    {
      private String aqi;
      private String co;
      private String no2;
      private String o3;
      private String pm10;
      private String pm25;
      private String qlty;
      private String so2;
      
      public CityBean() {}
    }
  }
  
  public static class BasicBean
    implements Serializable
  {
    private String city;
    private String cnty;
    private String id;
    private String lat;
    private String lon;
    private UpdateBean update;
    
    public BasicBean() {}
    
    public static class UpdateBean
      implements Serializable
    {
      private String loc;
      private String utc;
      
      public UpdateBean() {}
    }
  }
  
  public static class DailyForecastBean
    implements Serializable
  {
    private AstroBean astro;
    private CondBean cond;
    private String date;
    private String hum;
    private String pcpn;
    private String pop;
    private String pres;
    private TmpBean tmp;
    private String vis;
    private WindBean wind;
    
    public DailyForecastBean() {}
    
    public String getDate()
    {
      return date;
    }
    
    public void setDate(String paramString)
    {
      date = paramString;
    }
    
    public static class AstroBean
      implements Serializable
    {
      private String sr;
      private String ss;
      
      public AstroBean() {}
    }
    
    public static class CondBean
      implements Serializable
    {
      private String code_d;
      private String code_n;
      private String txt_d;
      private String txt_n;
      
      public CondBean() {}
    }
    
    public static class TmpBean
      implements Serializable
    {
      private String max;
      private String min;
      
      public TmpBean() {}
    }
    
    public static class WindBean
      implements Serializable
    {
      private String deg;
      private String dir;
      private String sc;
      private String spd;
      
      public WindBean() {}
    }
  }
  
  public static class HourlyForecastBean
    implements Serializable
  {
    private String date;
    private String hum;
    private String pop;
    private String pres;
    private String tmp;
    private WindBean wind;
    
    public HourlyForecastBean() {}
    
    public String getDate()
    {
      return date;
    }
    
    public void setDate(String paramString)
    {
      date = paramString;
    }
    
    public static class WindBean
      implements Serializable
    {
      private String deg;
      private String dir;
      private String sc;
      private String spd;
      
      public WindBean() {}
    }
  }
  
  public static class NowBean
    implements Serializable
  {
    private CondBean cond;
    private String fl;
    private String hum;
    private String pcpn;
    private String pres;
    private String tmp;
    private String vis;
    private WindBean wind;
    
    public NowBean() {}
    
    public CondBean getCond()
    {
      return cond;
    }
    
    public static class CondBean
      implements Serializable
    {
      private String code;
      private String txt;
      
      public CondBean() {}
      
      public String getCode()
      {
        return code;
      }
    }
    
    public static class WindBean
      implements Serializable
    {
      private String deg;
      private String dir;
      private String sc;
      private String spd;
      
      public WindBean() {}
    }
  }
  
  public static class SuggestionBean
    implements Serializable
  {
    private ComfBean comf;
    private CwBean cw;
    private DrsgBean drsg;
    private FluBean flu;
    private SportBean sport;
    private TravBean trav;
    private UvBean uv;
    
    public SuggestionBean() {}
    
    public static class ComfBean
      implements Serializable
    {
      private String brf;
      private String txt;
      
      public ComfBean() {}
    }
    
    public static class CwBean
      implements Serializable
    {
      private String brf;
      private String txt;
      
      public CwBean() {}
    }
    
    public static class DrsgBean
      implements Serializable
    {
      private String brf;
      private String txt;
      
      public DrsgBean() {}
    }
    
    public static class FluBean
      implements Serializable
    {
      private String brf;
      private String txt;
      
      public FluBean() {}
    }
    
    public static class SportBean
      implements Serializable
    {
      private String brf;
      private String txt;
      
      public SportBean() {}
    }
    
    public static class TravBean
      implements Serializable
    {
      private String brf;
      private String txt;
      
      public TravBean() {}
    }
    
    public static class UvBean
      implements Serializable
    {
      private String brf;
      private String txt;
      
      public UvBean() {}
    }
  }
}
