package cn.edu.pku.pkurunner.Map;

public class WGS84_GCJ02
{
  public WGS84_GCJ02() {}
  
  private static double a(double paramDouble1, double paramDouble2)
  {
    double d = paramDouble1 * 0.1D;
    return paramDouble1 + 300.0D + paramDouble2 * 2.0D + d * paramDouble1 + d * paramDouble2 + Math.sqrt(Math.abs(paramDouble1)) * 0.1D + (Math.sin(6.0D * paramDouble1 * 3.141592653589793D) * 20.0D + Math.sin(paramDouble1 * 2.0D * 3.141592653589793D) * 20.0D) * 2.0D / 3.0D + (Math.sin(paramDouble1 * 3.141592653589793D) * 20.0D + Math.sin(paramDouble1 / 3.0D * 3.141592653589793D) * 40.0D) * 2.0D / 3.0D + (Math.sin(paramDouble1 / 12.0D * 3.141592653589793D) * 150.0D + Math.sin(paramDouble1 / 30.0D * 3.141592653589793D) * 300.0D) * 2.0D / 3.0D;
  }
  
  private static double b(double paramDouble1, double paramDouble2)
  {
    double d1 = paramDouble1 * 2.0D;
    double d2 = Math.sqrt(Math.abs(paramDouble1));
    double d3 = (Math.sin(paramDouble1 * 6.0D * 3.141592653589793D) * 20.0D + Math.sin(d1 * 3.141592653589793D) * 20.0D) * 2.0D / 3.0D;
    double d4 = paramDouble2 * 3.141592653589793D;
    return -100.0D + d1 + paramDouble2 * 3.0D + paramDouble2 * 0.2D * paramDouble2 + 0.1D * paramDouble1 * paramDouble2 + d2 * 0.2D + d3 + (Math.sin(d4) * 20.0D + Math.sin(paramDouble2 / 3.0D * 3.141592653589793D) * 40.0D) * 2.0D / 3.0D + (Math.sin(paramDouble2 / 12.0D * 3.141592653589793D) * 160.0D + Math.sin(d4 / 30.0D) * 320.0D) * 2.0D / 3.0D;
  }
  
  private static boolean c(double paramDouble1, double paramDouble2)
  {
    return (paramDouble1 < 72.004D) || (paramDouble1 > 137.8347D) || (paramDouble2 < 0.8293D) || (paramDouble2 > 55.8271D);
  }
  
  public static double[] convert(double paramDouble1, double paramDouble2)
  {
    if (c(paramDouble1, paramDouble2)) {
      return new double[] { paramDouble1, paramDouble2 };
    }
    double d2 = paramDouble1 - 105.0D;
    double d3 = paramDouble2 - 35.0D;
    double d1 = a(d2, d3);
    d2 = b(d2, d3);
    d3 = paramDouble2 / 180.0D * 3.141592653589793D;
    double d4 = Math.sin(d3);
    d4 = 1.0D - 0.006693421622965943D * d4 * d4;
    double d5 = Math.sqrt(d4);
    return new double[] { paramDouble1 + d1 * 180.0D / (6378245.0D / d5 * Math.cos(d3) * 3.141592653589793D), paramDouble2 + d2 * 180.0D / (6335552.717000426D / (d4 * d5) * 3.141592653589793D) };
  }
}
