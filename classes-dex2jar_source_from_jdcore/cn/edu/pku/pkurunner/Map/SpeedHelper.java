package cn.edu.pku.pkurunner.Map;

public abstract class SpeedHelper
{
  public SpeedHelper() {}
  
  public static double fromUnitOf(SPEED_UNIT paramSPEED_UNIT, double paramDouble)
  {
    switch (1.a[paramSPEED_UNIT.ordinal()])
    {
    default: 
      return 0.0D;
    case 5: 
      return paramDouble * 2.99792458E8D;
    case 4: 
      return paramDouble * 3.6D * 1.6D;
    case 3: 
      return 16.666666666666668D / paramDouble;
    case 2: 
      return paramDouble * 3.6D;
    }
    return paramDouble;
  }
  
  public static double meterToLightYear(double paramDouble)
  {
    return paramDouble / 9.4607304725808E15D;
  }
  
  public static double meterToPlanckLength(double paramDouble)
  {
    return paramDouble / 1.616229E-35D;
  }
  
  public static double secondToPlanckTime(double paramDouble)
  {
    return paramDouble / 5.39116E-44D;
  }
  
  public static double toUnitOf(SPEED_UNIT paramSPEED_UNIT, double paramDouble)
  {
    switch (1.a[paramSPEED_UNIT.ordinal()])
    {
    default: 
      return 0.0D;
    case 5: 
      return paramDouble / 2.99792458E8D;
    case 4: 
      return paramDouble / 3.6D / 1.6D;
    case 3: 
      return 16.666666666666668D / paramDouble;
    case 2: 
      return paramDouble / 3.6D;
    }
    return paramDouble;
  }
  
  public static enum SPEED_UNIT
  {
    static
    {
      KilometerPerHour = new SPEED_UNIT("KilometerPerHour", 1);
      MinutePerKilometer = new SPEED_UNIT("MinutePerKilometer", 2);
      MilePerHour = new SPEED_UNIT("MilePerHour", 3);
    }
    
    private SPEED_UNIT() {}
  }
}
